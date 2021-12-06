'''
    :package:   ldRigNodes
    :file:      space_switch_manager.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     Class and function to manipulate space switches. Initial work by Guillaume Baratte.
'''
import os

from maya.api   import OpenMaya
from maya       import cmds, OpenMayaUI

from PySide2.QtCore import * 
from PySide2.QtGui import *
from PySide2.QtWidgets import *
from shiboken2 import wrapInstance 

from ldRigNodes.ui.SSM import Ui_space_switch_main

mayaMainWindowPtr = OpenMayaUI.MQtUtil.mainWindow()
mayaMainWindow = wrapInstance(int(mayaMainWindowPtr), QWidget)

def open_ui():
    ui = SpaceSwitchManagerUI()
    ui.show()

class SpaceSwitchManagerUI(QWidget,Ui_space_switch_main):
    def __init__(self, *args, **kwargs):
        """Open the Space Switch Manager UI.
        """
        super(SpaceSwitchManagerUI, self).__init__(*args, **kwargs)
        
        #Parent widget under Maya main window        
        self.setParent(mayaMainWindow)
        self.setWindowFlags(Qt.Window | Qt.WindowStaysOnTopHint)

        self.setupUi(self)
        self.link_UI()

    def link_UI(self):
        """Link buttons from the UI to actual executed functions.
        """
        self.add_SRT.clicked.connect(self.add_SRT_function)
        self.add_ST.clicked.connect(self.add_ST_function)
        self.add_SR.clicked.connect(self.add_SR_function)
        self.add_RT.clicked.connect(self.add_RT_function)
        self.add_T.clicked.connect(self.add_T_function)
        self.add_R.clicked.connect(self.add_R_function)
        self.add_S.clicked.connect(self.add_S_function)

        self.remove_space.clicked.connect(self.remove_space_function)
        self.delete_space_switch.clicked.connect(self.delete_space_switch_function)
    
    def add_SRT_function(self):
        print("add_SRT_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.SRT)
    
    def add_ST_function(self):
        print("add_ST_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.ST)

    def add_SR_function(self):
        print("add_SR_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.SR)
        
    def add_RT_function(self):
        print("add_RT_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.RT)

    def add_T_function(self):
        print("add_T_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.T)

    def add_R_function(self):
        print("add_R_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.R)
    
    def add_S_function(self):
        print("add_S_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.add_space(sel[1], SpaceSwitchType.S)

    def remove_space_function(self):
        print("remove_space_function")
        sel = cmds.ls(sl=True)
        if(len(sel) > 1):
            spaceSwitchtools = SpaceSwitchManager(nodeName=sel[0])
            spaceSwitchtools.remove_space(sel[1])

    def delete_space_switch_function(self):
        print("delete_space_switch_function")
        for obj in cmds.ls(sl=True):
            spaceSwitchtools = SpaceSwitchManager(nodeName=obj)
            spaceSwitchtools.delete_space_switch()


class SpaceSwitchType():
    SRT     = 0
    ST      = 1
    SR      = 2
    RT      = 3
    S       = 4
    R       = 5
    T       = 6

class SpaceSwitchManager():
    def __init__(self, **kwargs):
        """Initialize the class with the target object.
        """
        self._nodeName = kwargs['nodeName'] if 'nodeName' in kwargs else ''

    def get_parent_node(self):
        parentNode = cmds.listRelatives(self._nodeName, parent=True)
        if(parentNode):
            return parentNode[0]
        return None

    def get_spaces(self):
        node = self.get_space_switch_node()
        if(node):
            spaceNodes = cmds.listConnections('%s.spaces' % node, source=True)
            return spaceNodes
        return None

    def add_space(self, space_object, space_type):

        nodeTransform   = OpenMaya.MMatrix(cmds.xform(self._nodeName, q=True, ws=True, matrix=True))
        spaceTransform  = OpenMaya.MMatrix(cmds.xform(space_object, q=True, ws=True, matrix=True))
        offsetMatrix    = nodeTransform * spaceTransform.inverse()

        node = self.get_space_switch_node()
        if(not node):
            node = self.add_space_switch_node()

        spaces  = self.get_spaces()
        index   = 0
        if(spaces):
            index = len(spaces)

        cmds.setAttr('%s.spaces[%d].offset' % (node, index), offsetMatrix, type='matrix')
        cmds.connectAttr('%s.worldMatrix[0]' % space_object, '%s.spaces[%d].matrix' % (node, index))
        cmds.setAttr('%s.spaces[%d].type' % (node, index), space_type)
        cmds.xform(self._nodeName, matrix=OpenMaya.MMatrix.kIdentity, ws=False)

    def remove_space(self, space_object):
        node = self.get_space_switch_node()
        if(node):
            spaces      = self.get_spaces()
            moveDown    = False
            for i, space in enumerate(spaces):
                if(moveDown is True):
                    cmds.setAttr('%s.spaces[%d].type' % (node, i-1), cmds.getAttr('%s.spaces[%d].type' % (node, i)))
                    cmds.setAttr('%s.spaces[%d].weight' % (node, i-1), cmds.getAttr('%s.spaces[%d].weight' % (node, i)))
                    cmds.setAttr('%s.spaces[%d].offset' % (node, i-1), cmds.getAttr('%s.spaces[%d].offset' % (node, i)), type='matrix')
                    cmds.disconnectAttr('%s.worldMatrix[0]' % space, '%s.spaces[%d].matrix' % (node, i))
                    cmds.connectAttr('%s.worldMatrix[0]' % space, '%s.spaces[%d].matrix' % (node, i-1))

                if(space == space_object):
                    cmds.disconnectAttr('%s.worldMatrix[0]' % space, '%s.spaces[%d].matrix' % (node, i))
                    moveDown = True

            cmds.removeMultiInstance('%s.spaces[%d]' % (node, len(spaces)-1), b=True)

    def delete_space_switch(self):
        node = self.get_space_switch_node()
        if(node):
            cmds.delete(node)

    def remove_space_switch_node(self):
        node = self.get_space_switch_node()
        if(node):
            cmds.delete(node)

    def add_space_switch_node(self):
        node = cmds.createNode('ldRigSpaceSwitchNode')
        cmds.connectAttr('%s.outTrans' % node, '%s.offsetParentMatrix' % self._nodeName)
        parent = self.get_parent_node()
        if(parent):
            cmds.connectAttr('%s.worldMatrix[0]' % parent, '%s.parentMatrix' % node)
            cmds.connectAttr('%s.worldInverseMatrix[0]' % parent, '%s.parentInverseMatrix' % node)

        return node

    def get_space_switch_node(self):
        nodes = cmds.listConnections('%s.offsetParentMatrix' % self._nodeName, source=True)
        if(nodes and len(nodes)):
            return nodes[0]
        return None

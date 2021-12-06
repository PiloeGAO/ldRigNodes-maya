'''
    :package:   ldRigNodes
    :file:      shelf_commands.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     List of all functions for rigging to be stored in the shelf.
'''
import json

from maya import cmds

from ldRigNodes.utils import copy_to_clipboard, get_selected_channels, get_clipboard_text, concatanate_list

from frankenstein import RigUtils

# Alignment Utils.
def align_to_guids():
    """ Align controllers to guids.
    """
    controllers = cmds.ls(sl=True)
    controllersOrdered = {}

    # Reorganize the controllers by their hierarchyOrder. 
    for i, sel in enumerate(controllers):
        selectionTargetOrder = cmds.getAttr(sel + ".rig_hierarchyOrder")
        
        if(not str(selectionTargetOrder) in controllersOrdered):
            controllersOrdered[str(selectionTargetOrder)] = list()
        controllersOrdered[str(selectionTargetOrder)].append(sel)

    # Align the controller to the guid.
    for i in range(len(controllersOrdered)):
        for ctrl in controllersOrdered[str(i)]:
            if(cmds.attributeQuery("rig_guid", node=ctrl, exists=True)):
                if(cmds.listConnections(ctrl + ".rig_guid") != None):
                    target = cmds.listConnections(ctrl + ".rig_guid")
                    targetMatrix = cmds.xform(target, q=True, matrix=True, ws=True)
                    
                    cmds.xform(ctrl, matrix=targetMatrix, ws=True)
                else:
                    print("ERROR: No guid assigned.")

def scale_guids():
    selection = cmds.ls(sl=True)

    # TODO: Use UI to define this value.
    scaleFactor = 10

    for sel in selection:
        orgMatrix = cmds.getAttr(sel+".matrix")
        
        orgMatrix[12] *= scaleFactor
        orgMatrix[13] *= scaleFactor
        orgMatrix[14] *= scaleFactor
        
        cmds.setAttr(sel+".translateX", orgMatrix[12])
        cmds.setAttr(sel+".translateY", orgMatrix[13])
        cmds.setAttr(sel+".translateZ", orgMatrix[14])

def scale_controllers():
    selection = cmds.ls(sl=True)

    # TODO: Use UI to define this value.
    scaleFactor = 10

    for sel in selection:
        shapes = cmds.listRelatives(sel, shapes=True)
        if shapes:
            print("Editing %s" % shapes[0])
            
            offsetMatrix = cmds.getAttr(shapes[0]+".offsetMatrix")
            offsetMatrix[0] *= scaleFactor
            offsetMatrix[1] *= scaleFactor
            offsetMatrix[2] *= scaleFactor
            offsetMatrix[5] *= scaleFactor
            offsetMatrix[6] *= scaleFactor
            offsetMatrix[7] *= scaleFactor
            offsetMatrix[9] *= scaleFactor
            offsetMatrix[10] *= scaleFactor
            offsetMatrix[11] *= scaleFactor
            
            cmds.setAttr(shapes[0]+".offsetMatrix", offsetMatrix, type="matrix")

# Bones Creators.
def auto_bone_generator():
    """Create joint from selection.
    """
    # Getting all target objects
    selectedObjects = []

    for obj in cmds.ls(sl=True):
        selectedObjects.append(obj)
    
    print("Selected objects: %s" % selectedObjects)

    cmds.select( clear=True )

    for target in range(len(selectedObjects)-1):
        
        cmds.select( selectedObjects[target])
        
        # Create a joint
        cmds.joint()
        
        # Move it to bones_GRP
        cmds.parent(cmds.ls(sl=True)[0], selectedObjects[len(selectedObjects)-1])
        
        # Set name, radius, joint orient and position.
        cmds.rename(selectedObjects[target][:-4] + "_JNT")
        
        cmds.setAttr(cmds.ls(sl=True)[0] + ".radius", 0.1)
        
        cmds.setAttr(cmds.ls(sl=True)[0] + ".translateX", 0)
        cmds.setAttr(cmds.ls(sl=True)[0] + ".translateY", 0)
        cmds.setAttr(cmds.ls(sl=True)[0] + ".translateZ", 0)
        
        cmds.setAttr(cmds.ls(sl=True)[0] + ".jointOrientX", 0)
        cmds.setAttr(cmds.ls(sl=True)[0] + ".jointOrientY", 0)
        cmds.setAttr(cmds.ls(sl=True)[0] + ".jointOrientZ", 0)
        
        # Connect it to controller
        cmds.connectAttr(selectedObjects[target]+".worldMatrix[0]", cmds.ls(sl=True)[0] + ".offsetParentMatrix")  

def tweakers_generator():
    rigUtils = RigUtils()

    # TODO: Ask for the output mesh.
    baseGeometry = "headFacialBlendshapeOUT"

    attachList = []

    for selection in cmds.ls(sl=True):
        print(f"Create tree for: {selection}")
        
        # WARNING NEED TO BE DONE MANUALLY.
        # Fix flips.
        # cmds.setAttr(f'{selection}.fixPolyFlip', 1)
        
        # Get name for childrens
        basename = "_".join(selection.split("_")[:-1])
        attachList.append(basename)
        
        # Rest position.
        cmds.createNode('transform', n=f'{basename}_RST')
        cmds.parent(f'{basename}_RST', selection)
        
        # Controller.
        rigUtils.createRigController(25)
        cmds.rename('rigObject', f'{basename}_CON')
        cmds.parent(f'{basename}_CON', f'{basename}_RST')
        cmds.setAttr(f'{basename}_CON.offsetMatrix',
            0.1, 0.0, 0.0, 0.0,
            0.0, 0.1, 0.0, 0.0,
            0.0, 0.0, 0.1, 0.0,
            0.0, 0.0, 0.0, 1.0,
            type="matrix")
        
        # Bone.
        cmds.createNode('joint', n=f'{basename}_JNT')
        cmds.parent(f'{basename}_JNT', f'{basename}_CON')
        cmds.setAttr(f'{basename}_JNT.radius', 0.05)
        
        # Reset the rest position.
        cmds.setAttr(f'{basename}_RST.translate', 0, 0, 0, type="double3")
        cmds.setAttr(f'{basename}_RST.rotate', 90, 0, 0, type="double3")

    # Create new face.
    cmds.polyPlane(n='headFacialTweakerOUT', sx=5, sy=5)

    cmds.connectAttr(f'{baseGeometry}.outMesh', 'headFacialTweakerOUT.inMesh', force=True)

    # Bind skin to new mesh.
    skinClusterName = "skinClusterTweakers"

    cmds.select( clear=True)

    cmds.createNode('joint', n='tweakerGlobal_JNT')
    cmds.parent('tweakerGlobal_JNT', 'head_JNT')

    cmds.select('headFacialTweakerOUT')
    cmds.select('tweakerGlobal_JNT', add=True)
    for elem in attachList:
        cmds.select(f'{elem}_JNT', add=True)

    cmds.skinCluster(cmds.ls(sl=True), tsb=True, n=skinClusterName)

    # Loop on inputs and apply the correct bind prematrix.
    jntInputs = cmds.listConnections(f'{skinClusterName}.matrix')

    for jntID in range(len(jntInputs)):
        inJoint = cmds.listConnections('{}.matrix[{}]'.format(skinClusterName, str(jntID)))[0]
        basename = "_".join(inJoint.split("_")[:-1])
        
        if(cmds.objExists(f'{basename}_RST')):
            cmds.connectAttr(f'{basename}_RST.worldInverseMatrix[0]', '{}.bindPreMatrix[{}]'.format(skinClusterName, str(jntID)))

# Attributes Management.
def copy_and_link_attributes():
    """Copy and link attributes from selection to the last node.
    """
    # Get the selection
    selection = cmds.ls(sl=True)
    outNode = selection[len(selection)-1]

    print("Copy to node %s" % outNode)

    for node in selection[:-1]:
        attributes = cmds.listAttr(node, keyable=True)
        if(attributes != None):
            cmds.select(outNode)
            catName = node.split(":")[0] + "_Setup"
            if(not cmds.attributeQuery(catName, node=outNode, exists=True)):
                cmds.addAttr(attributeType="enum",
                                longName=catName,
                                enumName="---------------",
                                hidden = False,
                                keyable = True)
                cmds.setAttr( outNode + "." + catName, lock=True )
            
            # Get node attribute value.
            for attribute in attributes:
                attrName =  attribute.encode('ascii','ignore')
                attrValue = cmds.getAttr(node + "." + attribute)
                attrType = cmds.getAttr(node + "." + attribute, type=True)
                
                enumNames = []
                if(attrType == "enum"):
                    names = cmds.attributeQuery(attribute, node=node, listEnum=True )[0].split(":")
                    for name in names:
                        enumNames.append(name.encode('ascii','ignore'))
                
                # Create the attribute into the master setup.
                if(not cmds.attributeQuery(attrName, node=outNode, exists=True)):
                    
                    # Create the attribute on selected object.
                    if(attrType != "enum"):
                        cmds.addAttr(attributeType=attrType,
                                        longName=catName + "_" + attrName,
                                        hidden = False,
                                        keyable = True)
                    else:
                        cmds.addAttr(attributeType="enum",
                                        longName=catName + "_" + attrName,
                                        enumName=concatanate_list(enumNames),
                                        hidden = False,
                                        keyable = True)
                    
                    # Assignt he data value.
                    cmds.setAttr(outNode + "." + catName + "_" + attrName, attrValue)
                    
                    cmds.connectAttr(outNode + "." + catName + "_" + attrName, node + "." + attrName)
                
        else:
            print("No attributes available in %s" % node)

def copy_custom_attribute():
    """Copyt custom attribute to clipboard.
    """
    currentNode = cmds.ls(sl=True)[0]

    channelsToCopy = []
    for channel in get_selected_channels():
        channelValue = cmds.getAttr(currentNode + "." + channel)
        channelType = cmds.getAttr(currentNode + "." + channel, type=True)
        
        enumNames = []
        if(channelType == "enum"):
            names = cmds.attributeQuery(channel, node=currentNode, listEnum=True )[0].split(":")
            for name in names:
                enumNames.append(name.encode('ascii','ignore'))
                
        print("%s > %s (%s | %s)" % (channel, channelValue, channelType, enumNames))
        
        channelsToCopy.append({"channelName" : channel.encode('ascii','ignore'), "channelValue" : channelValue, "channelType" : channelType.encode('ascii','ignore'), "enumNames" : enumNames})

    copy_to_clipboard(str(channelsToCopy).replace("'",'"'))

def paste_custom_attribute():
    """Paste custom attrinute from clipboard.
    """
    currentNode = cmds.ls(sl=True)[0]
    clipboardText = json.loads(get_clipboard_text())

    for data in clipboardText:
        if(data["channelName"] != None and
            data["channelType"] != None and
            data["channelValue"] != None and
            data["enumNames"] != None):
            
            if(not cmds.attributeQuery(data["channelName"], node=currentNode, exists=True)):
                # Create the attribute on selected object.
                if(data["channelType"] != "enum"):
                    cmds.addAttr(attributeType=data["channelType"],
                                    longName=data["channelName"],
                                    hidden = False,
                                    keyable = True)
                else:
                    cmds.addAttr(attributeType="enum",
                                    longName=data["channelName"],
                                    enumName=concatanate_list(data["enumNames"]),
                                    hidden = False,
                                    keyable = True)
                
                # Assignt he data value.
                cmds.setAttr(currentNode + "." + data["channelName"], data["channelValue"])
            else:
                print("Attribute already exist")
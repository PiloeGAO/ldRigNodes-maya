'''
    :package:   ldRigNodes
    :file:      userSetup.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     Autodesk Maya user setup script.
'''
from maya import cmds

def init_plugin():
    print("Loading ldRigNodes 0.0.2")
    
    # Load the ldRigNodes plugin.
    cmds.loadPlugin('ldRigNodes')

    # Loading the UI.
    from ldRigNodes import shelf
    shelf.create_shelf()

# Delay execution on UI startup
cmds.evalDeferred(init_plugin)
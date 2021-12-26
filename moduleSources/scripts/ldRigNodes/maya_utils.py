'''
    :package:   ldRigNodes
    :file:      maya_utils.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     List of usefull functions to perform operations inside of Maya.
'''
from maya import cmds

from frankenstein   import RigUtils, RigObject
rig_utils = RigUtils()

def concatanate_list(list):
    """Convert the python list to maya enum list style.

    Args:
        list (list): List of objects names

    Returns:
        str: Concatanated enum list.
    """
    newList = ""
    
    for id, listItem in enumerate(list):
        if(id != 0):
            newList += ":"
        
        newList += listItem
    
    return newList

# Objects functions.
def delete_node(name, child=False):
    """Delete maya node if exist.

    Args:
        name (str): Node name
        child (bool, optional): Delete child nodes. Defaults to False.
    """
    if(cmds.objExists(name)):
        hierarchy = "none"
        if(child): hierarchy = "below"
        
        print(f"Clearing {name} (child nodes: {child}).")
        cmds.delete(name, hierarchy=hierarchy)

def create_curve(name, input_guids=[], IK=True, FK=True, deformerCount=10, deformerType=0, type=0, alignAxis=0):
    """Create a custom fnk_curve setup.

    Args:
        name (str): Name of the curve (used to rename nodes)
        input_guids (list, optional): Guids used to build the curve. Defaults to [].
        IK (bool, optional): Build the IK setup. Defaults to True.
        FK (bool, optional): Build the FK setup. Defaults to True.
        deformerCount (int, optional): Number of deformers between controllers. Defaults to 10.
        deformerType (int, optional): Type of deformers {0:bones, 1:buffers}. Defaults to 0.
        type (int, optional): Curve type {0: Bezier, 1: Fit Bezier, 2:Hermite, 3:Catmull Rom }. Defaults to 0.
        alignAxis (int, optional): Align Axis index, order: X, Y, Z, -X, -Y, -Z. Defaults to 0.
    """
    input_count = len(input_guids)
    deformer_count = input_count * deformerCount
    curve_node_name = f"{name}_curve"
    
    # Create the rig curve node.
    delete_node(curve_node_name)
    cmds.createNode("fnk_rig_curve", name=curve_node_name)
    reset_curve_ramp(curve_node_name)
    
    cmds.setAttr(f"{curve_node_name}.deformerCount", deformer_count)
    cmds.setAttr(f"{curve_node_name}.curveType", type) 
    cmds.setAttr(f"{curve_node_name}.alignAxis", alignAxis)
    cmds.setAttr(f"{curve_node_name}.editMode", 0)
    
    # Connect inputs to curve node.
    if(IK):
        ik_group_name = f"{name}_IK_GRP"
        delete_node(ik_group_name, child=True)
        group_obj = rig_utils.createRigObjectGroup()
        cmds.rename(group_obj.name, ik_group_name)
        cmds.parent(ik_group_name, "IK_GRP")
        
        for i, guid_object in enumerate(input_guids):
            ik_controller_name = f"{name}_{i}_IK_CON"
            controller_object = RigObject.create(shapeType=5)
            cmds.rename(controller_object.name, ik_controller_name)
            cmds.parent(ik_controller_name, ik_group_name)
            
            cmds.select(clear=True)
            cmds.select(ik_controller_name)
            cmds.select(guid_object, add=True)
            rig_utils.matchTransform()
            
            cmds.connectAttr(f"{ik_controller_name}.worldMatrix", f"{curve_node_name}.controllers[{i}].ikController")
            
    if(FK):
        fk_group_name = f"{name}_FK_GRP"
        delete_node(fk_group_name, child=True)
        group_obj = rig_utils.createRigObjectGroup()
        cmds.rename(group_obj.name, fk_group_name)
        cmds.parent(fk_group_name, "FK_GRP")
        
        for i, guid_object in enumerate(input_guids):
            fk_controller_name = f"{name}_{i}_FK_CON"
            controller_object = RigObject.create(shapeType=1)
            cmds.rename(controller_object.name, fk_controller_name)
            
            if(i == 0):
                parent_object = fk_group_name
            else:
                parent_object = f"{name}_{i-1}_FK_CON"
            
            cmds.parent(fk_controller_name, parent_object)
            
            cmds.select(clear=True)
            cmds.select(fk_controller_name)
            cmds.select(guid_object, add=True)
            rig_utils.matchTransform()
            
            cmds.connectAttr(f"{fk_controller_name}.worldMatrix", f"{curve_node_name}.controllers[{i}].fkController")
    
    # Create deformers
    deformer_group_name = f"{name}_deformers_GRP"
    delete_node(deformer_group_name, child=True)
    group_obj = rig_utils.createRigObjectGroup()
    cmds.rename(group_obj.name, deformer_group_name)
    
    if(deformerType == 1):
        cmds.parent(deformer_group_name, "controllers_GRP")
    else:
        cmds.parent(deformer_group_name, "bones_GRP")
    
    for i in range(deformer_count):
        if(deformerType == 1):
            deformer_name = f"{name}_{i}_BUF"
            deformer_object = rig_utils.createRigObjectBuffer()
        else:
            deformer_name = f"{name}_{i}_JNT"
            deformer_object = rig_utils.createRigObjectJoint()
        
        cmds.rename(deformer_object.name, deformer_name)
        cmds.parent(deformer_name, deformer_group_name)
        cmds.connectAttr(f"{curve_node_name}.transformers[{i}]", f"{deformer_name}.offsetParentMatrix")
    
    # Apply restlengths
    # TODO: Find why this not work as expected.
    # curve_restlength = cmds.getAttr(f"{curve_node_name}.restLength")
    # cmds.setAttr(f"{curve_node_name}.restLength", curve_restlength)
    # curve_controller_distance = cmds.getAttr(f"{curve_node_name}.restControllerDistance")
    # cmds.setAttr(f"{curve_node_name}.restControllerDistance", curve_controller_distance)
    # cmds.setAttr(f"{curve_node_name}.editMode", 1)

def reset_curve_ramp(name):
    # Set the twist profil ramp.
    cmds.setAttr("%s.twistProfil[0].twistProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.twistProfil[0].twistProfil_Position" % name, 0.0)
    cmds.setAttr("%s.twistProfil[0].twistProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.twistProfil[1].twistProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.twistProfil[1].twistProfil_Position" % name, 1.0)
    cmds.setAttr("%s.twistProfil[1].twistProfil_Interp" % name, 1.0)

    # Set the root tip align profil ramp.
    cmds.setAttr("%s.rootTipAlignProfil[0].rootTipAlignProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.rootTipAlignProfil[0].rootTipAlignProfil_Position" % name, 0.0)
    cmds.setAttr("%s.rootTipAlignProfil[0].rootTipAlignProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.rootTipAlignProfil[1].rootTipAlignProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.rootTipAlignProfil[1].rootTipAlignProfil_Position" % name, 0.2)
    cmds.setAttr("%s.rootTipAlignProfil[1].rootTipAlignProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.rootTipAlignProfil[2].rootTipAlignProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.rootTipAlignProfil[2].rootTipAlignProfil_Position" % name, 0.8)
    cmds.setAttr("%s.rootTipAlignProfil[2].rootTipAlignProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.rootTipAlignProfil[3].rootTipAlignProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.rootTipAlignProfil[3].rootTipAlignProfil_Position" % name, 1.0)
    cmds.setAttr("%s.rootTipAlignProfil[3].rootTipAlignProfil_Interp" % name, 1.0)

    # Set the scale profil ramp.
    cmds.setAttr("%s.scaleProfil[0].scaleProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.scaleProfil[0].scaleProfil_Position" % name, 0.0)
    cmds.setAttr("%s.scaleProfil[0].scaleProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.scaleProfil[1].scaleProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.scaleProfil[1].scaleProfil_Position" % name, 1.0)
    cmds.setAttr("%s.scaleProfil[1].scaleProfil_Interp" % name, 1.0)

    # Set the distribution profil ramp.
    cmds.setAttr("%s.distributionProfil[0].distributionProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.distributionProfil[0].distributionProfil_Position" % name, 0.0)
    cmds.setAttr("%s.distributionProfil[0].distributionProfil_Interp" % name, 1.0)

    cmds.setAttr("%s.distributionProfil[1].distributionProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.distributionProfil[1].distributionProfil_Position" % name, 1.0)
    cmds.setAttr("%s.distributionProfil[1].distributionProfil_Interp" % name, 1.0)

    # Set the stretch profil ramp.
    cmds.setAttr("%s.stretchProfil[0].stretchProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.stretchProfil[0].stretchProfil_Position" % name, 0.0)
    cmds.setAttr("%s.stretchProfil[0].stretchProfil_Interp" % name, 2.0)

    cmds.setAttr("%s.stretchProfil[1].stretchProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.stretchProfil[1].stretchProfil_Position" % name, 0.5)
    cmds.setAttr("%s.stretchProfil[1].stretchProfil_Interp" % name, 2.0)

    cmds.setAttr("%s.stretchProfil[2].stretchProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.stretchProfil[2].stretchProfil_Position" % name, 1.0)
    cmds.setAttr("%s.stretchProfil[2].stretchProfil_Interp" % name, 2.0)

    # Set the stretch profil ramp.
    cmds.setAttr("%s.squashProfil[0].squashProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.squashProfil[0].squashProfil_Position" % name, 0.0)
    cmds.setAttr("%s.squashProfil[0].squashProfil_Interp" % name, 2.0)

    cmds.setAttr("%s.squashProfil[1].squashProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.squashProfil[1].squashProfil_Position" % name, 0.5)
    cmds.setAttr("%s.squashProfil[1].squashProfil_Interp" % name, 2.0)

    cmds.setAttr("%s.squashProfil[2].squashProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.squashProfil[2].squashProfil_Position" % name, 1.0)
    cmds.setAttr("%s.squashProfil[2].squashProfil_Interp" % name, 2.0)

    # Set the procedural wave ramp.
    cmds.setAttr("%s.proceduralWaveProfil[0].proceduralWaveProfil_FloatValue" % name, 0.0)
    cmds.setAttr("%s.proceduralWaveProfil[0].proceduralWaveProfil_Position" % name, 0.0)
    cmds.setAttr("%s.proceduralWaveProfil[0].proceduralWaveProfil_Interp" % name, 2.0)

    cmds.setAttr("%s.proceduralWaveProfil[1].proceduralWaveProfil_FloatValue" % name, 1.0)
    cmds.setAttr("%s.proceduralWaveProfil[1].proceduralWaveProfil_Position" % name, 1.0)
    cmds.setAttr("%s.proceduralWaveProfil[1].proceduralWaveProfil_Interp" % name, 2.0)
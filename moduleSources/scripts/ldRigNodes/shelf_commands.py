'''
    :package:   ldRigNodes
    :file:      shelf_commands.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     List of all functions for rigging to be stored in the shelf.
'''
import os
import json

from maya import cmds

from ldRigNodes.maya_utils import concatanate_list, delete_node, order_objects, create_curve
from ldRigNodes.utils import copy_to_clipboard, get_selected_channels, get_clipboard_text

from frankenstein import RigUtils
rig_utils = RigUtils()

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
    """Generate tweakers from selection to a mesh.
    """
    # Getting the base mesh input.
    baseGeometryDialog = cmds.promptDialog(
		title='Input Object',
		message='Enter Name:',
		button=['OK', 'Cancel'],
		defaultButton='OK',
		cancelButton='Cancel',
		dismissString='Cancel')
    
    if(baseGeometryDialog != "OK"):
        return

    baseGeometry = str(cmds.promptDialog(query=True, text=True))

    if(baseGeometry == "" or not cmds.objExists(baseGeometry)):
        print("Nothing entered in the dialog, skipping execution.")
        return
    
    # Get the output mesh name.
    outputMeshDialog = cmds.promptDialog(
		title='Ouput Object',
		message='Enter Name:',
		button=['OK', 'Cancel'],
		defaultButton='OK',
		cancelButton='Cancel',
		dismissString='Cancel')
    
    if(outputMeshDialog != "OK"):
        return

    output_mesh_name = str(cmds.promptDialog(query=True, text=True))

    if(output_mesh_name == ""):
        print("Nothing entered in the dialog, skipping execution.")
        return

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
        rig_utils.createRigController(25)
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
    cmds.polyPlane(n=output_mesh_name, sx=5, sy=5)

    cmds.connectAttr(f'{baseGeometry}.outMesh', f"{output_mesh_name}.inMesh", force=True)

    # Bind skin to new mesh.
    skinClusterName = "skinClusterTweakers"

    cmds.select( clear=True)

    cmds.createNode('joint', n='tweakerGlobal_JNT')
    cmds.parent('tweakerGlobal_JNT', 'head_JNT')

    cmds.select(f"{output_mesh_name}")
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

def create_hairs():
    current_namespace = cmds.namespaceInfo( currentNamespace=True )
    print(f"Working in the \"{current_namespace}\" namespace.")

    cmds.namespace(relativeNames=True)

    rig_objects = [
        obj for obj in cmds.ls()\
        if obj[0] != ":" and cmds.attributeQuery("rig_objectType", node=f"{obj}", exists=True)
    ]

    guids_objects = [ obj for obj in rig_objects if cmds.getAttr(f"{obj}.rig_objectType") == 0 ]

    # TODO: Find a way to compute the desired main group number.
    main_groups_number = 3

    # MASTER GENERATION.
    # Create the masters controllers.
    if(False in (cmds.objExists("main_start"), cmds.objExists("main_end"))):
        raise RuntimeError("No mains guids.")

    # Delete previous generated group.
    delete_node("main_GUID_GRP", child=True)

    # Create the group to store guids for master.
    group_obj = rig_utils.createRigObjectGroup()
    cmds.rename(group_obj.name, "main_GUID_GRP")
    cmds.parent("main_GUID_GRP", "guid_GRP")

    # Create the twistNode (usefull to build each main_groups).
    delete_node("main_groups_twist")
    cmds.createNode("ldRigTwistNode", name="main_groups_twist")
    cmds.connectAttr("main_start.matrix", "main_groups_twist.matrixAPos")
    cmds.connectAttr("main_end.matrix", "main_groups_twist.matrixBPos")
    cmds.setAttr("main_groups_twist.startRange", 0.0)
    cmds.setAttr("main_groups_twist.endRange", 1.0)
    cmds.setAttr("main_groups_twist.alignAxis", 4)
    cmds.setAttr("main_groups_twist.twistCount", main_groups_number)

    main_guids = []

    for i in range(main_groups_number):
        obj_name = f"mainGroup_{i}_GUID"
        delete_node(obj_name)
        
        buffer_obj = rig_utils.createRigObjectGuid()
        cmds.rename(buffer_obj.name, obj_name)
        cmds.parent(obj_name, "main_GUID_GRP")
        
        cmds.connectAttr(f"main_groups_twist.transforms[{i}]", f"{obj_name}.offsetParentMatrix")
        
        cmds.setAttr(f"{obj_name}.displayLocalAxis", True)
        
        main_guids.append(obj_name)

    # Create the main curve.
    create_curve("main", input_guids=main_guids, IK=True, FK=True, deformerCount=3, deformerType=1, type=3, alignAxis=4)

    # Updating Rig Objects.
    rig_objects = [
        obj for obj in cmds.ls()\
        if obj[0] != ":" and cmds.attributeQuery("rig_objectType", node=f"{obj}", exists=True)
    ]

    # STRANDS
    # Get strands
    strand_objects = [obj for obj in rig_objects if "strand" in obj]
    root_strands = [obj for obj in strand_objects if obj.split("_")[1] == "00"]
    for strand in root_strands:
        strand_name = strand.split("_")[0]
        strand_elements = order_objects([obj for obj in strand_objects if strand_name in obj])
        create_curve(strand_name, input_guids=strand_elements, IK=True, FK=True, deformerCount=3, deformerType=0, type=3, alignAxis=4)
        
        rig_objects = [
            obj for obj in cmds.ls()\
            if obj[0] != ":" and cmds.attributeQuery("rig_objectType", node=f"{obj}", exists=True)
        ]

        # Parent FK to the start main buffer.
        cmds.parent(f"{strand_name}_FK_GRP", "main_0_BUF")
        
        # Parent IK controllers to corresponding main buffers.
        ik_controllers = order_objects([obj for obj in rig_objects if strand_name in obj and "IK_CON" in obj])
        for ik_controller in ik_controllers:
            controller_index = int(ik_controller.split("_")[1])
            cmds.parent(ik_controller, f"main_{controller_index}_BUF")
        
        delete_node(f"{strand_name}_IK_GRP", child=True)

    # Reset to initial setup.
    cmds.namespace(relativeNames=False)

# Display Tools.
def copy_display():
    """Copy display of a controller to clipboard.
    """
    current_node = "{}Shape".format(cmds.ls(sl=True)[0])
    channel_value = cmds.getAttr(current_node + ".offsetMatrix")
    
    copy_to_clipboard(str(channel_value).encode())

def paste_display():
    """Paste display of a controller from clipboard.
    """
    values = json.loads(get_clipboard_text().decode())

    for current_node in cmds.ls(sl=True):
        current_node = "{}Shape".format(current_node)
        cmds.setAttr(f"{current_node}.offsetMatrix", values, type="matrix")

def switch_modules_displays():
    """Switch modules display between Rig and Anim.
    """
    modules_setups = []

    mode_to_apply = ""

    selection = cmds.ls(sl=True)

    if(len(selection) == 0):
        for sel in cmds.ls():
            if(not "setup" in sel):
                continue
            modules_setups.append(sel)
    else:
        for sel in selection:
            if(not "module" in sel):
                continue
            
            for obj in cmds.listRelatives(sel, children=True):
                if(not "setup" in obj):
                    continue
                modules_setups.append(obj)

    for obj in modules_setups:
        if(cmds.listAttr(f"{obj}", string="MODE") == None): continue
        
        if(mode_to_apply == ""):
            # NOTE: This take the first setup and apply the opposite
            # to the rest of the structure.
            mode_to_apply = cmds.getAttr(f"{obj}.MODE")
            
            if(mode_to_apply == 0): mode_to_apply = 1
            else: mode_to_apply  = 0
            
        cmds.setAttr(f"{obj}.MODE", mode_to_apply)

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

# Various Utils.
def clear_namespaces():
    """Clear all namespaces in the scene and rename objects with "_".
    By: Louis Lukasik
    """
    for ns in cmds.namespaceInfo(':', lon=True):
        if(ns == 'shared' or ns == 'UI' or ns == "blendShapes" or type(ns) == None):
            continue
        
        namespace_list = cmds.namespaceInfo(ns, ls=True)
        if(type(namespace_list) == None): continue

        print(f"Editing {ns}")
        for obj in namespace_list:
            new_name = obj.replace(':', '_')
            
            try:
                cmds.rename(obj, new_name)
                print(f"Renaming: {obj} > {new_name}")
            except:
                pass
        
        try:
            cmds.namespace(rm=str(ns))
        except:
                pass
        else:
            print(f"Failed to remove namespace {ns}")

def apply_bones_from_ngexport():
    """Apply correct bones from a ngskintools .json file.
    """
    directory_path = cmds.fileDialog2(fileFilter="All Files (*.*)", fileMode=3, dialogStyle=1)[0]

    meshes = cmds.ls(sl=True)

    if(len(meshes) == 0):
        meshes = [obj for obj in cmds.ls() if "MSH" in obj]

    cmds.progressWindow(
        title="Loading Bones",
        progress=0,
        status="",
        isInterruptable=True
    )

    files = os.listdir(directory_path)

    for i, file in enumerate(files):
        if(cmds.progressWindow( query=True, isCancelled=True )):
            break

        cmds.progressWindow(
            edit=True,
            progress=((i+1)/len(files)),
            status=(f"Loading {file}")
        )

        object_name = file.split(".")[0]
        if(not object_name in meshes):
            continue
        
        file_path = os.path.join(directory_path, file)
        
        ngskintools_layers = json.load(open(file_path))
        
        joints_to_add = []
        
        for influence in ngskintools_layers["influences"]:
            joints_to_add.append(influence["path"].split("|")[-1])
        
        cmds.skinCluster(joints_to_add, object_name, name=f"{object_name}_skinCluster")
    
    cmds.progressWindow(endProgress=1)
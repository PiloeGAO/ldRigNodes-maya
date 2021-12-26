'''
    :package:   ldRigNodes
    :file:      space_switch_auto_builder.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     Class and function to dynamicly build connection between modules.
'''
import os
import json
from posixpath import basename

from maya import cmds

from ldRigNodes.maya_utils import concatanate_list
from ldRigNodes.utils import CURRENT_INSTALL_DIR
from ldRigNodes.space_switch_manager import SpaceSwitchManager

def get_autobuilder_config():
    """Get the path to the config of the builder.

    Returns:
        str: Path to config
    """
    config_path = os.path.join(CURRENT_INSTALL_DIR, "configs", "ss_config.json")

    if(os.path.isfile(config_path)):
        return config_path
    
    return None

def get_space_switch_type(input_type):
    if(input_type == "srt"): return 0
    elif(input_type == "st"): return 1
    elif(input_type == "sr"): return 2
    elif(input_type == "rt"): return 3
    elif(input_type == "s"): return 4
    elif(input_type == "r"): return 5
    elif(input_type == "t"): return 6
    else:
        return TypeError

def autobuild_hierarchy():
    """Process the full file and connect all the modules together.
    """
    with open(get_autobuilder_config()) as json_file:
        config = json.load(json_file)
    
    for module_content in config:
        base_names = []

        if(not module_content['mirrorable']):
            base_names.append(module_content['module_name'])
        else:
            base_names.append("L_{}".format(module_content['module_name']))
            base_names.append("R_{}".format(module_content['module_name']))

        for base_name in base_names:
            if(not cmds.objExists("{}_module".format(base_name))):
                continue

            for link in module_content['links']:
                object_name = "{}_{}".format(base_name, link['element_name'])
                
                if(not cmds.objExists(f"{object_name}")):
                    print(f"No object {object_name}")
                    continue
                
                spaceSwitchtools = SpaceSwitchManager(nodeName=object_name)

                targets = sorted(link['targets'], key=lambda d: d['id'])
                
                # List all spaces switches.
                space_switches_names = []

                # Built the floatSwitchNode.
                float_switch_node = cmds.createNode('ldRigFloatSwitchNode')
                cmds.setAttr(f'{float_switch_node}.outputCount',  len(targets))
                
                for target in targets:
                    target_module_base_name = target['module']

                    if(target['mirrorable'] and module_content['mirrorable']):
                        target_module_base_name = "{}_{}".format(
                            base_name[:1],
                            target_module_base_name
                        )
                    
                    target_name = "{}_{}".format(
                        target_module_base_name,
                        target['name']
                    )

                    if(not cmds.objExists(f"{target_name}")):
                        print(f"Failed to find {target_name}")
                        continue

                    spaceSwitchtools.add_space(target_name, get_space_switch_type(target['type']))
                    
                    space_switches_names.append(target['ui_name'])
                
                space_switch_node = spaceSwitchtools.get_space_switch_node()


                if(space_switch_node == None or len(space_switches_names) == 0):
                    print(f"Skipping {object_name} - [{len(space_switches_names)}]")
                    continue

                cmds.rename(space_switch_node , f"spaceSwitch_{object_name}")

                cmds.addAttr(
                    f"{base_name}_setup",
                    attributeType="enum",
                    longName=f"spaceSwitches_{link['element_name']}",
                    enumName=concatanate_list(space_switches_names),
                    hidden = False,
                    keyable = True
                )

                cmds.connectAttr(f"{base_name}_setup.spaceSwitches_{link['element_name']}", f"{float_switch_node}.caseID")

                for index, name in enumerate(space_switches_names):
                    cmds.connectAttr(f"{float_switch_node}.outputValues[{index}]", f"spaceSwitch_{object_name}.spaces[{index}].weight")


def autoclear_hierarchy():
    """Clear all the space switches from the config file (other are skipped).
    """
    
    with open(get_autobuilder_config()) as json_file:
        config = json.load(json_file)
    
    for module_content in config:
        base_names = []

        if(not module_content['mirrorable']):
            base_names.append(module_content['module_name'])
        else:
            base_names.append("L_{}".format(module_content['module_name']))
            base_names.append("R_{}".format(module_content['module_name']))

        for base_name in base_names:
            if(not cmds.objExists("{}_module".format(base_name))):
                continue

            for link in module_content['links']:
                object_name = "{}_{}".format(base_name, link['element_name'])
                
                if(not cmds.objExists(f"{object_name}")):
                    print(f"Failed to find {object_name}")
                    continue
                
                spaceSwitchtools = SpaceSwitchManager(nodeName=object_name)
                spaceSwitchtools.delete_space_switch()

                # Delete the enum.
                if(cmds.attributeQuery(f"spaceSwitches_{link['element_name']}", node=f"{base_name}_setup", listEnum=True) != None):
                    cmds.deleteAttr(f"{base_name}_setup.spaceSwitches_{link['element_name']}")
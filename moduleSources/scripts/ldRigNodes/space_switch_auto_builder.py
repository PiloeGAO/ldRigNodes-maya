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

                targets = sorted(link['targets'], key=lambda d: d['id'])
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

                    spaceSwitchtools = SpaceSwitchManager(nodeName=object_name)
                    spaceSwitchtools.add_space(target_name, get_space_switch_type(target['type']))
                    # print(target['ui_name'])

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

                spaceSwitchtools = SpaceSwitchManager(nodeName=object_name)
                spaceSwitchtools.delete_space_switch()
'''
    :package:   ldRigNodes
    :file:      shelf.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     Maya shelf (source: arnoldShelf.py [mtoa plugin]).
'''
import maya.cmds as cmds
import maya

from ldRigNodes.space_switch_auto_builder import get_autobuilder_config

def remove_shelf():
   if cmds.shelfLayout('ldRigNodes', exists=True):
      cmds.deleteUI('ldRigNodes')

def create_shelf():
   remove_shelf()
   shelfTab = maya.mel.eval('global string $gShelfTopLevel;')
   maya.mel.eval('global string $ldRigNodesShelf;')
   maya_version = int(cmds.about(version=True))
   if maya_version < 2017:
      maya.mel.eval('$ldRigNodesShelf = `shelfLayout -cellWidth 32 -cellHeight 32 -p $gShelfTopLevel ldRigNodes`;')   
   else:
      maya.mel.eval('$ldRigNodesShelf = `shelfLayout -cellWidth 32 -cellHeight 32 -p $gShelfTopLevel -version \"2022\" ldRigNodes`;')

   shelfStyle = ('shelf' if maya_version >= 2016 else 'simple')

   # Alignment Utils.
   cmds.shelfButton(label='Align to GUIDs', command='from ldRigNodes.shelf_commands import align_to_guids; align_to_guids()', sourceType='python', annotation='', image='menuList.png', style='iconOnly')
   cmds.shelfButton(label='Scale Guids', command='from ldRigNodes.shelf_commands import scale_guids; scale_guids()', sourceType='python', annotation='', imageOverlayLabel='GUID', image='larger.png', style='iconAndTextHorizontal')
   cmds.shelfButton(label='Scale Controllers', command='from ldRigNodes.shelf_commands import scale_controllers; scale_controllers()', sourceType='python', annotation='', imageOverlayLabel='CTRL', image='larger.png', style='iconAndTextHorizontal')
   cmds.shelfButton(label='Align Chain of Object', command='from ldRigNodes.shelf_commands import align_chain_objects; align_chain_objects()', sourceType='python', annotation='', image='signal3.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Bones Creators.
   cmds.shelfButton(label='Auto Bones Generator', command='from ldRigNodes.shelf_commands import auto_bone_generator; auto_bone_generator()', sourceType='python', annotation='', image='contrast.png', style='iconOnly')
   cmds.shelfButton(label='Tweakers Generator', command='from ldRigNodes.shelf_commands import tweakers_generator; tweakers_generator()', sourceType='python', annotation='', imageOverlayLabel='TWEAK', image='singleplayer.png', style='iconOnly')
   cmds.shelfButton(label='Hairs Generator', command='from ldRigNodes.shelf_commands import create_fk_hairs; create_fk_hairs()', sourceType='python', annotation='', imageOverlayLabel='HAIRS', image='singleplayer.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)
   
   # Display Tools.
   cmds.shelfButton(label='Copy Display', command='from ldRigNodes.shelf_commands import copy_display; copy_display()', sourceType='python', annotation='', imageOverlayLabel='DISPL', image='export.png', style='iconOnly')
   cmds.shelfButton(label='Paste Display', command='from ldRigNodes.shelf_commands import paste_display; paste_display()', sourceType='python', annotation='', imageOverlayLabel='DISPL', image='import.png', style='iconOnly')
   cmds.shelfButton(label='Switch Module Displays', command='from ldRigNodes.shelf_commands import switch_modules_displays; switch_modules_displays()', sourceType='python', annotation='', imageOverlayLabel='', image='return.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Attributes Management.
   cmds.shelfButton(label='Copy And Link Attributes', command='from ldRigNodes.shelf_commands import copy_and_link_attributes; copy_and_link_attributes()', sourceType='python', annotation='', image='key.png', style='iconOnly')
   cmds.shelfButton(label='Copy Attributes', command='from ldRigNodes.shelf_commands import copy_custom_attribute; copy_custom_attribute()', sourceType='python', annotation='', image='export.png', style='iconOnly')
   cmds.shelfButton(label='Paste Attributes', command='from ldRigNodes.shelf_commands import paste_custom_attribute; paste_custom_attribute()', sourceType='python', annotation='', image='import.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Various Utils.
   cmds.shelfButton(label='Clear namespaces', command='from ldRigNodes.shelf_commands import clear_namespaces; clear_namespaces()', sourceType='python', annotation='', image='trashCanOpen.png', style='iconOnly')
   cmds.shelfButton(label='Apply Bones for ngskintools export', command='from ldRigNodes.shelf_commands import apply_bones_from_ngexport; apply_bones_from_ngexport()', sourceType='python', annotation='', image='exitRight.png', style='iconOnly')
   cmds.shelfButton(label='Select Bones from module', command='from ldRigNodes.shelf_commands import select_bones_from_module; select_bones_from_module()', sourceType='python', annotation='', image='share2.png', style='iconOnly')
   cmds.shelfButton(label='Rename Objects', command='from ldRigNodes.shelf_commands import rename_objects; rename_objects()', sourceType='python', annotation='', image='medal2.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Space Switches Management.
   cmds.shelfButton(label='Open Space Switch Manager', command='from ldRigNodes.space_switch_manager import open_ui; open_ui(); ', sourceType='python', annotation='', image='locked.png', style='iconOnly')
   if(get_autobuilder_config() != None):
      cmds.shelfButton(label='Build Space Switch', command='from ldRigNodes.space_switch_auto_builder import autobuild_hierarchy; autobuild_hierarchy(); ', sourceType='python', annotation='', image='share2.png', style='iconOnly')
      cmds.shelfButton(label='Clear Space Switch', command='from ldRigNodes.space_switch_auto_builder import autoclear_hierarchy; autoclear_hierarchy(); ', sourceType='python', annotation='', image='toolEraser.png', style='iconOnly')

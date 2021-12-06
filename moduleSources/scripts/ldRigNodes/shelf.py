'''
    :package:   ldRigNodes
    :file:      shelf.py
    :author:    ldepoix
    :version:   0.0.2
    :brief:     Maya shelf (source: arnoldShelf.py [mtoa plugin]).
'''
import maya.cmds as cmds
import maya

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
   cmds.shelfButton(label='Align to Guids', command='from ldRigNodes.shelf_commands import align_to_guids; align_to_guids()', sourceType='python', annotation='', image='align_to_guids.png', style='iconOnly')
   cmds.shelfButton(label='Scale Guids', command='from ldRigNodes.shelf_commands import scale_guids; scale_guids()', sourceType='python', annotation='', image='scale_guids.png', style='iconOnly')
   cmds.shelfButton(label='Scale Controllers', command='from ldRigNodes.shelf_commands import scale_controllers; scale_controllers()', sourceType='python', annotation='', image='scale_controllers.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Bones Creators.
   cmds.shelfButton(label='Auto Bones Generator', command='from ldRigNodes.shelf_commands import auto_bone_generator; auto_bone_generator()', sourceType='python', annotation='', image='auto_bone_generator.png', style='iconOnly')
   cmds.shelfButton(label='Tweakers Generator', command='from ldRigNodes.shelf_commands import tweakers_generator; tweakers_generator()', sourceType='python', annotation='', image='tweakers_generator.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Attributes Management.
   cmds.shelfButton(label='Copy And Link Attributes', command='from ldRigNodes.shelf_commands import copy_and_link_attributes; copy_and_link_attributes()', sourceType='python', annotation='', image='copy_and_link_attributes.png', style='iconOnly')
   cmds.shelfButton(label='Copy Attributes', command='from ldRigNodes.shelf_commands import copy_custom_attribute; copy_custom_attribute()', sourceType='python', annotation='', image='copy_custom_attribute.png', style='iconOnly')
   cmds.shelfButton(label='Paste Attributes', command='from ldRigNodes.shelf_commands import paste_custom_attribute; paste_custom_attribute()', sourceType='python', annotation='', image='paste_custom_attribute.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Space Switches Management.
   cmds.shelfButton(label='Open Space Switch Manager', command='from ldRigNodes.space_switch_manager import open_ui; open_ui(); ', sourceType='python', annotation='', image='ssm.png', style='iconOnly')
   
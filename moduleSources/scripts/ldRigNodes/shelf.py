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
   cmds.shelfButton(label='Align to GUIDs', command='from ldRigNodes.shelf_commands import align_to_guids; align_to_guids()', sourceType='python', annotation='', image='AlignToGuid1.png', style='iconOnly')
   cmds.shelfButton(label='Scale Guids', command='from ldRigNodes.shelf_commands import scale_guids; scale_guids()', sourceType='python', annotation='', imageOverlayLabel='GUID', image='Scale2.png', style='iconAndTextHorizontal')
   cmds.shelfButton(label='Scale Controllers', command='from ldRigNodes.shelf_commands import scale_controllers; scale_controllers()', sourceType='python', annotation='', imageOverlayLabel='CTRL', image='Scale2.png', style='iconAndTextHorizontal')
   cmds.shelfButton(label='Align Chain of Object', command='from ldRigNodes.shelf_commands import align_chain_objects; align_chain_objects()', sourceType='python', annotation='', image='AlignChainOfObjects3.png', style='iconOnly')
   cmds.shelfButton(label='Align Selection With Other Namespace', command='from ldRigNodes.shelf_commands import align_sel_with_other_namespace; align_sel_with_other_namespace()', sourceType='python', annotation='', image='ModuleAlignNamespace4.png', style='iconOnly')
   cmds.shelfButton(label='Change Rotate Order', command='from ldRigNodes.shelf_commands import updateRotateOrderSelection; updateRotateOrderSelection()', sourceType='python', annotation='', image='ChangeRotateOrders5.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Bones Creators.
   cmds.shelfButton(label='Auto Bones Generator', command='from ldRigNodes.shelf_commands import auto_bone_generator; auto_bone_generator()', sourceType='python', annotation='', image='AutoBonesGen6.png', style='iconOnly')
   cmds.shelfButton(label='Tweakers Generator', command='from ldRigNodes.shelf_commands import tweakers_generator; tweakers_generator()', sourceType='python', annotation='', image='TweakerGen7.png', style='iconOnly')
   cmds.shelfButton(label='Hairs Generator', command='from ldRigNodes.shelf_commands import create_fk_hairs; create_fk_hairs()', sourceType='python', annotation='', image='HairsGen8.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Facial Tools.
   cmds.shelfButton(label='Mid Buffer Creator', command='from ldRigNodes.shelf_commands import createMidBuffer; createMidBuffer()', sourceType='python', annotation='', image='MidBufferCreator9.png', style='iconOnly')
   cmds.shelfButton(label='Facial Curve Creator', command='from ldRigNodes.shelf_commands import createFacialCurve; createFacialCurve()', sourceType='python', annotation='', image='FacialCurvesCreator10.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)
   
   # Display Tools.
   cmds.shelfButton(label='Copy Display', command='from ldRigNodes.shelf_commands import copy_display; copy_display()', sourceType='python', annotation='', image='CopyDisplay11.png', style='iconOnly')
   cmds.shelfButton(label='Paste Display', command='from ldRigNodes.shelf_commands import paste_display; paste_display()', sourceType='python', annotation='', image='PasteDisplay12.png', style='iconOnly')
   cmds.shelfButton(label='Switch Module Displays', command='from ldRigNodes.shelf_commands import switch_modules_displays; switch_modules_displays()', sourceType='python', annotation='', imageOverlayLabel='', image='SwitchDisplay13.png', style='iconOnly')
   
   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Attributes Management.
   cmds.shelfButton(label='Copy And Link Attributes', command='from ldRigNodes.shelf_commands import copy_and_link_attributes; copy_and_link_attributes()', sourceType='python', annotation='', image='CopyLinkAttributes14.png', style='iconOnly')
   cmds.shelfButton(label='Copy Attributes', command='from ldRigNodes.shelf_commands import copy_custom_attribute; copy_custom_attribute()', sourceType='python', annotation='', image='CopyAttributes15.png', style='iconOnly')
   cmds.shelfButton(label='Paste Attributes', command='from ldRigNodes.shelf_commands import paste_custom_attribute; paste_custom_attribute()', sourceType='python', annotation='', image='PasteAttributes16.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Various Utils.
   cmds.shelfButton(label='Clear namespaces', command='from ldRigNodes.shelf_commands import clear_namespaces; clear_namespaces()', sourceType='python', annotation='', image='ClearNamespaces17.png', style='iconOnly')
   cmds.shelfButton(label='Apply Bones for ngskintools export', command='from ldRigNodes.shelf_commands import apply_bones_from_ngexport; apply_bones_from_ngexport()', sourceType='python', annotation='', image='ApplyBonesFromNGSKinTools18.png', style='iconOnly')
   cmds.shelfButton(label='Select Bones from module', command='from ldRigNodes.shelf_commands import select_bones_from_module; select_bones_from_module()', sourceType='python', annotation='', image='SelectBonesForModule19.png', style='iconOnly')
   cmds.shelfButton(label='Rename Objects', command='from ldRigNodes.shelf_commands import rename_objects; rename_objects()', sourceType='python', annotation='', image='RenameObjects20.png', style='iconOnly')

   cmds.separator(width=12,height=35, style=shelfStyle, hr=False)

   # Space Switches Management.
   cmds.shelfButton(label='Open Space Switch Manager', command='from ldRigNodes.space_switch_manager import open_ui; open_ui(); ', sourceType='python', annotation='', image='SpaceSwitchMan21.png', style='iconOnly')
   if(get_autobuilder_config() != None):
      cmds.shelfButton(label='Build Space Switch', command='from ldRigNodes.space_switch_auto_builder import autobuild_hierarchy; autobuild_hierarchy(); ', sourceType='python', annotation='', image='AutoBuildSpaceSwitches22.png', style='iconOnly')
      cmds.shelfButton(label='Clear Space Switch', command='from ldRigNodes.space_switch_auto_builder import autoclear_hierarchy; autoclear_hierarchy(); ', sourceType='python', annotation='', image='ClearSpaceSwitches23.png', style='iconOnly')

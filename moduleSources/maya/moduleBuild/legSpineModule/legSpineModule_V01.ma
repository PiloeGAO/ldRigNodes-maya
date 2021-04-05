//Maya ASCII 2020 scene
//Name: legSpineModule_V01.ma
//Last modified: Mon, Apr 05, 2021 02:45:50 PM
//Codeset: 1252
requires maya "2020";
requires -nodeType "ldRigCurveNode" -nodeType "ldRigTwistNode" -nodeType "ldRigFkIk2Bones"
		 -nodeType "ldRigComparaisonNode" "ldRigNodes" "0.1";
requires -nodeType "rigShape" "rigToolsNodes.py" "0.5.1";
requires -nodeType "ngst2SkinLayerData" -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.0.30";
requires "mtoa" "4.0.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202009141615-87c40af620";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "0E175082-4F42-9CCB-FE1D-4F8225DA73E7";
createNode transform -s -n "persp";
	rename -uid "BFA9B4BB-43E3-1BDF-93E3-23A556A183DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.8919511220689422 5.6874590924216326 5.5054706592588367 ;
	setAttr ".r" -type "double3" 338.66164726977712 46.199999999975319 -2.2976132695759254e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "310D48A5-4E05-2E34-0226-EEAC690F673D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.3015714164124805;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "D01D16F0-469A-86B2-A58A-838A13DF8FBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3541046851084189 1000.1 -0.18104973849557837 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C0FD618D-4528-92F0-70BB-DBA1706BBE06";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 7.1951224000565981;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9500B414-4E2D-59A1-64D9-3190512961AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0514486908519891 1.9611290188924735 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CC5E1DD7-4830-59C4-3DF0-6CAE9348DD25";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.8841507361875891;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "89BE9D10-498B-9364-1D88-508F38722689";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C17DA0A4-45AE-E0F0-3076-0588C8415EC2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "leg_mesh";
	rename -uid "9FE99022-4BE3-BFCD-C7C8-6DB4FBF62CA1";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "leg_meshShape" -p "leg_mesh";
	rename -uid "91C0E486-493E-6DF4-9E91-78993E8D1A48";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "spineLeg_L:armShapeOrig" -p "leg_mesh";
	rename -uid "D7A28FCF-4B72-F245-C9AF-9397E336472F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "spineLeg_L:module";
	rename -uid "E751CA67-4636-1E15-EBE8-BF83A50DFDEC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 7;
createNode transform -n "spineLeg_L:setup" -p "spineLeg_L:module";
	rename -uid "FF10AB0C-4E5D-0666-5B2E-CC9161945164";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "blendFkIK" -ln "blendFkIK" -nn "Switch Fk <=> IK" -min 0 -max 
		1 -at "double";
	addAttr -ci true -sn "showMainSpineControllers" -ln "showMainSpineControllers" -nn "Show Main Ctrls" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "showSecondSpineControllers" -ln "showSecondSpineControllers" 
		-nn "Show Second Ctrls" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_objectType" 5;
	setAttr -k on ".blendFkIK";
	setAttr -k on ".showMainSpineControllers" yes;
	setAttr -k on ".showSecondSpineControllers" yes;
createNode transform -n "spineLeg_L:guid_GRP" -p "spineLeg_L:module";
	rename -uid "84D106C8-4E74-7335-2535-7294BC82F8E2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".rig_objectType" 5;
createNode transform -n "spineLeg_L:foot__GUD" -p "spineLeg_L:guid_GRP";
	rename -uid "617CB867-46D3-6883-71F7-3DB822D56014";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
createNode rigShape -n "spineLeg_L:foot__GUDShape" -p "spineLeg_L:foot__GUD";
	rename -uid "A96100D6-4111-660B-94FD-9FBF8E6C30DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 0.10000000000000001 0 0 0 0 1;
createNode transform -n "spineLeg_L:tibia__GUD" -p "spineLeg_L:guid_GRP";
	rename -uid "E92D82DE-462F-AA98-4EF4-B6AA3DD64C41";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 2 0 ;
createNode rigShape -n "spineLeg_L:tibia__GUDShape" -p "spineLeg_L:tibia__GUD";
	rename -uid "5E7A3B3C-4C5F-B307-B038-92A8E31B2D09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 0.10000000000000001 0 0 0 0 1;
createNode transform -n "spineLeg_L:femur__GUD" -p "spineLeg_L:guid_GRP";
	rename -uid "83053BE3-467B-0A16-06CC-E09A9E9154C0";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 4 0 ;
createNode rigShape -n "spineLeg_L:femur__GUDShape" -p "spineLeg_L:femur__GUD";
	rename -uid "89108B85-4195-CEF4-0724-9FA616A4F2B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 0.10000000000000001 0 0 0 0 1;
createNode transform -n "spineLeg_L:controllers_GRP" -p "spineLeg_L:module";
	rename -uid "F40313FA-4FD0-06C2-68CA-8DBB6E5C08BD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "spineLeg_L:IK_GRP" -p "spineLeg_L:controllers_GRP";
	rename -uid "F842D6A3-4BC8-F74D-CD96-7E9D34C76AE0";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "spineLeg_L:legPivotParent_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "6E6CCF77-4EB7-D30D-3E6B-CE999F2882ED";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4 0 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:legPivot_IK_BUF" -p "spineLeg_L:legPivotParent_IK_BUF";
	rename -uid "10801B09-4F76-98EF-83E9-F2BA0613AF57";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:foot_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "69B019FB-432E-C1F7-B337-208D20DAAEF5";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:foot_IK_CON" -p "spineLeg_L:foot_IK_BUF";
	rename -uid "6451B6AF-4A9D-A784-5C50-B2BE32D3CBA2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:foot_IK_CONShape" -p "spineLeg_L:foot_IK_CON";
	rename -uid "52190765-4F2A-AE94-860F-689F0C7402B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 35;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.31793740557199612 0 0 0 0 0.37911823737617334 0 0
		 0 0 0.31793740557199612 0 0 0 0 1;
createNode transform -n "spineLeg_L:upVector_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "D3FBE12E-4464-CBCD-2DEE-EDB1587A92CB";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2 2 1;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:upVector_IK_CON" -p "spineLeg_L:upVector_IK_BUF";
	rename -uid "3886861D-4FEE-B940-328B-BBAC70E13372";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:upVector_IK_CONShape" -p "spineLeg_L:upVector_IK_CON";
	rename -uid "FEF26317-4B55-9991-CE5F-E9A14AD4CBD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 25;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.10000000000000001 0 0 0 0 0.10000000000000001 0 0
		 0 0 0.10000000000000001 0 0 0 0 1;
createNode transform -n "spineLeg_L:tangentTibia_01_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "49A559AA-4752-AADE-C3F6-EA91FFF4032A";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:tangentTibia_01_IK_CON" -p "spineLeg_L:tangentTibia_01_IK_BUF";
	rename -uid "58ADC9EC-4A3F-729B-F6BE-3CA69057FFED";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tangentTibia_01_IK_CONShape" -p "spineLeg_L:tangentTibia_01_IK_CON";
	rename -uid "0FAB1493-4DB3-8475-3DF0-88B5005960FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.4536825889403483 0 0 0 0 1 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:tangentTibia_02_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "8D450325-471D-F143-E644-6694BBC7DB19";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:tangentTibia_02_IK_CON" -p "spineLeg_L:tangentTibia_02_IK_BUF";
	rename -uid "55A3797B-4144-5B29-87B4-64ADE2D46F29";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tangentTibia_02_IK_CONShape" -p "spineLeg_L:tangentTibia_02_IK_CON";
	rename -uid "FF6912A5-407C-F8E6-B53D-7C845A0D10C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.4536825889403483 0 0 0 0 1 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:tangentFemur_01_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "C036FD68-40DB-67AD-94E0-A4B2E841F58A";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000004 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:tangentFemur_01_IK_CON" -p "spineLeg_L:tangentFemur_01_IK_BUF";
	rename -uid "5FFFC950-4ACF-3F43-730F-CEB916795892";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1102230246251565e-16 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tangentFemur_01_IK_CONShape" -p "spineLeg_L:tangentFemur_01_IK_CON";
	rename -uid "F5FEEC3A-4C87-21A2-C929-C1B44DB882DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.4536825889403483 0 0 0 0 1 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:tangentFemur_02_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "C093B88F-4E7D-F16A-A6CF-DA8501DEAB6C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000004 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:tangentFemur_02_IK_CON" -p "spineLeg_L:tangentFemur_02_IK_BUF";
	rename -uid "7C9F8B0B-4BD0-3711-002C-A696C847B655";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.2204460492503131e-16 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tangentFemur_02_IK_CONShape" -p "spineLeg_L:tangentFemur_02_IK_CON";
	rename -uid "F7130345-4FDE-F6B4-AFB2-C199DF177135";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.4536825889403483 0 0 0 0 1 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:femurSpine_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "209C1A33-4907-3D07-2928-899D7080D027";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:femurSpine_IK_CON" -p "spineLeg_L:femurSpine_IK_BUF";
	rename -uid "97B024E5-4FEE-DF9C-4841-9CB0CDB2B5AC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".s" -type "double3" 1 1 1 ;
	setAttr -av ".sz";
	setAttr -av ".sx";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:femurSpine_IK_CONShape" -p "spineLeg_L:femurSpine_IK_CON";
	rename -uid "19873E6B-480A-7149-F497-BEB3EAB112E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.75045737872746776 0 0 0 0 1 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:tibiaSpine_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "CF72F458-463C-3CC7-ABE5-C78CB12F8EBD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:tibiaSpine_IK_CON" -p "spineLeg_L:tibiaSpine_IK_BUF";
	rename -uid "55216404-40BA-05D3-D82E-76A857688FAC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tibiaSpine_IK_CONShape" -p "spineLeg_L:tibiaSpine_IK_CON";
	rename -uid "B469E95B-4EDE-0D1D-920C-4A9D74D9D978";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.75045737872746776 0 0 0 0 1 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:footSpine_IK_BUF" -p "spineLeg_L:IK_GRP";
	rename -uid "CD6CCA20-481A-862C-F1CE-C99466056325";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:footSpine_IK_CON" -p "spineLeg_L:footSpine_IK_BUF";
	rename -uid "424959F0-4BB9-B9B1-7384-ADB95E11C51F";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tz";
	setAttr -av ".ty";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:footSpine_IK_CONShape" -p "spineLeg_L:footSpine_IK_CON";
	rename -uid "5A3B8457-481A-42CE-AACE-9483BAF27A9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.75045737872746776 0 0 0 0 1 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:FK_GRP" -p "spineLeg_L:controllers_GRP";
	rename -uid "28CD4A6E-4CD6-25B0-ED6F-6DA8446DF466";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".rig_objectType" 5;
createNode transform -n "spineLeg_L:humerus_FK_BUF" -p "spineLeg_L:FK_GRP";
	rename -uid "EBCE0F25-4637-C48E-AA00-6A96D3E4BEAD";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".t" -type "double3" 0 4 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineLeg_L:femur_FK_CON" -p "spineLeg_L:humerus_FK_BUF";
	rename -uid "C81D7989-49E9-00DA-04CB-F0A9E64D68CF";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:femur_FK_CONShape" -p "spineLeg_L:femur_FK_CON";
	rename -uid "5B43FB49-4063-09E1-9C88-33A1E921EE8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.49873372631954727 0 0 0 0 1 0 0 0 0 0.49873372631954727 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:tibia_FK_CON" -p "spineLeg_L:femur_FK_CON";
	rename -uid "9F3BB27C-4C29-B348-5B82-ED85BFE8E6EE";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:tibia_FK_CONShape" -p "spineLeg_L:tibia_FK_CON";
	rename -uid "671E381B-41CD-41C2-808C-7CA509E1F30F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.49873372631954727 0 0 0 0 1 0 0 0 0 0.49873372631954727 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:foot_FK_CON" -p "spineLeg_L:tibia_FK_CON";
	rename -uid "88C5066E-43A5-0690-B99F-50865BADF1C2";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -2 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineLeg_L:foot_FK_CONShape" -p "spineLeg_L:foot_FK_CON";
	rename -uid "27B624D1-4305-A453-EE81-B7A4DF912225";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.49873372631954727 0 0 0 0 1 0 0 0 0 0.49873372631954727 0
		 0 0 0 1;
createNode transform -n "spineLeg_L:bones_GRP" -p "spineLeg_L:module";
	rename -uid "59F63D4B-4F3A-6912-2E84-7A990F483111";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".rig_objectType" 5;
createNode joint -n "spineLeg_L:femur__JNT" -p "spineLeg_L:bones_GRP";
	rename -uid "17A81A1C-4D2E-329A-7B5F-40A33666944E";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".radi" 0.25;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibia__JNT" -p "spineLeg_L:bones_GRP";
	rename -uid "1D7ABDB3-43B0-6983-803E-B5B2A6012195";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".radi" 0.25;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:foot__JNT" -p "spineLeg_L:bones_GRP";
	rename -uid "C455B592-40BD-4568-0D87-F3B4E541382C";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".radi" 0.25;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:femurSpine_1" -p "spineLeg_L:bones_GRP";
	rename -uid "0D381293-4593-8541-070A-F7B2CADA5418";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 4 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:femurSpine_2" -p "spineLeg_L:bones_GRP";
	rename -uid "0C74B90E-4251-0284-CFB2-D6AF819B486A";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3336012334664027e-16 3.5999999940395355 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:femurSpine_3" -p "spineLeg_L:bones_GRP";
	rename -uid "4E89F514-461D-7535-3F3D-B69F3A467814";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7749702457432323e-16 3.199999988079071 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:femurSpine_4" -p "spineLeg_L:bones_GRP";
	rename -uid "1ABCE6B9-4961-92B0-F5F1-7BA737FA909B";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4240971549312605e-16 2.7999999523162842 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:femurSpine_5" -p "spineLeg_L:bones_GRP";
	rename -uid "BA6C623A-4841-4FEB-2A62-15875C32874E";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.9242226156147543e-16 2.3999999761581416 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibiaSpine_1" -p "spineLeg_L:bones_GRP";
	rename -uid "E8A6E642-4FEF-61FC-647D-C3BFA815BE5D";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.1974837656301672e-31 1.9999999999999996 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibiaSpine_2" -p "spineLeg_L:bones_GRP";
	rename -uid "8478E0F5-4C6C-C763-60F3-FE906E407410";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.1240371268487213e-17 1.5999999046325686 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibiaSpine_3" -p "spineLeg_L:bones_GRP";
	rename -uid "AFCA9EB8-48F8-5D44-B463-529A531C05A8";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.2000000476837158 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibiaSpine_4" -p "spineLeg_L:bones_GRP";
	rename -uid "996DD181-464D-4153-CCF5-77A5CFAD08AC";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.79999995231628396 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:tibiaSpine_5" -p "spineLeg_L:bones_GRP";
	rename -uid "3BA8219A-4F62-E1B3-A053-FEB45A2D4C1E";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.40000009536743175 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineLeg_L:footSpine" -p "spineLeg_L:bones_GRP";
	rename -uid "C3E78212-48A0-D2D3-25C5-10A459706E4A";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.1102230246251565e-16 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode transform -n "spineLeg_L:footAttach" -p "spineLeg_L:module";
	rename -uid "84129133-4493-6787-A5DD-D19A1BD993AA";
	addAttr -ci true -sn "rig_controllerType" -ln "rig_controllerType" -min 0 -max 
		3 -en "None:FK:IK:Mix" -at "enum";
	addAttr -s false -ci true -sn "rig_guid" -ln "rig_guid" -at "message";
	addAttr -ci true -sn "rig_guidMatchType" -ln "rig_guidMatchType" -min 0 -max 6 -en 
		"SRT:SR:ST:RT:T:R:S" -at "enum";
	addAttr -ci true -sn "rig_hierarchyOrder" -ln "rig_hierarchyOrder" -at "long";
	addAttr -ci true -sn "rig_is" -ln "rig_is" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_locationDepth" -ln "rig_locationDepth" -min 0 -max 5 -en 
		"None:Middle:Front=4:Back" -at "enum";
	addAttr -ci true -sn "rig_locationHeight" -ln "rig_locationHeight" -min 0 -max 7 
		-en "None:Middle:Up=6:Down" -at "enum";
	addAttr -ci true -sn "rig_locationSide" -ln "rig_locationSide" -dv 1 -min 0 -max 
		3 -en "None:Middle:Left:Right" -at "enum";
	addAttr -ci true -sn "rig_mirrorAxis" -ln "rig_mirrorAxis" -min 0 -max 2 -en "Axis X:Axis Y:Axis Z" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_mirrorDefaultObject" -ln "rig_mirrorDefaultObject" 
		-at "message";
	addAttr -ci true -sn "rig_mirrorFreezeNegativeScale" -ln "rig_mirrorFreezeNegativeScale" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rig_mirrorType" -ln "rig_mirrorType" -min 0 -max 6 -en "SRT:SR:ST:RT:T:R:S" 
		-at "enum";
	addAttr -ci true -sn "rig_objectType" -ln "rig_objectType" -min 0 -max 8 -en "Guid:Buffer:Rest:Controller:Constraint:Group:Asset:Module:Joint" 
		-at "enum";
	addAttr -s false -ci true -sn "rig_targetFK" -ln "rig_targetFK" -at "message";
	addAttr -s false -ci true -sn "rig_targetIK" -ln "rig_targetIK" -at "message";
	addAttr -ci true -sn "rig_targetMatchType" -ln "rig_targetMatchType" -min 0 -max 
		6 -en "SRT:SR:ST:RT:T:R:S" -at "enum";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr ".rig_objectType" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0F7FA76D-496F-D4DF-A025-42A753BF4D45";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6364FC1E-41D7-546E-856E-749933AF0BDD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6AC008EB-4F02-F94A-9295-4B913F9AD13F";
createNode displayLayerManager -n "layerManager";
	rename -uid "A056C9F9-4457-B57E-047E-B2AD76626BC5";
createNode displayLayer -n "defaultLayer";
	rename -uid "06CEE88C-43D1-A747-C881-CD97C9830C08";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7E661F79-4AEE-917E-1CD2-A3A86901754A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "06724AC9-4B00-63A9-3596-E4B94880C140";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "070C326C-46C1-3770-A7FB-6A9158D2D52D";
	setAttr ".sh" 18;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9EF8EBE1-4720-978F-A7F9-13A957BCF0FB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1232\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1232\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1232\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4ACB79D6-44CF-D124-327D-A487CAC56795";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode ngst2SkinLayerData -n "spineLeg_L:skinCluster2";
	rename -uid "B496CFF6-45A7-E157-B72E-07A1784EFA5D";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 14 26755 {
"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"};
createNode animCurveTA -n "spineLeg_L:hand_FK_CON_rotateZ";
	rename -uid "6E068090-46F8-E37D-A6DE-78B48CD1C4B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:hand_FK_CON_rotateY";
	rename -uid "5902B29A-4E10-79FD-ACB7-5F964A60B1EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:hand_FK_CON_rotateX";
	rename -uid "EA34784C-4596-C9BE-DCBB-CFB3500A4C7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 41.288514931447331 25 0
		 30 0 35 132.59246532275722 40 0;
createNode animCurveTA -n "spineLeg_L:radius_FK_CON_rotateZ";
	rename -uid "C9A7DEC3-42BA-B5B9-635C-6C9FC14C4D46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 -36.546579680893622
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:radius_FK_CON_rotateY";
	rename -uid "F86A644A-4188-D2CB-4385-ECAC6488564B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 35.927627889499718
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:radius_FK_CON_rotateX";
	rename -uid "1462EA05-4D19-0BF5-F387-1EBD94F02FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 50.662026092448443 15 0 20 59.42860461315216
		 25 40.67387464399966 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:humerus_FK_CON_rotateZ";
	rename -uid "602A184C-497F-61DF-6809-0DBE224ED32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 -34.852064422328347
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:humerus_FK_CON_rotateY";
	rename -uid "8B2645D4-4EE0-5F41-45A1-0DB6F999C2D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:humerus_FK_CON_rotateX";
	rename -uid "97C99D9E-406F-9F9B-DA7D-29A250FEBCA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 -52.829858461945427 15 0 20 38.324418354353696
		 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:upVector_IK_CON_translateZ";
	rename -uid "790239A7-4EE9-88ED-8D2B-7686FF317941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:upVector_IK_CON_translateY";
	rename -uid "184CB7DF-410F-E22A-9C45-74BCE5208EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:upVector_IK_CON_translateX";
	rename -uid "B06BE230-4F1E-E70B-AE34-949FE67CF83F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:hand_IK_CON_rotateZ";
	rename -uid "90DA9AA0-4F61-A070-9549-96812658679F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:hand_IK_CON_rotateY";
	rename -uid "A7569155-4E55-09B3-DD39-F1A887F7BD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:hand_IK_CON_rotateX";
	rename -uid "F4AD72A2-492D-1E95-E5A6-ABA37280C9F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:hand_IK_CON_translateZ";
	rename -uid "F33D81E8-4177-66FC-AC3C-A493C4329745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:hand_IK_CON_translateY";
	rename -uid "E188D644-43DB-4A53-59A4-2F8C8CA46293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:hand_IK_CON_translateX";
	rename -uid "F35FD09A-4CD2-038A-1945-6E8FA4388F18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineLeg_L:handSpine_IK_CON_scaleZ";
	rename -uid "A4C6A6A2-4A13-605B-C320-FE9F19EA985C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:handSpine_IK_CON_scaleY";
	rename -uid "0E403428-47DE-F002-4270-619D7A584341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:handSpine_IK_CON_scaleX";
	rename -uid "6A931C4F-4EE5-4271-DBE5-04B5D2D542D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:handSpine_IK_CON_rotateZ";
	rename -uid "9F891D6E-4C19-8785-F3D1-E48DB3FDF946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:handSpine_IK_CON_rotateY";
	rename -uid "D91DC0A8-4B73-B539-A11C-AA99944310D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:handSpine_IK_CON_rotateX";
	rename -uid "68EF6352-4DCC-AFA2-D565-82A7469E27C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:handSpine_IK_CON_translateZ";
	rename -uid "BF8F617D-4864-B923-B16F-A7A75694706B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:handSpine_IK_CON_translateY";
	rename -uid "D3FD0FA6-4E39-E16C-A546-C88AC2448C58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:handSpine_IK_CON_translateX";
	rename -uid "61FC2525-4916-7AF5-CBB4-8D939F659F3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineLeg_L:handSpine_IK_CON_visibility";
	rename -uid "ED38B846-4E8D-9C88-4FB3-5AB468848D6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:radiusSpine_IK_CON_scaleZ";
	rename -uid "5F489032-46E2-F29F-DF29-9AAB646FDEBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:radiusSpine_IK_CON_scaleY";
	rename -uid "630C7820-4513-9001-ED22-16BBF68B7594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:radiusSpine_IK_CON_scaleX";
	rename -uid "E68F91B7-4FB9-9E2D-9AD6-A195A934274A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:radiusSpine_IK_CON_rotateZ";
	rename -uid "9BAD8CDC-482E-63A0-3436-E09986D7940D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -1.8459477445397439
		 40 0;
createNode animCurveTA -n "spineLeg_L:radiusSpine_IK_CON_rotateY";
	rename -uid "73D89F48-4470-B7C1-D21B-1E88FA4D6773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -1.987846675914698e-16
		 40 0;
createNode animCurveTA -n "spineLeg_L:radiusSpine_IK_CON_rotateX";
	rename -uid "628A8F87-42D1-7C31-614B-5EA5699ACF0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 78.9298218823957 40 0;
createNode animCurveTL -n "spineLeg_L:radiusSpine_IK_CON_translateZ";
	rename -uid "48264E55-4F8B-D788-50D4-53AE0505A663";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.31191979635454115
		 40 0;
createNode animCurveTL -n "spineLeg_L:radiusSpine_IK_CON_translateY";
	rename -uid "49362A20-4D15-9DF9-A546-898546FCD8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.078576511904590099
		 40 0;
createNode animCurveTL -n "spineLeg_L:radiusSpine_IK_CON_translateX";
	rename -uid "DF5109AE-49CE-A46C-499F-1DB4FA17A6BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.0025324438068063961
		 40 0;
createNode animCurveTU -n "spineLeg_L:radiusSpine_IK_CON_visibility";
	rename -uid "CD3D5E8E-4A63-C253-8A6B-85A75B7DF264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:humerusSpine_IK_CON_scaleZ";
	rename -uid "44F7B203-478D-43B8-7A49-8186E0BD04F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:humerusSpine_IK_CON_scaleY";
	rename -uid "ABB49E2F-4708-EF0A-E5B5-0289FAAF637D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:humerusSpine_IK_CON_scaleX";
	rename -uid "2F58C295-4119-13D4-AFBA-5AA072904C46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:humerusSpine_IK_CON_rotateZ";
	rename -uid "CAAFA927-4A4A-082B-104B-54AF308EBDBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:humerusSpine_IK_CON_rotateY";
	rename -uid "4E64F650-4ADA-8290-F987-4D94D89C76A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:humerusSpine_IK_CON_rotateX";
	rename -uid "8BFD88D0-4660-7811-7F1C-CF95DD9BA619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerusSpine_IK_CON_translateZ";
	rename -uid "547F3F47-4A71-AB87-5E80-9B8F68F380F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerusSpine_IK_CON_translateY";
	rename -uid "EE030404-4753-5C8E-513A-50815C0ABEFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerusSpine_IK_CON_translateX";
	rename -uid "ED7B5039-40AB-BF02-8EEA-B1BCBF0B0B53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineLeg_L:humerusSpine_IK_CON_visibility";
	rename -uid "4F77569A-4E8F-3202-B4B9-23B9FF5F46E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_02_IK_CON_scaleZ";
	rename -uid "348CC2FC-400D-4FBE-F921-3C8467E39771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_02_IK_CON_scaleY";
	rename -uid "EA95485B-4E63-5D20-A265-DEAEAF36D5D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_02_IK_CON_scaleX";
	rename -uid "78CE918F-4E19-B910-4084-94BC593DC761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_02_IK_CON_rotateZ";
	rename -uid "272C1756-4D01-B35A-4106-D4A66A662283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_02_IK_CON_rotateY";
	rename -uid "59BEABC3-45F5-559F-5717-CE972148313F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_02_IK_CON_rotateX";
	rename -uid "426D1E58-4D7C-0B9B-440F-318DDB34509D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_02_IK_CON_translateZ";
	rename -uid "7189C041-429D-2FD0-923C-9189DDB52AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.1866678286851125
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_02_IK_CON_translateY";
	rename -uid "80092715-4FC2-9E33-363A-9EACD6CD7A2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.33107653375617607
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_02_IK_CON_translateX";
	rename -uid "BB8402E5-40E5-C034-DB7A-92829F61B0DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -3.8270498585973477e-17
		 40 0;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_02_IK_CON_visibility";
	rename -uid "1B8DB673-46C3-CA74-C233-B9BC59A3C2CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_01_IK_CON_scaleZ";
	rename -uid "F0A79F7B-469E-6841-5C79-2EBF92C13EB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_01_IK_CON_scaleY";
	rename -uid "F9F0A3B9-47D8-7AE9-FD1F-11B9477CFD5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_01_IK_CON_scaleX";
	rename -uid "E7528134-4C68-0AE4-3AF3-33A06EA74530";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_01_IK_CON_rotateZ";
	rename -uid "9A1EBE86-494A-C58C-81C2-13B5BF10598D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_01_IK_CON_rotateY";
	rename -uid "C3AF0276-4663-8118-17BD-E595B93C39D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentHumerus_01_IK_CON_rotateX";
	rename -uid "F23E3F35-4C8F-FC2B-1655-B4A4F9240B96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_01_IK_CON_translateZ";
	rename -uid "0B7D2E37-4983-F5BE-A0C3-CDB56143DF7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.17882559114999433
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_01_IK_CON_translateY";
	rename -uid "1470C81D-425D-92C2-3744-CAA8E4C81A73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.10850679919261796
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentHumerus_01_IK_CON_translateX";
	rename -uid "6557FD5C-4A94-3812-046B-90A89A587FCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -4.9303806576313238e-32
		 40 0;
createNode animCurveTU -n "spineLeg_L:tangentHumerus_01_IK_CON_visibility";
	rename -uid "BAF9DC59-43CF-87BC-9B3D-E796B1013534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:tangentRadius_02_IK_CON_scaleZ";
	rename -uid "89CF221E-44C9-E238-D31D-3D8F9688A5C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentRadius_02_IK_CON_scaleY";
	rename -uid "1824DA83-4306-F047-11B3-38B41BB5D5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentRadius_02_IK_CON_scaleX";
	rename -uid "2184BBC0-4A10-28B9-1D12-2BA75C4563E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:tangentRadius_02_IK_CON_rotateZ";
	rename -uid "EE632B95-4112-7D40-6EFA-A4B38BC83358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentRadius_02_IK_CON_rotateY";
	rename -uid "5B64A5B7-4BF2-8B75-4BAF-BFA9A1A81293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentRadius_02_IK_CON_rotateX";
	rename -uid "9D67FB65-4FE7-86D3-400C-03B1D17E4931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_02_IK_CON_translateZ";
	rename -uid "AACAD79C-41D4-ECB7-E021-B2B4B071614D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.14341371552866825
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_02_IK_CON_translateY";
	rename -uid "C637A048-4740-BDA2-2122-18B5BDB3628D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.12330378013491276
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_02_IK_CON_translateX";
	rename -uid "0EF32C04-477E-6128-6658-0BA53BE721CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.024592957306295099
		 40 0;
createNode animCurveTU -n "spineLeg_L:tangentRadius_02_IK_CON_visibility";
	rename -uid "4CC92AA1-420F-DF23-08DF-2FA79B4E9AA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineLeg_L:tangentRadius_01_IK_CON_scaleZ";
	rename -uid "7082BC41-4F1C-804C-5056-569578167750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentRadius_01_IK_CON_scaleY";
	rename -uid "56B2D512-44A0-D895-B918-4D8D146128D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineLeg_L:tangentRadius_01_IK_CON_scaleX";
	rename -uid "724DD2E0-437C-7283-8877-F8AAE423405D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineLeg_L:tangentRadius_01_IK_CON_rotateZ";
	rename -uid "3ADC4F79-4858-B985-A7E7-F5BE90BD82E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentRadius_01_IK_CON_rotateY";
	rename -uid "289898C5-432A-1878-76ED-6AB5D9B3DF84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineLeg_L:tangentRadius_01_IK_CON_rotateX";
	rename -uid "225BE981-4474-8EA0-01B9-09BACB9D4CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_01_IK_CON_translateZ";
	rename -uid "D6572796-4ACF-1E59-BE2A-32839E5AD378";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.91647290617942501
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_01_IK_CON_translateY";
	rename -uid "01993CF4-46E7-8CFB-5671-0EB166D7EB34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.099755384787067386
		 40 0;
createNode animCurveTL -n "spineLeg_L:tangentRadius_01_IK_CON_translateX";
	rename -uid "945FF62E-4124-AD34-B2B8-A2906F5F4D55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.16015056946348277
		 40 0;
createNode animCurveTU -n "spineLeg_L:tangentRadius_01_IK_CON_visibility";
	rename -uid "C9C9054E-44AD-38FC-D6E2-AF8BB55D7320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "spineLeg_L:hand_FK_CON_translateZ";
	rename -uid "12F5D401-4815-9C46-44D2-0A9DD2910B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 -2.2066728570883507
		 40 0;
createNode animCurveTL -n "spineLeg_L:hand_FK_CON_translateY";
	rename -uid "24C02FF4-4EAC-F163-2CE7-14A8617B0417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 -1.1102230246251565e-16 10 -1.1102230246251565e-16
		 15 -1.1102230246251565e-16 20 -1.1102230246251565e-16 25 -1.1102230246251565e-16
		 30 -1.1102230246251565e-16 35 3.5010161599136387 40 0;
createNode animCurveTL -n "spineLeg_L:hand_FK_CON_translateX";
	rename -uid "F5B045AE-4CD0-1B36-C08D-3FA22D0E0342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:radius_FK_CON_translateZ";
	rename -uid "B9D370C0-4C11-1699-2049-1AB347B0CBBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:radius_FK_CON_translateY";
	rename -uid "8AF5A31E-4470-DAF9-BCC8-BE8D4C27D8AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:radius_FK_CON_translateX";
	rename -uid "1CF45ADD-484B-BA6B-9118-FEA23B63450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerus_FK_CON_translateZ";
	rename -uid "33769F21-45FA-22F9-0E4B-389C6FC5FCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerus_FK_CON_translateY";
	rename -uid "36761F1E-4418-1AC9-267D-E8A76B507E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineLeg_L:humerus_FK_CON_translateX";
	rename -uid "DCFE6450-4316-ECE3-D1B5-63979036FF64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 10 0 15 0 20 0 30 0 35 0 40 0;
createNode ldRigCurveNode -n "spineLeg_L:ldRigCurveNode1";
	rename -uid "C04A78FB-4829-ABDB-E582-98B7226E7AF4";
	setAttr ".defCount" 11;
	setAttr ".crvRestL" 4;
	setAttr ".ctrlRestD" 4;
	setAttr -s 2 ".distProfil[0:1]"  0 0 1 1 1 1;
	setAttr ".twistAlign" 4;
	setAttr -s 2 ".twistProfil[0:1]"  0 0 1 1 1 1;
	setAttr ".scaleProfil[0]"  0 0 1;
	setAttr ".maxSLF" 2;
	setAttr ".minSLF" 0.5;
	setAttr ".snsMode" 1;
	setAttr -s 3 ".strchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 3 ".sqtchProfil[0:2]"  0 0 2 0.5 1 2 1 0 2;
	setAttr -s 7 ".ctrls";
	setAttr ".ctrls[0].nTan" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999989 0 0
		 0 0 1.0000000000000004 0 0.66600000858306863 0 0 1;
	setAttr ".ctrls[1].pTan" -type "matrix" 0.99999999999999989 0 0 0 0 0.99999999999999989 0 0
		 0 0 1.0000000000000004 0 1.3320000171661373 0 0 1;
	setAttr ".ctrls[1].nTan" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.6660000085830688 0 0 1;
	setAttr ".ctrls[2].pTan" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3320000171661377 0 0 1;
	setAttr -s 11 ".defs";
createNode ldRigTwistNode -n "ldRigTwistNode1";
	rename -uid "69B820DE-4261-64A9-1C3F-D787C29DE73B";
	setAttr ".sr" 0.33300000429153442;
	setAttr ".er" 0.66600000858306885;
	setAttr ".tc" 2;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr ".aa" 1;
	setAttr -s 2 ".ts";
createNode ldRigTwistNode -n "ldRigTwistNode2";
	rename -uid "669B6C77-42CD-0933-3D4C-46A5D7E94F9F";
	setAttr ".sr" 0.33300000429153442;
	setAttr ".er" 0.66600000858306885;
	setAttr ".tc" 2;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr ".aa" 1;
	setAttr -s 2 ".ts";
createNode ldRigFkIk2Bones -n "ldRigFkIk2Bones1";
	rename -uid "21D246A6-4163-00CD-4E02-54A1582E432F";
	setAttr ".b1L" 2;
	setAttr ".b2L" 2;
	setAttr ".activateS" 1;
	setAttr ".alignAxis" 4;
	setAttr ".upVectorAxis" 3;
createNode ldRigComparaisonNode -n "ldRigComparaisonNode1";
	rename -uid "E4D0C698-436E-9BAF-5D49-EC87D52FB1D1";
	setAttr ".camparaisonType" 2;
createNode ldRigComparaisonNode -n "ldRigComparaisonNode2";
	rename -uid "E537E383-4213-3EC3-1AAE-33B5F5AC2308";
	setAttr ".camparaisonType" 4;
	setAttr ".secondTerm" 1;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "E40D398C-4982-8B19-7A44-49BC83EDC41B";
	setAttr ".txf" -type "matrix" 0.25 0 0 0 0 2 0 0 0 0 0.25 0 0 2 0 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "9C8A01DF-4F88-3EC0-EE0C-66BD214AE347";
	setAttr -s 382 ".wl";
	setAttr ".wl[0:99].w"
		5 6 0.00052150123280522481 7 0.0015887559301065528 8 0.0072676431706601222 
		9 0.07244786883744854 10 0.91817423082897953
		5 6 0.0005215012303890395 7 0.0015887559228884825 8 0.0072676431393840536 
		9 0.072447868596047738 10 0.9181742311112906
		5 6 0.00052150113830761174 7 0.0015887556478060459 8 0.0072676419474453696 
		9 0.072447859396203823 10 0.91817424187023722
		5 6 0.00052150099872284015 7 0.0015887552308129537 8 0.0072676401406044323 
		9 0.072447845450305401 10 0.91817425817955434
		5 6 0.00052150090744236912 7 0.0015887549581232779 8 0.0072676389590335937 
		9 0.072447836330483156 10 0.91817426884491771
		5 6 0.00052150089047466486 7 0.0015887549074342564 8 0.0072676387393968544 
		9 0.072447834635241543 10 0.91817427082745262
		5 6 0.00052150072826132098 7 0.0015887544228409577 8 0.0072676366396425404 
		9 0.07244781842852141 10 0.91817428978073379
		5 6 0.00052150056927893252 7 0.0015887539478997524 8 0.0072676345817109262 
		9 0.072447802544603548 10 0.91817430835650682
		5 6 0.00052150051297231094 7 0.0015887537796903366 8 0.0072676338528554858 
		9 0.072447796919012888 10 0.91817431493546908
		5 6 0.00052150045216705536 7 0.0015887535980417793 8 0.0072676330657679188 
		9 0.072447790843963758 10 0.91817432204005944
		5 6 0.00052150051297231094 7 0.0015887537796903366 8 0.0072676338528554858 
		9 0.072447796919012888 10 0.91817431493546908
		5 6 0.00052150041029657573 7 0.0015887534729586389 8 0.0072676325237796616 
		9 0.072447786660686644 10 0.91817432693227852
		5 6 0.00052150031821524684 7 0.0015887531978764848 8 0.0072676313318420427 
		9 0.072447777460846088 10 0.91817433769122014
		5 6 0.00052150029647611074 7 0.001588753132933369 8 0.0072676310504419511 
		9 0.072447775288890084 10 0.91817434023125855
		5 6 0.00052150022452949931 7 0.001588752918001317 8 0.0072676301191361642 
		9 0.072447768100707424 10 0.91817434863762559
		5 6 0.00052150013547014144 7 0.0015887526519469438 8 0.0072676289663161069 
		9 0.072447759202790438 10 0.91817435904347633
		5 6 0.00052150009233196265 7 0.0015887525230766991 8 0.007267628407918207 
		9 0.072447754892856348 10 0.91817436408381681
		5 6 0.00052150006715164367 7 0.0015887524478534528 8 0.0072676280819740481 
		9 0.072447752377091487 10 0.91817436702592936
		5 6 0.00052150004480804621 7 0.0015887523811045788 8 0.0072676277927495531 
		9 0.072447750144743264 10 0.91817436963659449
		5 6 0.00052149999689200908 7 0.0015887522379610418 8 0.0072676271725051148 
		9 0.07244774535745313 10 0.91817437523518874
		5 6 0.0012979359583652293 7 0.0048099755372279967 8 0.031768700943704764 
		9 0.56348360776042183 10 0.39863977980028015
		5 6 0.001297935954618199 7 0.0048099755240598365 8 0.03176870087222209 
		9 0.56348360793689378 10 0.39863977971220604
		5 6 0.0012979358118178899 7 0.0048099750222179343 8 0.03176869814799959 
		9 0.56348361466228569 10 0.39863977635567893
		5 6 0.0012979355953491661 7 0.0048099742614837434 8 0.031768694018393676 
		9 0.56348362485720238 10 0.398639771267571
		5 6 0.0012979354537909758 7 0.0048099737640069952 8 0.031768691317866971 
		9 0.56348363152409675 10 0.3986397679402382
		5 6 0.0012979354274773789 7 0.0048099736715333441 8 0.031768690815878561 
		9 0.56348363276337521 10 0.39863976732173556
		5 6 0.0012979351759161391 7 0.0048099727874738006 8 0.031768686016807005 
		9 0.56348364461103029 10 0.39863976140877289
		5 6 0.0012979349293654684 7 0.0048099719210228445 8 0.031768681313322507 
		9 0.56348365622270746 10 0.39863975561358178
		5 6 0.0012979348420448808 7 0.0048099716141528307 8 0.031768679647494365 
		9 0.56348366033520336 10 0.39863975356110454
		5 6 0.001297934747747787 7 0.0048099712827653403 8 0.03176867784857431 
		9 0.56348366477626888 10 0.3986397513446438
		5 6 0.0012979348420448808 7 0.0048099716141528307 8 0.031768679647494365 
		9 0.56348366033520336 10 0.39863975356110454
		5 6 0.0012979346828148367 7 0.0048099710545720141 8 0.031768676609838481 
		9 0.5634836678343853 10 0.3986397498183894
		5 6 0.0012979345400146469 7 0.0048099705527304883 8 0.031768673885617292 
		9 0.56348367455977932 10 0.39863974646185835
		5 6 0.0012979345063014837 7 0.0048099704342525985 8 0.031768673242466086 
		9 0.56348367614755257 10 0.39863974566942734
		5 6 0.001297934394726313 7 0.0048099700421448972 8 0.031768671113929323 
		9 0.56348368140235694 10 0.39863974304684258
		5 6 0.0012979342566126035 7 0.0048099695567730225 8 0.031768668479112652 
		9 0.56348368790703529 10 0.39863973980046646
		5 6 0.0012979341897136935 7 0.0048099693216707325 8 0.031768667202871748 
		9 0.5634836910577431 10 0.39863973822800064
		5 6 0.0012979341506639242 7 0.0048099691844384444 8 0.031768666457913201 
		9 0.56348369289685252 10 0.39863973731013186
		5 6 0.0012979341160133573 7 0.0048099690626662393 8 0.031768665796878919 
		9 0.56348369452877489 10 0.39863973649566659
		5 6 0.001297934041704917 7 0.0048099688015247003 8 0.031768664379285202 
		9 0.56348369802844644 10 0.3986397347490388
		5 6 0.0017872392198672157 7 0.0087050404783553977 8 0.097841485681867887 
		9 0.84002125746405198 10 0.051644977155857454
		5 6 0.0017872392124923769 7 0.008705040444812703 8 0.097841485419819976 
		9 0.84002125792898596 10 0.051644976993888946
		5 6 0.0017872389314354125 7 0.0087050391664924287 8 0.097841475433108838 
		9 0.84002127564773443 10 0.051644970821228854
		5 6 0.0017872385053856201 7 0.008705037228706955 8 0.097841460294410043 
		9 0.84002130250730678 10 0.051644961464190599
		5 6 0.0017872382267733729 7 0.0087050359615058297 8 0.097841450394563947 
		9 0.84002132007193575 10 0.051644955345221115
		5 6 0.0017872381749834312 7 0.0087050357259516754 8 0.097841448554327276 
		9 0.84002132333694346 10 0.051644954207794184
		5 6 0.0017872376798651927 7 0.0087050334740248099 8 0.097841430961435577 
		9 0.84002135455082316 10 0.051644943333851258
		5 6 0.0017872371946086711 7 0.0087050312669515323 8 0.097841413718954537 
		9 0.84002138514299207 10 0.051644932676493283
		5 6 0.0017872370227458862 7 0.0087050304852747239 8 0.097841407612202724 
		9 0.84002139597778891 10 0.051644928901987866
		5 6 0.0017872368371520705 7 0.008705029641145598 8 0.097841401017549609 
		9 0.84002140767823574 10 0.051644924825917031
		5 6 0.0017872370227458862 7 0.0087050304852747239 8 0.097841407612202724 
		9 0.84002139597778891 10 0.051644928901987866
		5 6 0.0017872367093522289 7 0.0087050290598785461 8 0.097841396476473413 
		9 0.84002141573515998 10 0.051644922019135849
		5 6 0.0017872364282955082 7 0.0087050277815591791 8 0.097841386489762497 
		9 0.84002143345390512 10 0.051644915846477603
		5 6 0.0017872363619418786 7 0.0087050274797655404 8 0.097841384132037121 
		9 0.84002143763705772 10 0.051644914389197744
		5 6 0.0017872361423416706 7 0.0087050264809664206 8 0.097841376329042704 
		9 0.8400214514813823 10 0.051644909566266828
		5 6 0.0017872358705087982 7 0.0087050252445994847 8 0.097841366670078381 
		9 0.84002146861862848 10 0.051644903596184941
		5 6 0.001787235738839589 7 0.0087050246457335036 8 0.0978413619915115 
		9 0.84002147691949258 10 0.051644900704422854
		5 6 0.0017872356619825496 7 0.0087050242961675996 8 0.097841359260570762 
		9 0.84002148176481573 10 0.051644899016463498
		5 6 0.0017872355937839381 7 0.0087050239859824841 8 0.09784135683728748 
		9 0.84002148606428284 10 0.05164489751866326
		5 6 0.0017872354475314267 7 0.0087050233207878261 8 0.097841351640535493 
		9 0.84002149528452763 10 0.051644894306617721
		5 6 0.0051096172521315408 7 0.036999858259583449 8 0.69108081248446518 
		9 0.24947967110385824 10 0.017330040899961565
		5 6 0.0051096172366941516 7 0.036999858168996272 8 0.69108081288552525 
		9 0.24947967085623898 10 0.017330040852545268
		5 6 0.0051096166483712412 7 0.036999854716694279 8 0.69108082817003813 
		9 0.24947966141939859 10 0.017330039045497826
		5 6 0.0051096157565418574 7 0.036999849483404089 8 0.69108085133959196 
		9 0.24947964711423895 10 0.017330036306223144
		5 6 0.0051096151733363302 7 0.036999846061130832 8 0.69108086649115996 
		9 0.24947963775947918 10 0.017330034514893788
		5 6 0.0051096150649269515 7 0.036999845424980242 8 0.69108086930761492 
		9 0.24947963602056616 10 0.017330034181911848
		5 6 0.0051096140285198837 7 0.036999839343301887 8 0.6910808962332764 
		9 0.24947961939633842 10 0.017330030998563301
		5 6 0.0051096130127558301 7 0.036999833382757176 8 0.6910809226226412 
		9 0.2494796031032257 10 0.017330027878620157
		5 6 0.005109612653003753 7 0.036999831271717305 8 0.69108093196893561 
		9 0.24947959733271013 10 0.01733002677363318
		5 6 0.005109612264509171 7 0.036999828992015163 8 0.69108094206195592 
		9 0.24947959110115681 10 0.017330025580362906
		5 6 0.005109612653003753 7 0.036999831271717305 8 0.69108093196893561 
		9 0.24947959733271013 10 0.01733002677363318
		5 6 0.0051096119969919179 7 0.036999827422212923 8 0.69108094901200701 
		9 0.24947958681011079 10 0.017330024758677346
		5 6 0.0051096114086694169 7 0.036999823969912214 8 0.69108096429652288 
		9 0.24947957737326462 10 0.017330022951630868
		5 6 0.0051096112697745551 7 0.036999823154871422 8 0.69108096790498752 
		9 0.24947957514535452 10 0.017330022525012007
		5 6 0.0051096108100960047 7 0.036999820457458588 8 0.6910809798473575 
		9 0.24947956777198937 10 0.017330021113098431
		5 6 0.0051096102410813212 7 0.0369998171184567 8 0.69108099463026296 
		9 0.24947955864484272 10 0.017330019365356317
		5 6 0.0051096099654644924 7 0.036999815501125619 8 0.69108100179074217 
		9 0.24947955422387508 10 0.017330018518792657
		5 6 0.005109609804583342 7 0.036999814557068272 8 0.69108100597040767 
		9 0.24947955164329838 10 0.017330018024642371
		5 6 0.0051096096618264619 7 0.036999813719364921 8 0.69108100967920794 
		9 0.24947954935343952 10 0.01733001758616122
		5 6 0.0051096093556831038 7 0.036999811922902831 8 0.69108101763276197 
		9 0.24947954444281753 10 0.017330016645834591
		5 6 0.012069657526683677 7 0.15356310095932429 8 0.78614710083762029 
		9 0.042860313154624928 10 0.0053598275217468421
		5 6 0.012069657486440982 7 0.15356310066677281 8 0.78614710131108145 
		9 0.042860313032824206 10 0.0053598275028805854
		5 6 0.012069655952781758 7 0.15356308951756403 8 0.7861471193548043 
		9 0.042860308390967154 10 0.0053598267838827702
		5 6 0.012069653627931977 7 0.15356307261665261 8 0.78614714670700103 
		9 0.042860301354449098 10 0.0053598256939653638
		5 6 0.012069652107612863 7 0.15356306156441932 8 0.78614716459377865 
		9 0.042860296752967562 10 0.0053598249812215736
		5 6 0.012069651825007769 7 0.15356305950997054 8 0.78614716791866945 
		9 0.042860295897619395 10 0.0053598248487329251
		5 6 0.012069649123268123 7 0.15356303986918535 8 0.78614719970503644 
		9 0.042860287720385061 10 0.0053598235821250796
		5 6 0.01206964647534131 7 0.15356302061959876 8 0.78614723085829141 
		9 0.042860279706023137 10 0.0053598223407453575
		5 6 0.012069645537527866 7 0.1535630138019923 8 0.78614724189180762 
		9 0.042860276867584958 10 0.0053598219010872221
		5 6 0.01206964452478752 7 0.15356300643969037 8 0.78614725380685102 
		9 0.042860273802368724 10 0.0053598214263024541
		5 6 0.012069645537527866 7 0.1535630138019923 8 0.78614724189180762 
		9 0.042860276867584958 10 0.0053598219010872221
		5 6 0.012069643827414812 7 0.15356300137001122 8 0.7861472620115465 
		9 0.042860271691661733 10 0.0053598210993658106
		5 6 0.012069642293756516 7 0.15356299022079928 8 0.78614728005526957 
		9 0.042860267049806146 10 0.0053598203803685079
		5 6 0.012069641931680863 7 0.15356298758862344 8 0.7861472843151448 
		9 0.042860265953927772 10 0.0053598202106231235
		5 6 0.012069640733375794 7 0.15356297887732268 8 0.78614729841338726 
		9 0.042860262327070776 10 0.0053598196488434183
		5 6 0.01206963925004971 7 0.15356296809400799 8 0.78614731586494668 
		9 0.042860257837553227 10 0.0053598189534424757
		5 6 0.012069638531562737 7 0.15356296287083288 8 0.78614732431805678 
		9 0.042860255662940341 10 0.0053598186166072224
		5 6 0.012069638112172492 7 0.15356295982199716 8 0.78614732925224795 
		9 0.042860254393590362 10 0.0053598184199920816
		5 6 0.012069637740029194 7 0.1535629571166319 8 0.78614733363057143 
		9 0.042860253267240599 10 0.0053598182455268711
		5 6 0.012069636941964673 7 0.15356295131495248 8 0.78614734301992428 
		9 0.042860250851773786 10 0.0053598178713847207;
	setAttr ".wl[100:199].w"
		5 5 0.005359826780856846 6 0.042860295398393589 7 0.78614690967222722 
		8 0.15356329908710545 9 0.012069669061416951
		5 5 0.0053598267619905989 6 0.04286029527659297 7 0.78614691014568816 
		8 0.15356329879455397 9 0.012069669021174241
		5 5 0.0053598260429931505 6 0.042860290634739444 7 0.78614692818940857 
		8 0.15356328764534452 9 0.012069667487514273
		5 5 0.0053598249530763037 6 0.042860283598226842 7 0.78614695554160152 
		8 0.15356327074443202 9 0.012069665162663374
		5 5 0.0053598242403328812 6 0.042860278996748831 7 0.78614697342837669 
		8 0.15356325969219803 9 0.012069663642343522
		5 5 0.0053598241078443003 6 0.042860278141401316 7 0.78614697675326684 
		8 0.15356325763774925 9 0.012069663359738299
		5 5 0.0053598228412371036 6 0.042860269964173275 7 0.7861470085396296 
		8 0.1535632379969627 9 0.012069660657997352
		5 5 0.0053598215998580199 6 0.042860261949817492 7 0.78614703969288036 
		8 0.15356321874737491 9 0.01206965801006926
		5 5 0.0053598211602001082 6 0.042860259111381492 7 0.78614705072639501 
		8 0.15356321192976799 9 0.012069657072255366
		5 5 0.0053598206854155893 6 0.042860256046167645 7 0.78614706264143641 
		8 0.15356320456746569 9 0.012069656059514523
		5 5 0.0053598211602001082 6 0.042860259111381492 7 0.78614705072639501 
		8 0.15356321192976799 9 0.012069657072255366
		5 5 0.005359820358479114 6 0.042860253935462285 7 0.786147070846131 
		8 0.15356319949778621 9 0.012069655362141494
		5 5 0.0053598196394821808 6 0.042860249293610278 7 0.7861470888898513 
		8 0.1535631883485736 9 0.012069653828482468
		5 5 0.0053598194697368822 6 0.04286024819773273 7 0.78614709314972619 
		8 0.1535631857163976 9 0.01206965346640663
		5 5 0.0053598189079574676 6 0.042860244570878558 7 0.78614710724796677 
		8 0.15356317700509622 9 0.012069652268100984
		5 5 0.0053598182125568824 6 0.042860240081364437 7 0.78614712469952364 
		8 0.15356316622178084 9 0.012069650784774193
		5 5 0.0053598178757218026 6 0.042860237906753251 7 0.78614713315263263 
		8 0.15356316099860556 9 0.01206965006628687
		5 5 0.0053598176791067606 6 0.042860236637404237 7 0.78614713808682302 
		8 0.15356315794976963 9 0.01206964964689642
		5 5 0.0053598175046416403 6 0.04286023551105534 7 0.78614714246514583 
		8 0.1535631552444042 9 0.01206964927475295
		5 5 0.005359817130499679 6 0.04286023309559038 7 0.78614715185449746 
		8 0.15356314944272439 9 0.012069648476688042
		5 5 0.017330024338405046 6 0.24947935170171173 7 0.69108113272769678 
		8 0.036999873223257707 9 0.0051096180089287941
		5 5 0.017330024290988764 6 0.249479351454092 7 0.69108113312875741 
		8 0.036999873132670412 9 0.0051096179934913936
		5 5 0.017330022483942054 6 0.24947934201724065 7 0.6910811484132835 
		8 0.036999869680365685 9 0.0051096174051681606
		5 5 0.017330019744668482 6 0.24947932771206413 7 0.69108117158285787 
		8 0.036999864447071283 9 0.0051096165133382781
		5 5 0.017330017953339834 6 0.24947931835729331 7 0.6910811867344393 
		8 0.03699986102479523 9 0.0051096159301324238
		5 5 0.017330017620358028 6 0.24947931661837811 7 0.6910811895508967 
		8 0.036999860388644147 9 0.0051096158217229879
		5 5 0.017330014437010779 6 0.24947929999413082 7 0.69108121647658216 
		8 0.036999854306960893 9 0.0051096147853153407
		5 5 0.017330011317068895 6 0.24947928370099892 7 0.69108124286597006 
		8 0.036999848346411422 9 0.0051096137695507251
		5 5 0.017330010212082358 6 0.24947927793047658 7 0.69108125221227268 
		8 0.036999846235369817 9 0.0051096134097984476
		5 5 0.017330009018812556 6 0.24947927169891596 7 0.69108126230530209 
		8 0.036999843955665829 9 0.0051096130213036444
		5 5 0.017330010212082358 6 0.24947927793047658 7 0.69108125221227268 
		8 0.036999846235369817 9 0.0051096134097984476
		5 5 0.017330008197127322 6 0.2494792674078648 7 0.6910812692553594 
		8 0.036999842385862312 9 0.0051096127537862404
		5 5 0.017330006390081584 6 0.24947925797100737 7 0.69108128453988882 
		8 0.036999838933558828 9 0.0051096121654634142
		5 5 0.017330005963462909 6 0.24947925574309476 7 0.69108128814835623 
		8 0.036999838118517425 9 0.0051096120265684813
		5 5 0.017330004551549892 6 0.24947924836972091 7 0.69108130009073709 
		8 0.036999835421102405 9 0.0051096115668896724
		5 5 0.017330002803808475 6 0.24947923924256329 7 0.69108131487365576 
		8 0.036999832082097832 9 0.0051096109978746671
		5 5 0.017330001957245166 6 0.2494792348215904 7 0.6910813220341413 
		8 0.036999830464765418 9 0.005109610722257683
		5 5 0.01733000146309507 6 0.24947923224101062 7 0.69108132621381058 
		8 0.03699982952070735 9 0.005109610561376445
		5 5 0.01733000102461411 6 0.24947922995114913 7 0.69108132992261384 
		8 0.036999828683003326 9 0.0051096104186194903
		5 5 0.017330000084287849 6 0.2494792250405215 7 0.69108133787617487 
		8 0.036999826886539772 9 0.0051096101124759614
		5 4 0.0057819732853014024 5 0.05143826951902819 6 0.83665950177544413 
		7 0.097450044634890626 8 0.0086702107853356917
		5 4 0.0057819732625819017 5 0.051438269358503347 6 0.83665950225145536 
		7 0.097450044375398157 8 0.0086702107520612876
		5 4 0.005781972396735907 5 0.05143826324086366 6 0.8366595203923578 
		7 0.097450034486077058 8 0.0086702094839655776
		5 4 0.0057819710842136763 5 0.051438253967229883 6 0.83665954789186681 
		7 0.097450019495010282 8 0.008670207561679355
		5 4 0.0057819702258990417 5 0.051438247902802152 6 0.83665956587497803 
		7 0.097450009691707029 8 0.0086702063046138565
		5 4 0.0057819700663509005 5 0.051438246775513723 6 0.8366595692177754 
		7 0.097450007869416239 8 0.0086702060709437628
		5 4 0.0057819685410509768 5 0.05143823599849625 6 0.83665960117533433 
		7 0.097449990448089649 8 0.0086702038370287792
		5 4 0.0057819670461317918 5 0.051438225436133127 6 0.8366596324963701 
		7 0.097449973373756368 8 0.0086702016476086219
		5 4 0.0057819665166778502 5 0.051438221695271978 6 0.836659643589309 
		7 0.097449967326557252 8 0.0086702008721839998
		5 4 0.0057819659449230235 5 0.051438217655533407 6 0.83665965556852195 
		7 0.097449960796215054 8 0.0086702000348065911
		5 4 0.0057819665166778502 5 0.051438221695271978 6 0.836659643589309 
		7 0.097449967326557252 8 0.0086702008721839998
		5 4 0.0057819655512128202 5 0.051438214873770566 6 0.83665966381740475 
		7 0.097449956299423116 8 0.008670199458188756
		5 4 0.0057819646853674838 5 0.051438208756132614 6 0.83665968195830387 
		7 0.097449946410102128 8 0.0086701981900939341
		5 4 0.0057819644809533003 5 0.051438207311842336 6 0.83665968624112097 
		7 0.097449944075369263 8 0.0086701978907141718
		5 4 0.0057819638044356884 5 0.051438202531900817 6 0.83665970041529047 
		7 0.097449936348469102 8 0.0086701968999038717
		5 4 0.0057819629670060367 5 0.051438196615033495 6 0.83665971796083616 
		7 0.097449926783698473 8 0.0086701956734259195
		5 4 0.0057819625613755457 5 0.051438193749047262 6 0.83665972645947062 
		7 0.097449922150756707 8 0.0086701950793499263
		5 4 0.0057819623246037257 5 0.051438192076133586 6 0.83665973142023475 
		7 0.09744991944644793 8 0.0086701947325799958
		5 4 0.0057819621145057312 5 0.051438190591684071 6 0.83665973582213793 
		7 0.097449917046796383 8 0.0086701944248758715
		5 4 0.0057819616639487818 5 0.051438187408269269 6 0.83665974526205722 
		7 0.097449911900722899 8 0.0086701937650017335
		5 4 0.024115691447130615 5 0.38953146420493906 6 0.55060987767699854 
		7 0.031042885191560246 8 0.004700081479371546
		5 4 0.024115691391860331 5 0.38953146413947648 6 0.55060987787855797 
		7 0.031042885123352414 8 0.0047000814667528005
		5 4 0.02411568928549607 5 0.38953146164468677 6 0.55060988556003376 
		7 0.031042882523934359 8 0.0047000809858491407
		5 4 0.024115686092491727 5 0.38953145786287335 6 0.55060989720426246 
		7 0.031042878583517564 8 0.0047000802568549025
		5 4 0.024115684004449005 5 0.38953145538978207 6 0.5506099048189248 
		7 0.031042876006709706 8 0.0047000797801342621
		5 4 0.024115683616312403 5 0.38953145493007046 6 0.55060990623437944 
		7 0.031042875527718814 8 0.0047000796915188667
		5 4 0.02411567990567837 5 0.3895314505351703 6 0.55060991976630014 
		7 0.031042870948506458 8 0.0047000788443447459
		5 4 0.024115676268952103 5 0.38953144622780483 6 0.55060993302869654 
		7 0.031042866460502007 8 0.0047000780140445215
		5 4 0.024115674980936599 5 0.38953144470226969 6 0.55060993772582556 
		7 0.031042864870990193 8 0.004700077719977977
		5 4 0.024115673590014642 5 0.3895314430548506 6 0.55060994279823416 
		7 0.031042863154483773 8 0.0047000774024168867
		5 4 0.024115674980936599 5 0.38953144470226969 6 0.55060993772582556 
		7 0.031042864870990193 8 0.004700077719977977
		5 4 0.024115672632226217 5 0.38953144192043837 6 0.55060994629109306 
		7 0.031042861972497962 8 0.0047000771837444151
		5 4 0.024115670525863005 5 0.38953143942564439 6 0.5506099539725704 
		7 0.031042859373081093 8 0.0047000767028411031
		5 4 0.024115670028579596 5 0.38953143883665786 6 0.55060995578606164 
		7 0.031042858759394481 8 0.0047000765893064405
		5 4 0.024115668382798574 5 0.38953143688738084 6 0.55060996178789012 
		7 0.031042856728372013 8 0.004700076213558552
		5 4 0.024115666345562798 5 0.3895314344744607 6 0.55060996921727501 
		7 0.031042854214263765 8 0.0047000757484377265
		5 4 0.024115665358775504 5 0.38953143330570095 6 0.55060997281588797 
		7 0.031042852996491056 8 0.0047000755231445465
		5 4 0.024115664782774812 5 0.38953143262348044 6 0.55060997491644548 
		7 0.031042852285661168 8 0.0047000753916379744
		5 4 0.024115664271664235 5 0.38953143201811641 6 0.55060997678036205 
		7 0.031042851654910761 8 0.0047000752749464395
		5 4 0.024115663175583155 5 0.38953143071990765 6 0.55060998077754786 
		7 0.031042850302260967 8 0.0047000750247004341
		5 3 0.0067442495966679485 4 0.067230430008015152 5 0.8520505758338387 
		6 0.067230487640316985 7 0.0067442569211612589
		5 3 0.0067442495692905547 4 0.067230429800410108 5 0.85205057630380365 
		6 0.067230487432711802 7 0.0067442568937838357
		5 3 0.0067442485259312668 4 0.067230421888529845 5 0.85205059421428897 
		6 0.067230479520826378 7 0.0067442558504234819
		5 3 0.0067442469443194618 4 0.067230409895035037 5 0.85205062136451171 
		6 0.067230467527323673 7 0.0067442542688100522
		5 3 0.0067442459100355932 4 0.06723040205197324 5 0.85205063911920942 
		6 0.067230459684256699 7 0.0067442532345251254
		5 3 0.0067442457177773526 4 0.067230400594062656 5 0.85205064241954809 
		6 0.067230458226345213 7 0.0067442530422666862
		5 3 0.0067442438797647736 4 0.067230386656256871 5 0.85205067397119594 
		6 0.067230444288530269 7 0.0067442512042522251
		5 3 0.0067442420783614997 4 0.067230372996061036 5 0.85205070489440493 
		6 0.067230430628325441 7 0.006744249402847108
		5 3 0.0067442414403604198 4 0.067230368158043632 5 0.85205071584644565 
		6 0.06723042579030486 7 0.0067442487648453689
		5 3 0.0067442407513860362 4 0.067230362933491078 5 0.85205072767350387 
		6 0.067230420565748836 7 0.0067442480758702801
		5 3 0.0067442414403604198 4 0.067230368158043632 5 0.85205071584644565 
		6 0.06723042579030486 7 0.0067442487648453689
		5 3 0.0067442402769584886 4 0.0672303593358657 5 0.85205073581761259 
		6 0.067230416968121071 7 0.0067442476014422451
		5 3 0.006744239233600003 4 0.067230351423987075 5 0.85205075372809302 
		6 0.0672304090562372 7 0.0067442465580826874
		5 3 0.0067442389872774001 4 0.067230349556101188 5 0.85205075795651153 
		6 0.067230407188350091 7 0.0067442463117598304
		5 3 0.0067442381720620743 4 0.067230343374251711 5 0.85205077195064616 
		6 0.067230401006496465 7 0.0067442454965436745
		5 3 0.0067442371629449754 4 0.067230335722027579 5 0.85205078927333466 
		6 0.06723039335426724 7 0.0067442444874255382
		5 3 0.0067442366741532755 4 0.067230332015476763 5 0.85205079766402259 
		6 0.067230389647713967 7 0.0067442439986333327
		5 3 0.006744236388839169 4 0.067230329851914544 5 0.85205080256177712 
		6 0.067230387484150306 7 0.0067442437133189278
		5 3 0.0067442361356674909 4 0.067230327932091161 5 0.8520508069077688 
		6 0.067230385564325618 7 0.0067442434601469904
		5 3 0.0067442355927386267 4 0.067230323815013135 5 0.85205081622778578 
		6 0.067230381447244913 7 0.0067442429172175702;
	setAttr ".wl[200:299].w"
		5 2 0.0047000772586866593 3 0.031042835471035365 4 0.5506092652936474 
		5 0.38953211971482071 6 0.024115702261809955
		5 2 0.0047000772460679217 3 0.031042835402827609 4 0.5506092654952055 
		5 0.38953211964935935 6 0.024115702206539653
		5 2 0.0047000767651646904 3 0.031042832803413113 4 0.55060927317664166 
		5 0.38953211715460584 6 0.024115700100174713
		5 2 0.0047000760361710844 3 0.031042828863001724 4 0.55060928482081051 
		5 0.38953211337284738 6 0.024115696907169335
		5 2 0.0047000755594508717 3 0.031042826286197409 4 0.55060929243543355 
		5 0.38953211089979228 6 0.024115694819125962
		5 2 0.0047000754708355543 3 0.031042825807207179 4 0.55060929385088042 
		5 0.38953211044008756 6 0.024115694430989244
		5 2 0.0047000746236621751 3 0.031042821228001085 4 0.55060930738273139 
		5 0.38953210604525151 6 0.024115690720354011
		5 2 0.0047000737933626793 3 0.031042816740002803 4 0.5506093206450593 
		5 0.38953210173794878 6 0.024115687083626575
		5 2 0.0047000734992963863 3 0.03104281515049313 4 0.55060932534216445 
		5 0.38953210021243545 6 0.024115685795610624
		5 2 0.0047000731817355744 3 0.031042813433989073 4 0.55060933041454674 
		5 0.38953209856504045 6 0.024115684404688215
		5 2 0.0047000734992963863 3 0.03104281515049313 4 0.55060932534216445 
		5 0.38953210021243545 6 0.024115685795610624
		5 2 0.004700072963063298 3 0.031042812252004885 4 0.55060933390738787 
		5 0.38953209743064454 6 0.024115683446899468
		5 2 0.0047000724821603997 3 0.031042809652591579 4 0.55060934158882602 
		5 0.38953209493588647 6 0.024115681340535565
		5 2 0.0047000723686258343 3 0.031042809038905769 4 0.55060934340230816 
		5 0.38953209434690822 6 0.024115680843251958
		5 2 0.0047000719928782693 3 0.031042807007886079 4 0.55060934940410611 
		5 0.38953209239765918 6 0.024115679197470378
		5 2 0.0047000715277578523 3 0.031042804493781273 4 0.5506093568334528 
		5 0.38953208998477401 6 0.024115677160233922
		5 2 0.0047000713024648675 3 0.031042803276010205 4 0.55060936043204789 
		5 0.3895320888160308 6 0.024115676173446256
		5 2 0.0047000711709584038 3 0.031042802565181299 4 0.55060936253259463 
		5 0.38953208813382018 6 0.024115675597445384
		5 2 0.004700071054266973 3 0.031042801934431742 4 0.55060936439650199 
		5 0.38953208752846469 6 0.024115675086334627
		5 2 0.0047000708040211879 3 0.031042800581783797 4 0.55060936839366681 
		5 0.38953208623027491 6 0.024115673990253196
		5 2 0.0086702087355456214 3 0.09744996185782033 4 0.83665954193318159 
		5 0.051438313910629613 6 0.005781973562822831
		5 2 0.0086702087022712312 3 0.097449961598328111 4 0.8366595424091926 
		5 0.051438313750104755 6 0.0057819735401033303
		5 2 0.0086702074341757779 3 0.09744995170901237 4 0.83665956055009394 
		5 0.051438307632460614 6 0.0057819726742572818
		5 2 0.0086702055118899543 3 0.09744993671795385 4 0.83665958804960106 
		5 0.051438298358820217 6 0.0057819713617349756
		5 2 0.0086702042548247246 3 0.097449926914655996 4 0.83665960603271083 
		5 0.051438292294388191 6 0.0057819705034202959
		5 2 0.0086702040211546882 3 0.09744992509236633 4 0.83665960937550787 
		5 0.051438291167099005 6 0.0057819703438721564
		5 2 0.0086702017872401678 3 0.097449907671049246 4 0.83665964133306459 
		5 0.051438280390073809 6 0.0057819688185721443
		5 2 0.008670199597820458 3 0.097449890596725319 4 0.83665967265409824 
		5 0.051438269827703061 6 0.0057819673236528682
		5 2 0.0086701988223960007 3 0.09744988454952952 4 0.83665968374703636 
		5 0.051438266086839254 6 0.005781966794198898
		5 2 0.0086701979850187499 3 0.09744987801919075 4 0.83665969572624888 
		5 0.051438262047097713 6 0.0057819662224440314
		5 2 0.0086701988223960007 3 0.09744988454952952 4 0.83665968374703636 
		5 0.051438266086839254 6 0.005781966794198898
		5 2 0.0086701974084010293 3 0.097449873522401295 4 0.83665970397513101 
		5 0.051438259265332846 6 0.0057819658287338047
		5 2 0.0086701961403064572 3 0.097449863633085609 4 0.83665972211602913 
		5 0.051438253147690363 6 0.0057819649628884015
		5 2 0.0086701958409267418 3 0.097449861298353868 4 0.83665972639884623 
		5 0.051438251703398948 6 0.0057819647584741946
		5 2 0.0086701948501166325 3 0.097449853571457981 4 0.83665974057301484 
		5 0.05143824692345398 6 0.0057819640819565385
		5 2 0.0086701936236389214 3 0.097449844006692474 4 0.83665975811855953 
		5 0.051438241006582307 6 0.0057819632445268174
		5 2 0.008670193029563027 3 0.09744983937375315 4 0.83665976661719366 
		5 0.051438238140593895 6 0.0057819628388962978
		5 2 0.0086701926827931642 3 0.097449836669445788 4 0.83665977157795768 
		5 0.051438236467678942 6 0.0057819626021244509
		5 2 0.0086701923750891058 3 0.097449834269795588 4 0.83665977597986041 
		5 0.05143823498322838 6 0.0057819623920264476
		5 2 0.0086701917152150858 3 0.097449829123724824 4 0.83665978541977948 
		5 0.051438231799811225 6 0.0057819619414694592
		5 1 0.0051096158217456633 2 0.036999865207146224 3 0.69108064821363002 
		4 0.24947980938465783 5 0.017330061372820268
		5 1 0.0051096158063082837 2 0.036999865116559054 3 0.6910806486146901 
		4 0.24947980913703863 5 0.017330061325403941
		5 1 0.0051096152179857897 2 0.036999861664258192 3 0.6910806638991942 
		4 0.24947979970020637 5 0.01733005951835544
		5 1 0.0051096143261570312 2 0.036999856430969716 3 0.69108068706873504 
		4 0.24947978539505911 5 0.017330056779079145
		5 1 0.0051096137429519108 2 0.036999853008697479 3 0.6910807022202945 
		4 0.24947977604030747 5 0.017330054987748717
		5 1 0.0051096136345426136 2 0.03699985237254716 3 0.69108070503674801 
		4 0.24947977430139567 5 0.017330054654766607
		5 1 0.00510961259813627 2 0.036999846290870712 3 0.69108073196239472 
		4 0.24947975767718222 5 0.017330051471416138
		5 1 0.0051096115823729233 2 0.036999840330327875 3 0.69108075835174487 
		4 0.24947974138408324 5 0.017330048351471131
		5 1 0.0051096112226210978 2 0.036999838219288671 3 0.69108076769803428 
		4 0.24947973561357253 5 0.017330047246483498
		5 1 0.0051096108341267838 2 0.03699983593958725 3 0.69108077779104904 
		4 0.24947972938202456 5 0.017330046053212502
		5 1 0.0051096112226210978 2 0.036999838219288671 3 0.69108076769803428 
		4 0.24947973561357253 5 0.017330047246483498
		5 1 0.0051096105666097119 2 0.036999834369785448 3 0.69108078474109635 
		4 0.2494797250909821 5 0.017330045231526439
		5 1 0.0051096099782876108 2 0.036999830917485793 3 0.69108080002560435 
		4 0.24947971565414348 5 0.017330043424478848
		5 1 0.0051096098393928419 2 0.036999830102445209 3 0.69108080363406699 
		4 0.24947971342623534 5 0.017330042997859722
		5 1 0.0051096093797146002 2 0.036999827405033194 3 0.69108081557643075 
		4 0.24947970605287614 5 0.017330041585945265
		5 1 0.0051096088107003054 2 0.036999824066032284 3 0.69108083035932832 
		4 0.24947969692573704 5 0.017330039838202069
		5 1 0.0051096085350836561 2 0.036999822448701654 3 0.69108083751980398 
		4 0.24947969250477292 5 0.017330038991637872
		5 1 0.0051096083742026141 2 0.036999821504644571 3 0.6910808416994676 
		4 0.24947968992419803 5 0.017330038497487273
		5 1 0.0051096082314458328 2 0.036999820666941456 3 0.69108084540826553 
		4 0.24947968763434131 5 0.017330038059005844
		5 1 0.0051096079253026856 2 0.036999818870479935 3 0.69108085336181535 
		4 0.24947968272372337 5 0.017330037118678646
		5 1 0.0120696517264843 2 0.15356316740458761 3 0.78614707492054181 
		4 0.042860278603337937 5 0.0053598273450482219
		5 1 0.01206965168624163 2 0.15356316711203619 3 0.78614707539400286 
		4 0.04286027848153727 5 0.0053598273261819688
		5 1 0.012069650152583079 2 0.15356315596282533 3 0.78614709343772404 
		4 0.042860273839683286 5 0.0053598266071841778
		5 1 0.01206964782773433 2 0.15356313906191044 3 0.78614712078991855 
		4 0.042860266803169879 5 0.0053598255172668027
		5 1 0.012069646307415889 2 0.15356312800967503 3 0.78614713867669472 
		4 0.04286026220169141 5 0.0053598248045230402
		5 1 0.012069646024810943 2 0.15356312595522614 3 0.78614714200158453 
		4 0.042860261346343867 5 0.0053598246720344056
		5 1 0.012069643323072492 2 0.15356310631443693 3 0.78614717378794907 
		4 0.042860253169114911 5 0.0053598234054265973
		5 1 0.012069640675146848 2 0.15356308706484664 3 0.78614720494120127 
		4 0.042860245154758309 5 0.0053598221640469169
		5 1 0.012069639737333812 2 0.1535630802472388 3 0.78614721597471671 
		4 0.042860242316321948 5 0.0053598217243887901
		5 1 0.012069638724593906 2 0.15356307288493545 3 0.78614722788975899 
		4 0.042860239251107733 5 0.0053598212496040387
		5 1 0.012069639737333812 2 0.1535630802472388 3 0.78614721597471671 
		4 0.042860242316321948 5 0.0053598217243887901
		5 1 0.012069638027221495 2 0.15356306781525517 3 0.78614723609445381 
		4 0.042860237140402088 5 0.0053598209226673986
		5 1 0.012069636493563848 2 0.15356305666604084 3 0.78614725413817554 
		4 0.042860232498549491 5 0.0053598202036701055
		5 1 0.012069636131488344 2 0.15356305403386425 3 0.78614725839805089 
		4 0.042860231402671825 5 0.0053598200339247193
		5 1 0.012069634933183767 2 0.15356304532256154 3 0.78614727249629257 
		4 0.042860227775817154 5 0.0053598194721450193
		5 1 0.01206963344985831 2 0.15356303453924439 3 0.78614728994785077 
		4 0.042860223286302415 5 0.0053598187767440828
		5 1 0.012069632731371635 2 0.15356302931606813 3 0.78614729840096043 
		4 0.042860221111690959 5 0.0053598184399088313
		5 1 0.012069632311981564 2 0.15356302626723178 3 0.78614730333515104 
		4 0.04286021984234175 5 0.0053598182432936922
		5 1 0.012069631939838418 2 0.15356302356186585 3 0.78614730771347463 
		4 0.042860218715992687 5 0.0053598180688284817
		5 1 0.012069631141774242 2 0.15356301776018522 3 0.7861473171028267 
		4 0.042860216300527491 5 0.0053598176946863382
		5 0 0.0053598264251509316 1 0.04286027953187841 2 0.78614717664771816 
		3 0.15356306954102486 4 0.012069647854227686
		5 0 0.0053598264062846785 1 0.042860279410077785 2 0.7861471771211791 
		3 0.15356306924847335 4 0.012069647813985018
		5 0 0.005359825687286858 1 0.042860274768222635 2 0.78614719516490139 
		3 0.15356305809926246 4 0.012069646280326602
		5 0 0.0053598245973694473 1 0.042860267731707563 2 0.78614722251709723 
		3 0.15356304119834777 4 0.012069643955478063
		5 0 0.0053598238846256554 1 0.042860263130227928 2 0.78614724040387429 
		3 0.15356303014611242 4 0.012069642435159747
		5 0 0.0053598237521370121 1 0.042860262274880163 2 0.78614724372876454 
		3 0.15356302809166342 4 0.012069642152554813
		5 0 0.0053598224855291596 1 0.042860254097649236 2 0.78614727551513064 
		3 0.15356300845087445 4 0.012069639450816596
		5 0 0.0053598212441494288 1 0.042860246083290615 2 0.78614730666838473 
		3 0.15356298920128411 4 0.012069636802891186
		5 0 0.0053598208044912943 1 0.042860243244853664 2 0.78614731770190038 
		3 0.15356298238367641 4 0.012069635865078251
		5 0 0.0053598203297065238 1 0.04286024017963868 2 0.78614732961694322 
		3 0.15356297502137314 4 0.012069634852338428
		5 0 0.0053598208044912943 1 0.042860243244853664 2 0.78614731770190038 
		3 0.15356298238367641 4 0.012069635865078251
		5 0 0.0053598200027698715 1 0.042860238068932521 2 0.78614733782163859 
		3 0.15356296995169297 4 0.012069634154966081
		5 0 0.0053598192837725593 1 0.042860233427078835 2 0.78614735586536111 
		3 0.15356295880247892 4 0.012069632621308592
		5 0 0.0053598191140271636 1 0.042860232331200884 2 0.78614736012523645 
		3 0.15356295617030241 4 0.012069632259233106
		5 0 0.0053598185522474541 1 0.042860228704345374 2 0.78614737422347847 
		3 0.15356294745900012 4 0.012069631060928662
		5 0 0.0053598178568464968 1 0.042860224214829608 2 0.78614739167503744 
		3 0.15356293667568316 4 0.012069629577603347
		5 0 0.0053598175200112374 1 0.04286022204021761 2 0.78614740012814721 
		3 0.15356293145250721 4 0.012069628859116749
		5 0 0.0053598173233960905 1 0.04286022077086811 2 0.78614740506233816 
		3 0.15356292840367092 4 0.012069628439726717
		5 0 0.0053598171489308696 1 0.042860219644518797 2 0.78614740944066164 
		3 0.15356292569830507 4 0.012069628067583599
		5 0 0.0053598167747887148 1 0.042860217229052949 2 0.78614741883001449 
		3 0.15356291989662441 4 0.012069627269519484;
	setAttr ".wl[300:381].w"
		5 0 0.017330032209123852 1 0.24947928693644469 2 0.69108117293325033 
		3 0.036999890027365735 4 0.0051096178938154204
		5 0 0.017330032161707563 1 0.24947928668882496 2 0.69108117333431107 
		3 0.036999889936778413 4 0.0051096178783780226
		5 0 0.017330030354660523 1 0.24947927725197513 2 0.69108118861883627 
		3 0.036999886484473173 4 0.0051096172900549301
		5 0 0.017330027615386441 1 0.24947926294680056 2 0.69108121178840975 
		3 0.036999881251177945 4 0.0051096163982252626
		5 0 0.017330025824057481 1 0.24947925359203132 2 0.6910812269399903 
		3 0.036999877828901413 4 0.0051096158150195506
		5 0 0.017330025491075627 1 0.24947925185311634 2 0.6910812297564477 
		3 0.036999877192750212 4 0.0051096157066101407
		5 0 0.017330022307727771 1 0.24947923522887155 2 0.69108125668213183 
		3 0.036999871111066042 4 0.0051096146702027459
		5 0 0.017330019187785321 1 0.24947921893574193 2 0.69108128307151884 
		3 0.036999865150515593 4 0.0051096136544383679
		5 0 0.017330018082798576 1 0.24947921316522051 2 0.69108129241782112 
		3 0.036999863039473689 4 0.0051096132946861798
		5 0 0.017330016889528555 1 0.24947920693366082 2 0.69108130251084987 
		3 0.036999860759769326 4 0.0051096129061914686
		5 0 0.017330018082798576 1 0.24947921316522051 2 0.69108129241782112 
		3 0.036999863039473689 4 0.0051096132946861798
		5 0 0.017330016067843151 1 0.24947920264261009 2 0.69108130946090707 
		3 0.036999859189965574 4 0.0051096126386741261
		5 0 0.017330014260797073 1 0.24947919320575387 2 0.69108132474543604 
		3 0.036999855737661548 4 0.0051096120503514369
		5 0 0.017330013834178287 1 0.24947919097784138 2 0.6910813283539039 
		3 0.036999854922619958 4 0.0051096119114565292
		5 0 0.017330012422265006 1 0.24947918360446844 2 0.69108134029628421 
		3 0.036999852225204514 4 0.0051096114517778235
		5 0 0.017330010674523236 1 0.24947917447731216 2 0.69108135507920232 
		3 0.036999848886199393 4 0.0051096108827629544
		5 0 0.017330009827959746 1 0.24947917005633982 2 0.69108136223968752 
		3 0.03699984726886673 4 0.0051096106071460336
		5 0 0.017330009333809557 1 0.24947916747576027 2 0.69108136641935691 
		3 0.036999846324808482 4 0.0051096104462648295
		5 0 0.017330008895328486 1 0.24947916518589902 2 0.69108137012816029 
		3 0.036999845487104291 4 0.0051096103035079008
		5 0 0.017330007955002065 1 0.24947916027527184 2 0.69108137808172121 
		3 0.03699984369064048 4 0.0051096099973644464
		5 0 0.051644929185613586 1 0.84002108715693569 2 0.097841685994412508 
		3 0.0087050564854843481 4 0.0017872411775539158
		5 0 0.051644929023645335 1 0.84002108762186956 2 0.097841685732364445 
		3 0.0087050564519416222 4 0.0017872411701790746
		5 0 0.051644922850993688 1 0.84002110534061858 2 0.097841675745645854 
		3 0.0087050551736198682 4 0.0017872408891219662
		5 0 0.051644913493968186 1 0.84002113220019203 2 0.097841660606935776 
		3 0.0087050532358321688 4 0.0017872404630719556
		5 0 0.051644907375007099 1 0.84002114976482145 2 0.097841650707082228 
		3 0.0087050519686295794 4 0.0017872401844595649
		5 0 0.051644906237581716 1 0.84002115302982938 2 0.097841648866844211 
		3 0.0087050517330751562 4 0.001787240132669598
		5 0 0.051644895363653617 1 0.8400211842437102 2 0.097841631273939397 
		3 0.0087050494811456939 4 0.0017872396375511067
		5 0 0.051644884706310158 1 0.84002121483588044 2 0.097841614031445312 
		3 0.0087050472740698645 4 0.0017872391522943344
		5 0 0.051644880931809897 1 0.84002122567067761 2 0.097841607924688948 
		3 0.0087050464923921558 4 0.0017872389804314602
		5 0 0.051644876855744648 1 0.84002123737112477 2 0.097841601330031044 
		3 0.0087050456482620636 4 0.0017872387948375513
		5 0 0.051644880931809897 1 0.84002122567067761 2 0.097841607924688948 
		3 0.0087050464923921558 4 0.0017872389804314602
		5 0 0.051644874048967275 1 0.84002124542804957 2 0.097841596788951352 
		3 0.0087050450669943352 4 0.0017872386670376419
		5 0 0.051644867876317418 1 0.84002126314679537 2 0.09784158680223301 
		3 0.0087050437886734919 4 0.0017872383859807769
		5 0 0.05164486641903953 1 0.84002126732994808 2 0.097841584444505802 
		3 0.0087050434868794959 4 0.0017872383196271121
		5 0 0.051644861596115137 1 0.84002128117427333 2 0.097841576641505473 
		3 0.008705042488079219 4 0.0017872381000267892
		5 0 0.051644855626041361 1 0.84002129831152006 2 0.097841566982533948 
		3 0.0087050412517108468 4 0.0017872378281937756
		5 0 0.05164485273428316 1 0.84002130661238472 2 0.097841562303963514 
		3 0.0087050406528441683 4 0.0017872376965244973
		5 0 0.051644851046326025 1 0.84002131145770809 2 0.097841559573020667 
		3 0.0087050403032778636 4 0.0017872376196674175
		5 0 0.051644849548527903 1 0.84002131575717531 2 0.097841557149735622 
		3 0.0087050399930923891 4 0.0017872375514687707
		5 0 0.051644846336486715 1 0.84002132497742033 2 0.097841551952979805 
		3 0.0087050393278969643 4 0.0017872374052161865
		5 0 0.39863919336996384 1 0.56348420079369588 2 0.031768695339421976 
		3 0.0048099752186489316 4 0.0012979352782693451
		5 0 0.39863919328188896 1 0.56348420097016849 2 0.031768695267939309 
		3 0.0048099752054807663 4 0.0012979352745223149
		5 0 0.39863918992532671 1 0.56348420769559682 2 0.031768692543715865 
		3 0.004809974703638675 4 0.0012979351317220166
		5 0 0.39863918483716587 1 0.56348421789056802 2 0.031768688414108584 
		3 0.0048099739429041961 4 0.0012979349152533099
		5 0 0.39863918150979843 1 0.56348422455749825 2 0.031768685713580963 
		3 0.0048099734454272562 4 0.0012979347736951305
		5 0 0.3986391808912893 1 0.56348422579678326 2 0.03176868521159236 
		3 0.0048099733529535695 4 0.0012979347473815355
		5 0 0.39863917497826495 1 0.56348423764450173 2 0.0317686804125192 
		3 0.0048099724688936921 4 0.0012979344958203144
		5 0 0.39863916918301334 1 0.56348424925624141 2 0.03176867570903312 
		3 0.0048099716024424038 4 0.0012979342492696634
		5 0 0.39863916713051473 1 0.56348425336875962 2 0.031768674043204395 
		3 0.0048099712955722738 4 0.0012979341619490808
		5 0 0.39863916491403073 1 0.5634842578098489 2 0.031768672244283751 
		3 0.0048099709641846568 4 0.0012979340676519944
		5 0 0.39863916713051473 1 0.56348425336875962 2 0.031768674043204395 
		3 0.0048099712955722738 4 0.0012979341619490808
		5 0 0.39863916338776029 1 0.56348426086798198 2 0.031768671005547491 
		3 0.0048099707359912447 4 0.0012979340027190502
		5 0 0.39863916003119426 1 0.56348426759341197 2 0.031768668281325421 
		3 0.0048099702341495316 4 0.0012979338599188714
		5 0 0.39863915923875509 1 0.56348426918119354 2 0.031768667638174 
		3 0.0048099701156715932 4 0.0012979338262057104
		5 0 0.39863915661614263 1 0.56348427443602644 2 0.031768665509636487 
		3 0.0048099697235637444 4 0.0012979337146305473
		5 0 0.39863915336973244 1 0.5634842809407401 2 0.031768662874818936 
		3 0.0048099692381916807 4 0.001297933576516848
		5 0 0.39863915179725012 1 0.563484284091465 2 0.031768661598577601 
		3 0.0048099690030892952 4 0.0012979335096179427
		5 0 0.39863915087937163 1 0.56348428593058442 2 0.031768660853618798 
		3 0.0048099688658569629 4 0.0012979334705681763
		5 0 0.39863915006489786 1 0.56348428756251556 2 0.031768660192584279 
		3 0.0048099687440847127 4 0.0012979334359176113
		5 0 0.3986391483182517 1 0.56348429106220599 2 0.031768658774990063 
		3 0.0048099684829430679 4 0.0012979333616091762
		5 0 0.91817419001273282 1 0.07244791219552095 2 0.0072676408743586321 
		3 0.001588755859480465 4 0.00052150105790710582
		5 0 0.91817419029504399 1 0.072447911954120023 2 0.0072676408430825731 
		3 0.0015887558522623957 4 0.00052150105549092084
		5 0 0.91817420105399417 1 0.072447902754272181 2 0.0072676396511442802 
		3 0.0015887555771799775 4 0.00052150096340952592
		5 0 0.9181742173633165 1 0.072447888808367791 2 0.0072676378443039345 
		3 0.0015887551601869144 4 0.0005215008238248041
		5 0 0.91817422802868343 1 0.072447879688541619 2 0.007267636662733481 
		3 0.0015887548874972575 4 0.0005215007325443656
		5 0 0.91817423001121912 1 0.072447877993299256 2 0.0072676364430968171 
		3 0.0015887548368082383 4 0.00052150071557666741
		5 0 0.91817424896450617 1 0.072447861786572226 2 0.0072676343433431892 
		3 0.0015887543522149728 4 0.00052150055336338164
		5 0 0.9181742675402853 1 0.072447845902647523 2 0.0072676322854122498 
		3 0.0015887538772738014 4 0.00052150039438104924
		5 0 0.91817427411924957 1 0.07244784027705449 2 0.0072676315565570505 
		3 0.0015887537090643966 4 0.00052150033807444771
		5 0 0.91817428122384248 1 0.07244783420200275 2 0.0072676307694697359 
		3 0.0015887535274158517 4 0.00052150027726921404
		5 0 0.91817427411924957 1 0.07244784027705449 2 0.0072676315565570505 
		3 0.0015887537090643966 4 0.00052150033807444771
		5 0 0.91817428611606289 1 0.072447830018723888 2 0.0072676302274816574 
		3 0.0015887534023327219 4 0.00052150023539874969
		5 0 0.91817429687500796 1 0.072447820818879405 2 0.0072676290355444323 
		3 0.0015887531272505866 4 0.00052150014331745322
		5 0 0.91817429941504736 1 0.072447818646922457 2 0.0072676287541444343 
		3 0.001588753062307475 4 0.00052150012157832449
		5 0 0.91817430782141707 1 0.072447811458736744 2 0.0072676278228389546 
		3 0.0015887528473754382 4 0.00052150004963173919
		5 0 0.91817431822727136 1 0.072447802560815955 2 0.007267626670019278 
		3 0.0015887525813210834 4 0.00052149996057241287
		5 0 0.91817432326761339 1 0.072447798250880033 2 0.0072676261116215541 
		3 0.0015887524524508478 4 0.00052149991743424937
		5 0 0.91817432620972694 1 0.07244779573511409 2 0.0072676257856775055 
		3 0.0015887523772276076 4 0.00052149989225393938
		5 0 0.91817432882039274 1 0.072447793502764979 2 0.0072676254964531041 
		3 0.0015887523104787379 4 0.00052149986991035006
		5 0 0.91817433441898888 1 0.072447788715472791 2 0.0072676248762088749 
		3 0.0015887521673352103 4 0.00052149982199432984
		1 10 1
		1 0 1;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -4 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3336012334664027e-16 -3.5999999940395355 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.7749702457432323e-16 -3.199999988079071 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4240971549312605e-16 -2.7999999523162842 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.9242226156147543e-16 -2.3999999761581416 0 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.1974837656301672e-31 -1.9999999999999996 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1240371268487213e-17 -1.5999999046325686 0 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.2000000476837158 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.79999995231628396 0 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.40000009536743175 0 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.1102230246251565e-16 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "108125DA-45A1-317A-B504-E095ADC9597A";
createNode objectSet -n "skinCluster1Set";
	rename -uid "6D0E6C30-4312-FEFA-C5DD-16A351C9115E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "8A82E86E-4C42-95E1-2F05-2DA09B510B8A";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C708E68E-4C05-EE80-CDF2-C89C3679DBDA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "E40F380E-4A54-66A3-5205-8EA0F10A0A65";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "F898DA24-4F7F-ACF1-3D37-CD9F8280F63B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "9427E2D8-4396-B93A-143B-5381B9D78561";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5EF9C446-42FD-4BEF-BE95-2999953FD464";
	setAttr -s 13 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 13 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 13 ".m";
	setAttr -s 13 ".p";
	setAttr -s 13 ".g[0:12]" yes yes no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode character -n "spineLeg_L:leg";
	rename -uid "8968E797-47D4-BBDB-C54B-FFA0CD7659C4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 90 ".dnsm";
	setAttr -s 21 ".uv";
	setAttr -s 21 ".uv";
	setAttr -s 36 ".lv";
	setAttr -s 36 ".lv";
	setAttr -s 33 ".av";
	setAttr -s 33 ".av";
	setAttr ".am" -type "characterMapping" 90 "spineLeg_L:foot_FK_CON.rotateZ" 2 
		1 "spineLeg_L:foot_FK_CON.rotateY" 2 2 "spineLeg_L:foot_FK_CON.rotateX" 
		2 3 "spineLeg_L:foot_FK_CON.translateZ" 1 1 "spineLeg_L:foot_FK_CON.translateY" 
		1 2 "spineLeg_L:foot_FK_CON.translateX" 1 3 "spineLeg_L:tibia_FK_CON.rotateZ" 
		2 4 "spineLeg_L:tibia_FK_CON.rotateY" 2 5 "spineLeg_L:tibia_FK_CON.rotateX" 
		2 6 "spineLeg_L:tibia_FK_CON.translateZ" 1 4 "spineLeg_L:tibia_FK_CON.translateY" 
		1 5 "spineLeg_L:tibia_FK_CON.translateX" 1 6 "spineLeg_L:femur_FK_CON.rotateZ" 
		2 7 "spineLeg_L:femur_FK_CON.rotateY" 2 8 "spineLeg_L:femur_FK_CON.rotateX" 
		2 9 "spineLeg_L:femur_FK_CON.translateZ" 1 7 "spineLeg_L:femur_FK_CON.translateY" 
		1 8 "spineLeg_L:femur_FK_CON.translateX" 1 9 "spineLeg_L:footSpine_IK_CON.scaleZ" 
		0 1 "spineLeg_L:footSpine_IK_CON.scaleY" 0 2 "spineLeg_L:footSpine_IK_CON.scaleX" 
		0 3 "spineLeg_L:footSpine_IK_CON.rotateZ" 2 10 "spineLeg_L:footSpine_IK_CON.rotateY" 
		2 11 "spineLeg_L:footSpine_IK_CON.rotateX" 2 12 "spineLeg_L:footSpine_IK_CON.translateZ" 
		1 10 "spineLeg_L:footSpine_IK_CON.translateY" 1 11 "spineLeg_L:footSpine_IK_CON.translateX" 
		1 12 "spineLeg_L:tibiaSpine_IK_CON.scaleZ" 0 4 "spineLeg_L:tibiaSpine_IK_CON.scaleY" 
		0 5 "spineLeg_L:tibiaSpine_IK_CON.scaleX" 0 6 "spineLeg_L:tibiaSpine_IK_CON.rotateZ" 
		2 13 "spineLeg_L:tibiaSpine_IK_CON.rotateY" 2 14 "spineLeg_L:tibiaSpine_IK_CON.rotateX" 
		2 15 "spineLeg_L:tibiaSpine_IK_CON.translateZ" 1 13 "spineLeg_L:tibiaSpine_IK_CON.translateY" 
		1 14 "spineLeg_L:tibiaSpine_IK_CON.translateX" 1 15 "spineLeg_L:femurSpine_IK_CON.scaleZ" 
		0 7 "spineLeg_L:femurSpine_IK_CON.scaleY" 0 8 "spineLeg_L:femurSpine_IK_CON.scaleX" 
		0 9 "spineLeg_L:femurSpine_IK_CON.rotateZ" 2 16 "spineLeg_L:femurSpine_IK_CON.rotateY" 
		2 17 "spineLeg_L:femurSpine_IK_CON.rotateX" 2 18 "spineLeg_L:femurSpine_IK_CON.translateZ" 
		1 16 "spineLeg_L:femurSpine_IK_CON.translateY" 1 17 "spineLeg_L:femurSpine_IK_CON.translateX" 
		1 18 "spineLeg_L:tangentFemur_02_IK_CON.scaleZ" 0 10 "spineLeg_L:tangentFemur_02_IK_CON.scaleY" 
		0 11 "spineLeg_L:tangentFemur_02_IK_CON.scaleX" 0 12 "spineLeg_L:tangentFemur_02_IK_CON.rotateZ" 
		2 19 "spineLeg_L:tangentFemur_02_IK_CON.rotateY" 2 20 "spineLeg_L:tangentFemur_02_IK_CON.rotateX" 
		2 21 "spineLeg_L:tangentFemur_02_IK_CON.translateZ" 1 19 "spineLeg_L:tangentFemur_02_IK_CON.translateY" 
		1 20 "spineLeg_L:tangentFemur_02_IK_CON.translateX" 1 21 "spineLeg_L:tangentFemur_01_IK_CON.scaleZ" 
		0 13 "spineLeg_L:tangentFemur_01_IK_CON.scaleY" 0 14 "spineLeg_L:tangentFemur_01_IK_CON.scaleX" 
		0 15 "spineLeg_L:tangentFemur_01_IK_CON.rotateZ" 2 22 "spineLeg_L:tangentFemur_01_IK_CON.rotateY" 
		2 23 "spineLeg_L:tangentFemur_01_IK_CON.rotateX" 2 24 "spineLeg_L:tangentFemur_01_IK_CON.translateZ" 
		1 22 "spineLeg_L:tangentFemur_01_IK_CON.translateY" 1 23 "spineLeg_L:tangentFemur_01_IK_CON.translateX" 
		1 24 "spineLeg_L:tangentTibia_02_IK_CON.scaleZ" 0 16 "spineLeg_L:tangentTibia_02_IK_CON.scaleY" 
		0 17 "spineLeg_L:tangentTibia_02_IK_CON.scaleX" 0 18 "spineLeg_L:tangentTibia_02_IK_CON.rotateZ" 
		2 25 "spineLeg_L:tangentTibia_02_IK_CON.rotateY" 2 26 "spineLeg_L:tangentTibia_02_IK_CON.rotateX" 
		2 27 "spineLeg_L:tangentTibia_02_IK_CON.translateZ" 1 25 "spineLeg_L:tangentTibia_02_IK_CON.translateY" 
		1 26 "spineLeg_L:tangentTibia_02_IK_CON.translateX" 1 27 "spineLeg_L:tangentTibia_01_IK_CON.scaleZ" 
		0 19 "spineLeg_L:tangentTibia_01_IK_CON.scaleY" 0 20 "spineLeg_L:tangentTibia_01_IK_CON.scaleX" 
		0 21 "spineLeg_L:tangentTibia_01_IK_CON.rotateZ" 2 28 "spineLeg_L:tangentTibia_01_IK_CON.rotateY" 
		2 29 "spineLeg_L:tangentTibia_01_IK_CON.rotateX" 2 30 "spineLeg_L:tangentTibia_01_IK_CON.translateZ" 
		1 28 "spineLeg_L:tangentTibia_01_IK_CON.translateY" 1 29 "spineLeg_L:tangentTibia_01_IK_CON.translateX" 
		1 30 "spineLeg_L:upVector_IK_CON.translateZ" 1 31 "spineLeg_L:upVector_IK_CON.translateY" 
		1 32 "spineLeg_L:upVector_IK_CON.translateX" 1 33 "spineLeg_L:foot_IK_CON.rotateZ" 
		2 31 "spineLeg_L:foot_IK_CON.rotateY" 2 32 "spineLeg_L:foot_IK_CON.rotateX" 
		2 33 "spineLeg_L:foot_IK_CON.translateZ" 1 34 "spineLeg_L:foot_IK_CON.translateY" 
		1 35 "spineLeg_L:foot_IK_CON.translateX" 1 36  ;
	setAttr ".aal" -type "attributeAlias" {"spineLeg_L:footSpine_IK_CON_rotateZ","angularValues[10]"
		,"spineLeg_L:footSpine_IK_CON_rotateY","angularValues[11]","spineLeg_L:footSpine_IK_CON_rotateX"
		,"angularValues[12]","spineLeg_L:tibiaSpine_IK_CON_rotateZ","angularValues[13]","spineLeg_L:tibiaSpine_IK_CON_rotateY"
		,"angularValues[14]","spineLeg_L:tibiaSpine_IK_CON_rotateX","angularValues[15]","spineLeg_L:femurSpine_IK_CON_rotateZ"
		,"angularValues[16]","spineLeg_L:femurSpine_IK_CON_rotateY","angularValues[17]","spineLeg_L:femurSpine_IK_CON_rotateX"
		,"angularValues[18]","spineLeg_L:tangentFemur_02_IK_CON_rotateZ","angularValues[19]"
		,"spineLeg_L:foot_FK_CON_rotateZ","angularValues[1]","spineLeg_L:tangentFemur_02_IK_CON_rotateY"
		,"angularValues[20]","spineLeg_L:tangentFemur_02_IK_CON_rotateX","angularValues[21]"
		,"spineLeg_L:tangentFemur_01_IK_CON_rotateZ","angularValues[22]","spineLeg_L:tangentFemur_01_IK_CON_rotateY"
		,"angularValues[23]","spineLeg_L:tangentFemur_01_IK_CON_rotateX","angularValues[24]"
		,"spineLeg_L:tangentTibia_02_IK_CON_rotateZ","angularValues[25]","spineLeg_L:tangentTibia_02_IK_CON_rotateY"
		,"angularValues[26]","spineLeg_L:tangentTibia_02_IK_CON_rotateX","angularValues[27]"
		,"spineLeg_L:tangentTibia_01_IK_CON_rotateZ","angularValues[28]","spineLeg_L:tangentTibia_01_IK_CON_rotateY"
		,"angularValues[29]","spineLeg_L:foot_FK_CON_rotateY","angularValues[2]","spineLeg_L:tangentTibia_01_IK_CON_rotateX"
		,"angularValues[30]","spineLeg_L:foot_IK_CON_rotateZ","angularValues[31]","spineLeg_L:foot_IK_CON_rotateY"
		,"angularValues[32]","spineLeg_L:foot_IK_CON_rotateX","angularValues[33]","spineLeg_L:foot_FK_CON_rotateX"
		,"angularValues[3]","spineLeg_L:tibia_FK_CON_rotateZ","angularValues[4]","spineLeg_L:tibia_FK_CON_rotateY"
		,"angularValues[5]","spineLeg_L:tibia_FK_CON_rotateX","angularValues[6]","spineLeg_L:femur_FK_CON_rotateZ"
		,"angularValues[7]","spineLeg_L:femur_FK_CON_rotateY","angularValues[8]","spineLeg_L:femur_FK_CON_rotateX"
		,"angularValues[9]","spineLeg_L:footSpine_IK_CON_translateZ","linearValues[10]","spineLeg_L:footSpine_IK_CON_translateY"
		,"linearValues[11]","spineLeg_L:footSpine_IK_CON_translateX","linearValues[12]","spineLeg_L:tibiaSpine_IK_CON_translateZ"
		,"linearValues[13]","spineLeg_L:tibiaSpine_IK_CON_translateY","linearValues[14]","spineLeg_L:tibiaSpine_IK_CON_translateX"
		,"linearValues[15]","spineLeg_L:femurSpine_IK_CON_translateZ","linearValues[16]","spineLeg_L:femurSpine_IK_CON_translateY"
		,"linearValues[17]","spineLeg_L:femurSpine_IK_CON_translateX","linearValues[18]","spineLeg_L:tangentFemur_02_IK_CON_translateZ"
		,"linearValues[19]","spineLeg_L:foot_FK_CON_translateZ","linearValues[1]","spineLeg_L:tangentFemur_02_IK_CON_translateY"
		,"linearValues[20]","spineLeg_L:tangentFemur_02_IK_CON_translateX","linearValues[21]"
		,"spineLeg_L:tangentFemur_01_IK_CON_translateZ","linearValues[22]","spineLeg_L:tangentFemur_01_IK_CON_translateY"
		,"linearValues[23]","spineLeg_L:tangentFemur_01_IK_CON_translateX","linearValues[24]"
		,"spineLeg_L:tangentTibia_02_IK_CON_translateZ","linearValues[25]","spineLeg_L:tangentTibia_02_IK_CON_translateY"
		,"linearValues[26]","spineLeg_L:tangentTibia_02_IK_CON_translateX","linearValues[27]"
		,"spineLeg_L:tangentTibia_01_IK_CON_translateZ","linearValues[28]","spineLeg_L:tangentTibia_01_IK_CON_translateY"
		,"linearValues[29]","spineLeg_L:foot_FK_CON_translateY","linearValues[2]","spineLeg_L:tangentTibia_01_IK_CON_translateX"
		,"linearValues[30]","spineLeg_L:upVector_IK_CON_translateZ","linearValues[31]","spineLeg_L:upVector_IK_CON_translateY"
		,"linearValues[32]","spineLeg_L:upVector_IK_CON_translateX","linearValues[33]","spineLeg_L:foot_IK_CON_translateZ"
		,"linearValues[34]","spineLeg_L:foot_IK_CON_translateY","linearValues[35]","spineLeg_L:foot_IK_CON_translateX"
		,"linearValues[36]","spineLeg_L:foot_FK_CON_translateX","linearValues[3]","spineLeg_L:tibia_FK_CON_translateZ"
		,"linearValues[4]","spineLeg_L:tibia_FK_CON_translateY","linearValues[5]","spineLeg_L:tibia_FK_CON_translateX"
		,"linearValues[6]","spineLeg_L:femur_FK_CON_translateZ","linearValues[7]","spineLeg_L:femur_FK_CON_translateY"
		,"linearValues[8]","spineLeg_L:femur_FK_CON_translateX","linearValues[9]","spineLeg_L:tangentFemur_02_IK_CON_scaleZ"
		,"unitlessValues[10]","spineLeg_L:tangentFemur_02_IK_CON_scaleY","unitlessValues[11]"
		,"spineLeg_L:tangentFemur_02_IK_CON_scaleX","unitlessValues[12]","spineLeg_L:tangentFemur_01_IK_CON_scaleZ"
		,"unitlessValues[13]","spineLeg_L:tangentFemur_01_IK_CON_scaleY","unitlessValues[14]"
		,"spineLeg_L:tangentFemur_01_IK_CON_scaleX","unitlessValues[15]","spineLeg_L:tangentTibia_02_IK_CON_scaleZ"
		,"unitlessValues[16]","spineLeg_L:tangentTibia_02_IK_CON_scaleY","unitlessValues[17]"
		,"spineLeg_L:tangentTibia_02_IK_CON_scaleX","unitlessValues[18]","spineLeg_L:tangentTibia_01_IK_CON_scaleZ"
		,"unitlessValues[19]","spineLeg_L:footSpine_IK_CON_scaleZ","unitlessValues[1]","spineLeg_L:tangentTibia_01_IK_CON_scaleY"
		,"unitlessValues[20]","spineLeg_L:tangentTibia_01_IK_CON_scaleX","unitlessValues[21]"
		,"spineLeg_L:footSpine_IK_CON_scaleY","unitlessValues[2]","spineLeg_L:footSpine_IK_CON_scaleX"
		,"unitlessValues[3]","spineLeg_L:tibiaSpine_IK_CON_scaleZ","unitlessValues[4]","spineLeg_L:tibiaSpine_IK_CON_scaleY"
		,"unitlessValues[5]","spineLeg_L:tibiaSpine_IK_CON_scaleX","unitlessValues[6]","spineLeg_L:femurSpine_IK_CON_scaleZ"
		,"unitlessValues[7]","spineLeg_L:femurSpine_IK_CON_scaleY","unitlessValues[8]","spineLeg_L:femurSpine_IK_CON_scaleX"
		,"unitlessValues[9]"} ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "62EB575C-4B96-7410-9FD9-308C121248B6";
	setAttr ".tgi[0].tn" -type "string" "arm_ik1";
	setAttr ".tgi[0].vl" -type "double2" -1384.4605280759549 469.49598609633546 ;
	setAttr ".tgi[0].vh" -type "double2" 421.11110560342956 3236.1625428255479 ;
	setAttr -s 45 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 730;
	setAttr ".tgi[0].ni[0].y" 2407.142822265625;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" -870.05535888671875;
	setAttr ".tgi[0].ni[1].y" 2428.042724609375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -877.12213134765625;
	setAttr ".tgi[0].ni[2].y" 1361.01611328125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 730;
	setAttr ".tgi[0].ni[3].y" 2804.28564453125;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" -191.42857360839844;
	setAttr ".tgi[0].ni[4].y" 1458.5714111328125;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" -191.42857360839844;
	setAttr ".tgi[0].ni[5].y" 2212.857177734375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -884.617919921875;
	setAttr ".tgi[0].ni[6].y" 1463.9063720703125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -870.05535888671875;
	setAttr ".tgi[0].ni[7].y" 3042.328369140625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -870.05535888671875;
	setAttr ".tgi[0].ni[8].y" 2796.614013671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -870.05535888671875;
	setAttr ".tgi[0].ni[9].y" 2919.47119140625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 730;
	setAttr ".tgi[0].ni[10].y" 1215.7142333984375;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[0].ni[11].x" -858.50238037109375;
	setAttr ".tgi[0].ni[11].y" 808.716552734375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -524.651123046875;
	setAttr ".tgi[0].ni[12].y" 3179.944580078125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -191.42857360839844;
	setAttr ".tgi[0].ni[13].y" 2090;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -2.8571429252624512;
	setAttr ".tgi[0].ni[14].y" -715.71429443359375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 730;
	setAttr ".tgi[0].ni[15].y" 1612.857177734375;
	setAttr ".tgi[0].ni[15].nvs" 18305;
	setAttr ".tgi[0].ni[16].x" -858.50238037109375;
	setAttr ".tgi[0].ni[16].y" 448.716552734375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -870.05535888671875;
	setAttr ".tgi[0].ni[17].y" 3165.185546875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 730;
	setAttr ".tgi[0].ni[18].y" 1017.1428833007813;
	setAttr ".tgi[0].ni[18].nvs" 18305;
	setAttr ".tgi[0].ni[19].x" -191.42857360839844;
	setAttr ".tgi[0].ni[19].y" 2392.857177734375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -191.42857360839844;
	setAttr ".tgi[0].ni[20].y" 3187.142822265625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -191.42857360839844;
	setAttr ".tgi[0].ni[21].y" 2761.428466796875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -892.11370849609375;
	setAttr ".tgi[0].ni[22].y" 1725.112060546875;
	setAttr ".tgi[0].ni[22].nvs" 18306;
	setAttr ".tgi[0].ni[23].x" -870.05535888671875;
	setAttr ".tgi[0].ni[23].y" 2673.7568359375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 730;
	setAttr ".tgi[0].ni[24].y" 1811.4285888671875;
	setAttr ".tgi[0].ni[24].nvs" 18305;
	setAttr ".tgi[0].ni[25].x" 422.85714721679688;
	setAttr ".tgi[0].ni[25].y" 1674.2857666015625;
	setAttr ".tgi[0].ni[25].nvs" 18306;
	setAttr ".tgi[0].ni[26].x" -888.17431640625;
	setAttr ".tgi[0].ni[26].y" 1106.408935546875;
	setAttr ".tgi[0].ni[26].nvs" 18306;
	setAttr ".tgi[0].ni[27].x" -498.57144165039063;
	setAttr ".tgi[0].ni[27].y" 2808.571533203125;
	setAttr ".tgi[0].ni[27].nvs" 18306;
	setAttr ".tgi[0].ni[28].x" 730;
	setAttr ".tgi[0].ni[28].y" 1414.2857666015625;
	setAttr ".tgi[0].ni[28].nvs" 18305;
	setAttr ".tgi[0].ni[29].x" -191.42857360839844;
	setAttr ".tgi[0].ni[29].y" 2638.571533203125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 730;
	setAttr ".tgi[0].ni[30].y" 2605.71435546875;
	setAttr ".tgi[0].ni[30].nvs" 18305;
	setAttr ".tgi[0].ni[31].x" -191.42857360839844;
	setAttr ".tgi[0].ni[31].y" 2515.71435546875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 422.85714721679688;
	setAttr ".tgi[0].ni[32].y" 1271.4285888671875;
	setAttr ".tgi[0].ni[32].nvs" 18306;
	setAttr ".tgi[0].ni[33].x" -191.42857360839844;
	setAttr ".tgi[0].ni[33].y" 3007.142822265625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 684.28570556640625;
	setAttr ".tgi[0].ni[34].y" -1152.857177734375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 730;
	setAttr ".tgi[0].ni[35].y" 2010;
	setAttr ".tgi[0].ni[35].nvs" 18305;
	setAttr ".tgi[0].ni[36].x" -191.42857360839844;
	setAttr ".tgi[0].ni[36].y" 2884.28564453125;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -191.42857360839844;
	setAttr ".tgi[0].ni[37].y" 1967.142822265625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 730;
	setAttr ".tgi[0].ni[38].y" 2208.571533203125;
	setAttr ".tgi[0].ni[38].nvs" 18305;
	setAttr ".tgi[0].ni[39].x" -191.42857360839844;
	setAttr ".tgi[0].ni[39].y" 1844.2857666015625;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -1112.857177734375;
	setAttr ".tgi[0].ni[40].y" 2782.857177734375;
	setAttr ".tgi[0].ni[40].nvs" 18305;
	setAttr ".tgi[0].ni[41].x" -872.553955078125;
	setAttr ".tgi[0].ni[41].y" 1243.6932373046875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -858.50238037109375;
	setAttr ".tgi[0].ni[42].y" 628.716552734375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -870.05535888671875;
	setAttr ".tgi[0].ni[43].y" 2550.899658203125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 991.4285888671875;
	setAttr ".tgi[0].ni[44].y" -1152.857177734375;
	setAttr ".tgi[0].ni[44].nvs" 18304;
createNode mute -n "aTools_StoreNode";
	rename -uid "CFD7E8C1-46F7-2596-9898-94A4F405A579";
createNode mute -n "scene";
	rename -uid "10E28010-4A2F-31AF-4D8E-F19696F87438";
	addAttr -ci true -sn "id" -ln "id" -dt "string";
	setAttr ".id" -type "string" "1617626707.98";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :characterPartition;
connectAttr "skinCluster1.og[0]" "leg_meshShape.i";
connectAttr "skinCluster1GroupId.id" "leg_meshShape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "leg_meshShape.iog.og[2].gco";
connectAttr "groupId2.id" "leg_meshShape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "leg_meshShape.iog.og[3].gco";
connectAttr "tweak1.vl[0].vt[0]" "leg_meshShape.twl";
connectAttr "polyCylinder1.out" "spineLeg_L:armShapeOrig.i";
connectAttr "ldRigComparaisonNode1.outValue" "spineLeg_L:foot_IK_CON.v" -l on;
connectAttr "spineLeg_L:leg.lv[34]" "spineLeg_L:foot_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[35]" "spineLeg_L:foot_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[36]" "spineLeg_L:foot_IK_CON.tx";
connectAttr "spineLeg_L:leg.av[31]" "spineLeg_L:foot_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[32]" "spineLeg_L:foot_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[33]" "spineLeg_L:foot_IK_CON.rx";
connectAttr "ldRigComparaisonNode1.outValue" "spineLeg_L:upVector_IK_CON.v" -l on
		;
connectAttr "spineLeg_L:leg.lv[32]" "spineLeg_L:upVector_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[31]" "spineLeg_L:upVector_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[33]" "spineLeg_L:upVector_IK_CON.tx";
connectAttr "ldRigTwistNode2.ts[0]" "spineLeg_L:tangentTibia_01_IK_BUF.opm";
connectAttr "spineLeg_L:setup.showSecondSpineControllers" "spineLeg_L:tangentTibia_01_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.lv[28]" "spineLeg_L:tangentTibia_01_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[29]" "spineLeg_L:tangentTibia_01_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[30]" "spineLeg_L:tangentTibia_01_IK_CON.tx";
connectAttr "spineLeg_L:leg.uv[19]" "spineLeg_L:tangentTibia_01_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[20]" "spineLeg_L:tangentTibia_01_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[21]" "spineLeg_L:tangentTibia_01_IK_CON.sx";
connectAttr "spineLeg_L:leg.av[28]" "spineLeg_L:tangentTibia_01_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[29]" "spineLeg_L:tangentTibia_01_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[30]" "spineLeg_L:tangentTibia_01_IK_CON.rx";
connectAttr "ldRigTwistNode2.ts[1]" "spineLeg_L:tangentTibia_02_IK_BUF.opm";
connectAttr "spineLeg_L:setup.showSecondSpineControllers" "spineLeg_L:tangentTibia_02_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.uv[16]" "spineLeg_L:tangentTibia_02_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[17]" "spineLeg_L:tangentTibia_02_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[18]" "spineLeg_L:tangentTibia_02_IK_CON.sx";
connectAttr "spineLeg_L:leg.av[25]" "spineLeg_L:tangentTibia_02_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[26]" "spineLeg_L:tangentTibia_02_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[27]" "spineLeg_L:tangentTibia_02_IK_CON.rx";
connectAttr "spineLeg_L:leg.lv[25]" "spineLeg_L:tangentTibia_02_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[26]" "spineLeg_L:tangentTibia_02_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[27]" "spineLeg_L:tangentTibia_02_IK_CON.tx";
connectAttr "ldRigTwistNode1.ts[0]" "spineLeg_L:tangentFemur_01_IK_BUF.opm";
connectAttr "spineLeg_L:setup.showSecondSpineControllers" "spineLeg_L:tangentFemur_01_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.uv[13]" "spineLeg_L:tangentFemur_01_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[14]" "spineLeg_L:tangentFemur_01_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[15]" "spineLeg_L:tangentFemur_01_IK_CON.sx";
connectAttr "spineLeg_L:leg.av[22]" "spineLeg_L:tangentFemur_01_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[23]" "spineLeg_L:tangentFemur_01_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[24]" "spineLeg_L:tangentFemur_01_IK_CON.rx";
connectAttr "spineLeg_L:leg.lv[22]" "spineLeg_L:tangentFemur_01_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[23]" "spineLeg_L:tangentFemur_01_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[24]" "spineLeg_L:tangentFemur_01_IK_CON.tx";
connectAttr "ldRigTwistNode1.ts[1]" "spineLeg_L:tangentFemur_02_IK_BUF.opm";
connectAttr "spineLeg_L:setup.showSecondSpineControllers" "spineLeg_L:tangentFemur_02_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.uv[10]" "spineLeg_L:tangentFemur_02_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[11]" "spineLeg_L:tangentFemur_02_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[12]" "spineLeg_L:tangentFemur_02_IK_CON.sx";
connectAttr "spineLeg_L:leg.av[19]" "spineLeg_L:tangentFemur_02_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[20]" "spineLeg_L:tangentFemur_02_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[21]" "spineLeg_L:tangentFemur_02_IK_CON.rx";
connectAttr "spineLeg_L:leg.lv[19]" "spineLeg_L:tangentFemur_02_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[20]" "spineLeg_L:tangentFemur_02_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[21]" "spineLeg_L:tangentFemur_02_IK_CON.tx";
connectAttr "ldRigFkIk2Bones1.b1Trans" "spineLeg_L:femurSpine_IK_BUF.opm";
connectAttr "spineLeg_L:leg.uv[7]" "spineLeg_L:femurSpine_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[9]" "spineLeg_L:femurSpine_IK_CON.sx";
connectAttr "spineLeg_L:leg.uv[8]" "spineLeg_L:femurSpine_IK_CON.sy";
connectAttr "spineLeg_L:setup.showMainSpineControllers" "spineLeg_L:femurSpine_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.av[16]" "spineLeg_L:femurSpine_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[17]" "spineLeg_L:femurSpine_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[18]" "spineLeg_L:femurSpine_IK_CON.rx";
connectAttr "spineLeg_L:leg.lv[16]" "spineLeg_L:femurSpine_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[17]" "spineLeg_L:femurSpine_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[18]" "spineLeg_L:femurSpine_IK_CON.tx";
connectAttr "ldRigFkIk2Bones1.b2Trans" "spineLeg_L:tibiaSpine_IK_BUF.opm";
connectAttr "spineLeg_L:setup.showMainSpineControllers" "spineLeg_L:tibiaSpine_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.uv[4]" "spineLeg_L:tibiaSpine_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[5]" "spineLeg_L:tibiaSpine_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[6]" "spineLeg_L:tibiaSpine_IK_CON.sx";
connectAttr "spineLeg_L:leg.av[13]" "spineLeg_L:tibiaSpine_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[14]" "spineLeg_L:tibiaSpine_IK_CON.ry";
connectAttr "spineLeg_L:leg.av[15]" "spineLeg_L:tibiaSpine_IK_CON.rx";
connectAttr "spineLeg_L:leg.lv[13]" "spineLeg_L:tibiaSpine_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[14]" "spineLeg_L:tibiaSpine_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[15]" "spineLeg_L:tibiaSpine_IK_CON.tx";
connectAttr "ldRigFkIk2Bones1.b3Trans" "spineLeg_L:footSpine_IK_BUF.opm";
connectAttr "spineLeg_L:leg.lv[10]" "spineLeg_L:footSpine_IK_CON.tz";
connectAttr "spineLeg_L:leg.lv[11]" "spineLeg_L:footSpine_IK_CON.ty";
connectAttr "spineLeg_L:leg.lv[12]" "spineLeg_L:footSpine_IK_CON.tx";
connectAttr "spineLeg_L:leg.av[12]" "spineLeg_L:footSpine_IK_CON.rx";
connectAttr "spineLeg_L:leg.av[10]" "spineLeg_L:footSpine_IK_CON.rz";
connectAttr "spineLeg_L:leg.av[11]" "spineLeg_L:footSpine_IK_CON.ry";
connectAttr "spineLeg_L:setup.showMainSpineControllers" "spineLeg_L:footSpine_IK_CON.v"
		;
connectAttr "spineLeg_L:leg.uv[1]" "spineLeg_L:footSpine_IK_CON.sz";
connectAttr "spineLeg_L:leg.uv[2]" "spineLeg_L:footSpine_IK_CON.sy";
connectAttr "spineLeg_L:leg.uv[3]" "spineLeg_L:footSpine_IK_CON.sx";
connectAttr "ldRigComparaisonNode2.outValue" "spineLeg_L:femur_FK_CON.v" -l on;
connectAttr "spineLeg_L:leg.lv[9]" "spineLeg_L:femur_FK_CON.tx";
connectAttr "spineLeg_L:leg.lv[8]" "spineLeg_L:femur_FK_CON.ty";
connectAttr "spineLeg_L:leg.lv[7]" "spineLeg_L:femur_FK_CON.tz";
connectAttr "spineLeg_L:leg.av[7]" "spineLeg_L:femur_FK_CON.rz";
connectAttr "spineLeg_L:leg.av[8]" "spineLeg_L:femur_FK_CON.ry";
connectAttr "spineLeg_L:leg.av[9]" "spineLeg_L:femur_FK_CON.rx";
connectAttr "ldRigComparaisonNode2.outValue" "spineLeg_L:tibia_FK_CON.v" -l on;
connectAttr "spineLeg_L:leg.av[5]" "spineLeg_L:tibia_FK_CON.ry";
connectAttr "spineLeg_L:leg.av[4]" "spineLeg_L:tibia_FK_CON.rz";
connectAttr "spineLeg_L:leg.av[6]" "spineLeg_L:tibia_FK_CON.rx";
connectAttr "spineLeg_L:leg.lv[6]" "spineLeg_L:tibia_FK_CON.tx";
connectAttr "spineLeg_L:leg.lv[5]" "spineLeg_L:tibia_FK_CON.ty";
connectAttr "spineLeg_L:leg.lv[4]" "spineLeg_L:tibia_FK_CON.tz";
connectAttr "ldRigComparaisonNode2.outValue" "spineLeg_L:foot_FK_CON.v" -l on;
connectAttr "spineLeg_L:leg.lv[3]" "spineLeg_L:foot_FK_CON.tx";
connectAttr "spineLeg_L:leg.lv[2]" "spineLeg_L:foot_FK_CON.ty";
connectAttr "spineLeg_L:leg.lv[1]" "spineLeg_L:foot_FK_CON.tz";
connectAttr "spineLeg_L:leg.av[1]" "spineLeg_L:foot_FK_CON.rz";
connectAttr "spineLeg_L:leg.av[2]" "spineLeg_L:foot_FK_CON.ry";
connectAttr "spineLeg_L:leg.av[3]" "spineLeg_L:foot_FK_CON.rx";
connectAttr "ldRigFkIk2Bones1.b1Trans" "spineLeg_L:femur__JNT.opm";
connectAttr "ldRigFkIk2Bones1.b2Trans" "spineLeg_L:tibia__JNT.opm";
connectAttr "ldRigFkIk2Bones1.b3Trans" "spineLeg_L:foot__JNT.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[0]" "spineLeg_L:femurSpine_1.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[1]" "spineLeg_L:femurSpine_2.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[2]" "spineLeg_L:femurSpine_3.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[3]" "spineLeg_L:femurSpine_4.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[4]" "spineLeg_L:femurSpine_5.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[5]" "spineLeg_L:tibiaSpine_1.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[6]" "spineLeg_L:tibiaSpine_2.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[7]" "spineLeg_L:tibiaSpine_3.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[8]" "spineLeg_L:tibiaSpine_4.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[9]" "spineLeg_L:tibiaSpine_5.opm";
connectAttr "spineLeg_L:ldRigCurveNode1.defs[10]" "spineLeg_L:footSpine.opm";
connectAttr "spineLeg_L:footSpine_IK_CON.wm" "spineLeg_L:footAttach.opm";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spineLeg_L:femurSpine_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[0].ikCtrl"
		;
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[1].ikCtrl"
		;
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[2].ikCtrl"
		;
connectAttr "spineLeg_L:tibiaSpine_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[3].ikCtrl"
		;
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[4].ikCtrl"
		;
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[5].ikCtrl"
		;
connectAttr "spineLeg_L:footSpine_IK_CON.wm" "spineLeg_L:ldRigCurveNode1.ctrls[6].ikCtrl"
		;
connectAttr "ldRigFkIk2Bones1.b1Trans" "ldRigTwistNode1.matAP";
connectAttr "ldRigFkIk2Bones1.b1Trans" "ldRigTwistNode1.matAR";
connectAttr "ldRigFkIk2Bones1.b1Trans" "ldRigTwistNode1.matAS";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode1.matBP";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode1.matBR";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode1.matBS";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode2.matAP";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode2.matAR";
connectAttr "ldRigFkIk2Bones1.b3Trans" "ldRigTwistNode2.matBP";
connectAttr "ldRigFkIk2Bones1.b3Trans" "ldRigTwistNode2.matBR";
connectAttr "ldRigFkIk2Bones1.b2Trans" "ldRigTwistNode2.matAS";
connectAttr "ldRigFkIk2Bones1.b3Trans" "ldRigTwistNode2.matBS";
connectAttr "spineLeg_L:upVector_IK_CON.wm" "ldRigFkIk2Bones1.ikUpV";
connectAttr "spineLeg_L:legPivot_IK_BUF.wm" "ldRigFkIk2Bones1.ikR";
connectAttr "spineLeg_L:foot_FK_CON.wm" "ldRigFkIk2Bones1.fkB3";
connectAttr "spineLeg_L:femur_FK_CON.wm" "ldRigFkIk2Bones1.fkB1";
connectAttr "spineLeg_L:tibia_FK_CON.wm" "ldRigFkIk2Bones1.fkB2";
connectAttr "spineLeg_L:foot_IK_CON.wm" "ldRigFkIk2Bones1.ikEff";
connectAttr "spineLeg_L:setup.blendFkIK" "ldRigFkIk2Bones1.blend";
connectAttr "ldRigFkIk2Bones1.blend" "ldRigComparaisonNode1.firstTerm";
connectAttr "ldRigFkIk2Bones1.blend" "ldRigComparaisonNode2.firstTerm";
connectAttr "spineLeg_L:armShapeOrig.w" "transformGeometry1.ig";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "spineLeg_L:femurSpine_1.wm" "skinCluster1.ma[0]";
connectAttr "spineLeg_L:femurSpine_2.wm" "skinCluster1.ma[1]";
connectAttr "spineLeg_L:femurSpine_3.wm" "skinCluster1.ma[2]";
connectAttr "spineLeg_L:femurSpine_4.wm" "skinCluster1.ma[3]";
connectAttr "spineLeg_L:femurSpine_5.wm" "skinCluster1.ma[4]";
connectAttr "spineLeg_L:tibiaSpine_1.wm" "skinCluster1.ma[5]";
connectAttr "spineLeg_L:tibiaSpine_2.wm" "skinCluster1.ma[6]";
connectAttr "spineLeg_L:tibiaSpine_3.wm" "skinCluster1.ma[7]";
connectAttr "spineLeg_L:tibiaSpine_4.wm" "skinCluster1.ma[8]";
connectAttr "spineLeg_L:tibiaSpine_5.wm" "skinCluster1.ma[9]";
connectAttr "spineLeg_L:footSpine.wm" "skinCluster1.ma[10]";
connectAttr "spineLeg_L:femurSpine_1.liw" "skinCluster1.lw[0]";
connectAttr "spineLeg_L:femurSpine_2.liw" "skinCluster1.lw[1]";
connectAttr "spineLeg_L:femurSpine_3.liw" "skinCluster1.lw[2]";
connectAttr "spineLeg_L:femurSpine_4.liw" "skinCluster1.lw[3]";
connectAttr "spineLeg_L:femurSpine_5.liw" "skinCluster1.lw[4]";
connectAttr "spineLeg_L:tibiaSpine_1.liw" "skinCluster1.lw[5]";
connectAttr "spineLeg_L:tibiaSpine_2.liw" "skinCluster1.lw[6]";
connectAttr "spineLeg_L:tibiaSpine_3.liw" "skinCluster1.lw[7]";
connectAttr "spineLeg_L:tibiaSpine_4.liw" "skinCluster1.lw[8]";
connectAttr "spineLeg_L:tibiaSpine_5.liw" "skinCluster1.lw[9]";
connectAttr "spineLeg_L:footSpine.liw" "skinCluster1.lw[10]";
connectAttr "spineLeg_L:femurSpine_1.obcc" "skinCluster1.ifcl[0]";
connectAttr "spineLeg_L:femurSpine_2.obcc" "skinCluster1.ifcl[1]";
connectAttr "spineLeg_L:femurSpine_3.obcc" "skinCluster1.ifcl[2]";
connectAttr "spineLeg_L:femurSpine_4.obcc" "skinCluster1.ifcl[3]";
connectAttr "spineLeg_L:femurSpine_5.obcc" "skinCluster1.ifcl[4]";
connectAttr "spineLeg_L:tibiaSpine_1.obcc" "skinCluster1.ifcl[5]";
connectAttr "spineLeg_L:tibiaSpine_2.obcc" "skinCluster1.ifcl[6]";
connectAttr "spineLeg_L:tibiaSpine_3.obcc" "skinCluster1.ifcl[7]";
connectAttr "spineLeg_L:tibiaSpine_4.obcc" "skinCluster1.ifcl[8]";
connectAttr "spineLeg_L:tibiaSpine_5.obcc" "skinCluster1.ifcl[9]";
connectAttr "spineLeg_L:footSpine.obcc" "skinCluster1.ifcl[10]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "leg_meshShape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "leg_meshShape.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "transformGeometry1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "spineLeg_L:module.msg" "bindPose1.m[0]";
connectAttr "spineLeg_L:bones_GRP.msg" "bindPose1.m[1]";
connectAttr "spineLeg_L:femurSpine_1.msg" "bindPose1.m[2]";
connectAttr "spineLeg_L:femurSpine_2.msg" "bindPose1.m[3]";
connectAttr "spineLeg_L:femurSpine_3.msg" "bindPose1.m[4]";
connectAttr "spineLeg_L:femurSpine_4.msg" "bindPose1.m[5]";
connectAttr "spineLeg_L:femurSpine_5.msg" "bindPose1.m[6]";
connectAttr "spineLeg_L:tibiaSpine_1.msg" "bindPose1.m[7]";
connectAttr "spineLeg_L:tibiaSpine_2.msg" "bindPose1.m[8]";
connectAttr "spineLeg_L:tibiaSpine_3.msg" "bindPose1.m[9]";
connectAttr "spineLeg_L:tibiaSpine_4.msg" "bindPose1.m[10]";
connectAttr "spineLeg_L:tibiaSpine_5.msg" "bindPose1.m[11]";
connectAttr "spineLeg_L:footSpine.msg" "bindPose1.m[12]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[1]" "bindPose1.p[3]";
connectAttr "bindPose1.m[1]" "bindPose1.p[4]";
connectAttr "bindPose1.m[1]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[1]" "bindPose1.p[7]";
connectAttr "bindPose1.m[1]" "bindPose1.p[8]";
connectAttr "bindPose1.m[1]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[1]" "bindPose1.p[11]";
connectAttr "bindPose1.m[1]" "bindPose1.p[12]";
connectAttr "spineLeg_L:femurSpine_1.bps" "bindPose1.wm[2]";
connectAttr "spineLeg_L:femurSpine_2.bps" "bindPose1.wm[3]";
connectAttr "spineLeg_L:femurSpine_3.bps" "bindPose1.wm[4]";
connectAttr "spineLeg_L:femurSpine_4.bps" "bindPose1.wm[5]";
connectAttr "spineLeg_L:femurSpine_5.bps" "bindPose1.wm[6]";
connectAttr "spineLeg_L:tibiaSpine_1.bps" "bindPose1.wm[7]";
connectAttr "spineLeg_L:tibiaSpine_2.bps" "bindPose1.wm[8]";
connectAttr "spineLeg_L:tibiaSpine_3.bps" "bindPose1.wm[9]";
connectAttr "spineLeg_L:tibiaSpine_4.bps" "bindPose1.wm[10]";
connectAttr "spineLeg_L:tibiaSpine_5.bps" "bindPose1.wm[11]";
connectAttr "spineLeg_L:footSpine.bps" "bindPose1.wm[12]";
connectAttr "spineLeg_L:hand_FK_CON_translateZ.o" "spineLeg_L:leg.lv[1]";
connectAttr "spineLeg_L:hand_FK_CON_translateY.o" "spineLeg_L:leg.lv[2]";
connectAttr "spineLeg_L:hand_FK_CON_translateX.o" "spineLeg_L:leg.lv[3]";
connectAttr "spineLeg_L:radius_FK_CON_translateZ.o" "spineLeg_L:leg.lv[4]";
connectAttr "spineLeg_L:radius_FK_CON_translateY.o" "spineLeg_L:leg.lv[5]";
connectAttr "spineLeg_L:radius_FK_CON_translateX.o" "spineLeg_L:leg.lv[6]";
connectAttr "spineLeg_L:humerus_FK_CON_translateZ.o" "spineLeg_L:leg.lv[7]";
connectAttr "spineLeg_L:humerus_FK_CON_translateY.o" "spineLeg_L:leg.lv[8]";
connectAttr "spineLeg_L:humerus_FK_CON_translateX.o" "spineLeg_L:leg.lv[9]";
connectAttr "spineLeg_L:handSpine_IK_CON_translateZ.o" "spineLeg_L:leg.lv[10]";
connectAttr "spineLeg_L:handSpine_IK_CON_translateY.o" "spineLeg_L:leg.lv[11]";
connectAttr "spineLeg_L:handSpine_IK_CON_translateX.o" "spineLeg_L:leg.lv[12]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_translateZ.o" "spineLeg_L:leg.lv[13]"
		;
connectAttr "spineLeg_L:radiusSpine_IK_CON_translateY.o" "spineLeg_L:leg.lv[14]"
		;
connectAttr "spineLeg_L:radiusSpine_IK_CON_translateX.o" "spineLeg_L:leg.lv[15]"
		;
connectAttr "spineLeg_L:humerusSpine_IK_CON_translateZ.o" "spineLeg_L:leg.lv[16]"
		;
connectAttr "spineLeg_L:humerusSpine_IK_CON_translateY.o" "spineLeg_L:leg.lv[17]"
		;
connectAttr "spineLeg_L:humerusSpine_IK_CON_translateX.o" "spineLeg_L:leg.lv[18]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_translateZ.o" "spineLeg_L:leg.lv[19]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_translateY.o" "spineLeg_L:leg.lv[20]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_translateX.o" "spineLeg_L:leg.lv[21]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_translateZ.o" "spineLeg_L:leg.lv[22]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_translateY.o" "spineLeg_L:leg.lv[23]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_translateX.o" "spineLeg_L:leg.lv[24]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_translateZ.o" "spineLeg_L:leg.lv[25]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_translateY.o" "spineLeg_L:leg.lv[26]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_translateX.o" "spineLeg_L:leg.lv[27]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_translateZ.o" "spineLeg_L:leg.lv[28]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_translateY.o" "spineLeg_L:leg.lv[29]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_translateX.o" "spineLeg_L:leg.lv[30]"
		;
connectAttr "spineLeg_L:upVector_IK_CON_translateZ.o" "spineLeg_L:leg.lv[31]";
connectAttr "spineLeg_L:upVector_IK_CON_translateY.o" "spineLeg_L:leg.lv[32]";
connectAttr "spineLeg_L:upVector_IK_CON_translateX.o" "spineLeg_L:leg.lv[33]";
connectAttr "spineLeg_L:hand_IK_CON_translateZ.o" "spineLeg_L:leg.lv[34]";
connectAttr "spineLeg_L:hand_IK_CON_translateY.o" "spineLeg_L:leg.lv[35]";
connectAttr "spineLeg_L:hand_IK_CON_translateX.o" "spineLeg_L:leg.lv[36]";
connectAttr "spineLeg_L:hand_FK_CON_rotateZ.o" "spineLeg_L:leg.av[1]";
connectAttr "spineLeg_L:hand_FK_CON_rotateY.o" "spineLeg_L:leg.av[2]";
connectAttr "spineLeg_L:hand_FK_CON_rotateX.o" "spineLeg_L:leg.av[3]";
connectAttr "spineLeg_L:radius_FK_CON_rotateZ.o" "spineLeg_L:leg.av[4]";
connectAttr "spineLeg_L:radius_FK_CON_rotateY.o" "spineLeg_L:leg.av[5]";
connectAttr "spineLeg_L:radius_FK_CON_rotateX.o" "spineLeg_L:leg.av[6]";
connectAttr "spineLeg_L:humerus_FK_CON_rotateZ.o" "spineLeg_L:leg.av[7]";
connectAttr "spineLeg_L:humerus_FK_CON_rotateY.o" "spineLeg_L:leg.av[8]";
connectAttr "spineLeg_L:humerus_FK_CON_rotateX.o" "spineLeg_L:leg.av[9]";
connectAttr "spineLeg_L:handSpine_IK_CON_rotateZ.o" "spineLeg_L:leg.av[10]";
connectAttr "spineLeg_L:handSpine_IK_CON_rotateY.o" "spineLeg_L:leg.av[11]";
connectAttr "spineLeg_L:handSpine_IK_CON_rotateX.o" "spineLeg_L:leg.av[12]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_rotateZ.o" "spineLeg_L:leg.av[13]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_rotateY.o" "spineLeg_L:leg.av[14]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_rotateX.o" "spineLeg_L:leg.av[15]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_rotateZ.o" "spineLeg_L:leg.av[16]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_rotateY.o" "spineLeg_L:leg.av[17]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_rotateX.o" "spineLeg_L:leg.av[18]";
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_rotateZ.o" "spineLeg_L:leg.av[19]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_rotateY.o" "spineLeg_L:leg.av[20]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_rotateX.o" "spineLeg_L:leg.av[21]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_rotateZ.o" "spineLeg_L:leg.av[22]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_rotateY.o" "spineLeg_L:leg.av[23]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_rotateX.o" "spineLeg_L:leg.av[24]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_rotateZ.o" "spineLeg_L:leg.av[25]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_rotateY.o" "spineLeg_L:leg.av[26]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_rotateX.o" "spineLeg_L:leg.av[27]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_rotateZ.o" "spineLeg_L:leg.av[28]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_rotateY.o" "spineLeg_L:leg.av[29]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_rotateX.o" "spineLeg_L:leg.av[30]"
		;
connectAttr "spineLeg_L:hand_IK_CON_rotateZ.o" "spineLeg_L:leg.av[31]";
connectAttr "spineLeg_L:hand_IK_CON_rotateY.o" "spineLeg_L:leg.av[32]";
connectAttr "spineLeg_L:hand_IK_CON_rotateX.o" "spineLeg_L:leg.av[33]";
connectAttr "spineLeg_L:handSpine_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[1]";
connectAttr "spineLeg_L:handSpine_IK_CON_scaleY.o" "spineLeg_L:leg.uv[2]";
connectAttr "spineLeg_L:handSpine_IK_CON_scaleX.o" "spineLeg_L:leg.uv[3]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[4]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_scaleY.o" "spineLeg_L:leg.uv[5]";
connectAttr "spineLeg_L:radiusSpine_IK_CON_scaleX.o" "spineLeg_L:leg.uv[6]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[7]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_scaleY.o" "spineLeg_L:leg.uv[8]";
connectAttr "spineLeg_L:humerusSpine_IK_CON_scaleX.o" "spineLeg_L:leg.uv[9]";
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[10]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_scaleY.o" "spineLeg_L:leg.uv[11]"
		;
connectAttr "spineLeg_L:tangentHumerus_02_IK_CON_scaleX.o" "spineLeg_L:leg.uv[12]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[13]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_scaleY.o" "spineLeg_L:leg.uv[14]"
		;
connectAttr "spineLeg_L:tangentHumerus_01_IK_CON_scaleX.o" "spineLeg_L:leg.uv[15]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[16]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_scaleY.o" "spineLeg_L:leg.uv[17]"
		;
connectAttr "spineLeg_L:tangentRadius_02_IK_CON_scaleX.o" "spineLeg_L:leg.uv[18]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_scaleZ.o" "spineLeg_L:leg.uv[19]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_scaleY.o" "spineLeg_L:leg.uv[20]"
		;
connectAttr "spineLeg_L:tangentRadius_01_IK_CON_scaleX.o" "spineLeg_L:leg.uv[21]"
		;
connectAttr "spineLeg_L:foot_FK_CON.rz" "spineLeg_L:leg.dnsm[0]";
connectAttr "spineLeg_L:foot_FK_CON.ry" "spineLeg_L:leg.dnsm[1]";
connectAttr "spineLeg_L:foot_FK_CON.rx" "spineLeg_L:leg.dnsm[2]";
connectAttr "spineLeg_L:foot_FK_CON.tz" "spineLeg_L:leg.dnsm[3]";
connectAttr "spineLeg_L:foot_FK_CON.ty" "spineLeg_L:leg.dnsm[4]";
connectAttr "spineLeg_L:foot_FK_CON.tx" "spineLeg_L:leg.dnsm[5]";
connectAttr "spineLeg_L:tibia_FK_CON.rz" "spineLeg_L:leg.dnsm[6]";
connectAttr "spineLeg_L:tibia_FK_CON.ry" "spineLeg_L:leg.dnsm[7]";
connectAttr "spineLeg_L:tibia_FK_CON.rx" "spineLeg_L:leg.dnsm[8]";
connectAttr "spineLeg_L:tibia_FK_CON.tz" "spineLeg_L:leg.dnsm[9]";
connectAttr "spineLeg_L:tibia_FK_CON.ty" "spineLeg_L:leg.dnsm[10]";
connectAttr "spineLeg_L:tibia_FK_CON.tx" "spineLeg_L:leg.dnsm[11]";
connectAttr "spineLeg_L:femur_FK_CON.rz" "spineLeg_L:leg.dnsm[12]";
connectAttr "spineLeg_L:femur_FK_CON.ry" "spineLeg_L:leg.dnsm[13]";
connectAttr "spineLeg_L:femur_FK_CON.rx" "spineLeg_L:leg.dnsm[14]";
connectAttr "spineLeg_L:femur_FK_CON.tz" "spineLeg_L:leg.dnsm[15]";
connectAttr "spineLeg_L:femur_FK_CON.ty" "spineLeg_L:leg.dnsm[16]";
connectAttr "spineLeg_L:femur_FK_CON.tx" "spineLeg_L:leg.dnsm[17]";
connectAttr "spineLeg_L:footSpine_IK_CON.sz" "spineLeg_L:leg.dnsm[18]";
connectAttr "spineLeg_L:footSpine_IK_CON.sy" "spineLeg_L:leg.dnsm[19]";
connectAttr "spineLeg_L:footSpine_IK_CON.sx" "spineLeg_L:leg.dnsm[20]";
connectAttr "spineLeg_L:footSpine_IK_CON.rz" "spineLeg_L:leg.dnsm[21]";
connectAttr "spineLeg_L:footSpine_IK_CON.ry" "spineLeg_L:leg.dnsm[22]";
connectAttr "spineLeg_L:footSpine_IK_CON.rx" "spineLeg_L:leg.dnsm[23]";
connectAttr "spineLeg_L:footSpine_IK_CON.tz" "spineLeg_L:leg.dnsm[24]";
connectAttr "spineLeg_L:footSpine_IK_CON.ty" "spineLeg_L:leg.dnsm[25]";
connectAttr "spineLeg_L:footSpine_IK_CON.tx" "spineLeg_L:leg.dnsm[26]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.sz" "spineLeg_L:leg.dnsm[27]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.sy" "spineLeg_L:leg.dnsm[28]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.sx" "spineLeg_L:leg.dnsm[29]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.rz" "spineLeg_L:leg.dnsm[30]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.ry" "spineLeg_L:leg.dnsm[31]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.rx" "spineLeg_L:leg.dnsm[32]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.tz" "spineLeg_L:leg.dnsm[33]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.ty" "spineLeg_L:leg.dnsm[34]";
connectAttr "spineLeg_L:tibiaSpine_IK_CON.tx" "spineLeg_L:leg.dnsm[35]";
connectAttr "spineLeg_L:femurSpine_IK_CON.sz" "spineLeg_L:leg.dnsm[36]";
connectAttr "spineLeg_L:femurSpine_IK_CON.sy" "spineLeg_L:leg.dnsm[37]";
connectAttr "spineLeg_L:femurSpine_IK_CON.sx" "spineLeg_L:leg.dnsm[38]";
connectAttr "spineLeg_L:femurSpine_IK_CON.rz" "spineLeg_L:leg.dnsm[39]";
connectAttr "spineLeg_L:femurSpine_IK_CON.ry" "spineLeg_L:leg.dnsm[40]";
connectAttr "spineLeg_L:femurSpine_IK_CON.rx" "spineLeg_L:leg.dnsm[41]";
connectAttr "spineLeg_L:femurSpine_IK_CON.tz" "spineLeg_L:leg.dnsm[42]";
connectAttr "spineLeg_L:femurSpine_IK_CON.ty" "spineLeg_L:leg.dnsm[43]";
connectAttr "spineLeg_L:femurSpine_IK_CON.tx" "spineLeg_L:leg.dnsm[44]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.sz" "spineLeg_L:leg.dnsm[45]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.sy" "spineLeg_L:leg.dnsm[46]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.sx" "spineLeg_L:leg.dnsm[47]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.rz" "spineLeg_L:leg.dnsm[48]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.ry" "spineLeg_L:leg.dnsm[49]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.rx" "spineLeg_L:leg.dnsm[50]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.tz" "spineLeg_L:leg.dnsm[51]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.ty" "spineLeg_L:leg.dnsm[52]";
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.tx" "spineLeg_L:leg.dnsm[53]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.sz" "spineLeg_L:leg.dnsm[54]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.sy" "spineLeg_L:leg.dnsm[55]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.sx" "spineLeg_L:leg.dnsm[56]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.rz" "spineLeg_L:leg.dnsm[57]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.ry" "spineLeg_L:leg.dnsm[58]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.rx" "spineLeg_L:leg.dnsm[59]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.tz" "spineLeg_L:leg.dnsm[60]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.ty" "spineLeg_L:leg.dnsm[61]";
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.tx" "spineLeg_L:leg.dnsm[62]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.sz" "spineLeg_L:leg.dnsm[63]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.sy" "spineLeg_L:leg.dnsm[64]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.sx" "spineLeg_L:leg.dnsm[65]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.rz" "spineLeg_L:leg.dnsm[66]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.ry" "spineLeg_L:leg.dnsm[67]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.rx" "spineLeg_L:leg.dnsm[68]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.tz" "spineLeg_L:leg.dnsm[69]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.ty" "spineLeg_L:leg.dnsm[70]";
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.tx" "spineLeg_L:leg.dnsm[71]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.sz" "spineLeg_L:leg.dnsm[72]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.sy" "spineLeg_L:leg.dnsm[73]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.sx" "spineLeg_L:leg.dnsm[74]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.rz" "spineLeg_L:leg.dnsm[75]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.ry" "spineLeg_L:leg.dnsm[76]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.rx" "spineLeg_L:leg.dnsm[77]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.tz" "spineLeg_L:leg.dnsm[78]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.ty" "spineLeg_L:leg.dnsm[79]";
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.tx" "spineLeg_L:leg.dnsm[80]";
connectAttr "spineLeg_L:upVector_IK_CON.tz" "spineLeg_L:leg.dnsm[81]";
connectAttr "spineLeg_L:upVector_IK_CON.ty" "spineLeg_L:leg.dnsm[82]";
connectAttr "spineLeg_L:upVector_IK_CON.tx" "spineLeg_L:leg.dnsm[83]";
connectAttr "spineLeg_L:foot_IK_CON.rz" "spineLeg_L:leg.dnsm[84]";
connectAttr "spineLeg_L:foot_IK_CON.ry" "spineLeg_L:leg.dnsm[85]";
connectAttr "spineLeg_L:foot_IK_CON.rx" "spineLeg_L:leg.dnsm[86]";
connectAttr "spineLeg_L:foot_IK_CON.tz" "spineLeg_L:leg.dnsm[87]";
connectAttr "spineLeg_L:foot_IK_CON.ty" "spineLeg_L:leg.dnsm[88]";
connectAttr "spineLeg_L:foot_IK_CON.tx" "spineLeg_L:leg.dnsm[89]";
connectAttr "spineLeg_L:foot__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "spineLeg_L:tangentFemur_01_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "spineLeg_L:upVector_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "spineLeg_L:femur__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ldRigFkIk2Bones1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "spineLeg_L:femurSpine_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "spineLeg_L:legPivot_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spineLeg_L:tangentTibia_01_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "spineLeg_L:tangentTibia_02_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "spineLeg_L:tangentFemur_02_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "spineLeg_L:tangentTibia_01_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "spineLeg_L:tibia_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "spineLeg_L:footAttach.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "spineLeg_L:footSpine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "transformGeometry1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spineLeg_L:tangentFemur_01_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "spineLeg_L:foot_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "spineLeg_L:footSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "spineLeg_L:tangentTibia_02_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "spineLeg_L:femurSpine_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ldRigComparaisonNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "spineLeg_L:footSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "ldRigTwistNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "ldRigComparaisonNode2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "spineLeg_L:ldRigCurveNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "spineLeg_L:tangentFemur_02_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spineLeg_L:tibia__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "spineLeg_L:femurSpine_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "ldRigTwistNode2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "spineLeg_L:tibiaSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "spineLeg_L:femurSpine_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "spineLeg_L:tibiaSpine_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "spineLeg_L:femurSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "spineLeg_L:femurSpine_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "spineLeg_L:setup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "spineLeg_L:foot_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "spineLeg_L:femur_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "spineLeg_L:femurSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "aTools_StoreNode.o" "scene.m";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "leg_meshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "spineLeg_L:leg.pa" ":characterPartition.st" -na;
// End of legSpineModule_V01.ma

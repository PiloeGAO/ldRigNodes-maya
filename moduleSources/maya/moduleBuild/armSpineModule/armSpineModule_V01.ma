//Maya ASCII 2020 scene
//Name: armSpineModule_V01.ma
//Last modified: Mon, Apr 05, 2021 02:45:02 PM
//Codeset: 1252
requires maya "2020";
requires -nodeType "ldRigCurveNode" -nodeType "ldRigTwistNode" -nodeType "ldRigFkIk2Bones"
		 -nodeType "ldRigComparaisonNode" "ldRigNodes" "0.1";
requires -nodeType "rigShape" "rigToolsNodes.py" "0.5.1";
requires -nodeType "ngst2SkinLayerData" -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.0.30";
requires "mtoa" "4.0.4.1";
requires "mtoa" "4.0.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202009141615-87c40af620";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "3934018F-4BF8-3079-985D-BAA0B07D24C2";
createNode transform -s -n "persp";
	rename -uid "BFA9B4BB-43E3-1BDF-93E3-23A556A183DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.4434440024642274 8.2689616631750962 8.3192933784517322 ;
	setAttr ".r" -type "double3" 323.66164726995919 33.400000000003317 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "310D48A5-4E05-2E34-0226-EEAC690F673D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.083282715398076;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2 -2.9802322387695313e-08 -4.4703483581542969e-08 ;
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
	setAttr ".tp" -type "double3" 2 -2.9802322387695313e-08 -4.4703483581542969e-08 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9500B414-4E2D-59A1-64D9-3190512961AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CC5E1DD7-4830-59C4-3DF0-6CAE9348DD25";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 2 -2.9802322387695313e-08 -4.4703483581542969e-08 ;
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
	setAttr ".tp" -type "double3" 2 -2.9802322387695313e-08 -4.4703483581542969e-08 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "arm_mesh";
	rename -uid "9FE99022-4BE3-BFCD-C7C8-6DB4FBF62CA1";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.25 2 0.25 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "arm_meshShape" -p "arm_mesh";
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
createNode mesh -n "spineArm_L:armShapeOrig" -p "arm_mesh";
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
createNode transform -n "spineArm_L:module";
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
createNode transform -n "spineArm_L:setup" -p "spineArm_L:module";
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
createNode transform -n "spineArm_L:guid_GRP" -p "spineArm_L:module";
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
createNode transform -n "spineArm_L:hand__GUD" -p "spineArm_L:guid_GRP";
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
createNode rigShape -n "spineArm_L:hand__GUDShape" -p "spineArm_L:hand__GUD";
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
createNode transform -n "spineArm_L:radius__GUD" -p "spineArm_L:guid_GRP";
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
createNode rigShape -n "spineArm_L:radius__GUDShape" -p "spineArm_L:radius__GUD";
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
createNode transform -n "spineArm_L:humerus__GUD" -p "spineArm_L:guid_GRP";
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
createNode rigShape -n "spineArm_L:humerus__GUDShape" -p "spineArm_L:humerus__GUD";
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
createNode transform -n "spineArm_L:controllers_GRP" -p "spineArm_L:module";
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
createNode transform -n "spineArm_L:IK_GRP" -p "spineArm_L:controllers_GRP";
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
createNode transform -n "spineArm_L:armPivotParent_IK_BUF" -p "spineArm_L:IK_GRP";
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
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineArm_L:armPivot_IK_BUF" -p "spineArm_L:armPivotParent_IK_BUF";
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
createNode transform -n "spineArm_L:hand_IK_BUF" -p "spineArm_L:IK_GRP";
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
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineArm_L:hand_IK_CON" -p "spineArm_L:hand_IK_BUF";
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
createNode rigShape -n "spineArm_L:hand_IK_CONShape" -p "spineArm_L:hand_IK_CON";
	rename -uid "52190765-4F2A-AE94-860F-689F0C7402B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 35;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -1.4119257122224665e-16 -0.31793740557199612 0 0
		 0.37911823737617334 -1.6836231847613329e-16 0 0 0 0 0.31793740557199612 0 0 0 0 1;
createNode transform -n "spineArm_L:upVector_IK_BUF" -p "spineArm_L:IK_GRP";
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
	setAttr ".t" -type "double3" 2 0 -2 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineArm_L:upVector_IK_CON" -p "spineArm_L:upVector_IK_BUF";
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
createNode rigShape -n "spineArm_L:upVector_IK_CONShape" -p "spineArm_L:upVector_IK_CON";
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
createNode transform -n "spineArm_L:tangentRadius_01_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:tangentRadius_01_IK_CON" -p "spineArm_L:tangentRadius_01_IK_BUF";
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
createNode rigShape -n "spineArm_L:tangentRadius_01_IK_CONShape" -p "spineArm_L:tangentRadius_01_IK_CON";
	rename -uid "0FAB1493-4DB3-8475-3DF0-88B5005960FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.4536825889403483 0 0 1 0 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineArm_L:tangentRadius_02_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:tangentRadius_02_IK_CON" -p "spineArm_L:tangentRadius_02_IK_BUF";
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
createNode rigShape -n "spineArm_L:tangentRadius_02_IK_CONShape" -p "spineArm_L:tangentRadius_02_IK_CON";
	rename -uid "FF6912A5-407C-F8E6-B53D-7C845A0D10C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.4536825889403483 0 0 1 0 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineArm_L:tangentHumerus_01_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:tangentHumerus_01_IK_CON" -p "spineArm_L:tangentHumerus_01_IK_BUF";
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
createNode rigShape -n "spineArm_L:tangentHumerus_01_IK_CONShape" -p "spineArm_L:tangentHumerus_01_IK_CON";
	rename -uid "F5FEEC3A-4C87-21A2-C929-C1B44DB882DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.4536825889403483 0 0 1 0 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineArm_L:tangentHumerus_02_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:tangentHumerus_02_IK_CON" -p "spineArm_L:tangentHumerus_02_IK_BUF";
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
createNode rigShape -n "spineArm_L:tangentHumerus_02_IK_CONShape" -p "spineArm_L:tangentHumerus_02_IK_CON";
	rename -uid "F7130345-4FDE-F6B4-AFB2-C199DF177135";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.4536825889403483 0 0 1 0 0 0 0 0 0.4536825889403483 0
		 0 0 0 1;
createNode transform -n "spineArm_L:humerusSpine_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:humerusSpine_IK_CON" -p "spineArm_L:humerusSpine_IK_BUF";
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
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineArm_L:humerusSpine_IK_CONShape" -p "spineArm_L:humerusSpine_IK_CON";
	rename -uid "19873E6B-480A-7149-F497-BEB3EAB112E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.75045737872746776 0 0 1 0 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineArm_L:radiusSpine_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:radiusSpine_IK_CON" -p "spineArm_L:radiusSpine_IK_BUF";
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
createNode rigShape -n "spineArm_L:radiusSpine_IK_CONShape" -p "spineArm_L:radiusSpine_IK_CON";
	rename -uid "B469E95B-4EDE-0D1D-920C-4A9D74D9D978";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.75045737872746776 0 0 1 0 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineArm_L:handSpine_IK_BUF" -p "spineArm_L:IK_GRP";
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
createNode transform -n "spineArm_L:handSpine_IK_CON" -p "spineArm_L:handSpine_IK_BUF";
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
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineArm_L:handSpine_IK_CONShape" -p "spineArm_L:handSpine_IK_CON";
	rename -uid "5A3B8457-481A-42CE-AACE-9483BAF27A9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 18;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0 -0.75045737872746776 0 0 1 0 0 0 0 0 0.75045737872746776 0
		 0 0 0 1;
createNode transform -n "spineArm_L:FK_GRP" -p "spineArm_L:controllers_GRP";
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
createNode transform -n "spineArm_L:humerus_FK_BUF" -p "spineArm_L:FK_GRP";
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
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "spineArm_L:humerus_FK_CON" -p "spineArm_L:humerus_FK_BUF";
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
createNode rigShape -n "spineArm_L:humerus_FK_CONShape" -p "spineArm_L:humerus_FK_CON";
	rename -uid "5B43FB49-4063-09E1-9C88-33A1E921EE8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2148226644682512e-16 -0.49873372631954727 0 0
		 1 -4.4408920985006262e-16 0 0 0 0 0.49873372631954727 0 0 0 0 1;
createNode transform -n "spineArm_L:radius_FK_CON" -p "spineArm_L:humerus_FK_CON";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineArm_L:radius_FK_CONShape" -p "spineArm_L:radius_FK_CON";
	rename -uid "671E381B-41CD-41C2-808C-7CA509E1F30F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2148226644682512e-16 -0.49873372631954727 0 0
		 1 -4.4408920985006262e-16 0 0 0 0 0.49873372631954727 0 0 0 0 1;
createNode transform -n "spineArm_L:hand_FK_CON" -p "spineArm_L:radius_FK_CON";
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
	setAttr ".opm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "spineArm_L:hand_FK_CONShape" -p "spineArm_L:hand_FK_CON";
	rename -uid "27B624D1-4305-A453-EE81-B7A4DF912225";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -2.2148226644682512e-16 -0.49873372631954727 0 0
		 1 -4.4408920985006262e-16 0 0 0 0 0.49873372631954727 0 0 0 0 1;
createNode transform -n "spineArm_L:bones_GRP" -p "spineArm_L:module";
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
createNode joint -n "spineArm_L:humerus__JNT" -p "spineArm_L:bones_GRP";
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
createNode joint -n "spineArm_L:radius__JNT" -p "spineArm_L:bones_GRP";
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
createNode joint -n "spineArm_L:hand__JNT" -p "spineArm_L:bones_GRP";
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
createNode joint -n "spineArm_L:humerusSpine_1" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:humerusSpine_2" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.40000000596046448 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:humerusSpine_3" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.80000001192092896 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:humerusSpine_4" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.2000000476837158 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:humerusSpine_5" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6000000238418579 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:radiusSpine_1" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:radiusSpine_2" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.4000000953674316 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:radiusSpine_3" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.7999999523162842 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:radiusSpine_4" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.2000000476837158 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:radiusSpine_5" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.5999999046325684 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode joint -n "spineArm_L:handSpine" -p "spineArm_L:bones_GRP";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4 0 0 1;
	setAttr ".radi" 0.33;
	setAttr ".rig_objectType" 8;
createNode transform -n "spineArm_L:handAttach" -p "spineArm_L:module";
	rename -uid "13D85CB4-483F-A0A8-5857-B99BC7CAEC2E";
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
	rename -uid "AC619990-424D-4751-F4F9-0DAA08CAB666";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B21C5B08-4C4E-49F6-D599-498B165F78D3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2B6CFA62-489E-1DE8-4FF4-938575A8EFAC";
createNode displayLayerManager -n "layerManager";
	rename -uid "773817E8-4131-E193-C46E-DFAB598D195B";
createNode displayLayer -n "defaultLayer";
	rename -uid "06CEE88C-43D1-A747-C881-CD97C9830C08";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AAD9B16B-49A2-6DE0-0D7F-1C95F103BF59";
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
createNode skinCluster -n "spineArm_L:skinCluster1";
	rename -uid "95EB656A-41BC-3A35-DAB1-2FB819B33DA1";
	setAttr -s 382 ".wl";
	setAttr ".wl[0:45].w"
		11 0 2.5994720086594514e-11 1 9.9480789588556119e-10 2 2.0785671707553322e-08 
		3 6.7964392757430538e-08 4 1.3719826389521475e-06 5 2.69368354533913e-05 
		6 0.00051230156907837942 7 0.0086568677203081 8 0.025873960749343079 
		9 0.38825902076014956 10 0.57666945061216146
		11 0 2.2390377168502734e-11 1 8.5729043871925024e-10 2 1.7664550255202439e-08 
		3 5.7021859539224963e-08 4 1.1272901183599917e-06 5 2.2879244489390341e-05 
		6 0.00046677583555311254 7 0.008218603927891182 8 0.024885320393780976 
		9 0.38422020278264762 10 0.58218501495942887
		11 0 1.8853537833864857e-11 1 7.2871339633816398e-10 2 1.4964342107691809e-08 
		3 4.7999707344245316e-08 4 9.3799283136363611e-07 5 1.9720518329033507e-05 
		6 0.00043066764075383793 7 0.0078256155301722839 8 0.023999570924213679 
		9 0.38083089988125368 10 0.58689252380082957
		11 0 1.555047857632081e-11 1 6.1323422524752363e-10 2 1.271176934743201e-08 
		3 4.0860153456561369e-08 4 7.996593983703652e-07 5 1.7423653150146143e-05 
		6 0.00040312611656036489 7 0.0075045437740797393 8 0.023286290107640308 
		9 0.37831764875693602 10 0.59047011373152769
		11 0 1.2708739908914741e-11 1 5.1652946954361549e-10 2 1.0946518012851088e-08 
		3 3.5570780752609563e-08 4 7.0700699594392529e-07 5 1.5923159887549184e-05 
		6 0.00038369126803611411 7 0.0072832137840986334 8 0.022835456976614626 
		9 0.377236652386154 10 0.59224430837167619
		11 0 1.0479487340234014e-11 1 4.4240288462088438e-10 2 9.6939427019262428e-09 
		3 3.2102683111284977e-08 4 6.564644794422596e-07 5 1.5189603630764225e-05 
		6 0.00037332811604563559 7 0.0071948266949383695 8 0.022733038896939055 
		9 0.37790266802221045 10 0.59178024995224821
		11 0 8.9289660478358348e-12 1 3.9245160823704259e-10 2 8.9672144836407604e-09 
		3 3.04648317537286e-08 4 6.4801463819771626e-07 5 1.5271818104284773e-05 
		6 0.00037407200468167901 7 0.0072619693680383533 8 0.0230135138421034 
		9 0.38017023213348922 10 0.58916425298551811
		11 0 8.1779483389699595e-12 1 3.7148103245782293e-10 2 8.8825129777057184e-09 
		3 3.1070081501667455e-08 4 6.9146805399681825e-07 5 1.637417786836742e-05 
		6 0.00038889262108294007 7 0.007487298389312255 8 0.023651455860896665 
		9 0.38379391097402421 10 0.58466133617650817
		11 0 8.3911012106015881e-12 1 3.8553105284420789e-10 2 9.5940322680882671e-09 
		3 3.44869805003171e-08 4 8.0041786805413961e-07 5 1.8712697119788219e-05 
		6 0.00042019554673756093 7 0.0078634908691345203 8 0.024589873934313545 
		9 0.38841253651690866 10 0.57869434554298305
		11 0 9.7212053034947549e-12 1 4.4163705346196312e-10 2 1.1287730749527244e-08 
		3 4.1440361374847097e-08 4 9.930429384306059e-07 5 2.2575875717145483e-05 
		6 0.00047076556998875763 7 0.0083488413278662472 8 0.025752151874658989 
		9 0.39342305408497874 10 0.57198156504440123
		11 0 1.2446906797318905e-11 1 5.4840548997672566e-10 2 1.4122262182624879e-08 
		3 5.2481853731995804e-08 4 1.2807770630587129e-06 5 2.8108298699688247e-05 
		6 0.00054151983818301569 7 0.0088948225664076449 8 0.027030619847593949 
		9 0.39824418450572591 10 0.56525939700135852
		11 0 1.6606995190515607e-11 1 7.0709504436269862e-10 2 1.8079717504081929e-08 
		3 6.7468689601142357e-08 4 1.6570962177308229e-06 5 3.5007047540402718e-05 
		6 0.00062476461156144622 7 0.0094723954094776148 8 0.028234138445448049 
		9 0.40243524755325932 10 0.55919670356438633
		11 0 2.1983563117196503e-11 1 9.0683410820681354e-10 2 2.2836460485392116e-08 
		3 8.4985730110413449e-08 4 2.0793155916738427e-06 5 4.2245018039967442e-05 
		6 0.00070665667501996533 7 0.010033685698413912 8 0.029108645164978623 
		9 0.405725106779112 10 0.55438147259783577
		11 0 2.7684585133879145e-11 1 1.1139848885104032e-09 2 2.7551805778809874e-08 
		3 1.0171370801132007e-07 4 2.4604866772294623e-06 5 4.8262393872226954e-05 
		6 0.00077115830569285165 7 0.010501266308090264 8 0.029552528215212297 
		9 0.40772961991477613 10 0.55139457396849578
		11 0 3.2582870774452845e-11 1 1.2878029040844133e-09 2 3.1204336992483063e-08 
		3 1.1377441832764071e-07 4 2.7038784974455587e-06 5 5.1543188087161993e-05 
		6 0.00080379003289760573 7 0.01071613128019392 8 0.029719879604682441 
		9 0.40819676528720011 10 0.55050904042930038
		11 0 3.5539335829147989e-11 1 1.3893634203088527e-09 2 3.2890107069153864e-08 
		3 1.1805716026246405e-07 4 2.7432456950197317e-06 5 5.1304673196793628e-05 
		6 0.00079746062282414626 7 0.010650046309301801 8 0.029612312481377238 
		9 0.40718603667677378 10 0.55169994361866104
		11 0 3.5914123175867223e-11 1 1.3971582222188722e-09 2 3.2265447490744597e-08 
		3 1.1382144227473682e-07 4 2.579092404209456e-06 5 4.789462242859176e-05 
		6 0.00075576096688539972 7 0.010345190132211511 8 0.02925135170903723 
		9 0.40476967741958164 10 0.55482739853748919
		11 0 3.488077956343802e-11 1 1.3506234662964051e-09 2 3.0320929338832513e-08 
		3 1.0486294321802442e-07 4 2.3074476837016872e-06 5 4.288774869987068e-05 
		6 0.00069550899971305665 7 0.0099130704477878948 8 0.028681753931658383 
		9 0.40124457970116317 10 0.55941975515391706
		11 0 3.2555858050156014e-11 1 1.2553079970095922e-09 2 2.742542610501926e-08 
		3 9.2970106601666288e-08 4 1.9852064263007885e-06 5 3.7277074556960936e-05 
		6 0.00063031127468834232 7 0.0094992129412979111 8 0.027881483245205341 
		9 0.39705015124754128 10 0.56489945732688729
		11 0 2.9434560479812697e-11 1 1.1307524391229637e-09 2 2.4123065683010478e-08 
		3 8.0245680922010921e-08 4 1.6644165449962247e-06 5 3.1822984792925858e-05 
		6 0.00056769544634819192 7 0.0090923388536332042 8 0.026905124536452857 
		9 0.39259662275273499 10 0.57080462548055932
		11 0 3.4126870735537619e-10 1 1.1619373894467017e-08 2 2.1785686474846348e-07 
		3 6.6626876030535818e-07 4 1.2013542787106472e-05 5 0.00019901650353400013 
		6 0.0029564194813791289 7 0.034633628985244816 8 0.076258368704752874 
		9 0.56998640235014297 10 0.31595325434589139
		11 0 3.0102065821860767e-10 1 1.0294309588554312e-08 2 1.9107381262783129e-07 
		3 5.7816675856918575e-07 4 1.0244784062656459e-05 5 0.00017556781262433353 
		6 0.0027806766361584152 7 0.033707526182435707 8 0.075131462364567234 
		9 0.57313568422405081 10 0.31505805816019944
		11 0 2.6008290848167052e-10 1 9.0017959860572815e-09 2 1.6696755472763459e-07 
		3 5.0280410482707393e-07 4 8.826700007765447e-06 5 0.00015658904473198399 
		6 0.0026359586454357564 7 0.032820188844894821 8 0.074067415865059341 
		9 0.57631166553859647 10 0.31399867632773548
		11 0 2.1959752592024899e-10 1 7.7673757686202202e-09 2 1.4568495877759875e-07 
		3 4.400947485664692e-07 4 7.7474848360616339e-06 5 0.00014228498349967732 
		6 0.002521824690477785 7 0.032068675978904559 8 0.07318959840898201 
		9 0.57914540862509434 10 0.31292386606152495
		11 0 1.8312389212171123e-10 1 6.676318204012861e-09 2 1.2804315549432868e-07 
		3 3.9109397904595135e-07 4 6.9914095046854837e-06 5 0.00013252298308720497 
		6 0.0024363608241969943 7 0.031522955929767789 8 0.072626568801652761 
		9 0.58139276844446741 10 0.31188130561074667
		11 0 1.5323109309220978e-10 1 5.7919197801894809e-09 2 1.1465906520336253e-07 
		3 3.5658800034073048e-07 4 6.5466128351780576e-06 5 0.00012725681766197162 
		6 0.0023833391972156422 7 0.031264058962509743 8 0.072506196140395468 
		9 0.58262472817272315 10 0.31108739690444231
		11 0 1.3109296218026553e-10 1 5.1409613353038258e-09 2 1.0578354395313568e-07 
		3 3.3691747545518537e-07 4 6.4151687026721894e-06 5 0.00012684330195791374 
		6 0.0023730447433220492 7 0.031374235796873581 8 0.072913590835137335 
		9 0.5823962986388177 10 0.31080912354211504
		11 0 1.1909503452571619e-10 1 4.8051171127730798e-09 2 1.0306845224996339e-07 
		3 3.3731413107694362e-07 4 6.6984867386654675e-06 5 0.00013303954172068136 
		6 0.0024248978096501521 7 0.031868881165032892 8 0.073776235802196263 
		9 0.58073393927368122 10 0.3110558626141845
		11 0 1.210247294341711e-10 1 4.9111078645697489e-09 2 1.0907753055896515e-07 
		3 3.6583923410505641e-07 4 7.5416881653468518e-06 5 0.00014753544809642597 
		6 0.0025514156502853169 7 0.032710700559968157 8 0.074945291838204559 
		9 0.57791315330442394 10 0.31172388156195902
		11 0 1.3774792153326747e-10 1 5.5006624864643298e-09 2 1.2489397009925482e-07 
		3 4.2666225999010494e-07 4 9.0371229900559025e-06 5 0.00017133894687748806 
		6 0.0027591147861581464 7 0.033758140452208138 8 0.076338699484347239 
		9 0.57425795882979136 10 0.31270515318298697
		11 0 1.7264661059302381e-10 1 6.6561528113150508e-09 2 1.5153482282333702e-07 
		3 5.2237237571350087e-07 4 1.1203645376213641e-05 5 0.00020415645200651074 
		6 0.0030452584496000598 7 0.034869264948742089 8 0.077811219967368159 
		9 0.57017511485213057 10 0.31388310094877842
		11 0 2.2554421215628723e-10 1 8.3691230834893922e-09 2 1.8836757466312761e-07 
		3 6.500562395779579e-07 4 1.3952239981661806e-05 5 0.00024360880162078841 
		6 0.0033736459263061878 7 0.036027140729489524 8 0.079087981138070348 
		9 0.56615095825838813 10 0.31510186588766198
		11 0 2.9667856535081843e-10 1 1.0605791036658544e-08 2 2.3381276046606652e-07 
		3 8.0175059958395091e-07 4 1.7036631948929449e-05 5 0.00028451219465216819 
		6 0.0036922633112995199 7 0.037151093119885022 8 0.079734480487335363 
		9 0.5629891445562123 10 0.31613042323283697
		11 0 3.679133582574501e-10 1 1.2800031127419503e-08 2 2.7645806003732952e-07 
		3 9.3879919658126859e-07 4 1.967205278788364e-05 5 0.00031664520500970426 
		6 0.0039304881756338263 7 0.038081554006950548 8 0.079764510521492277 
		9 0.56100941960869966 10 0.31687648200422519
		11 0 4.2774600629456618e-10 1 1.4610004027606646e-08 2 3.0892259236115105e-07 
		3 1.0355385260980486e-06 4 2.1312377699818939e-05 5 0.00033360433050787355 
		6 0.0040474031812234978 7 0.038497479131685407 8 0.07971033762189586 
		9 0.5600422764776497 10 0.31734622738046936
		11 0 4.623356591989803e-10 1 1.5642551887340558e-08 2 3.2358915141238915e-07 
		3 1.0686968510267156e-06 4 2.1550853766117494e-05 5 0.00033192086583855361 
		6 0.004021758604749741 7 0.03835849464441711 8 0.079620361620514848 
		9 0.5601361342606751 10 0.31750837075914845
		11 0 4.5918965452269415e-10 1 1.5541938523893168e-08 2 3.152034723599348e-07 
		3 1.0261616863968285e-06 4 2.0291924146277474e-05 5 0.00031225936688767693 
		6 0.0038565531982561237 7 0.037714324785597032 8 0.079455257432045873 
		9 0.56126104378098829 10 0.31737891214579178
		11 0 4.4551170698542459e-10 1 1.5088546436748536e-08 2 2.9897361385631951e-07 
		3 9.5716637820686485e-07 4 1.8483504047074142e-05 5 0.00028616631613992714 
		6 0.0036384507047355981 7 0.036897736657949237 8 0.079163848560697692 
		9 0.5628223826168619 10 0.31717165996551833
		11 0 4.1746741582015844e-10 1 1.4162052716230819e-08 2 2.7463495670628916e-07 
		3 8.6489164890174932e-07 4 1.630810669463647e-05 5 0.00025640982380020815 
		6 0.0034011268904349601 7 0.03617982755572232 8 0.078448873390736973 
		9 0.56470915648283049 10 0.31698714364365466
		11 0 3.8124160287813023e-10 1 1.2954950363416581e-08 2 2.4664464141598407e-07 
		3 7.6486346064595769e-07 4 1.4093063778159578e-05 5 0.00022661564438815045 
		6 0.0031678092928449316 7 0.035476732696752868 8 0.077411510068731329 
		9 0.56706231343315316 10 0.31663990095605721
		11 0 4.6465289543209241e-09 1 1.386859485046585e-07 2 2.3033280814509372e-06 
		3 6.532077371120636e-06 4 0.00010383928053387783 5 0.0014200053456236393 
		6 0.015945870480519393 7 0.12253256926573272 8 0.18321859895455569 
		9 0.55650913894196474 10 0.12026099899313991
		11 0 4.1378802432560629e-09 1 1.2471532649223123e-07 2 2.0614217953350522e-06 
		3 5.802318953884088e-06 4 9.1077580078742591e-05 5 0.0012905892384202236 
		6 0.015365671088277964 7 0.12136482953811788 8 0.1834675858857335 
		9 0.56027763898934713 10 0.11813461508606865
		11 0 3.6309898135639108e-09 1 1.1116724149427342e-07 2 1.8432306624378267e-06 
		3 5.1750718095867646e-06 4 8.0739622731915609e-05 5 0.0011841925129993959 
		6 0.014882231469159365 7 0.12014939908841539 8 0.18370113193926579 
		9 0.56388331740127762 10 0.11611185486544706
		11 0 3.1221717880499247e-09 1 9.7850138209267461e-08 2 1.6437963632934051e-06 
		3 4.6354655334508944e-06 4 7.2640348647117398e-05 5 0.0011016286993321281 
		6 0.014488342009338509 7 0.11910544184784649 8 0.18397919261081819 
		9 0.56684598173415168 10 0.1144003925156591
		11 0 2.6557550963949356e-09 1 8.5778557012648013e-08 2 1.4735365673406694e-06 
		3 4.2019194151303001e-06 4 6.6847049375837205e-05 5 0.0010442279159156949 
		6 0.014185332547588404 7 0.11838779509187995 8 0.18432053454475752 
		9 0.56882718376057062 10 0.11316231519961738
		5 0 2.269145234590236e-09 1 7.5826816507401338e-08 2 1.3417687666672718e-06 
		3 3.8911818443443383e-06 4 6.3422248006416365e-05;
	setAttr ".wl[45:90].w"
		6 5 0.0010130608443306751 6 0.013988322950926006 7 0.11810123572411593 
		8 0.18469952017961108 9 0.56957170527756773 10 0.11255742172886946
		11 0 1.9770303264624026e-09 1 6.8241740247932916e-08 2 1.2497614859463933e-06 
		3 3.7023407696288852e-06 4 6.2308834471132006e-05 5 0.0010090742742135399 
		6 0.013920805182804408 7 0.11833261592616884 8 0.18513650377672897 
		9 0.56879860856046061 10 0.11273506112412639
		11 0 1.8155904577020705e-09 1 6.4060429918298184e-08 2 1.2157288451206086e-06 
		3 3.6883229807671089e-06 4 6.4389714749164785e-05 5 0.0010449462581450654 
		6 0.014085331946808097 7 0.11910353613745378 8 0.1854352207979397 
		9 0.56645548404375945 10 0.11380612117329854
		11 0 1.8478161886840459e-09 1 6.5200991472737052e-08 2 1.274016509463332e-06 
		3 3.9481177691862972e-06 4 7.11685189418556e-05 5 0.0011348976712103147 
		6 0.014560124484847881 7 0.12038839317372742 8 0.18536473362523984 
		9 0.56266825030879952 10 0.11580714303414692
		11 0 2.0858769501290175e-09 1 7.2051511121257387e-08 2 1.4315573796979866e-06 
		3 4.5043774166558371e-06 4 8.2977893148157621e-05 5 0.001278627753050507 
		6 0.015320461380855608 7 0.1216964285036997 8 0.18515613476688952 
		9 0.55808118898783232 10 0.11837817064233978
		11 0 2.5788348147573577e-09 1 8.5610804257831034e-08 2 1.6968622209776858e-06 
		3 5.3693581939737212e-06 4 9.955253903062699e-05 5 0.001468156306134396 
		6 0.016342887918190382 7 0.1227746020524166 8 0.18479968031126626 
		9 0.55320973440072541 10 0.12129823206218224
		11 0 3.3080532891364672e-09 1 1.0527204736788677e-07 2 2.0541658975551048e-06 
		3 6.4871953368713347e-06 4 0.00011969626161845971 5 0.0016843873841767491 
		6 0.017462131083689804 7 0.12374453223539489 8 0.18404123114832113 
		9 0.54872746467753331 10 0.1242119072679306
		11 0 4.2664929389436317e-09 1 1.3071055945449879e-07 2 2.4942147068320231e-06 
		3 7.8139271800069598e-06 4 0.00014227231499383444 5 0.0019100303091205272 
		6 0.018591176873087617 7 0.12496003136201597 8 0.18245244853661691 
		9 0.5448610131587156 10 0.12707258432651033
		11 0 5.2109412651450366e-09 1 1.5509821381201473e-07 2 2.893675313814601e-06 
		3 8.9642094087749029e-06 4 0.00016059322713506851 5 0.0020755490830674148 
		6 0.019358773724823086 7 0.12588045612493726 8 0.1806042282094879 
		9 0.54310974136642542 10 0.12879864007024627
		11 0 5.9849131014896149e-09 1 1.7483280745578526e-07 2 3.1916382015465777e-06 
		3 9.7556739643200917e-06 4 0.00017163613019839226 5 0.0021590357251467249 
		6 0.019714986808297644 7 0.12623582420693352 8 0.17967169105650443 
		9 0.54247938484105707 10 0.12955431310197577
		11 0 6.4114795931030906e-09 1 1.8574593549439646e-07 2 3.3213106223713685e-06 
		3 1.0009242676934249e-05 4 0.00017288130655472337 5 0.0021456932341869638 
		6 0.019605717790315107 7 0.12602511169702302 8 0.17982070103229444 
		9 0.54292507420596425 10 0.12929129802294712
		11 0 6.3505153681473131e-09 1 1.8417399888100769e-07 2 3.233312851136857e-06 
		3 9.6166927113877887e-06 4 0.00016339438456706802 5 0.0020339689287068789 
		6 0.018992365094402081 7 0.12516048478629402 8 0.18095130952708458 
		9 0.54489321256912893 10 0.12779222417973965
		11 0 6.1049117012995825e-09 1 1.7809450644775391e-07 2 3.0708422351226075e-06 
		3 9.0122795747403821e-06 4 0.00015046069573327318 5 0.0018956026284506118 
		6 0.018267210876025116 7 0.12437435002073455 8 0.18221859181930505 
		9 0.54690325399759754 10 0.12617826264092588
		11 0 5.6826987200070343e-09 1 1.6704784178725879e-07 2 2.8358960879998463e-06 
		3 8.2189341346393919e-06 4 0.00013490128426538623 5 0.0017360247521312497 
		6 0.017473564806732633 7 0.12392500932858547 8 0.18285390557685965 
		9 0.54940406453219759 10 0.12446130215846486
		11 0 5.1790939222524139e-09 1 1.5341888969154456e-07 2 2.5724754499438286e-06 
		3 7.3705088667228534e-06 4 0.00011901133566606896 5 0.001573964139058975 
		6 0.016679729014173961 7 0.12346252394459664 8 0.18303605647790233 
		9 0.55259361115838512 10 0.12252500234791661
		11 0 4.7567699275054163e-08 1 1.2329391514555594e-06 2 1.7959321204886377e-05 
		3 4.6857668821204307e-05 4 0.00064832464172466563 5 0.0071435689411832879 
		6 0.058354659241430511 7 0.27688911895135887 8 0.25658023233362992 
		9 0.3637747399973697 10 0.036543258396426255
		11 0 4.256140485751182e-08 1 1.1190212901930451e-06 2 1.6305417975687939e-05 
		3 4.2363697243502695e-05 4 0.00058170107472170431 5 0.0066534329792558335 
		6 0.05731542619472281 7 0.27744881340065597 8 0.25875319002980779 
		9 0.36389352230782207 10 0.035294083315099548
		11 0 3.7739063107966646e-08 1 1.0112103068575654e-06 2 1.4837312720242246e-05 
		3 3.8547593829661458e-05 4 0.00052797584344136512 5 0.0062500978286937773 
		6 0.05645083960426002 7 0.2777130580103368 8 0.26086368934339604 9 
		0.36397462772823175 10 0.034165277785720441
		11 0 3.3013843022992378e-08 1 9.0683540718813475e-07 2 1.3505748131378381e-05 
		3 3.5286694497728729e-05 4 0.0004861666603012108 5 0.0059394007340767925 
		6 0.055745099189954982 7 0.27791040237141984 8 0.26274727762804589 
		9 0.36386811478434683 10 0.033253806339975052
		11 0 2.8626032958313795e-08 1 8.1031190000367037e-07 2 1.2340955997477408e-05 
		3 3.2607746354878353e-05 4 0.00045586470126570533 5 0.0057204065211172083 
		6 0.05516686947957726 7 0.27821287848169207 8 0.2642359154416945 9 
		0.36354078214626667 10 0.032621495588101297
		11 0 2.4930967908978286e-08 1 7.291367363593803e-07 2 1.1420716959338767e-05 
		3 3.0658363300681392e-05 4 0.00043811716930606712 5 0.0056040943827461503 
		6 0.054784578388945016 7 0.27869522020095056 8 0.26500894948651083 
		9 0.3630550522101525 10 0.032371155013424545
		11 0 2.2164460256349704e-08 1 6.6738753949827472e-07 2 1.0779510171472077e-05 
		3 2.9489506102061198e-05 4 0.00043319847404098375 5 0.005598189216433045 
		6 0.054644056398735368 7 0.27930308591572089 8 0.26505250728509544 
		9 0.36238824788710122 10 0.03253975625459974
		11 0 2.0667057070912381e-08 1 6.326692289387706e-07 2 1.0529581060311307e-05 
		3 2.9395794868174047e-05 4 0.00044528788049721837 5 0.0057498122870015093 
		6 0.054976567753838634 7 0.2797060208854269 8 0.26407821837182044 
		9 0.3618162229922699 10 0.033187291116930931
		11 0 2.1005390763341497e-08 1 6.3981733930491768e-07 2 1.0904008173502236e-05 
		3 3.0989974264129818e-05 4 0.00048211695550979649 5 0.0061090290283450435 
		6 0.055873081914837877 7 0.27963028520423078 8 0.26201731868007572 
		9 0.36154391757291243 10 0.034301695838920634
		11 0 2.3473513259977979e-08 1 6.9674451365729147e-07 2 1.2013511146368406e-05 
		3 3.4559921405309878e-05 4 0.00054671399122616213 5 0.0066842927129689171 
		6 0.057372809925257479 7 0.27846002119482449 8 0.25954153503269245 
		9 0.36156758959182528 10 0.035779743900626659
		11 0 2.8555101067398477e-08 1 8.1149270980193406e-07 2 1.3897156145944874e-05 
		3 4.0082954216538772e-05 4 0.00063481726413000571 5 0.0074079198797104293 
		6 0.059371820870227743 7 0.276164873549053 8 0.25689737312433225 9 
		0.36195044566325502 10 0.037517929491118283
		11 0 3.5941772388361753e-08 1 9.7588353034231801e-07 2 1.6393895525177394e-05 
		3 4.7063156587210178e-05 4 0.00073817942395888888 5 0.0081954005590694403 
		6 0.061476705676998707 7 0.27354000218454216 8 0.25397149629125659 
		9 0.36271330296452964 10 0.039300444022229417
		11 0 4.4818723217530422e-08 1 1.1697390932387653e-06 2 1.9185954257121838e-05 
		3 5.4567329341040673e-05 4 0.0008429042781158446 5 0.0089307909982976729 
		6 0.063350183693888826 7 0.27138429210013093 8 0.25058086859351864 
		9 0.36393475650219465 10 0.040901235992438945
		11 0 5.3808559806373404e-08 1 1.3624514718791343e-06 2 2.181393735643787e-05 
		3 6.1273681216834387e-05 4 0.00092977234042724156 5 0.0094814586934801465 
		6 0.064670947498924644 7 0.27005418148887583 8 0.24735389986163681 
		9 0.36544584946113223 10 0.041979386776918252
		11 0 6.1054025456568503e-08 1 1.5169944630731548e-06 2 2.3757039050909451e-05 
		3 6.58216181383788e-05 4 0.00098098723151576642 5 0.0097486066409075631 
		6 0.065249385229732892 7 0.2693526837410018 8 0.24586373892749158 
		9 0.36627734130799161 10 0.042436100215680873
		11 0 6.4996834266232954e-08 1 1.6032748751679387e-06 2 2.4618182111036517e-05 
		3 6.7287133721804688e-05 4 0.0009861981925482139 5 0.009691923527914743 
		6 0.06500136895019748 7 0.26942584419723359 8 0.2463294087818082 9 
		0.36624101718071589 10 0.042230665582039598
		11 0 6.5161843777422705e-08 1 1.6110195071593754e-06 2 2.4316565487313021e-05 
		3 6.5642650542158709e-05 4 0.00094815942928500551 5 0.0093564451139039814 
		6 0.064013921388059128 7 0.27022019638537126 8 0.24840587457011809 
		9 0.36554795451128702 10 0.041415813204595038
		11 0 6.2361563056081604e-08 1 1.5567958072716924e-06 2 2.3173813218247604e-05 
		3 6.1900010773573169e-05 4 0.00088318408426405761 5 0.0088629181518452074 
		6 0.062644181256987036 7 0.27158632342976308 8 0.25103732001252188 
		9 0.3645768298323141 10 0.040322550250942474
		11 0 5.7850666743325071e-08 1 1.4621714227025294e-06 2 2.1537490795062429e-05 
		3 5.7009550924128484e-05 4 0.0008046271926706748 5 0.0082868305845398456 
		6 0.06113972173167187 7 0.27363036888040398 8 0.25300254106726777 
		9 0.36389561908100809 10 0.039160224398629158
		11 0 5.2673901126671922e-08 1 1.3486849723834927e-06 2 1.9731360703828796e-05 
		3 5.1832237557892006e-05 4 0.00072436608583749331 5 0.0076991079603550821 
		6 0.059646112248435128 7 0.27562981633317885 8 0.2546608085199451 
		9 0.36367963390486968 10 0.037887189990243451
		11 0 3.7332696455159751e-07 1 8.3506916610355674e-06 2 0.00010595773289931341 
		3 0.00025276090454495243 4 0.003013260387660103 5 0.026178216356339618 
		6 0.14993023331448671 7 0.41480183247204977 8 0.21923409300197588 
		9 0.17719997097324941 10 0.0092749508381686201
		11 0 3.3656720298601408e-07 1 7.6613164309533105e-06 2 9.7648792117642608e-05 
		3 0.00023263487599209357 4 0.0027643129473042022 5 0.02493940628056221 
		6 0.14958135181246082 7 0.4179122099930897 8 0.22019873376127236 9 
		0.17546732274906851 10 0.0087983809044985522
		11 0 3.01709132162232e-07 1 7.0177866244209666e-06 2 9.0375677983633917e-05 
		3 0.00021580300980623545 4 0.0025661940269575555 5 0.023935436563035276 
		6 0.14931236642376144 7 0.4204003160790043 8 0.2212083028837131 9 
		0.17387818551650353 10 0.0083857003234783824
		11 0 2.6761727671026744e-07 1 6.3925125518312278e-06 2 8.3737284919136205e-05 
		3 0.00020138604692422765 4 0.0024131889979291761 5 0.023181253653159026 
		6 0.14913435028766595 7 0.42239224198254444 8 0.22198441250203152 
		9 0.1725285769209505 10 0.0080741921940475636
		11 0 2.3581131995297322e-07 1 5.8078549566056518e-06 2 7.7837619272025173e-05 
		3 0.00018938699410719049 4 0.0023024873488867188 5 0.022655300910285264 
		6 0.14891060996066294 7 0.42412856941906896 8 0.22247598026393925 
		9 0.17138664429820799 10 0.0078671395192930604
		11 0 2.0862835779472716e-07 1 5.3045880246674134e-06 2 7.3031947014828114e-05 
		3 0.00018039154316889743 4 0.0022371067553801434 5 0.022370650321272719 
		6 0.14864272423777106 7 0.42556829819572284 8 0.22258124570923812 
		9 0.17055316894251762 10 0.0077878691315312791
		11 0 1.8848753583542756e-07 1 4.9223590263210203e-06 2 6.9675689585547464e-05 
		3 0.00017501881053556611 4 0.0022219060585146259 5 0.022376829903068631 
		6 0.1484328492524698 7 0.42641700159275725 8 0.22227673736485762 9 
		0.17016950286147867 10 0.0078553676201700961
		11 0 1.7811982447613038e-07 1 4.7084114606363472e-06 2 6.8330775472582014e-05 
		3 0.0001745573731895504 4 0.0022715693994914345 5 0.02279345011891178 
		6 0.14853069614630873 7 0.42595146334925138 8 0.22150812191916897 
		9 0.1706035633420046 10 0.0080933610449159185
		11 0 1.8153863427669376e-07 1 4.7520117740932729e-06 2 7.0232732795973154e-05 
		3 0.0001819923589616574 4 0.0024182576205060602 5 0.023779665516132927 
		6 0.14895560355548673 7 0.42363860926041585 8 0.22043053782775823 
		9 0.17201682252679135 10 0.0085033450507428412
		11 0 2.0108780707472702e-07 1 5.1056705886640117e-06 2 7.5956707110270744e-05 
		3 0.00019858044742643511 4 0.0026698946876768147 5 0.025326023689580063 
		6 0.14989354196540638 7 0.41878439337439605 8 0.21966335881088569 
		9 0.17432261071728647 10 0.0090603328418361762
		10 0 2.408817451621391e-07 1 5.8338962116079842e-06 2 8.583317193532999e-05 
		3 0.00022431450968756912 4 0.0030045626797457624 5 0.027162165635495013 
		6 0.15123412220259785 7 0.41198660586728164 8 0.21932196098375714 
		9 0.17724888525887594;
	setAttr ".wl[90:136].w"
		1 10 0.0097254749126670266
		11 0 2.9755928233146667e-07 1 6.8658367203521707e-06 2 9.8780301430819391e-05 
		3 0.00025632063944977502 4 0.0033861485971104443 5 0.029074817410410646 
		6 0.1525982834881528 7 0.40473488728260104 8 0.21888301549648642 9 
		0.18052385601675786 10 0.010436727371597423
		11 0 3.6401328180632675e-07 1 8.0568347769952709e-06 2 0.00011291840136727377 
		3 0.00028976115819673217 4 0.0037593520126481352 5 0.030782004763890564 
		6 0.15372721263789757 7 0.39848198847287625 8 0.21787337748541774 
		9 0.18388725407289208 10 0.011077710146754927
		11 0 4.2999345606293687e-07 1 9.2237458693640164e-06 2 0.00012602939181827959 
		3 0.00031905696441125465 4 0.0040610376084814397 5 0.032015032545453424 
		6 0.15445554005171536 7 0.39422302796866149 8 0.21651385372320628 
		9 0.18674835258904499 10 0.011528415417882019
		11 0 4.8228993812913033e-07 1 1.0151353354167901e-05 2 0.00013563549942742099 
		3 0.00033858733308848621 4 0.0042337833367936924 5 0.032573816887376775 
		6 0.15468437727032219 7 0.39225478760272003 8 0.21592558861405334 
		9 0.18812604919869397 10 0.011716740614231707
		11 0 5.1023454366865813e-07 1 1.0672518000141969e-05 2 0.00013995630670662695 
		3 0.00034485695256687818 4 0.0042478889466113882 5 0.032393261624118937 
		6 0.15434548749388224 7 0.39288934959658972 8 0.21626826023641796 
		9 0.18774226059368457 10 0.011617495496877952
		11 0 5.1056023726851654e-07 1 1.0727503213798756e-05 2 0.00013860230454776335 
		3 0.00033780913405549804 4 0.0041134444236008184 5 0.031583348402904755 
		6 0.1535010050941357 7 0.39586564793360507 8 0.21729417670584716 9 
		0.18588082080058119 10 0.011273907137270917
		11 0 4.8803385909436046e-07 1 1.0385987099964311e-05 2 0.00013278194326991614 
		3 0.00032097326549300205 4 0.0038778857987744574 5 0.030384841460475476 
		6 0.1524253950217295 7 0.40030060380227284 8 0.21838164151897399 9 
		0.18336649146484596 10 0.010798511703205742
		11 0 4.5236323155736274e-07 1 9.7852021341555816e-06 2 0.00012433488463844828 
		3 0.00029878796941878663 4 0.0035910485751255825 5 0.028987255335286431 
		6 0.1513998872294175 7 0.40556016358609337 8 0.21870854620093227 9 
		0.18100983982761079 10 0.010309898826111181
		11 0 4.1185846996393645e-07 1 9.0647097987900005e-06 2 0.00011497429583216747 
		3 0.00027520697716995255 4 0.0032957146394961981 5 0.027557547596887628 
		6 0.15050992147177128 7 0.41066856756302672 8 0.21877322629211668 
		9 0.17900112570871807 10 0.0097942388867124849
		11 0 2.3771087506143622e-06 1 4.5520063639083997e-05 2 0.00049890344233085844 
		3 0.0010798852732851758 4 0.010957458827635118 5 0.073099999551173619 
		6 0.28123893922670901 7 0.43253889047541222 8 0.13063294994581884 
		9 0.067914030453083737 10 0.0019910456321617304
		11 0 2.1568190921828198e-06 1 4.2157996485709699e-05 2 0.00046598236523582811 
		3 0.0010102466476675949 4 0.010260511928975469 5 0.071040784470721027 
		6 0.28382631201098985 7 0.43508705651385221 8 0.12995770019853259 
		9 0.066452075858584675 10 0.0018550151898627798
		11 0 1.9473588218830321e-06 1 3.9002642885897929e-05 2 0.00043712143609449223 
		3 0.00095231343785762027 4 0.0097131904390381912 5 0.069428508964537325 
		6 0.28598638634209761 7 0.43699375245797928 8 0.12951598588271809 
		9 0.065189716867944739 10 0.0017420741700249437
		11 0 1.7434925169435781e-06 1 3.5919533669296816e-05 2 0.00041033829135470208 
		3 0.00090184367531246528 4 0.0092873985280805902 5 0.068227173510858941 
		6 0.28771526301606959 7 0.43853862130278082 8 0.12908611006735746 
		9 0.064136506643215699 10 0.0016590819387836393
		11 0 1.5578546180796269e-06 1 3.3099997709011947e-05 2 0.00038697341025331904 
		3 0.00086070598024162986 4 0.0089904610957954739 5 0.06743665851381675 
		6 0.28886497306791936 7 0.43982020456050325 8 0.1286637795792446 9 
		0.063333400221037256 10 0.001608185718861143
		11 0 1.3995180072939087e-06 1 3.067306678042251e-05 2 0.00036795241158785348 
		3 0.00083013674419482142 4 0.008825259697849433 5 0.067046995631030878 
		6 0.28937072921453205 7 0.44088508770154949 8 0.12825249738102543 
		9 0.062799568444766557 10 0.001589700188675755
		11 0 1.2842394227481844e-06 1 2.8850270611965555e-05 2 0.00035486709496581389 
		3 0.00081252782612897161 4 0.0088057035514772387 5 0.067156166860914454 
		6 0.28919810725335543 7 0.4414820930086788 8 0.12791100268153749 9 
		0.062639862751805483 10 0.0016095344611016997
		11 0 1.2302136699031919e-06 1 2.7873911056260109e-05 2 0.00034997315630787729 
		3 0.00081228606993391647 4 0.0089708572918552644 5 0.067978781336387128 
		6 0.28828205700136145 7 0.44105296039445435 8 0.12776199709987884 
		9 0.063086788872238786 10 0.0016751946528563051
		11 0 1.258641005679924e-06 1 2.8118851168007154e-05 2 0.00035771670862490978 
		3 0.00083915684260231287 4 0.0094090711771798313 5 0.069836908264562597 
		6 0.28629521091609261 7 0.43902947961236349 8 0.12812538537508686 
		9 0.064287975920880036 10 0.0017897176904337095
		11 0 1.3846064686231429e-06 1 2.9869987703319471e-05 2 0.00038055215028100079 
		3 0.00089761494753513805 4 0.010132866227500627 5 0.07261288343215247 
		6 0.28371880150676571 7 0.43460319506553269 8 0.12942937332283508 
		9 0.066243739552309389 10 0.0019497192009160797
		11 0 1.6383584508255841e-06 1 3.3601149244333538e-05 2 0.00042163811547439318 
		3 0.00099118049354342892 4 0.011094828557299248 5 0.075731840226782796 
		6 0.28097705740849049 7 0.42834059414118114 8 0.13151187589884245 
		9 0.068746846732624156 10 0.0021488989180667383
		11 0 1.9890883492192788e-06 1 3.8771440912907678e-05 2 0.00047442011027815551 
		3 0.0011048943561883723 4 0.012155101723105553 5 0.078778434600195096 
		6 0.27819321196226438 7 0.42172811495633905 8 0.13368520330682035 
		9 0.071473049185514712 10 0.0023668092700321335
		11 0 2.389888907553195e-06 1 4.4607294210544194e-05 2 0.0005306802047396926 
		3 0.0012202433508600966 4 0.013154027767803599 5 0.081335928990471609 
		6 0.27570055434863672 7 0.41600336907378505 8 0.13527757665308429 
		9 0.074164394598512456 10 0.0025662278289883653
		11 0 2.7781740207748294e-06 1 5.0216795940566787e-05 2 0.00058186602986655281 
		3 0.0013187745872050825 4 0.013935772617911658 5 0.083074744216775062 
		6 0.27384758510168189 7 0.41201847089314902 8 0.13606234141112655 
		9 0.076396944437735648 10 0.0027105057345871188
		11 0 3.080533878127981e-06 1 5.4647519750053692e-05 2 0.00061920617834290107 
		3 0.0013835655557129984 4 0.01436936855993522 5 0.083751889889502704 
		6 0.2728319932338088 7 0.41031945826353272 8 0.13645839043700692 9 
		0.077438287785212279 10 0.0027701120433173223
		11 0 3.2389780161120583e-06 1 5.7162558265578553e-05 2 0.00063639873649556499 
		3 0.0014044549731193981 4 0.014393515232838642 5 0.083328747091261035 
		6 0.27267401056168505 7 0.41123646018251009 8 0.13647099655957678 
		9 0.077060661298124361 10 0.002734353828107466
		11 0 3.2347823032331621e-06 1 5.7466919997518761e-05 2 0.00063175827933384214 
		3 0.0013811065608738478 4 0.014033869262217185 5 0.081989807328388453 
		6 0.27325933819243953 7 0.41449474954727233 8 0.13603964246779907 
		9 0.075489865909802931 10 0.0026191607495719927
		11 0 3.0924997703104205e-06 1 5.5801205488443606e-05 2 0.00060890641066389068 
		3 0.0013232166958391084 4 0.013395391554051225 5 0.080064822753162818 
		6 0.27449297740802453 7 0.41909486124163137 8 0.13512512868553753 
		9 0.07337216450210092 10 0.0024636370437297892
		11 0 2.8674909069590881e-06 1 5.2758674012101657e-05 2 0.00057432262946492294 
		3 0.0012443112050875079 4 0.012595111153527549 5 0.077779321350374672 
		6 0.27639983549445407 7 0.42414932886415885 8 0.13356283905405764 
		9 0.071333509424557975 10 0.0023057946593976726
		11 0 2.6128051778730265e-06 1 4.9070561237136629e-05 2 0.00053539576233443216 
		3 0.0011591872126757478 4 0.011756991001373666 5 0.075414004738514506 
		6 0.27866441590600327 7 0.42885468533659449 8 0.13188487406149391 
		9 0.069533677325893495 10 0.0021450852887014682
		11 0 1.2814437804936724e-05 1 0.00020791465633676514 2 0.0019478814940523254 
		3 0.0037900031504014596 4 0.032245296394845045 5 0.15979769889539314 
		6 0.39301792628245902 7 0.32962867842369042 8 0.058085626050980811 
		9 0.02090580778436223 10 0.00036035242967394598
		11 0 1.1691497808832105e-05 1 0.00019413494526050729 2 0.0018409178822966069 
		3 0.0035979634030015644 4 0.030761639207056702 5 0.15788923908602673 
		6 0.39918765014212154 7 0.32902328773336131 8 0.056997985120298876 
		9 0.020165796400888506 10 0.00032969458187882985
		11 0 1.0631542961716793e-05 1 0.00018119838561774407 2 0.0017470487749384992 
		3 0.0034392389150508839 4 0.029621710753633634 5 0.15654164394888723 
		6 0.40401078594323026 7 0.32835975249178379 8 0.056208847911783065 
		9 0.019573250589219941 10 0.00030589074289317678
		11 0 9.607795659937287e-06 1 0.00016859686074587458 2 0.0016594855186131726 
		3 0.0033003962740571044 4 0.028747890268126668 5 0.15565104849470227 
		6 0.40775108512627761 7 0.3277973248740112 8 0.055539429426447719 
		9 0.019086796872384289 10 0.00028833848897411312
		11 0 8.6730357521114915e-06 1 0.00015701571456198544 2 0.0015823444045678166 
		3 0.0031863506752229558 4 0.028150299642467205 5 0.15513839897369325 
		6 0.4103426918217809 7 0.32745402329108553 8 0.054988056487699825 
		9 0.018714878135966423 10 0.00027726781720194965
		11 0 7.8905197573496396e-06 1 0.00014725388987289821 2 0.0015211878734373398 
		3 0.0031049550375576132 4 0.027859960465558147 5 0.15499607125886475 
		6 0.41164113146307219 7 0.32736472134556793 8 0.054595918862869956 
		9 0.018487548929524613 10 0.00027336035391720994
		11 0 7.3443904932391137e-06 1 0.00014022541999507732 2 0.0014816551660413817 
		3 0.0030631618644995028 4 0.027901355757861349 5 0.15534527017006911 
		6 0.41140515000906813 7 0.32749815869102922 8 0.054430128093425019 
		9 0.018449670688514785 10 0.00027787974900315206
		11 0 7.134233890499105e-06 1 0.00013692903071904191 2 0.0014707406284772246 
		3 0.0030721428059952817 4 0.02834877403258915 5 0.15645384037913129 
		6 0.40912049878707801 7 0.32776601813230888 8 0.054629024452816421 
		9 0.018702040297703292 10 0.00029285721929080263
		11 0 7.3520773391093625e-06 1 0.00013852978904477161 2 0.0014996452760986201 
		3 0.0031535355084859832 4 0.029360840132778437 5 0.15870745016083004 
		6 0.4039262794350354 7 0.32807352279882868 8 0.055474340777137414 
		9 0.019338884709942536 10 0.00031961933447904677
		11 0 8.0660034989951851e-06 1 0.00014612228145474216 2 0.0015757328332322309 
		3 0.0033189093283313279 4 0.030940246196036528 5 0.16174366741505403 
		6 0.39663490520899269 7 0.32774271934244387 8 0.057166498534033404 
		9 0.020365317883154217 10 0.00035781497376793394
		11 0 9.3950216737371363e-06 1 0.00016151130863255439 2 0.0017103369831608505 
		3 0.0035816202531584003 4 0.032989973171189332 5 0.16461966355613994 
		6 0.38858409893106183 7 0.32679216887820145 8 0.05950089874385809 
		9 0.021644938076159328 10 0.00040539507676450818
		11 0 1.1179591750110112e-05 1 0.00018245498570498343 2 0.0018807341665954211 
		3 0.0038955131379406131 4 0.035184919323424664 5 0.16708980537154214 
		6 0.38064721724143563 7 0.32562026376204634 8 0.061991194338828284 
		9 0.023038679976095919 10 0.00045803810463599786
		11 0 1.3202108305587187e-05 1 0.00020606061376943988 2 0.002061941887243643 
		3 0.0042108106391745993 4 0.037208319068737811 5 0.16892867154210625 
		6 0.37377701331676444 7 0.324501073212416 8 0.064135871416085274 9 
		0.024448866845289154 10 0.00050816935010773538
		11 0 1.5113036549609543e-05 1 0.00022830289128518102 2 0.0022234225095884574 
		3 0.0044721094775154657 4 0.038722962653884148 5 0.1699114195250245 
		6 0.36897607285154088 7 0.32377583486495193 8 0.065526208346022144 
		9 0.025603560408285066 10 0.00054499343535256738
		11 0 1.6565023011479029e-05 1 0.00024566917088692306 2 0.0023403337906291424 
		3 0.0046406500309179987 4 0.039524373858040425 5 0.16998682386502115 
		6 0.36669415264105226 7 0.32366491620981508 8 0.066188362366922146 
		9 0.026138062986288131 10 0.00056009005741535943
		11 0 1.7302037636633578e-05 1 0.00025556776359064959 2 0.0023951106916818773 
		3 0.00469411537470043 4 0.039525390489276606 5 0.16921966547217521 
		6 0.36700424246435348 7 0.32439694788781903 8 0.066028710637061838 
		9 0.025913029038785708 10 0.00054991814291843744
		4 0 1.7240918219089746e-05 1 0.00025682930773165643 2 0.0023817769875106396 
		3 0.0046309289414179031;
	setAttr ".wl[136:181].w"
		7 4 0.038774610775884774 5 0.16783576604570874 6 0.36960056309598094 
		7 0.32585532941467343 8 0.065081557559283271 9 0.025046485095050853 
		10 0.00051891185853883024
		11 0 1.6492742832627997e-05 1 0.00025011707007549321 2 0.0023087634622133606 
		3 0.0044716659243272993 4 0.037443178195273895 5 0.16608792553106344 
		6 0.37402002546804092 7 0.32746845333959018 8 0.063568257293768693 
		9 0.023886949959698048 10 0.00047817101311609182
		11 0 1.5334217769069022e-05 1 0.0002377278074072179 2 0.0021961053764856598 
		3 0.0042516084620137715 4 0.035751643912712606 5 0.16403127313392332 
		6 0.37991941261521694 7 0.3287870410147124 8 0.061610142183667865 
		9 0.022762544239374297 10 0.00043716703671693784
		11 0 1.4026949394732612e-05 1 0.00022253108780220186 2 0.0020673608948252216 
		3 0.0040111575879765932 4 0.033956987870987165 5 0.16192481220540111 
		6 0.38638231192836447 7 0.32959378585287674 8 0.059657850080638529 
		9 0.021772229146911588 10 0.00039694639482164051
		11 0 6.0608488797946502e-05 1 0.00082035257037871702 2 0.0064734312666155968 
		3 0.011180870490461023 4 0.078241593123574552 5 0.2762374439244783 
		6 0.4123058847565414 7 0.18955212040863431 8 0.019877901134336746 
		9 0.0051951762488256044 10 5.4617587355753216e-05
		11 0 5.5613108728089504e-05 1 0.00077188379775021171 2 0.0061851365833175609 
		3 0.01076165722284869 4 0.075958097609520187 5 0.27658170965786855 
		6 0.41894771966232136 7 0.18662113812207604 8 0.019147905139371892 
		9 0.0049201903543917855 10 4.8948741805528617e-05
		11 0 5.0825619286422953e-05 1 0.00072494916131745854 2 0.0059212491718833053 
		3 0.010402473321590859 4 0.074206423796387588 5 0.27722917690923476 
		6 0.42382308434807864 7 0.18427893148590027 8 0.018615610165602366 
		9 0.0047027019846293565 10 4.4574036089063545e-05
		11 0 4.6302197251387754e-05 1 0.00068019488022285637 2 0.0056781005414873516 
		3 0.01009160378701666 4 0.07292029300187651 5 0.27805128840760379 
		6 0.42734658944314757 7 0.18242003120184069 8 0.018192103228901069 
		9 0.0045320862212763508 10 4.1407089375742781e-05
		11 0 4.2255505422076032e-05 1 0.00064009939320679057 2 0.0054697575500684938 
		3 0.0098451215843956118 4 0.072123518135229936 5 0.27883251651264862 
		6 0.42964080277887684 7 0.18108434868339518 8 0.017872826630240937 
		9 0.0044092935152961043 10 3.9459711219296933e-05
		11 0 3.892391052653925e-05 1 0.00060712738218354995 2 0.0053111809265420588 
		3 0.0096815004918961584 4 0.071862279274205604 5 0.27945210938249271 
		6 0.43064000535570562 7 0.18034624047964937 8 0.017679486095117099 
		9 0.0043423347135941679 10 3.8811988087035943e-05
		11 0 3.6702046158864147e-05 1 0.00058464971470809004 2 0.0052187712491433679 
		3 0.00961584382717986 4 0.072146181189331166 5 0.27997739457649345 
		6 0.43008770824297948 7 0.18030137051291625 8 0.017647548520364102 
		9 0.0043441664570936494 10 3.9663663631765598e-05
		11 0 3.6078455102881815e-05 1 0.00057621225833624713 2 0.005209238505561405 
		3 0.0096668445767826398 4 0.073051893705587859 5 0.28058427905381655 
		6 0.42737547208621296 7 0.1811586875756622 8 0.017853077780271138 
		9 0.0044457764092250378 10 4.2439593441142552e-05
		11 0 3.7406990043639594e-05 1 0.00058460701715818233 2 0.0053018025851854257 
		3 0.0098651705239858594 4 0.07474990246153794 5 0.28154688940634615 
		6 0.42150828026101811 7 0.18321833826560527 8 0.018451949675449858 
		9 0.0046881293337032491 10 4.7523479966360878e-05
		11 0 4.0932588390564407e-05 1 0.00061323773588154232 2 0.005514264264708019 
		3 0.010237676251183377 4 0.077249117554128444 5 0.2823629341001832 
		6 0.41325884280210418 7 0.18606754342647597 8 0.019523419571131524 
		9 0.0050770128861648946 10 5.5018819648346429e-05
		11 0 4.7010001192595114e-05 1 0.00066764404916524762 2 0.0058801149348497068 
		3 0.010828063319660058 4 0.080466361972776998 5 0.28193214538659517 
		6 0.40421869960149204 7 0.18935779762120022 8 0.020972934331105888 
		9 0.0055646023376070258 10 6.4626444354910656e-05
		11 0 5.4913888013848206e-05 1 0.00074001618133263394 2 0.0063346951932876684 
		3 0.011520226607249958 4 0.083803466982939112 5 0.28072120613148954 
		6 0.39543707027918268 7 0.19265714625223584 8 0.022554898793382343 
		9 0.0061009848752154369 10 7.5374815671029052e-05
		11 0 6.3502552661124319e-05 1 0.00081854093728965375 2 0.006799744586361684 
		3 0.012184280966803405 4 0.086705482310042034 5 0.27914197688039405 
		6 0.38810929834650704 7 0.19549121074654194 8 0.023964474043078852 
		9 0.0066360562360777307 10 8.5432394242527165e-05
		11 0 7.1497913431880789e-05 1 0.00089210675208611608 2 0.0072127195798473379 
		3 0.012725452635646679 4 0.088785537482180765 5 0.27746788319925209 
		6 0.38311828508011081 7 0.19760086513848735 8 0.024953090831302129 
		9 0.0070796260873376158 10 9.2935300317131152e-05
		11 0 7.7472798089953506e-05 1 0.00094930581034583666 2 0.0075111433545318055 
		3 0.013066366585539281 4 0.089784943469377834 5 0.27597083067846678 
		6 0.38102097973023696 7 0.19882112569362323 8 0.025417428582309221 
		9 0.0072843736241898173 10 9.6029673289347166e-05
		11 0 8.0376227002806029e-05 1 0.00098181565021810725 2 0.0076517528928027262 
		3 0.013166837458256753 4 0.089631289354896157 5 0.27489604389343253 
		6 0.38184119481130058 7 0.19919916516350519 8 0.025270545451649685 
		9 0.007187287191452933 10 9.3691905482558367e-05
		11 0 7.9935639815998725e-05 1 0.00098612932262143009 2 0.0076191641676421071 
		3 0.013024556666789904 4 0.088402637362141462 5 0.27444350010825852 
		6 0.38521822346509166 7 0.19875044968057926 8 0.024554101409614358 
		9 0.0068343950388562178 10 8.6907138589048373e-05
		11 0 7.6618859928788581e-05 1 0.00096389649811590215 2 0.0074298323420759222 
		3 0.012675463562051091 4 0.086310151351481901 5 0.2746000382064569 
		6 0.39066893251603307 7 0.19736977211386578 8 0.02346079776172481 
		9 0.0063662959234090741 10 7.8200864856749764e-05
		11 0 7.1572246986684684e-05 1 0.00092222414785952912 2 0.0071335336721270928 
		3 0.012193345108807421 4 0.083683181815843888 5 0.27506006867045341 
		6 0.39764451275431495 7 0.19516932399201689 8 0.022140173085102008 
		9 0.0059124922322384291 10 6.957227424977193e-05
		11 0 6.587540423459594e-05 1 0.00087021244535365574 2 0.0067886280943458537 
		3 0.011660153048559038 4 0.080884615612584934 5 0.27577101282051569 
		6 0.40499888151326435 7 0.19249792637873636 8 0.020880277229592497 
		9 0.0055209476208462624 10 6.1469831966793733e-05
		11 0 0.00025705716814294649 1 0.0028415304153948636 2 0.018508464886716505 
		3 0.027903776916251032 4 0.15678890980918414 5 0.37571383546029163 
		6 0.3273067409934094 7 0.084296210840344638 8 0.0053343539809405233 
		9 0.0010422832663875023 10 6.8362629369025275e-06
		11 0 0.00023739571244754155 1 0.0026929140573724911 2 0.017855606356921922 
		3 0.027192767745017155 4 0.15463910586243282 5 0.37954243686733369 
		6 0.33041750710954954 7 0.081436058603010883 8 0.0050172786005338284 
		9 0.00096297189330341493 10 5.9571920766915998e-06
		11 0 0.00021882919966753137 1 0.0025502406223009383 2 0.017255747800623542 
		3 0.026581702923084555 4 0.15311117567714247 5 0.38304916268005218 
		6 0.33225047799813984 7 0.07927088489917665 8 0.0048013194769733975 
		9 0.00090514089091282216 10 5.3178319260170501e-06
		11 0 0.00020153489200558334 1 0.0024168938961461853 2 0.016712569089691789 
		3 0.026064541798128053 4 0.15215929207066853 5 0.38610232775934789 
		6 0.33321506561330377 7 0.077620314379964458 8 0.0046400936470174913 
		9 0.00086249302521035473 10 4.873828515749542e-06
		11 0 0.0001862069345199105 1 0.002299923934256562 2 0.016263263433286931 
		3 0.025679579215007804 4 0.15179325764547855 5 0.38837087472534809 
		6 0.33357021485832494 7 0.076471008986822533 8 0.0045271860806463922 
		9 0.00083387178120636514 10 4.6124051018923025e-06
		11 0 0.00017362478332495247 1 0.0022052729034414526 2 0.015937566575608231 
		3 0.025456360432384112 4 0.15202401691818279 5 0.38964299497116539 
		6 0.3334142619380317 7 0.075854033782032079 8 0.004467105964127689 
		9 0.0008202265881887326 10 4.5351435127999738e-06
		11 0 0.00016547769841043346 1 0.0021439126425515172 2 0.015776035618585014 
		3 0.025418732344257421 4 0.15277157370676694 5 0.38990560095339422 
		6 0.3326817700481301 7 0.075837416630060897 8 0.0044706471797342278 
		9 0.00082416675598851407 10 4.6664221206998784e-06
		11 0 0.00016399505094883316 1 0.0021275956401251668 2 0.015813439289720933 
		3 0.025585887107291937 4 0.15405015522043664 5 0.38916714250942763 
		6 0.33102661545367051 7 0.076638370053831353 8 0.0045680943028892501 
		9 0.00085362679777672718 10 5.0785738811285876e-06
		11 0 0.00017051887278533243 1 0.002162092399949779 2 0.016068588935109911 
		3 0.025975985875180796 4 0.15592399867233328 5 0.38756424215766333 
		6 0.32784937457665952 7 0.078542690271676374 8 0.004816155132454627 
		9 0.00092050570873778304 10 5.8473974492439714e-06
		11 0 0.00018563709588745376 1 0.0022546031019001472 2 0.016563150022860521 
		3 0.026627580345659041 4 0.15842899298199856 5 0.3846192394667739 
		6 0.32358201684619742 7 0.081457963534217762 8 0.0052461097238842647 
		9 0.001027689251092885 10 7.0176295279880169e-06
		11 0 0.00020964303740372757 1 0.0024149351098486462 2 0.017354261473966331 
		3 0.027625858570936343 4 0.16160049108968949 5 0.379270303788171 6 
		0.31924621349570059 7 0.085256758741456329 8 0.0058472475952235248 9 
		0.0011657140302891004 10 8.573067314953427e-06
		11 0 0.00023970768864228436 1 0.0026229134969826089 2 0.018317152462922211 
		3 0.028774607346424608 4 0.16475314855414133 5 0.37292709910167071 
		6 0.3151447929391924 7 0.089346802706003231 8 0.0065389053676268953 
		9 0.0013244928229267342 10 1.0377513466998699e-05
		11 0 0.00027190837890018213 1 0.0028470222145101972 2 0.019292622711835752 
		3 0.029847046392147192 4 0.1672896610764889 5 0.36690474504268455 
		6 0.31185236484423201 7 0.093011270094569359 8 0.0071843913313502468 
		9 0.001486863988075659 10 1.2103925206024176e-05
		11 0 0.00030095689207421724 1 0.0030520239132014702 2 0.020139849207985998 
		3 0.030682276735276025 4 0.16888638387139876 5 0.36205955173822624 
		6 0.30984944368474959 7 0.095741300412441555 8 0.0076533383140863585 
		9 0.001621503631755384 10 1.3371598804288751e-05
		11 0 0.00032206403897206152 1 0.00320953797075637 2 0.020746477240136757 
		3 0.03118100437007304 4 0.16939291780597934 5 0.35892452767865396 
		6 0.30944370446752573 7 0.097214454504184047 8 0.0078699194555501787 
		9 0.0016815315447920281 10 1.3860923376471431e-05
		11 0 0.0003320175159013229 1 0.0033002774400322258 2 0.021036455240297625 
		3 0.031300019997183931 4 0.16882264512641604 5 0.35783029634684765 
		6 0.31056750941270522 7 0.097353622278112215 8 0.0077939239519965193 
		9 0.0016498082167152291 10 1.342447379199539e-05
		11 0 0.00032982886516713905 1 0.0033138304566850416 2 0.020971915618605636 
		3 0.031035902065465654 4 0.16728421215262396 5 0.35893714382636538 
		6 0.31293219212845513 7 0.096198443770363865 8 0.007445153128278063 
		9 0.001539164079047167 10 1.221390894286748e-05
		11 0 0.00031731350191541022 1 0.0032540147316424085 2 0.020580047739566551 
		3 0.030441772849782188 4 0.16498826464613231 5 0.36197768729704272 
		6 0.31622024540126509 7 0.093893512956202019 8 0.006922731370311355 
		9 0.0013937148712204889 10 1.0694634919425574e-05
		11 0 0.00029857812625919833 1 0.0031381772345933888 2 0.019953490464603197 
		3 0.029628424569338604 4 0.16226648910826735 5 0.36627032595708237 
		6 0.32002731089997666 7 0.090832268265727018 8 0.0063210402894392356 
		9 0.0012546655104499812 10 9.2295742630564692e-06
		11 0 0.0002775378159979765 1 0.0029911269415667128 2 0.019210662938261479 
		3 0.028721697018470018 4 0.15942244713546491 5 0.37125206584749226 
		6 0.32368816149899904 7 0.087517059182069132 8 0.005772140420834136 
		9 0.00113917024211808 10 7.9309587262509169e-06
		11 0 0.00098984772427079815 1 0.0087058305991185251 2 0.045575671554703809 
		3 0.058628797851507368 4 0.25683138482004902 5 0.39839325757740157 
		6 0.199919439602391 7 0.029639017081350562 8 0.0011456595448558989 
		9 0.00017038940917664668 10 7.0423517493689857e-07
		9 0 0.00092451004322833012 1 0.0083314588068130382 2 0.044401372601465233 
		3 0.057786120516275949 4 0.25662239742887499 5 0.40356685699931927 
		6 0.19914201893031219 7 0.028018401233527092 8 0.0010526212599826547;
	setAttr ".wl[181:227].w"
		2 9 0.0001536454617656259 10 5.9671843569731034e-07
		11 0 0.00086155220716483305 1 0.0079672477430168913 2 0.043312132985578122 
		3 0.0570708447016193 4 0.25691607966425889 5 0.40792397255168483 6 
		0.1979924022012314 7 0.026821658403546667 8 0.00099155692422133986 9 
		0.00014203047818298639 10 5.2213949476134811e-07
		11 0 0.00080312002473084557 1 0.0076316633005470771 2 0.042347594328850331 
		3 0.056497406436231863 4 0.2576275945880761 5 0.41134905708677055 
		6 0.19672722998758774 7 0.025934498706326095 8 0.00094754267118794431 
		9 0.00013382030945590352 10 4.7256023553882894e-07
		11 0 0.00075092231678635388 1 0.0073406229034415097 2 0.041588872215247291 
		3 0.056136230134962835 4 0.25864715753951284 5 0.41354120772433434 
		6 0.19560519170406424 7 0.02534213157046224 8 0.00091854742810109236 
		9 0.00012867141758247526 10 4.4504550469293164e-07
		11 0 0.00070762155587888716 1 0.0071077311726275736 2 0.041084839051479624 
		3 0.056018935204275963 4 0.25986948552571842 5 0.41438305851168755 
		6 0.19475772931009985 7 0.025038877602450903 8 0.0009047203657121418 
		9 0.00012656315776773524 10 4.3854230129147033e-07
		11 0 0.00067965683651906729 1 0.0069629784732710732 2 0.040917055936975873 
		3 0.056167279958127252 4 0.26105382013232092 5 0.41386447711553132 
		6 0.1942633016106512 7 0.025054628908090428 8 0.00090844739385850728 
		9 0.00012789829131809539 10 4.5534333624961291e-07
		11 0 0.00067590320235797732 1 0.0069364236351858836 2 0.041123891135375498 
		3 0.056553894266352094 4 0.2620998313227435 5 0.41200924195515298 
		6 0.19403637815844466 7 0.025492625425712311 8 0.00093722713656304918 
		9 0.00013407979074869547 10 5.0397136324651226e-07
		11 0 0.00070184271193481052 1 0.0070446829696805486 2 0.041719532899125257 
		3 0.057172598386714013 4 0.26299540544233929 5 0.40883130584051447 
		6 0.19385038517323108 7 0.026527614029606118 8 0.0010080462578973865 
		9 0.0001479893059727527 10 5.9698298420792294e-07
		11 0 0.00075812031079937662 1 0.0072981186820371717 2 0.042689302238863976 
		3 0.058046059699875592 4 0.26381169435582241 5 0.40401023385056567 
		6 0.19387974979586906 7 0.028202784019024128 8 0.0011325139566745763 
		9 0.00017067882277131861 10 7.442676965855392e-07
		11 0 0.0008409456447229474 1 0.0076921728134848122 2 0.044026467780743227 
		3 0.059232396202389209 4 0.26470597736770318 5 0.39686781394031695 
		6 0.19459186576334572 7 0.030526282869343953 8 0.001314388927090493 
		9 0.00020074210063443854 10 9.4659022496196608e-07
		11 0 0.00093925674850001866 1 0.0081781536995889238 2 0.045549744091293198 
		3 0.060503106897204693 4 0.26531996409440373 5 0.38898612507485242 
		6 0.19562736894559002 7 0.033126133276014602 8 0.0015324256969528767 
		9 0.00023653231753092239 10 1.1891580686178634e-06
		11 0 0.0010430602603437166 1 0.0087042194938702199 2 0.047101379944065776 
		3 0.061647968197768153 4 0.26538900724364101 5 0.38165174267404678 
		6 0.19682217472136065 7 0.035612503339856598 8 0.0017510982054591093 
		9 0.00027541378359763986 10 1.4321359902854742e-06
		11 0 0.0011355204120367592 1 0.0091838893591680258 2 0.048442860776047411 
		3 0.062474835637979877 4 0.26491739471645226 5 0.37604422156445855 
		6 0.19804743739991182 7 0.037525341661014844 8 0.0019181627862380241 
		9 0.00030872174606175201 10 1.6139406306653437e-06
		11 0 0.0012011876511718316 1 0.0095507915408064026 2 0.04939944892590703 
		3 0.062900167437821231 4 0.26399912655257646 5 0.37278405669568487 
		6 0.19928115079208272 7 0.038561893143969572 8 0.0019969217528276154 
		9 0.00032357404980447682 10 1.6814573478320988e-06
		11 0 0.0012310698950031393 1 0.0097654106343591039 2 0.049859391291798318 
		3 0.062906270412502144 4 0.26276579199569622 5 0.37216779408812467 
		6 0.20040158142515688 7 0.038615002334201613 8 0.0019704368204660973 
		9 0.00031563575689470618 10 1.6153457972417513e-06
		11 0 0.0012228615757212671 1 0.0098056485587818612 2 0.049758676848064856 
		3 0.062503943961758901 4 0.26136701219889641 5 0.37430857140478135 
		6 0.2011901917927191 7 0.037706656981298506 8 0.0018467127818760677 
		9 0.00028828495115783926 10 1.4389449438483113e-06
		11 0 0.0011828474315423634 1 0.0096791500300545882 2 0.049129116824428665 
		3 0.061750325938312083 4 0.25994018346179831 5 0.37886633258159641 
		6 0.20152613637540503 7 0.036008554599497491 8 0.0016634886310743324 
		9 0.00025264183016505802 10 1.222296125683679e-06
		11 0 0.0011237396504010701 1 0.0094177093664383378 2 0.048086414069573986 
		3 0.060743737912367257 4 0.25864182052728324 5 0.38511382039164904 
		6 0.20133691924361402 7 0.033855265677540859 8 0.0014603772690681531 
		9 0.00021917735388308804 10 1.0185381808558754e-06
		11 0 0.001056701796763372 1 0.0090727654350001869 2 0.046811235551673137 
		3 0.059617811348726388 4 0.25755477138393795 5 0.39218859997794636 
		6 0.20060886273709014 7 0.031615614785515667 8 0.0012808123656079021 
		9 0.00019198028499576081 10 8.4433274318498849e-07
		11 0 0.0034461340842073312 1 0.023485149384890627 2 0.095890951475610872 
		3 0.10244372406414845 4 0.33973953803191131 5 0.33029306342862014 
		6 0.096070108187353218 7 0.0084080561579377867 8 0.00020029675063938806 
		9 2.2918803672376136e-05 10 5.9631008578061621e-08
		11 0 0.0032616455269350569 1 0.022737210164819638 2 0.094309045266433689 
		3 0.10193417108819153 4 0.34249945620234112 5 0.33364762946207777 
		6 0.09368105069010893 7 0.0077302027634208346 8 0.00017940431666022008 
		9 2.0135531825770234e-05 10 4.8987185350592677e-08
		11 0 0.0030758861025367702 1 0.021994158986238195 2 0.092867986890519727 
		3 0.10157758164068308 4 0.34549540847800275 5 0.33611879303838216 
		6 0.091445335755113072 7 0.0072404715488439591 8 0.00016606168628082032 
		9 1.8273977120273588e-05 10 4.1896279133497368e-08
		11 0 0.0029051932734640048 1 0.021321942889687587 2 0.091651715848012114 
		3 0.10138476109564223 4 0.34845438498271158 5 0.33764701798642544 
		6 0.089566268185949385 7 0.0068948294453654892 8 0.00015683837136400947 
		9 1.7010549658970972e-05 10 3.7371719119400747e-08
		11 0 0.0027477502253588537 1 0.020729404461110094 2 0.090775917465955924 
		3 0.10144777271086577 4 0.35110424021334946 5 0.33815632174162313 
		6 0.088197278675764657 7 0.0066740012942701973 8 0.00015101944433977256 
		9 1.6258753069701354e-05 10 3.5014292379276722e-08
		11 0 0.0026120946288750021 1 0.020249314557640299 2 0.090313740715081928 
		3 0.10178195106876327 4 0.35317945664178779 5 0.33770406291376437 
		6 0.087424926841433576 7 0.0065699281468896437 8 0.00014849645833906356 
		9 1.5993403917854395e-05 10 3.462350716565308e-08
		11 0 0.0025199329610216684 1 0.019943557045213757 2 0.090364222334115452 
		3 0.10235063406075123 4 0.35428788130951561 5 0.3364261281755655 6 
		0.087349009715362538 7 0.0065926246110459205 8 0.00014970452572354308 9 
		1.6268876998726408e-05 10 3.6384686105619732e-08
		11 0 0.0025063429894680057 1 0.01988396637620932 2 0.090927603312473348 
		3 0.10300116617652978 4 0.35428134484974622 5 0.33448905415247571 
		6 0.087959604603814481 7 0.0067774809827371779 8 0.00015610728832382348 
		9 1.7288208318975627e-05 10 4.1059903063889257e-08
		11 0 0.002589090053926808 1 0.020107353192575138 2 0.091937782907611718 
		3 0.1036527949369514 4 0.3531929626051864 5 0.3319680724026417 6 
		0.089172804868714692 7 0.0071882702998413974 8 0.0001712716945791427 9 
		1.9546849284058907e-05 10 5.0188687616561731e-08
		11 0 0.0027637919545179441 1 0.020622892029408969 2 0.09330962766639371 
		3 0.10432985132114234 4 0.3511872302090992 5 0.32864200593413878 6 
		0.091048092750633552 7 0.0078742794486160311 8 0.0001988206570867198 9 
		2.3342640462011894e-05 10 6.5388500803672474e-08
		11 0 0.0030098560900958166 1 0.021392253078323854 2 0.094917382789908314 
		3 0.10507327702346181 4 0.34868247591715323 5 0.324111473489128 6 
		0.09367546036596279 7 0.0088677195348938233 8 0.00024144544450412431 9 
		2.8569317827035561e-05 10 8.6948741166215347e-08
		11 0 0.0032928426669733136 1 0.022323752430601331 2 0.096608202422657288 
		3 0.10573275812640079 4 0.34581387890761062 5 0.31927139120919995 
		6 0.096602010989495876 7 0.010025137282506142 8 0.00029491263912315429 
		9 3.4999990257231116e-05 10 1.1333517424563998e-07
		11 0 0.0035786150365335664 1 0.023306980865886864 2 0.098263816426962511 
		3 0.10617675901520067 4 0.34272980408728665 5 0.31493287536698028 
		6 0.099440389958050587 7 0.011176517222607756 8 0.00035170849885546681 
		9 4.2392409999273434e-05 10 1.4111163644403254e-07
		11 0 0.0038322694458156809 1 0.024217173273772236 2 0.099713608742773269 
		3 0.10633297475235343 4 0.33972112598157528 5 0.3117505651435753 6 
		0.10187422561018541 7 0.012110656967590764 8 0.00039812582268526967 9 
		4.9111371667222353e-05 10 1.6288800622476257e-07
		11 0 0.0040111499290648618 1 0.024924038035642717 2 0.10075783800440091 
		3 0.10621710438571932 4 0.33718788919972731 5 0.31015484602893562 
		6 0.10363318226546729 7 0.01263993430605085 8 0.00042155465135239599 
		9 5.2291810710498385e-05 10 1.7138292826555478e-07
		11 0 0.0040889248693952891 1 0.025343570215809987 2 0.10124110166992913 
		3 0.10587411336978124 4 0.33543102458594598 5 0.31038698834573747 
		6 0.10450234905221914 7 0.012666147809603522 8 0.00041486471228571655 
		9 5.0752077453766082e-05 10 1.6329183865082425e-07
		11 0 0.0040652147694118634 1 0.02545039207835189 2 0.10109877697536977 
		3 0.10535059490752791 4 0.33458151645530809 5 0.31246400763550658 
		6 0.10435755857744543 7 0.012205523318378809 8 0.00038096037638642649 
		9 4.5312661242149498e-05 10 1.4224507099552376e-07
		11 0 0.003958802919330256 1 0.025257049562706163 2 0.10035169262233774 
		3 0.10469010841351273 4 0.33467614621884451 5 0.31611524993489232 
		6 0.10321539930815177 7 0.011365919848890155 8 0.00033123031814272322 
		9 3.8283933876216056e-05 10 1.1691931531398812e-07
		11 0 0.0038040006932506818 1 0.024808520083827178 2 0.099092392561090772 
		3 0.10392633208428559 4 0.33568676110391488 5 0.3208404274856983 6 
		0.10120557962204203 7 0.01032624160462812 8 0.00027783915262847713 9 
		3.1812106036659609e-05 10 9.3502597374909019e-08
		11 0 0.0036262991479841153 1 0.024187406292533523 2 0.09750897384544889 
		3 0.10311451053236576 4 0.33745026573366838 5 0.32597442838756296 
		6 0.098602779260837881 7 0.0092763568028295454 8 0.00023221846566498248 
		9 2.6687402656282998e-05 10 7.4128447547908391e-08
		11 0 0.010674580132209935 1 0.05510429949995977 2 0.17022028765690961 
		3 0.14664971588335599 4 0.360649772319524 5 0.21768031611314789 6 
		0.037046580978194077 7 0.0019433343688794232 8 2.8581844046011106e-05 9 
		2.5271185851785087e-06 10 4.08518806285723e-09
		11 0 0.010226116161248371 1 0.054067275742957874 2 0.1690402126303662 
		3 0.14703587527036105 4 0.3648432997048191 5 0.21797409393181336 6 
		0.035066628944175643 7 0.0017195903734851239 8 2.4758531740792002e-05 9 
		2.145498577261393e-06 10 3.2104551940554345e-09
		11 0 0.0097379506530825173 1 0.052979794215561288 2 0.16816237520179833 
		3 0.14763247742114385 4 0.36891481462328818 5 0.2176201232051013 6 
		0.033363620816474239 7 0.0015645085545205036 8 2.2428797923428678e-05 9 
		1.9038462182214873e-06 10 2.6648880943597223e-09
		11 0 0.0093076684714353541 1 0.052009320573970758 2 0.16746208311527253 
		3 0.14829201867532732 4 0.37257982504054371 5 0.21682962474198447 
		6 0.03203652670086956 7 0.0014602907947252565 8 2.0892150511843646e-05 
		9 1.747401137832224e-06 10 2.3342214875167199e-09
		11 0 0.0088972089869979783 1 0.051100259956921169 2 0.16715448315400327 
		3 0.14917500951391749 4 0.37550564216820248 5 0.21561087094607539 
		6 0.031137996745880112 7 0.0013969136064658722 8 1.9955180444352282e-05 
		9 1.6575693984975893e-06 10 2.1716933619999822e-09
		11 0 0.0085200447558289333 1 0.050309958078127666 2 0.16730779322201336 
		3 0.1502500421044235 4 0.37737164847040844 5 0.21415057428225523 6 
		0.030698691155324045 7 0.0013700294172286625 8 1.9586344607762426e-05 9 
		1.6300134298277938e-06 10 2.156352550783014e-09
		11 0 0.0082418866674402232 1 0.049730109568048748 2 0.16794689803359217 
		3 0.15135128030272871 4 0.37783624549826639 5 0.21271648530863024 
		6 0.030773495865292624 7 0.0013820774117635905 8 1.9848289452379888e-05 
		9 1.6707540116020878e-06 10 2.3007732376756176e-09
		3 0 0.0081928725225970059 1 0.049497266629764371 2 0.16891859683367769;
	setAttr ".wl[227:272].w"
		8 3 0.1521138553078899 4 0.37681640010304701 5 0.2116201435129034 
		6 0.0313754336851104 7 0.0014426533887628612 8 2.0970534317527442e-05 
		9 1.8048185210412749e-06 10 2.6634088730867958e-09
		11 0 0.0084248879641286405 1 0.049748563457660717 2 0.16999034552840425 
		3 0.15234434267740665 4 0.37443578779630027 5 0.21096316660149236 
		6 0.032495906626946625 7 0.0015713439022649982 8 2.3553122894899572e-05 
		9 2.0989345106746431e-06 10 3.3879900323981268e-09
		11 0 0.0088879129726104362 1 0.050401425640498418 2 0.17105812236009746 
		3 0.15225131839565731 4 0.37100817147567278 5 0.21045821595654429 
		6 0.034117496798380671 7 0.0017864021977643124 8 2.8328853803123024e-05 
		9 2.6007015233863966e-06 10 4.6474477906103096e-09
		11 0 0.0095098305269127915 1 0.051454115843487372 2 0.17196999306871713 
		3 0.1519259925889786 4 0.36698028253538506 5 0.20978121563406116 6 
		0.036231226246871084 7 0.0021077782585953051 8 3.6229393141970477e-05 9 
		3.3293897815030664e-06 10 6.5140680025999137e-09
		11 0 0.010213453312428466 1 0.052789409749110845 2 0.1727295971721155 
		3 0.15133514875045836 4 0.36265716247085522 5 0.20913462736799859 
		6 0.038587514065806482 7 0.0025019890091210447 8 4.6810474160984071e-05 
		9 4.2787404929898793e-06 10 8.8874515768352822e-09
		11 0 0.010896862769061563 1 0.054216052844087877 2 0.17343260785045067 
		3 0.15048983678244787 4 0.35837749747985775 5 0.20872534454014616 
		6 0.040886305878514564 7 0.0029113247208022554 8 5.8720765739201316e-05 
		9 5.4348435491987482e-06 10 1.1525342952860323e-08
		11 0 0.011488822373115404 1 0.05554585727601858 2 0.17404729097138125 
		3 0.14947615116729712 4 0.35455784249659861 5 0.20870102008386227 
		6 0.042848244120107765 7 0.0032591084884773807 8 6.9096237779912151e-05 
		9 6.5530777838141558e-06 10 1.3707577842056267e-08
		11 0 0.011894091920007642 1 0.056587628614694532 2 0.17447429211408233 
		3 0.14848053253367402 4 0.35171698263306267 5 0.20912324551904479 
		6 0.04418041407865126 7 0.0034611334011954899 8 7.4563649646252941e-05 
		9 7.1009808634735397e-06 10 1.4555077459325577e-08
		11 0 0.012068823501779079 1 0.057247436023291375 2 0.17460997444214715 
		3 0.14763901012025135 4 0.35013300302705747 5 0.21004045081286912 
		6 0.044708263685870248 7 0.0034728856757505352 8 7.3273028254755226e-05 
		9 6.8659189666290356e-06 10 1.3763762262591573e-08
		11 0 0.01201854101875628 1 0.05749247730223811 2 0.17437767359200904 
		3 0.14703081110665511 4 0.34991820455591982 5 0.21142929446283304 
		6 0.044362074434799413 7 0.0032990762867243775 8 6.5851209487961703e-05 
		9 5.9843151924952141e-06 10 1.1715384477190473e-08
		11 0 0.011789954249682297 1 0.057332002636020674 2 0.1737523899813338 
		3 0.14667322710707573 4 0.3510560859808482 5 0.21314596769111216 6 
		0.0432029123570975 7 0.0029875144972814037 8 5.5080465801796556e-05 9 
		4.8557376634448531e-06 10 9.2960829655276245e-09
		11 0 0.011465865209059452 1 0.056815058822987992 2 0.17274584964079398 
		3 0.14650928991588655 4 0.3534279417623033 5 0.21497812698048682 6 
		0.041398534678969916 7 0.0026115355027286338 8 4.3940872013055334e-05 9 
		3.8495065627873146e-06 10 7.1082075918245661e-09
		11 0 0.011078882024637622 1 0.056048406584979213 2 0.17150817511203337 
		3 0.14647595513124601 4 0.35674873085675024 5 0.21665427572751159 
		6 0.039205790691075194 7 0.0022419425312032535 8 3.4759653548618744e-05 
		9 3.0763314535313393e-06 10 5.3555613612899112e-09
		11 0 0.028901830407181466 1 0.11118012616339644 2 0.2524511714165254 
		3 0.17020489639936331 4 0.308408648776691 5 0.11678688287946638 6 
		0.011695977736148397 7 0.00036693779046147027 8 3.302700600762966e-06 9 
		2.2550892876991964e-07 10 2.2123651706081137e-10
		11 0 0.027860922389523975 1 0.11049318913739774 2 0.25274528445686523 
		3 0.17126735485002192 4 0.31124387881881865 5 0.11540111036058195 
		6 0.010676137751557591 7 0.00030919684146751651 8 2.7418313163628967e-06 
		9 1.8339825233169098e-07 10 1.6419677621215395e-10
		11 0 0.026604120395295007 1 0.10943572535158105 2 0.25385072299027872 
		3 0.17283900261431373 4 0.31375914862426724 5 0.11343490682964377 
		6 0.0098038958541854411 7 0.00026991389737766273 8 2.4059056663728941e-06 
		9 1.5740714431264528e-07 10 1.3024685367062262e-10
		11 0 0.025633897731212274 1 0.10862068172966194 2 0.25460072319823712 
		3 0.17412806889672922 4 0.31590133342444576 5 0.11169464995814035 
		6 0.0091732952312561788 7 0.00024501297285858738 8 2.195334841146948e-06 
		9 1.4141175713354815e-07 10 1.1086037797847785e-10
		11 0 0.024730098078494623 1 0.10773486894970538 2 0.25566408633643672 
		3 0.17558969966276763 4 0.31736747169623675 5 0.10992095875472938 
		6 0.0087600138216173649 7 0.00023059727928345671 8 2.072714599383186e-06 
		9 1.3260428797460773e-07 10 1.0184124614357116e-10
		11 0 0.023856020876962432 1 0.10686071788513841 2 0.25713248435830371 
		3 0.17717836254609204 4 0.31793339760575667 5 0.10824877602573502 
		6 0.0085631213073563452 7 0.00022496003405395498 8 2.0290032073729942e-06 
		9 1.3025583442303049e-07 10 1.0155952317109451e-10
		11 0 0.023179747145407478 1 0.10605537989933773 2 0.25885554226925611 
		3 0.17862833967110309 4 0.31748303316164744 5 0.10696491704863578 
		6 0.0086024280029612914 7 0.00022840897506873746 8 2.0690223945667876e-06 
		9 1.3469377441216706e-07 10 1.1041327064946367e-10
		11 0 0.023130862226643081 1 0.10542319902914292 2 0.26021914996803286 
		3 0.17936630644244089 4 0.31616481956322184 5 0.1065406297553767 6 
		0.0089091144935759918 7 0.00024354494935087688 8 2.2248125028260482e-06 
		9 1.4862753411012233e-07 10 1.3217783593851468e-10
		11 0 0.023746219438778339 1 0.10541198141759728 2 0.26071810782410881 
		3 0.17895830274338381 4 0.31420130221321674 5 0.10718909410880863 
		6 0.0094972180101650355 7 0.00027502284798399014 8 2.572428302144332e-06 
		9 1.7879077727132298e-07 10 1.7687786632953871e-10
		11 0 0.024891936860307946 1 0.10554671253524033 2 0.26055116075634366 
		3 0.17821327820327115 4 0.31185479294091234 5 0.10827994350313228 
		6 0.010330616059051482 7 0.00032809689743582606 8 3.2307284437214423e-06 
		9 2.3125744867563165e-07 10 2.5841263252645544e-10
		11 0 0.026279944409853928 1 0.10621584021311899 2 0.25968884472551701 
		3 0.17709744413842629 4 0.30921882397563816 5 0.10966943830598062 
		6 0.011414488186225261 7 0.00041045099268316964 8 4.4111456517692521e-06 
		9 3.1351828876783865e-07 10 3.8861610323820892e-10
		11 0 0.027802869593889508 1 0.10730306693341601 2 0.25822778688055009 
		3 0.17563777168848174 4 0.3066195260541959 5 0.11125621167031804 6 
		0.012630496811978247 7 0.00051574366831581798 8 6.0984469450762705e-06 
		9 4.2768760917841743e-07 10 5.6430038489342363e-10
		11 0 0.029164060729747126 1 0.10861110399596358 2 0.25686508824595278 
		3 0.17391779860046008 4 0.30404685524709885 5 0.11291182605185768 
		6 0.013844528873717964 7 0.00063006211325224029 8 8.1021782611850961e-06 
		9 5.7319985557339967e-07 10 7.6383296416976142e-10
		11 0 0.030297611594444458 1 0.1098925705802751 2 0.25570581105827483 
		3 0.17213837328317036 4 0.30183277948190623 5 0.11450129179225292 
		6 0.014890061996582101 7 0.00073083227197366814 8 9.9448003237992896e-06 
		9 7.2220483671840286e-07 10 9.3595966836522219e-10
		11 0 0.031062670652988861 1 0.11098640229115778 2 0.25483637240997925 
		3 0.1705640502764918 4 0.30027229236814457 5 0.11587800058691573 6 
		0.015597038292458587 7 0.00079139859528671165 8 1.0973795589055863e-05 
		9 7.9972480138642343e-07 10 1.0061863445299252e-09
		11 0 0.031399444082007788 1 0.11179375440720485 2 0.25422692643182143 
		3 0.16939966111312543 4 0.29955781974620632 5 0.1169607482337329 6 
		0.015854552594786117 7 0.00079554374035575132 8 1.0777481237490772e-05 
		9 7.712238450895818e-07 10 9.4567688262610834e-10
		11 0 0.031330225541145701 1 0.11226859574865886 2 0.25378300054698061 
		3 0.16875463571614452 4 0.2997815083977145 5 0.11770118942001824 6 
		0.015626451687722018 7 0.00074427235282379799 8 9.4648179760480924e-06 
		9 6.5498488769387277e-07 10 7.8592806557321368e-10
		11 0 0.030949813087176495 1 0.11239508991348984 2 0.25339836738407856 
		3 0.16862824121286132 4 0.30094349657672903 5 0.11806152008496525 
		6 0.014961643238043113 7 0.00065373365435843764 8 7.5862564753026892e-06 
		9 5.0799135954985879e-07 10 6.0046320439579411e-10
		11 0 0.030419127525033566 1 0.1121819866225672 2 0.2529498476296837 
		3 0.16889302860683372 4 0.30296650375310269 5 0.11805778440639182 
		6 0.013978040174659541 7 0.00054757580675905563 8 5.7227578736015946e-06 
		9 3.8228051553978357e-07 10 4.3657962140156213e-10
		11 0 0.029685645434525312 1 0.11179972642974069 2 0.25266180675818917 
		3 0.16940342242824966 4 0.30549165363870068 5 0.11767293883015131 
		6 0.012833183559920736 7 0.00044707468983671433 8 4.2582363067324458e-06 
		9 2.896843199666136e-07 10 3.1005901126208653e-10
		11 0 0.067507534502656202 1 0.19138401297745886 2 0.311332112402461 
		3 0.15985219559152253 4 0.2147890035615703 5 0.052001386631490218 
		6 0.0030768231434500498 7 5.6611142171080739e-05 8 3.0410593149746748e-07 
		9 1.5932115865800173e-08 10 9.1724598593922277e-12
		11 0 0.064968461953281376 1 0.19242822417270403 2 0.31398542013608849 
		3 0.16069788394974738 4 0.21482590715533814 5 0.050363434666498473 
		6 0.0026855413964040147 7 4.4874699605175161e-05 8 2.3957455662158383e-07 
		9 1.2289443741185511e-08 10 6.3324651921873321e-12
		11 0 0.062128961993205084 1 0.19224689506724729 2 0.31821729053073639 
		3 0.16268510324692675 4 0.21452577317670848 5 0.047856303781541189 
		6 0.0023030485796264907 7 3.6413840812918326e-05 8 1.9974534226851441e-07 
		9 1.0033132120281688e-08 10 4.720868428951389e-12
		11 0 0.060179640256810649 1 0.1925840815819409 2 0.32066520399215631 
		3 0.16371394393765201 4 0.21441058882951139 5 0.046334579229733726 
		6 0.0020799563846925989 7 3.1819591225138137e-05 8 1.7741706283660419e-07 
		9 8.7753251049554689e-09 10 3.8892542189760942e-12
		11 0 0.058563166674818513 1 0.19257071514134719 2 0.32307793561644593 
		3 0.16481580815064262 4 0.2139916442007134 5 0.045007656540499687 
		6 0.0019435523423499406 7 2.934813785588442e-05 8 1.650811432423895e-07 
		9 8.1106680178765467e-09 10 3.5154818346136115e-12
		11 0 0.056979867649183981 1 0.19241767349579655 2 0.32583502693898764 
		3 0.16599327740563696 4 0.21305056871058939 5 0.043817666730937274 
		6 0.0018773494347205297 7 2.8401019866113503e-05 8 1.6067787523613876e-07 
		9 7.9328970281204144e-09 10 3.5091887852836718e-12
		11 0 0.055812596579205828 1 0.19197445451101575 2 0.32853830856758631 
		3 0.16701727146725112 4 0.21174239694793556 5 0.042994578915988665 
		6 0.0018910809846181928 7 2.9138058268944572e-05 8 1.6564208366859162e-07 
		9 8.3221279947649305e-09 10 3.9180117888883273e-12
		11 0 0.056191196107234331 1 0.19075526514538049 2 0.32968085975190786 
		3 0.16749052712569945 4 0.21084689001175494 5 0.042998962228118338 
		6 0.0020040485007901923 7 3.2058981701414933e-05 8 1.8268350957476987e-07 
		9 9.4589970996612758e-09 10 4.906455889465313e-12
		11 0 0.05756361405920897 1 0.18993942165121644 2 0.32928701362546725 
		3 0.1666304724769779 4 0.21013876650617441 5 0.044154419595787017 
		6 0.0022477539297875806 7 3.8306747861271563e-05 8 2.1954011215224748e-07 
		9 1.1860423625160569e-08 10 6.9834619990573491e-12
		11 0 0.060298542367966834 1 0.1879755970715562 2 0.32727339290927743 
		3 0.16619656689132259 4 0.21020730961977407 5 0.045445445129534044 
		6 0.0025543262734942507 7 4.8513577954810042e-05 8 2.9006013793845555e-07 
		9 1.6088026629065638e-08 10 1.0955303312886713e-11
		11 0 0.063014475855554461 1 0.18664583022584902 2 0.32454694189068706 
		3 0.16561437159295042 4 0.21024736717669021 5 0.046919489843304248 
		6 0.0029463345799390301 7 6.4740538605208997e-05 8 4.2515407440676192e-07 
		9 2.312460043976226e-08 10 1.7745583047224248e-11
		11 0 0.065951234076031762 1 0.18603956004702829 2 0.32048330254716556 
		3 0.16459817054553449 4 0.21071186467777114 5 0.048721468650924478 
		6 0.0034069963660464269 7 8.6735827930878114e-05 8 6.336235436635867e-07 
		9 3.3610532739263296e-08 10 2.7490421772623364e-11
		8 0 0.068192958048388166 1 0.18607985355359374 2 0.31717587123256519 
		3 0.1632782111835091 4 0.21080849958704675 5 0.050470720249506267 
		6 0.0038808364073593137 7 0.00011209953801610186;
	setAttr ".wl[272:318].w"
		3 8 9.0202816438895128e-07 9 4.8132594105334828e-08 10 3.9256894063647605e-11
		11 0 0.069970459328183396 1 0.18642244393009325 2 0.31440166268111841 
		3 0.16183895240506452 4 0.21088084019253833 5 0.052053293601178836 
		6 0.0042958376272972162 7 0.00013528383085620603 8 1.1624457754188478e-06 
		9 6.3908103929345116e-08 10 4.9790538523942718e-11
		11 0 0.071139876661585735 1 0.18701206800478695 2 0.31229990335442415 
		3 0.16048677191797112 4 0.21100506006460099 5 0.053323905621832604 
		6 0.0045813059877492721 7 0.00014971941445475763 8 1.3162770269212666e-06 
		9 7.264115567310237e-08 10 5.4411726153737395e-11
		11 0 0.071673416243901375 1 0.18770915331504806 2 0.31090564569522416 
		3 0.15944633532876887 4 0.21125724238700638 5 0.054170987252896811 
		6 0.0046849512624281171 7 0.00015090585405380034 8 1.2926988856597262e-06 
		9 6.9910876423698728e-08 10 5.0910333961413744e-11
		11 0 0.071626133542194423 1 0.18843544211908103 2 0.31010825377477302 
		3 0.15885011023309956 4 0.21170491360764204 5 0.054544648070965443 
		6 0.0045903735022037673 7 0.00013896054408791671 8 1.106883356913548e-06 
		9 5.7681327417167922e-08 10 4.1268586029434997e-11
		11 0 0.071143250579277617 1 0.18914092961541734 2 0.3097226872751031 
		3 0.15870170249461099 4 0.21239298061228598 5 0.054457105028105586 
		6 0.004322313857683651 7 0.00011814215086718149 8 8.4587378200706997e-07 
		9 4.2482602606739953e-08 10 3.0263888860303286e-11
		11 0 0.070441155034394382 1 0.18970199533483786 2 0.30956712253935503 
		3 0.15889814518177653 4 0.21335523881586652 5 0.054002980660903151 
		6 0.0039382277047248443 7 9.4505372211348918e-05 8 5.9917198266626492e-07 
		9 3.0163141688219212e-08 10 2.0806076074236404e-11
		11 0 0.068976749928997813 1 0.19056968828349086 2 0.31044706309265102 
		3 0.15932245429565478 4 0.21401072406256355 5 0.053100733296223217 
		6 0.0034990992153028349 7 7.3049638016746001e-05 8 4.1658096360444286e-07 
		9 2.1592310481686675e-08 10 1.3825220359624832e-11
		11 0 0.13668299560642008 1 0.28194095435536926 2 0.31992622194290293 
		3 0.12132031470470127 4 0.12076481428244423 5 0.018705521927543399 
		6 0.00065226321388698141 7 6.8916869761874448e-06 8 2.1428014457473369e-08 
		9 8.5146522842964125e-10 10 2.759335355999434e-13
		11 0 0.13128721792662695 1 0.28697347812892426 2 0.32527855233489389 
		3 0.12091048134274794 4 0.11771904002609962 5 0.01729622307349649 
		6 0.00052993384041680398 7 5.056656421679065e-06 8 1.6043779734257489e-08 
		9 6.2641497919878073e-10 10 1.7767444523198674e-13
		11 0 0.12740171366196099 1 0.28947700002784893 2 0.33012981286509374 
		3 0.12145779673239145 4 0.11539104952714294 5 0.015726829454443248 
		6 0.00041213202221303621 7 3.6527861806646568e-06 8 1.2440867404142818e-08 
		9 4.8173350195821375e-10 10 1.2420423976584804e-13
		11 0 0.12416840469955746 1 0.29240754541756575 2 0.33321008422419923 
		3 0.12125209096230277 4 0.11370384807875124 5 0.014899015576969678 
		6 0.0003559737851440098 7 3.0262595224250463e-06 8 1.05927410135281e-08 
		9 4.0314971212929261e-10 10 9.670210015769772e-14
		11 0 0.12182043217487154 1 0.2942164535664093 2 0.33574799071084177 
		3 0.12130792903624346 4 0.11233064907397791 5 0.014249702473903043 
		6 0.00032410963061639818 7 2.7233027582004117e-06 8 9.6652056004599143e-09 
		9 3.6508733013695565e-10 10 8.537489872234526e-14
		11 0 0.11958584439338285 1 0.29571799766420576 2 0.33842172182483737 
		3 0.12140526153872559 4 0.11084725830541495 5 0.013709427921005221 
		6 0.00030985228802065106 7 2.6263141264014347e-06 8 9.3931720524698897e-09 
		9 3.5702335176175849e-10 10 8.5771341213217492e-14
		11 0 0.11804398042563494 1 0.29630084098072701 2 0.3409178192814864 
		3 0.12153347559881297 4 0.10952192975854529 5 0.013365819578589795 
		6 0.00031339998884757084 7 2.724252434888665e-06 8 9.7562932612607238e-09 
		9 3.7852949441275539e-10 10 9.8227141540408524e-14
		11 0 0.11951277392278757 1 0.29406957179450116 2 0.34081059215878373 
		3 0.12183614120127974 4 0.10981037959122113 5 0.01361206698147247 
		6 0.00034534081194632579 7 3.1220718959490728e-06 8 1.1024029761828369e-08 
		9 4.4195369457645042e-10 10 1.2855751558955648e-13
		11 0 0.12139853292190542 1 0.2909848797633855 2 0.34132980097923699 
		3 0.12179807036210977 4 0.1098759476522283 5 0.014194771763516403 
		6 0.00041390140489792134 7 4.0806172595971231e-06 8 1.3954889857162797e-08 
		9 5.8037560631894722e-10 10 1.9477982057449573e-13
		11 0 0.12714894591166218 1 0.28425873388363865 2 0.33751643965536626 
		3 0.12284989369132719 4 0.11252975884466808 5 0.015189368845517342 
		6 0.0005012655934479829 7 5.573255047274341e-06 8 1.9493312582176645e-08 
		9 8.2568377446074281e-10 10 3.2876168837392068e-13
		11 0 0.131891296592893 1 0.27885902539049368 2 0.33393471361867882 
		3 0.12380688574884352 4 0.1147425519620171 5 0.016148148184715733 
		6 0.00060931997530208723 7 8.0262653497672637e-06 8 3.0998464439570514e-08 
		9 1.2626647150257548e-09 10 5.7714073911213142e-13
		11 0 0.13673421247841311 1 0.27479602939843678 2 0.32827926291157777 
		3 0.12419197595876631 4 0.11770911213678063 5 0.01752329009911769 
		6 0.00075433739518927334 7 1.1726804360341922e-05 8 5.0830906282866186e-08 
		9 1.9854839108858636e-09 10 9.679137479606793e-13
		11 0 0.13965930166851276 1 0.2723495380583662 2 0.3248258608070137 
		3 0.12418379578159859 4 0.11946285405063162 5 0.018606040912119592 
		6 0.0008963952875852833 7 1.6131960408260876e-05 8 7.839577359722245e-08 
		9 3.0765173962957422e-09 10 1.4731670276708478e-12
		11 0 0.14188951172242661 1 0.27084466523305106 2 0.32192322827150982 
		3 0.12386533357407797 4 0.12087206997271778 5 0.019561085929088565 
		6 0.001023650620231315 7 2.0343372143851916e-05 8 1.0694849446299005e-07 
		9 4.3543124542903501e-09 10 1.9460674154764359e-12
		11 0 0.14324193047265932 1 0.27044943458670168 2 0.31961239497541361 
		3 0.12330775052085081 4 0.12193102461124254 5 0.020320563385761839 
		6 0.0011137004738290982 7 2.3071073200244114e-05 8 1.2479195454360503e-07 
		9 5.1062147721931129e-09 10 2.1715219211811934e-12
		11 0 0.14387506179534301 1 0.27075242517979409 2 0.31796718121511514 
		3 0.12274533015338279 4 0.12267837922258253 5 0.020810198527200487 
		6 0.0011479461096021281 7 2.3350248010025364e-05 8 1.2264167633363464e-07 
		9 4.9052682966813359e-09 10 2.0252026815733247e-12
		11 0 0.14388004318081749 1 0.27162179385952839 2 0.31688269019926441 
		3 0.12231712956993669 4 0.12316101250212025 5 0.020995812419123922 
		6 0.0011202415027291234 7 2.1170735859494855e-05 8 1.0211440813530682e-07 
		9 3.914613468972886e-09 10 1.5986983319752073e-12
		11 0 0.14338723115523805 1 0.27310547075626196 2 0.31614734909012066 
		3 0.1220095443787835 4 0.1234033028917574 5 0.020890317959461602 6 
		0.0010393020719888194 7 1.7405036789136015e-05 8 7.3945455045371003e-08 
		9 2.7130230498468119e-09 10 1.1209554965801251e-12
		11 0 0.14253628243787037 1 0.27482771532596184 2 0.31583003151816497 
		3 0.12186172692527768 4 0.12347233433806189 5 0.020534842181520546 
		6 0.00092375988408524567 7 1.3256816201721007e-05 8 4.876842501544023e-08 
		9 1.803705971664812e-09 10 7.2463943389790137e-13
		11 0 0.13961927449383049 1 0.27809002673154248 2 0.31806162916135944 
		3 0.1217662696909973 4 0.12212342828375997 5 0.019554360310573435 
		6 0.00077547634304709972 7 9.5024690726768476e-06 8 3.1300511446467933e-08 
		9 1.214858035415287e-09 10 4.4762143530604821e-13
		11 0 0.2477924060764764 1 0.35663466551884587 2 0.267520382250098 
		3 0.071209091734582591 4 0.051715529465391395 5 0.0050250327078696123 
		6 0.00010228460991939079 7 6.0653005473428842e-07 8 1.0746029079903944e-09 
		9 3.2153635622874722e-11 10 5.558734478523797e-15
		11 0 0.24069631119325891 1 0.36652386929527153 2 0.27219943529383167 
		3 0.068909201286426511 4 0.047388856198051645 5 0.0042085030338998748 
		6 7.3428617786340912e-05 7 3.9430247944768563e-07 8 7.564104435879178e-10 
		9 2.2580248790157032e-11 10 3.3541340109401873e-15
		11 0 0.23762422829124741 1 0.3717806641833894 2 0.27353882823064707 
		3 0.067872256123578639 4 0.045430056806333836 5 0.0037017951299073309 
		6 5.1928469538167029e-05 7 2.4223081170541226e-07 8 5.1878251757949158e-10 
		9 1.5761744359535211e-11 10 2.195528248451281e-15
		11 0 0.23377802642933834 1 0.3773378975370924 2 0.27544995759347091 
		3 0.066537058918276853 4 0.043465379021129943 5 0.0033885656850448274 
		6 4.2923667336896005e-05 7 1.9070878655302501e-07 8 4.2679018059020103e-10 
		9 1.2731539603719091e-11 10 1.6226435244360696e-15
		11 0 0.23132883841786481 1 0.38103993638968248 2 0.27638732597691845 
		3 0.065757719784625163 4 0.042268185600545807 5 0.0031798932724564082 
		6 3.7933243956021953e-05 7 1.6692186000792729e-07 8 3.8084928566780799e-10 
		9 1.1240204626364749e-11 10 1.3806392065201311e-15
		11 0 0.22876603246124652 1 0.38437243792632497 2 0.27752056020710625 
		3 0.065103006329752633 4 0.041188576386275218 5 0.0030136142961517706 
		6 3.5612861785205491e-05 7 1.5915506888202743e-07 8 3.6545344281632332e-10 
		9 1.0833614136123498e-11 10 1.3669707636891079e-15
		11 0 0.22687344432705922 1 0.38612698926147948 2 0.2789355010863151 
		3 0.064701812040199508 4 0.04040683623667618 5 0.0029190568593746393 
		6 3.6192135250922205e-05 7 1.6766046887857689e-07 8 3.8163022506154676e-10 
		9 1.1544289702790579e-11 10 1.5884110375489647e-15
		11 0 0.22848800027100896 1 0.38310431809892892 2 0.27912888838635247 
		3 0.065189169486814941 4 0.040995651978430074 5 0.0030513740669650827 
		6 4.2392132393083553e-05 7 2.0512169400233448e-07 8 4.4358994883255849e-10 
		9 1.3820221199564818e-11 10 2.1573335013297659e-15
		11 0 0.23121206853122481 1 0.37701010240219457 2 0.28076503793978469 
		3 0.066082479753537759 4 0.041649556271832922 5 0.0032266625250913059 
		6 5.378832122231314e-05 7 3.036226291186965e-07 8 6.1305891530809591e-10 
		9 1.9420183572681373e-11 10 3.4808760514910396e-15
		11 0 0.23949135372156966 1 0.36413250927834612 2 0.2777173935708967 
		3 0.069097417562381247 4 0.04566630543502237 5 0.0038211058593752233 
		6 7.344835052876589e-05 7 4.6527553930719202e-07 8 9.172539231140578e-10 
		9 2.908028629636537e-11 10 6.3508737386322413e-15
		11 0 0.24540270107858392 1 0.3540155529202948 2 0.27583174110805625 
		3 0.071631978860187934 4 0.048711523333727212 5 0.0043093997055193177 
		6 9.6360090566473882e-05 7 7.4123539508856202e-07 8 1.6197570182414644e-09 
		9 4.7899760855791789e-11 10 1.2266629660208413e-14
		11 0 0.25025454039404144 1 0.3461707629457636 2 0.27295026318001109 
		3 0.073580057375814786 4 0.051919101143563365 5 0.0049918001626719881 
		6 0.00013224149060462494 7 1.2302156432020716e-06 8 3.0090207096180974e-09 
		9 8.2842644983867035e-11 10 2.2606180306179855e-14
		11 0 0.25274461763512818 1 0.34087169515258203 2 0.27208718932779108 
		3 0.074854441744453534 4 0.053824499794030263 5 0.0054513435431024085 
		6 0.00016439562189479723 7 1.8119494781392686e-06 8 5.0905191688491644e-09 
		9 1.409833097873922e-10 10 3.7019704083305806e-14
		11 0 0.25484277296919822 1 0.33716824590125688 2 0.27088193864997973 
		3 0.075645668630204596 4 0.055403734007419242 5 0.0058612284262083486 
		6 0.0001940075938600487 7 2.3961819906725447e-06 8 7.4237007319738193e-09 
		9 2.1613006835801547e-10 10 5.1399560655311876e-14
		11 0 0.25575189425123651 1 0.33592868871147946 2 0.26964395292815696 
		3 0.075823880862779386 4 0.056452779074294898 5 0.0061804935966702683 
		6 0.00021551139639992801 7 2.7899458560244984e-06 8 8.9698746159586582e-09 
		9 2.6319301770368521e-10 10 5.8832405190569221e-14
		11 0 0.25619676342608078 1 0.33584291188840282 2 0.26851740238594823 
		3 0.075722620165647681 4 0.057110311701813021 5 0.0063830881372178259 
		6 0.00022405527955220113 7 2.8379334419974588e-06 8 8.8294109927062153e-09 
		9 2.5242971401567932e-10 10 5.473512555773594e-14
		11 0 0.25622667442515573 1 0.33678287275407998 2 0.26744582028081265 
		3 0.075461199841210969 4 0.057409363727861457 5 0.0064535911455629738 
		6 0.0002179367970385929 7 2.5337069416160086e-06 8 7.1275789023004885e-09 
		9 1.9371520323436768e-10 10 4.1991936852138819e-14
		11 0 0.25584526705223809 1 0.33939732522020805 2 0.26612218382656389 
		3 0.074850947120632297 4 0.057197848999653772 5 0.0063851350816554464 
		6 0.00019927509380321284 7 2.0126228030544484e-06 8 4.85763977176502e-09 
		9 1.2477447879910252e-10 10 2.8031918491780707e-14
		2 0 0.25501601329529883 1 0.34285553320289835;
	setAttr ".wl[318:363].w"
		9 2 0.264991480500674 3 0.074127838334429458 4 0.0566383457850895 
		5 0.006196746326680133 6 0.00017258444596040244 7 1.4550777451359887e-06 
		8 2.9542362792171686e-09 9 7.6971162134471992e-11 10 1.6954707946682129e-14
		11 0 0.25188526243371184 1 0.3487519217940549 2 0.2659799163645159 
		3 0.073027388864524936 4 0.054608375999761691 5 0.0056141422711016705 
		6 0.00013207331432482411 7 9.1722055496689086e-07 8 1.6892533415093514e-09 
		9 4.8186167343998963e-11 10 9.6952260087025403e-15
		11 0 0.41031656838626474 1 0.3761606348445849 2 0.16862700135385428 
		3 0.029001530842590849 4 0.014988387273392762 5 0.00089513535619021353 
		6 1.070768528772666e-05 7 3.4222852373772281e-08 8 3.4199683241516189e-11 
		9 7.8256901625734404e-13 10 7.0702114919760972e-17
		11 0 0.40774631392952781 1 0.38399183822734106 2 0.16793968001899726 
		3 0.026917990121448795 4 0.012750930118634183 5 0.00064687577300278395 
		6 6.3531979058576699e-06 7 1.8590510833030106e-08 8 2.2107685534641193e-11 
		9 5.236946005155394e-13 10 4.1101483177298405e-17
		11 0 0.40735095825128087 1 0.3900121160612266 2 0.16511604224636189 
		3 0.025349400990927723 4 0.011621493870645889 5 0.00054575898799465075 
		6 4.2199462857468282e-06 7 9.6321866241602117e-09 8 1.2776489962372759e-11 
		9 3.135858007822235e-13 10 2.4809595077312453e-17
		11 0 0.40652923956090203 1 0.3934045633426746 2 0.16419599046305369 
		3 0.024492630106791386 4 0.010892554632302773 5 0.00048168198824778756 
		6 3.3326884598380697e-06 7 7.2070802890559459e-09 8 1.0240967356230175e-11 
		9 2.4667581212174185e-13 10 1.7600920044347898e-17
		11 0 0.40622053859341567 1 0.39664836015957544 2 0.16252396034398994 
		3 0.023759462704971871 4 0.010400658808528574 5 0.0004441475173159134 
		6 2.8657269481629614e-06 7 6.1360336568449546e-09 8 9.0068025387077316e-12 
		9 2.1400099721860122e-13 10 1.4437933477194747e-17
		11 0 0.40434731084476311 1 0.40012169873880948 2 0.16191730019579001 
		3 0.023202198065610507 4 0.009993339017602583 5 0.00041550166254327353 
		6 2.6456791953151331e-06 7 5.7869288440672593e-09 8 8.5533940853742675e-12 
		9 2.0335055374458984e-13 10 1.3891967061814992e-17
		11 0 0.40168257143096447 1 0.40240703611430312 2 0.16284435136091452 
		3 0.022935726648161958 4 0.0097288437278389289 5 0.00039878739444106873 
		6 2.6771482366320969e-06 7 6.166018160327912e-09 8 8.9059310297482615e-12 
		9 2.1507473838006226e-13 10 1.5890643116245168e-17
		11 0 0.40150260612195149 1 0.40118932404169311 2 0.16387621109460501 
		3 0.02311903362555659 4 0.0098866292099731076 5 0.0004228744691416975 
		6 3.3131252919512706e-06 7 8.3008489044883937e-09 8 1.0676807220541362e-11 
		9 2.6136742705193683e-13 10 2.1616235828049451e-17
		11 0 0.40339027560532958 1 0.39420156017933233 2 0.16719404785474784 
		3 0.024271941491430752 4 0.010475419117598169 5 0.00046237513132920245 
		6 4.3667564355766201e-06 7 1.3846661966370909e-08 8 1.672760362468093e-11 
		9 4.0692162585472403e-13 10 3.6268774592349318e-17
		11 0 0.40648664124266681 1 0.38377524442173583 2 0.16991255138873856 
		3 0.026684748718028964 4 0.012491382059133666 5 0.00064206183266074101 
		6 7.3445378026138586e-06 7 2.5770911423638034e-08 8 2.7671929719758129e-11 
		9 6.4938225794706321e-13 10 7.2051635345745923e-17
		11 0 0.40810829922239611 1 0.37503374101875853 2 0.17298373800908456 
		3 0.028923388939947739 4 0.014153266506354165 5 0.00078688376656820154 
		6 1.0636135038438852e-05 7 4.6345491592376075e-08 8 5.5207499000222149e-11 
		9 1.152922390349358e-12 10 1.5334507325416137e-16
		11 0 0.40946705803742783 1 0.36703274828169669 2 0.17517652110221599 
		3 0.031186977206117468 4 0.016118349469230537 5 0.0010015311387574018 
		6 1.6722033325191958e-05 7 9.2606047098884559e-08 8 1.2292569743499769e-10 
		9 2.2558101605247056e-12 10 3.1225936662442616e-16
		11 0 0.40933915657659226 1 0.36049693189801602 2 0.17839717536407038 
		3 0.033089908131712496 4 0.017511979885654637 5 0.0011428646556087077 
		6 2.1836650888193155e-05 7 1.4660208580155646e-07 8 2.3107045560433143e-10 
		9 4.3004816919524091e-12 10 5.5477644102397011e-16
		11 0 0.41027328609534996 1 0.35573566562050679 2 0.1794875442202625 
		3 0.034437672726862517 4 0.018754432586769367 5 0.0012842717420446658 
		6 2.6922502021186043e-05 7 2.0413561741900749e-07 8 3.6328379540747792e-10 
		9 7.2809973665043037e-12 10 8.1834441601962668e-16
		11 0 0.40961826466367279 1 0.35485618647299622 2 0.17982907319650623 
		3 0.034908798288161021 4 0.019378433801160094 5 0.001378436545295472 
		6 3.056244517416001e-05 7 2.4412159417903042e-07 8 4.5616257536585635e-10 
		9 9.27631365463428e-12 10 9.6560571499797786e-16
		11 0 0.40957419867828287 1 0.35474396897885208 2 0.17950681449733416 
		3 0.035002854067407288 4 0.019705489707216244 5 0.0014343980505536311 
		6 3.2026186177771999e-05 7 2.4937566026189121e-07 8 4.4962974688590271e-10 
		9 8.8849563049589745e-12 10 8.9818897130084691e-16
		11 0 0.40975909557215251 1 0.35564373383188436 2 0.1785962505571046 
		3 0.034785215409386158 4 0.019738698968689287 5 0.0014458150304262924 
		6 3.0971398002442885e-05 7 2.1887519941060453e-07 8 3.5064042142181403e-10 
		9 6.5138501652806729e-12 10 6.7034682820732702e-16
		11 0 0.41038965854214804 1 0.35934063137220967 2 0.17621335037356692 
		3 0.03365627148973787 4 0.018994479737926531 5 0.0013780368918047288 
		6 2.7404481397529448e-05 7 1.6688401785663373e-07 8 2.2334596729563612e-10 
		9 3.844607173262916e-12 10 4.2673226182442965e-16
		11 0 0.41024760146911493 1 0.36474108357800494 2 0.1737237386355491 
		3 0.032186299703096125 4 0.017827323185910404 5 0.0012515555759425683 
		6 2.2284921014020599e-05 7 1.1280505237019331e-07 8 1.2412959701195295e-10 
		9 2.1858572628816285e-12 10 2.430054189605851e-16
		11 0 0.40960948942578962 1 0.37012608617216319 2 0.17175658755858642 
		3 0.030823517811403741 4 0.016589643694800572 5 0.0010791049788991948 
		6 1.5511021213816373e-05 7 5.9277561120943618e-08 8 5.8368220512737798e-11 
		9 1.2140468137618122e-12 10 1.2764434777628679e-16
		11 0 0.61040657753084104 1 0.30963742773444725 2 0.070353350946170137 
		3 0.0069992241758505781 4 0.0025126093655765654 5 9.0148839871877101e-05 
		6 6.6030515502133233e-07 7 1.1014894516357043e-09 8 5.8741396388426786e-13 
		9 1.0638656928339558e-14 10 5.4450223788488514e-19
		11 0 0.61458363204915867 1 0.30878255818718464 2 0.068122969512947398 
		3 0.0063730724086949499 4 0.002080350919969956 5 5.7119563454780426e-05 
		6 2.9690452727818021e-07 7 4.537329160264477e-10 8 3.2319219878762996e-13 
		9 6.3375428426316427e-15 10 2.8881493068343648e-19
		11 0 0.62080493975960482 1 0.30782713135796769 2 0.063968972243896222 
		3 0.0056020463660454191 4 0.0017521881627973275 5 4.4535372648419548e-05 
		6 1.8653365766326996e-07 7 2.0322878950466997e-10 8 1.5060656091638017e-13 
		9 3.0123937986059989e-15 10 1.4440421216409361e-19
		11 0 0.6237984801791977 1 0.30712180867348698 2 0.062143514859885327 
		3 0.0052861193330471356 4 0.0016116745294505867 5 3.8262041349875063e-05 
		6 1.4024065608604599e-07 7 1.4280695855124669e-10 8 1.1700724577086517e-13 
		9 2.2883363407960607e-15 10 9.625834727405513e-20
		11 0 0.62813572127838457 1 0.30739452418383906 2 0.058333072812459398 
		3 0.0046944132279591782 4 0.0014087878834748691 5 3.3363360074307297e-05 
		6 1.1713635965628169e-07 7 1.1734511335062514e-10 8 1.0180783733249033e-13 
		9 1.96256424097255e-15 10 7.6358559412200941e-20
		11 0 0.62764166567061441 1 0.30876102347986412 2 0.057681253702305806 
		3 0.0045432023069072736 4 0.0013417970581641565 5 3.095038282730403e-05 
		6 1.0728917185600426e-07 7 1.1004571354354887e-10 8 9.7325193213537277e-14 
		9 1.8783509379684048e-15 10 7.3102641936880591e-20
		11 0 0.62278444155046642 1 0.31061181707922952 2 0.0603645954347252 
		3 0.0048118769588121248 4 0.0013964564143433204 5 3.0702874524058379e-05 
		6 1.0956737113661912e-07 7 1.2042214324756713e-10 8 1.0399413543137461e-13 
		9 2.041495306951678e-15 10 8.609517731960457e-20
		11 0 0.62053305143841342 1 0.31168657712960035 2 0.061446068433497147 
		3 0.0048825061265109094 4 0.001419058620143927 5 3.2597543309298707e-05 
		6 1.4052248554369608e-07 7 1.8589972890357089e-10 8 1.3702843551097263e-13 
		9 2.6675002740605365e-15 10 1.2562451120468959e-19
		11 0 0.61806760940722261 1 0.31143870398665502 2 0.063636549697530964 
		3 0.0052530211947532345 4 0.001566027280759939 5 3.7892771806872681e-05 
		6 1.9531798070735452e-07 7 3.4303133977688408e-10 8 2.5441439392161108e-13 
		9 5.0193153664318548e-15 10 2.4239321778512806e-19
		11 0 0.6125298891919686 1 0.31109399382736563 2 0.068185569563898332 
		3 0.0061323537164784782 4 0.0019964296870854693 5 6.1329419340105739e-05 
		6 4.3373874468349525e-07 7 8.5462528085845325e-10 8 4.8485468158014682e-13 
		9 8.6091761759516154e-15 10 5.01196345422835e-19
		11 0 0.60653760333899542 1 0.31059221675234805 2 0.073213147638945181 
		3 0.0071372795308002855 4 0.0024367872212900008 5 8.2259659662008733e-05 
		6 7.0409280873727645e-07 7 1.7640311611409976e-09 8 1.1029440580152045e-12 
		9 1.6234091678358885e-14 10 1.122884599297359e-18
		11 0 0.60102804780256169 1 0.31045429384247758 2 0.077334638530732039 
		3 0.0081080784260002727 4 0.0029573380615640394 5 0.00011630614141331562 
		6 1.2927775755680065e-06 7 4.4144764875077211e-09 8 3.1615035865299916e-12 
		9 3.7471777753346165e-14 10 2.4207775477216906e-18
		11 0 0.59503461143164271 1 0.30826962622457699 2 0.083382369787190672 
		3 0.0095548641021351698 4 0.0036109362999180014 5 0.00014578539709594947 
		6 1.7992540873091381e-06 7 7.496673656982834e-09 8 6.5991727317640514e-12 
		9 8.0433708209507351e-14 10 4.519945742501987e-18
		11 0 0.59251154684393514 1 0.30769009144188358 2 0.08533969809994095 
		3 0.01023498208349659 4 0.004045352829668029 5 0.00017592848546566737 
		6 2.3890630183141836e-06 7 1.1141241279913553e-08 8 1.1198915548098531e-11 
		9 1.5164366283832512e-13 10 6.9998041960429019e-18
		11 0 0.58793913146859988 1 0.31012034125882343 2 0.086967633174234102 
		3 0.010537900094686111 4 0.0042401853319557151 5 0.00019202467829290695 
		6 2.770297039129939e-06 7 1.3681551728368042e-08 8 1.4614184064827515e-11 
		9 2.0287583918848544e-13 10 8.5429947154284718e-18
		11 0 0.58718140257023055 1 0.31050966405231367 2 0.087163849371884622 
		3 0.010612440041290791 4 0.0043288269268892962 5 0.00020088017503538171 
		6 2.9228026970543712e-06 7 1.4045026628058217e-08 8 1.4437220034188761e-11 
		9 1.9470747305918083e-13 10 8.1020349178603763e-18
		11 0 0.58816642859163848 1 0.31048066271114488 2 0.086363899923298917 
		3 0.010482780996275826 4 0.0043027108251306127 5 0.00020070404134766746 
		6 2.8007706347271133e-06 7 1.2129502454427831e-08 8 1.0889526734903368e-11 
		9 1.3670729917394698e-13 10 6.0848153686969684e-18
		11 0 0.59400904791681675 1 0.3102947220863323 2 0.082240523558270384 
		3 0.0094910740179663302 4 0.0037900146100165446 5 0.0001723368813775558 
		6 2.2722474809399151e-06 7 8.6752055147507984e-09 8 6.4598325162890141e-12 
		9 7.3769408582583248e-14 10 3.8583641283096261e-18
		11 0 0.59840557728634602 1 0.31106450230446786 2 0.078503852383964179 
		3 0.0085886442040489404 4 0.003296216086602315 5 0.00013958520944719081 
		6 1.6173245630487747e-06 7 5.1972941040393194e-09 8 3.2276814490191555e-12 
		9 3.8627612278818554e-14 10 2.1519278760222217e-18
		11 0 0.60209579435840499 1 0.31060582997865149 2 0.076113344705435307 
		3 0.0080657249008087833 4 0.0030015530643062102 5 0.00011668638260028778 
		6 1.0642903794616529e-06 7 2.3182374245085679e-09 8 1.1583053533097921e-12 
		9 1.7834080842369081e-14 10 1.0643830489155816e-18
		11 0 0.75614136528078757 1 0.21695182187792703 2 0.025231002174713517 
		3 0.00134868580350561 4 0.00032088701114224501 5 6.2100867424806815e-06 
		6 2.7740271371686725e-08 7 2.4904370712836003e-11 8 5.7292851770171549e-15 
		9 8.1380384144489095e-17 10 2.4744393012435879e-21
		11 0 0.76221805084694105 1 0.21231779083657673 2 0.023959040402578721 
		3 0.0012284040071901619 4 0.00027283010939182611 5 3.8746130724281558e-06 
		6 9.1776711506119893e-09 7 6.5753603386372018e-12 8 2.4706943052320836e-15 
		9 3.9878387067666064e-17 10 1.15045030846774e-21
		11 0 0.76828595113882492 1 0.20815879675009455 2 0.022280187023197146 
		3 0.0010533429737095239 4 0.00021897281710636277 5 2.7440567759172208e-06 
		6 5.2375949453500574e-09 7 2.6956410930477427e-12 8 9.3302418105719762e-16 
		9 1.4382848139026934e-17 10 4.2092230656951304e-22
		7 0 0.77245247845506038 1 0.20509685796266827 2 0.021278126077131199 
		3 0.00097283985196933923 4 0.00019737932789086747 5 2.314567575225166e-06 
		6 3.7559292144564689e-09;
	setAttr ".wl[363:381].w"
		4 7 1.7747959531227671e-12 8 7.0110733424101252e-16 9 1.0507065738213803e-17 
		10 2.6021441195990216e-22
		11 0 0.77543473823261388 1 0.20364666137309809 2 0.01994132079186731 
		3 0.00082114095016349187 4 0.00015443068811605071 5 1.7050622445926703e-06 
		6 2.9004892038449315e-09 7 1.4067072265030803e-12 8 6.0346873366067733e-16 
		9 8.9411863866322287e-18 10 2.0052928926479671e-22
		11 0 0.77568920584128598 1 0.20379797332304558 2 0.019580207583454794 
		3 0.00078550874269132703 4 0.00014553102388099352 5 1.5708264414384979e-06 
		6 2.6578817294502946e-09 7 1.3176704952336275e-12 8 5.8554080045833085e-16 
		9 8.7599518057997615e-18 10 1.9528099995132231e-22
		11 0 0.77331071676636032 1 0.20532314646425256 2 0.020331899571037763 
		3 0.00086519403599439519 4 0.00016723576985037421 5 1.8044976951574518e-06 
		6 2.8933211255817777e-09 7 1.4876152717419088e-12 8 6.5182334035186115e-16 
		9 1.0035662687791198e-17 10 2.4411365547948154e-22
		11 0 0.77031473020371999 1 0.20774532825042741 2 0.020883414903722919 
		3 0.00088424761934510494 4 0.0001703798651938724 5 1.8954021874844568e-06 
		6 3.7528340518419705e-09 7 2.5682416763746725e-12 8 1.0069182931567122e-15 
		9 1.4977374272457305e-17 10 3.9862632528138264e-22
		11 0 0.76604814745046945 1 0.2109170655222018 2 0.021889598804562364 
		3 0.00095371688952102657 4 0.00018914620572842738 5 2.3193946077002665e-06 
		6 5.7277268488970678e-09 7 5.1802169052120094e-12 8 2.1962051137036893e-15 
		9 3.5832079665472184e-17 10 1.0030267984441889e-21
		11 0 0.75999050379177913 1 0.21480405644874689 2 0.023812735169382863 
		3 0.0011412049857319282 4 0.0002473865430024517 5 4.0956119874325397e-06 
		6 1.7429407580330304e-08 7 1.9955937184627303e-11 8 5.5463763621578626e-15 
		9 7.3972303732882706e-17 10 2.3870692961155632e-21
		11 0 0.75346664388698492 1 0.21880315091006933 2 0.026013910406247565 
		3 0.0013872755854020991 4 0.00032290602200439638 5 6.0806204272249198e-06 
		6 3.251924305891761e-08 7 4.9605857086461871e-11 8 1.554314298772542e-14 
		9 1.5816064608950501e-16 10 6.1334149797829628e-21
		11 0 0.7469968704534069 1 0.22292972493495603 2 0.028043044025744941 
		3 0.0016172017511111054 4 0.00040377814027607801 5 9.3099307760950213e-06 
		6 7.0602638757849984e-08 7 1.6102554791831087e-10 8 6.4094331942707895e-14 
		9 4.9445944638471008e-16 10 1.5586924495988997e-20
		11 0 0.74090753806524423 1 0.22579700374456621 2 0.030682373258009422 
		3 0.0020387938651185559 4 0.00056026906065062879 5 1.3910713685540764e-05 
		6 1.1099282574898477e-07 7 2.9974587907607309e-10 8 1.5247954451109809e-13 
		9 1.2474204086686065e-15 10 3.1970599274544398e-20
		11 0 0.73614501484888228 1 0.22890094503545372 2 0.032061902206308397 
		3 0.0022278447841847476 4 0.00064597609025399225 5 1.8149808151678849e-05 
		6 1.6672531196012741e-07 7 5.0116424369207395e-10 8 2.8621068847132283e-13 
		9 2.6621453462906854e-15 10 5.2734119654119028e-20
		11 0 0.72541562206259291 1 0.23646386512325243 2 0.034926518754534286 
		3 0.0024609524387939627 4 0.00071255703201836545 5 2.028697484149427e-05 
		6 1.9698268175347444e-07 7 6.3089369341702612e-10 8 3.8742373652074681e-13 
		9 3.7256506446811542e-15 10 6.6338903994279312e-20
		11 0 0.72396026559769966 1 0.23751916807419335 2 0.035274634077066602 
		3 0.0024946530054954178 4 0.00072983733478421662 5 2.1233488091582964e-05 
		6 2.0777591094048939e-07 7 6.4637587025357522e-10 8 3.7893154921947751e-13 
		9 3.5177388130171e-15 10 6.2790605635301337e-20
		11 0 0.72600979472416238 1 0.23621795759486794 2 0.034603650253932944 
		3 0.0024323081222830767 4 0.00071522268484349252 5 2.0871038977642552e-05 
		6 1.9503851569933244e-07 7 5.4214464691158489e-10 8 2.6983744970685382e-13 
		9 2.2822156934081113e-15 10 4.5474216943799404e-20
		11 0 0.73784027592394696 1 0.22878886473178595 2 0.030811857911723937 
		3 0.0019906033375584765 4 0.00055339953375633957 5 1.4868446836872583e-05 
		6 1.2978217192015143e-07 7 3.3207821286876064e-10 8 1.4030417610295306e-13 
		9 1.0552431504695385e-15 10 2.6795075282413841e-20
		11 0 0.74352901539120342 1 0.2253790424511069 2 0.028885319078497031 
		3 0.0017412276320807087 4 0.00045465193757363736 5 1.0667558599946451e-05 
		6 7.5793632520514331e-08 7 1.5724836194644967e-10 8 5.7039774328635142e-14 
		9 4.7086096003683127e-16 10 1.3617560928041863e-20
		11 0 0.74900042702585135 1 0.22145446098141866 2 0.027511813286776165 
		3 0.0016142780834255219 4 0.00041019780285525515 5 8.7743487672803734e-06 
		6 4.840791274521216e-08 7 6.2978410037008938e-11 8 1.438103433432799e-14 
		9 1.5548377418499023e-16 10 5.4547206105804823e-21
		11 0 2.8026279982680011e-12 1 1.2315057644997313e-10 2 3.0823531240081232e-09 
		3 1.1358682306490918e-08 4 2.7907359678034551e-07 5 6.4031416450980635e-06 
		6 0.00013986713403718696 7 0.0028397010952440865 8 0.01027080910508517 
		9 0.23730557317665124 10 0.74943735270675171
		11 0 0.83443890152341182 1 0.15346948462263618 2 0.011623767878232313 
		3 0.00039624829363852493 4 7.0646265410767272e-05 5 9.46399019933542e-07 
		6 5.0080125602095255e-09 7 9.6347224935722256e-12 8 3.0780770045065721e-15 
		9 1.8484746658605876e-17 10 1.60912891487185e-22;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.40000000596046448 0 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.80000001192092896 0 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.2000000476837158 0 0 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6000000238418579 0 0 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0 0 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.4000000953674316 0 0 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.7999999523162842 0 0 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.2000000476837158 0 0 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.5999999046325684 0 0 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4 0 0 1;
	setAttr ".gm" -type "matrix" 0 0.25 0 0 -2 0 0 0 0 0 0.25 0 2 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "spineArm_L:tweak1";
	rename -uid "11DFD302-4351-D0C4-1A51-5E891AC71A2D";
createNode objectSet -n "spineArm_L:skinCluster1Set";
	rename -uid "029EA1E6-4BCB-22AE-D2B0-3C9222C4419F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "spineArm_L:skinCluster1GroupId";
	rename -uid "6841F570-4C27-89A0-0CE5-9D9520539A8A";
	setAttr ".ihi" 0;
createNode groupParts -n "spineArm_L:skinCluster1GroupParts";
	rename -uid "7B892072-4447-8C85-D692-B2BC7E892E23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "spineArm_L:tweakSet1";
	rename -uid "54627A08-4A1A-6510-F0F5-3BAE160832F4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "spineArm_L:groupId2";
	rename -uid "F9BC8D22-4068-A4BF-AAC6-DD8A01E0FA60";
	setAttr ".ihi" 0;
createNode groupParts -n "spineArm_L:groupParts2";
	rename -uid "99CBA32C-45C3-3A56-6274-7EA4FFBD4310";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "spineArm_L:bindPose1";
	rename -uid "75828193-43BE-9610-1DA3-40A9ADFA05E4";
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
createNode ngst2SkinLayerData -n "spineArm_L:skinCluster2";
	rename -uid "B496CFF6-45A7-E157-B72E-07A1784EFA5D";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 14 26755 {
"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"};
createNode animCurveTA -n "spineArm_L:hand_FK_CON_rotateZ";
	rename -uid "6E068090-46F8-E37D-A6DE-78B48CD1C4B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:hand_FK_CON_rotateY";
	rename -uid "5902B29A-4E10-79FD-ACB7-5F964A60B1EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 -38.123911829374443 15 0 20 0 25 0
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:hand_FK_CON_rotateX";
	rename -uid "EA34784C-4596-C9BE-DCBB-CFB3500A4C7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 -82.145280036407712 25 73.70439434955837
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:radius_FK_CON_rotateZ";
	rename -uid "C9A7DEC3-42BA-B5B9-635C-6C9FC14C4D46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 32.574739656094195 25 -36.546579680893622
		 30 0 35 111.71940012035711 40 0;
createNode animCurveTA -n "spineArm_L:radius_FK_CON_rotateY";
	rename -uid "F86A644A-4188-D2CB-4385-ECAC6488564B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 -84.823127403810531 15 0 20 -36.252735187497201
		 25 35.927627889499718 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:radius_FK_CON_rotateX";
	rename -uid "1462EA05-4D19-0BF5-F387-1EBD94F02FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 -47.213761884398629 25 40.67387464399966
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:humerus_FK_CON_rotateZ";
	rename -uid "602A184C-497F-61DF-6809-0DBE224ED32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 36.454447064108521 25 -34.852064422328347
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:humerus_FK_CON_rotateY";
	rename -uid "8B2645D4-4EE0-5F41-45A1-0DB6F999C2D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 14.336899090096518 15 0 20 0 25 0
		 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:humerus_FK_CON_rotateX";
	rename -uid "97C99D9E-406F-9F9B-DA7D-29A250FEBCA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:upVector_IK_CON_translateZ";
	rename -uid "790239A7-4EE9-88ED-8D2B-7686FF317941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:upVector_IK_CON_translateY";
	rename -uid "184CB7DF-410F-E22A-9C45-74BCE5208EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:upVector_IK_CON_translateX";
	rename -uid "B06BE230-4F1E-E70B-AE34-949FE67CF83F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:hand_IK_CON_rotateZ";
	rename -uid "90DA9AA0-4F61-A070-9549-96812658679F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:hand_IK_CON_rotateY";
	rename -uid "A7569155-4E55-09B3-DD39-F1A887F7BD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:hand_IK_CON_rotateX";
	rename -uid "F4AD72A2-492D-1E95-E5A6-ABA37280C9F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:hand_IK_CON_translateZ";
	rename -uid "F33D81E8-4177-66FC-AC3C-A493C4329745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:hand_IK_CON_translateY";
	rename -uid "E188D644-43DB-4A53-59A4-2F8C8CA46293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:hand_IK_CON_translateX";
	rename -uid "F35FD09A-4CD2-038A-1945-6E8FA4388F18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode character -n "spineArm_L:character";
	rename -uid "B9BA6388-4141-0745-8A2A-978880D4F62B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 97 ".dnsm";
	setAttr -s 28 ".uv";
	setAttr -s 28 ".uv";
	setAttr -s 36 ".lv";
	setAttr -s 36 ".lv";
	setAttr -s 33 ".av";
	setAttr -s 33 ".av";
	setAttr ".am" -type "characterMapping" 97 "spineArm_L:handSpine_IK_CON.scaleZ" 
		0 1 "spineArm_L:handSpine_IK_CON.scaleY" 0 2 "spineArm_L:handSpine_IK_CON.scaleX" 
		0 3 "spineArm_L:handSpine_IK_CON.rotateZ" 2 1 "spineArm_L:handSpine_IK_CON.rotateY" 
		2 2 "spineArm_L:handSpine_IK_CON.rotateX" 2 3 "spineArm_L:handSpine_IK_CON.translateZ" 
		1 1 "spineArm_L:handSpine_IK_CON.translateY" 1 2 "spineArm_L:handSpine_IK_CON.translateX" 
		1 3 "spineArm_L:handSpine_IK_CON.visibility" 0 0 "spineArm_L:radiusSpine_IK_CON.scaleZ" 
		0 5 "spineArm_L:radiusSpine_IK_CON.scaleY" 0 6 "spineArm_L:radiusSpine_IK_CON.scaleX" 
		0 7 "spineArm_L:radiusSpine_IK_CON.rotateZ" 2 4 "spineArm_L:radiusSpine_IK_CON.rotateY" 
		2 5 "spineArm_L:radiusSpine_IK_CON.rotateX" 2 6 "spineArm_L:radiusSpine_IK_CON.translateZ" 
		1 4 "spineArm_L:radiusSpine_IK_CON.translateY" 1 5 "spineArm_L:radiusSpine_IK_CON.translateX" 
		1 6 "spineArm_L:radiusSpine_IK_CON.visibility" 0 0 "spineArm_L:humerusSpine_IK_CON.scaleZ" 
		0 9 "spineArm_L:humerusSpine_IK_CON.scaleY" 0 10 "spineArm_L:humerusSpine_IK_CON.scaleX" 
		0 11 "spineArm_L:humerusSpine_IK_CON.rotateZ" 2 7 "spineArm_L:humerusSpine_IK_CON.rotateY" 
		2 8 "spineArm_L:humerusSpine_IK_CON.rotateX" 2 9 "spineArm_L:humerusSpine_IK_CON.translateZ" 
		1 7 "spineArm_L:humerusSpine_IK_CON.translateY" 1 8 "spineArm_L:humerusSpine_IK_CON.translateX" 
		1 9 "spineArm_L:humerusSpine_IK_CON.visibility" 0 0 "spineArm_L:tangentHumerus_02_IK_CON.scaleZ" 
		0 13 "spineArm_L:tangentHumerus_02_IK_CON.scaleY" 0 14 "spineArm_L:tangentHumerus_02_IK_CON.scaleX" 
		0 15 "spineArm_L:tangentHumerus_02_IK_CON.rotateZ" 2 10 "spineArm_L:tangentHumerus_02_IK_CON.rotateY" 
		2 11 "spineArm_L:tangentHumerus_02_IK_CON.rotateX" 2 12 "spineArm_L:tangentHumerus_02_IK_CON.translateZ" 
		1 10 "spineArm_L:tangentHumerus_02_IK_CON.translateY" 1 11 "spineArm_L:tangentHumerus_02_IK_CON.translateX" 
		1 12 "spineArm_L:tangentHumerus_02_IK_CON.visibility" 0 0 "spineArm_L:tangentHumerus_01_IK_CON.scaleZ" 
		0 17 "spineArm_L:tangentHumerus_01_IK_CON.scaleY" 0 18 "spineArm_L:tangentHumerus_01_IK_CON.scaleX" 
		0 19 "spineArm_L:tangentHumerus_01_IK_CON.rotateZ" 2 13 "spineArm_L:tangentHumerus_01_IK_CON.rotateY" 
		2 14 "spineArm_L:tangentHumerus_01_IK_CON.rotateX" 2 15 "spineArm_L:tangentHumerus_01_IK_CON.translateZ" 
		1 13 "spineArm_L:tangentHumerus_01_IK_CON.translateY" 1 14 "spineArm_L:tangentHumerus_01_IK_CON.translateX" 
		1 15 "spineArm_L:tangentHumerus_01_IK_CON.visibility" 0 0 "spineArm_L:tangentRadius_02_IK_CON.scaleZ" 
		0 21 "spineArm_L:tangentRadius_02_IK_CON.scaleY" 0 22 "spineArm_L:tangentRadius_02_IK_CON.scaleX" 
		0 23 "spineArm_L:tangentRadius_02_IK_CON.rotateZ" 2 16 "spineArm_L:tangentRadius_02_IK_CON.rotateY" 
		2 17 "spineArm_L:tangentRadius_02_IK_CON.rotateX" 2 18 "spineArm_L:tangentRadius_02_IK_CON.translateZ" 
		1 16 "spineArm_L:tangentRadius_02_IK_CON.translateY" 1 17 "spineArm_L:tangentRadius_02_IK_CON.translateX" 
		1 18 "spineArm_L:tangentRadius_02_IK_CON.visibility" 0 0 "spineArm_L:tangentRadius_01_IK_CON.scaleZ" 
		0 25 "spineArm_L:tangentRadius_01_IK_CON.scaleY" 0 26 "spineArm_L:tangentRadius_01_IK_CON.scaleX" 
		0 27 "spineArm_L:tangentRadius_01_IK_CON.rotateZ" 2 19 "spineArm_L:tangentRadius_01_IK_CON.rotateY" 
		2 20 "spineArm_L:tangentRadius_01_IK_CON.rotateX" 2 21 "spineArm_L:tangentRadius_01_IK_CON.translateZ" 
		1 19 "spineArm_L:tangentRadius_01_IK_CON.translateY" 1 20 "spineArm_L:tangentRadius_01_IK_CON.translateX" 
		1 21 "spineArm_L:tangentRadius_01_IK_CON.visibility" 0 0 "spineArm_L:hand_IK_CON.rotateZ" 
		2 22 "spineArm_L:hand_IK_CON.rotateY" 2 23 "spineArm_L:hand_IK_CON.rotateX" 
		2 24 "spineArm_L:hand_IK_CON.translateZ" 1 22 "spineArm_L:hand_IK_CON.translateY" 
		1 23 "spineArm_L:hand_IK_CON.translateX" 1 24 "spineArm_L:upVector_IK_CON.translateZ" 
		1 25 "spineArm_L:upVector_IK_CON.translateY" 1 26 "spineArm_L:upVector_IK_CON.translateX" 
		1 27 "spineArm_L:hand_FK_CON.rotateZ" 2 25 "spineArm_L:hand_FK_CON.rotateY" 
		2 26 "spineArm_L:hand_FK_CON.rotateX" 2 27 "spineArm_L:hand_FK_CON.translateZ" 
		1 28 "spineArm_L:hand_FK_CON.translateY" 1 29 "spineArm_L:hand_FK_CON.translateX" 
		1 30 "spineArm_L:radius_FK_CON.rotateZ" 2 28 "spineArm_L:radius_FK_CON.rotateY" 
		2 29 "spineArm_L:radius_FK_CON.rotateX" 2 30 "spineArm_L:radius_FK_CON.translateZ" 
		1 31 "spineArm_L:radius_FK_CON.translateY" 1 32 "spineArm_L:radius_FK_CON.translateX" 
		1 33 "spineArm_L:humerus_FK_CON.rotateZ" 2 31 "spineArm_L:humerus_FK_CON.rotateY" 
		2 32 "spineArm_L:humerus_FK_CON.rotateX" 2 33 "spineArm_L:humerus_FK_CON.translateZ" 
		1 34 "spineArm_L:humerus_FK_CON.translateY" 1 35 "spineArm_L:humerus_FK_CON.translateX" 
		1 36  ;
	setAttr ".aal" -type "attributeAlias" {"spineArm_L:tangentHumerus_02_IK_CON_rotateZ"
		,"angularValues[10]","spineArm_L:tangentHumerus_02_IK_CON_rotateY","angularValues[11]"
		,"spineArm_L:tangentHumerus_02_IK_CON_rotateX","angularValues[12]","spineArm_L:tangentHumerus_01_IK_CON_rotateZ"
		,"angularValues[13]","spineArm_L:tangentHumerus_01_IK_CON_rotateY","angularValues[14]"
		,"spineArm_L:tangentHumerus_01_IK_CON_rotateX","angularValues[15]","spineArm_L:tangentRadius_02_IK_CON_rotateZ"
		,"angularValues[16]","spineArm_L:tangentRadius_02_IK_CON_rotateY","angularValues[17]"
		,"spineArm_L:tangentRadius_02_IK_CON_rotateX","angularValues[18]","spineArm_L:tangentRadius_01_IK_CON_rotateZ"
		,"angularValues[19]","spineArm_L:handSpine_IK_CON_rotateZ","angularValues[1]","spineArm_L:tangentRadius_01_IK_CON_rotateY"
		,"angularValues[20]","spineArm_L:tangentRadius_01_IK_CON_rotateX","angularValues[21]"
		,"spineArm_L:hand_IK_CON_rotateZ","angularValues[22]","spineArm_L:hand_IK_CON_rotateY"
		,"angularValues[23]","spineArm_L:hand_IK_CON_rotateX","angularValues[24]","spineArm_L:hand_FK_CON_rotateZ"
		,"angularValues[25]","spineArm_L:hand_FK_CON_rotateY","angularValues[26]","spineArm_L:hand_FK_CON_rotateX"
		,"angularValues[27]","spineArm_L:radius_FK_CON_rotateZ","angularValues[28]","spineArm_L:radius_FK_CON_rotateY"
		,"angularValues[29]","spineArm_L:handSpine_IK_CON_rotateY","angularValues[2]","spineArm_L:radius_FK_CON_rotateX"
		,"angularValues[30]","spineArm_L:humerus_FK_CON_rotateZ","angularValues[31]","spineArm_L:humerus_FK_CON_rotateY"
		,"angularValues[32]","spineArm_L:humerus_FK_CON_rotateX","angularValues[33]","spineArm_L:handSpine_IK_CON_rotateX"
		,"angularValues[3]","spineArm_L:radiusSpine_IK_CON_rotateZ","angularValues[4]","spineArm_L:radiusSpine_IK_CON_rotateY"
		,"angularValues[5]","spineArm_L:radiusSpine_IK_CON_rotateX","angularValues[6]","spineArm_L:humerusSpine_IK_CON_rotateZ"
		,"angularValues[7]","spineArm_L:humerusSpine_IK_CON_rotateY","angularValues[8]","spineArm_L:humerusSpine_IK_CON_rotateX"
		,"angularValues[9]","spineArm_L:tangentHumerus_02_IK_CON_translateZ","linearValues[10]"
		,"spineArm_L:tangentHumerus_02_IK_CON_translateY","linearValues[11]","spineArm_L:tangentHumerus_02_IK_CON_translateX"
		,"linearValues[12]","spineArm_L:tangentHumerus_01_IK_CON_translateZ","linearValues[13]"
		,"spineArm_L:tangentHumerus_01_IK_CON_translateY","linearValues[14]","spineArm_L:tangentHumerus_01_IK_CON_translateX"
		,"linearValues[15]","spineArm_L:tangentRadius_02_IK_CON_translateZ","linearValues[16]"
		,"spineArm_L:tangentRadius_02_IK_CON_translateY","linearValues[17]","spineArm_L:tangentRadius_02_IK_CON_translateX"
		,"linearValues[18]","spineArm_L:tangentRadius_01_IK_CON_translateZ","linearValues[19]"
		,"spineArm_L:handSpine_IK_CON_translateZ","linearValues[1]","spineArm_L:tangentRadius_01_IK_CON_translateY"
		,"linearValues[20]","spineArm_L:tangentRadius_01_IK_CON_translateX","linearValues[21]"
		,"spineArm_L:hand_IK_CON_translateZ","linearValues[22]","spineArm_L:hand_IK_CON_translateY"
		,"linearValues[23]","spineArm_L:hand_IK_CON_translateX","linearValues[24]","spineArm_L:upVector_IK_CON_translateZ"
		,"linearValues[25]","spineArm_L:upVector_IK_CON_translateY","linearValues[26]","spineArm_L:upVector_IK_CON_translateX"
		,"linearValues[27]","spineArm_L:hand_FK_CON_translateZ","linearValues[28]","spineArm_L:hand_FK_CON_translateY"
		,"linearValues[29]","spineArm_L:handSpine_IK_CON_translateY","linearValues[2]","spineArm_L:hand_FK_CON_translateX"
		,"linearValues[30]","spineArm_L:radius_FK_CON_translateZ","linearValues[31]","spineArm_L:radius_FK_CON_translateY"
		,"linearValues[32]","spineArm_L:radius_FK_CON_translateX","linearValues[33]","spineArm_L:humerus_FK_CON_translateZ"
		,"linearValues[34]","spineArm_L:humerus_FK_CON_translateY","linearValues[35]","spineArm_L:humerus_FK_CON_translateX"
		,"linearValues[36]","spineArm_L:handSpine_IK_CON_translateX","linearValues[3]","spineArm_L:radiusSpine_IK_CON_translateZ"
		,"linearValues[4]","spineArm_L:radiusSpine_IK_CON_translateY","linearValues[5]","spineArm_L:radiusSpine_IK_CON_translateX"
		,"linearValues[6]","spineArm_L:humerusSpine_IK_CON_translateZ","linearValues[7]","spineArm_L:humerusSpine_IK_CON_translateY"
		,"linearValues[8]","spineArm_L:humerusSpine_IK_CON_translateX","linearValues[9]","spineArm_L:humerusSpine_IK_CON_scaleY"
		,"unitlessValues[10]","spineArm_L:humerusSpine_IK_CON_scaleX","unitlessValues[11]"
		,"spineArm_L:humerusSpine_IK_CON_visibility","unitlessValues[12]","spineArm_L:tangentHumerus_02_IK_CON_scaleZ"
		,"unitlessValues[13]","spineArm_L:tangentHumerus_02_IK_CON_scaleY","unitlessValues[14]"
		,"spineArm_L:tangentHumerus_02_IK_CON_scaleX","unitlessValues[15]","spineArm_L:tangentHumerus_02_IK_CON_visibility"
		,"unitlessValues[16]","spineArm_L:tangentHumerus_01_IK_CON_scaleZ","unitlessValues[17]"
		,"spineArm_L:tangentHumerus_01_IK_CON_scaleY","unitlessValues[18]","spineArm_L:tangentHumerus_01_IK_CON_scaleX"
		,"unitlessValues[19]","spineArm_L:handSpine_IK_CON_scaleZ","unitlessValues[1]","spineArm_L:tangentHumerus_01_IK_CON_visibility"
		,"unitlessValues[20]","spineArm_L:tangentRadius_02_IK_CON_scaleZ","unitlessValues[21]"
		,"spineArm_L:tangentRadius_02_IK_CON_scaleY","unitlessValues[22]","spineArm_L:tangentRadius_02_IK_CON_scaleX"
		,"unitlessValues[23]","spineArm_L:tangentRadius_02_IK_CON_visibility","unitlessValues[24]"
		,"spineArm_L:tangentRadius_01_IK_CON_scaleZ","unitlessValues[25]","spineArm_L:tangentRadius_01_IK_CON_scaleY"
		,"unitlessValues[26]","spineArm_L:tangentRadius_01_IK_CON_scaleX","unitlessValues[27]"
		,"spineArm_L:tangentRadius_01_IK_CON_visibility","unitlessValues[28]","spineArm_L:handSpine_IK_CON_scaleY"
		,"unitlessValues[2]","spineArm_L:handSpine_IK_CON_scaleX","unitlessValues[3]","spineArm_L:handSpine_IK_CON_visibility"
		,"unitlessValues[4]","spineArm_L:radiusSpine_IK_CON_scaleZ","unitlessValues[5]","spineArm_L:radiusSpine_IK_CON_scaleY"
		,"unitlessValues[6]","spineArm_L:radiusSpine_IK_CON_scaleX","unitlessValues[7]","spineArm_L:radiusSpine_IK_CON_visibility"
		,"unitlessValues[8]","spineArm_L:humerusSpine_IK_CON_scaleZ","unitlessValues[9]"} ;
createNode animCurveTU -n "spineArm_L:handSpine_IK_CON_scaleZ";
	rename -uid "A4C6A6A2-4A13-605B-C320-FE9F19EA985C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:handSpine_IK_CON_scaleY";
	rename -uid "0E403428-47DE-F002-4270-619D7A584341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:handSpine_IK_CON_scaleX";
	rename -uid "6A931C4F-4EE5-4271-DBE5-04B5D2D542D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 3 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:handSpine_IK_CON_rotateZ";
	rename -uid "9F891D6E-4C19-8785-F3D1-E48DB3FDF946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:handSpine_IK_CON_rotateY";
	rename -uid "D91DC0A8-4B73-B539-A11C-AA99944310D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:handSpine_IK_CON_rotateX";
	rename -uid "68EF6352-4DCC-AFA2-D565-82A7469E27C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:handSpine_IK_CON_translateZ";
	rename -uid "BF8F617D-4864-B923-B16F-A7A75694706B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:handSpine_IK_CON_translateY";
	rename -uid "D3FD0FA6-4E39-E16C-A546-C88AC2448C58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:handSpine_IK_CON_translateX";
	rename -uid "61FC2525-4916-7AF5-CBB4-8D939F659F3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineArm_L:handSpine_IK_CON_visibility";
	rename -uid "ED38B846-4E8D-9C88-4FB3-5AB468848D6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:radiusSpine_IK_CON_scaleZ";
	rename -uid "5F489032-46E2-F29F-DF29-9AAB646FDEBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:radiusSpine_IK_CON_scaleY";
	rename -uid "630C7820-4513-9001-ED22-16BBF68B7594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:radiusSpine_IK_CON_scaleX";
	rename -uid "E68F91B7-4FB9-9E2D-9AD6-A195A934274A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:radiusSpine_IK_CON_rotateZ";
	rename -uid "9BAD8CDC-482E-63A0-3436-E09986D7940D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -1.8459477445397654
		 40 0;
createNode animCurveTA -n "spineArm_L:radiusSpine_IK_CON_rotateY";
	rename -uid "73D89F48-4470-B7C1-D21B-1E88FA4D6773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:radiusSpine_IK_CON_rotateX";
	rename -uid "628A8F87-42D1-7C31-614B-5EA5699ACF0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:radiusSpine_IK_CON_translateZ";
	rename -uid "48264E55-4F8B-D788-50D4-53AE0505A663";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:radiusSpine_IK_CON_translateY";
	rename -uid "49362A20-4D15-9DF9-A546-898546FCD8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.71943726950123854
		 40 0;
createNode animCurveTL -n "spineArm_L:radiusSpine_IK_CON_translateX";
	rename -uid "DF5109AE-49CE-A46C-499F-1DB4FA17A6BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.023186756619413277
		 40 0;
createNode animCurveTU -n "spineArm_L:radiusSpine_IK_CON_visibility";
	rename -uid "CD3D5E8E-4A63-C253-8A6B-85A75B7DF264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:humerusSpine_IK_CON_scaleZ";
	rename -uid "44F7B203-478D-43B8-7A49-8186E0BD04F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:humerusSpine_IK_CON_scaleY";
	rename -uid "ABB49E2F-4708-EF0A-E5B5-0289FAAF637D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:humerusSpine_IK_CON_scaleX";
	rename -uid "2F58C295-4119-13D4-AFBA-5AA072904C46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:humerusSpine_IK_CON_rotateZ";
	rename -uid "CAAFA927-4A4A-082B-104B-54AF308EBDBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:humerusSpine_IK_CON_rotateY";
	rename -uid "4E64F650-4ADA-8290-F987-4D94D89C76A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:humerusSpine_IK_CON_rotateX";
	rename -uid "8BFD88D0-4660-7811-7F1C-CF95DD9BA619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:humerusSpine_IK_CON_translateZ";
	rename -uid "547F3F47-4A71-AB87-5E80-9B8F68F380F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:humerusSpine_IK_CON_translateY";
	rename -uid "EE030404-4753-5C8E-513A-50815C0ABEFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:humerusSpine_IK_CON_translateX";
	rename -uid "ED7B5039-40AB-BF02-8EEA-B1BCBF0B0B53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineArm_L:humerusSpine_IK_CON_visibility";
	rename -uid "4F77569A-4E8F-3202-B4B9-23B9FF5F46E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:tangentHumerus_02_IK_CON_scaleZ";
	rename -uid "348CC2FC-400D-4FBE-F921-3C8467E39771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentHumerus_02_IK_CON_scaleY";
	rename -uid "EA95485B-4E63-5D20-A265-DEAEAF36D5D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentHumerus_02_IK_CON_scaleX";
	rename -uid "78CE918F-4E19-B910-4084-94BC593DC761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:tangentHumerus_02_IK_CON_rotateZ";
	rename -uid "272C1756-4D01-B35A-4106-D4A66A662283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentHumerus_02_IK_CON_rotateY";
	rename -uid "59BEABC3-45F5-559F-5717-CE972148313F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentHumerus_02_IK_CON_rotateX";
	rename -uid "426D1E58-4D7C-0B9B-440F-318DDB34509D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_02_IK_CON_translateZ";
	rename -uid "7189C041-429D-2FD0-923C-9189DDB52AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_02_IK_CON_translateY";
	rename -uid "80092715-4FC2-9E33-363A-9EACD6CD7A2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.64357887004300496
		 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_02_IK_CON_translateX";
	rename -uid "BB8402E5-40E5-C034-DB7A-92829F61B0DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineArm_L:tangentHumerus_02_IK_CON_visibility";
	rename -uid "1B8DB673-46C3-CA74-C233-B9BC59A3C2CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:tangentHumerus_01_IK_CON_scaleZ";
	rename -uid "F0A79F7B-469E-6841-5C79-2EBF92C13EB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentHumerus_01_IK_CON_scaleY";
	rename -uid "F9F0A3B9-47D8-7AE9-FD1F-11B9477CFD5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentHumerus_01_IK_CON_scaleX";
	rename -uid "E7528134-4C68-0AE4-3AF3-33A06EA74530";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:tangentHumerus_01_IK_CON_rotateZ";
	rename -uid "9A1EBE86-494A-C58C-81C2-13B5BF10598D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentHumerus_01_IK_CON_rotateY";
	rename -uid "C3AF0276-4663-8118-17BD-E595B93C39D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentHumerus_01_IK_CON_rotateX";
	rename -uid "F23E3F35-4C8F-FC2B-1655-B4A4F9240B96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_01_IK_CON_translateZ";
	rename -uid "0B7D2E37-4983-F5BE-A0C3-CDB56143DF7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_01_IK_CON_translateY";
	rename -uid "1470C81D-425D-92C2-3744-CAA8E4C81A73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.76495741654683702
		 40 0;
createNode animCurveTL -n "spineArm_L:tangentHumerus_01_IK_CON_translateX";
	rename -uid "6557FD5C-4A94-3812-046B-90A89A587FCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTU -n "spineArm_L:tangentHumerus_01_IK_CON_visibility";
	rename -uid "BAF9DC59-43CF-87BC-9B3D-E796B1013534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:tangentRadius_02_IK_CON_scaleZ";
	rename -uid "89CF221E-44C9-E238-D31D-3D8F9688A5C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentRadius_02_IK_CON_scaleY";
	rename -uid "1824DA83-4306-F047-11B3-38B41BB5D5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentRadius_02_IK_CON_scaleX";
	rename -uid "2184BBC0-4A10-28B9-1D12-2BA75C4563E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:tangentRadius_02_IK_CON_rotateZ";
	rename -uid "EE632B95-4112-7D40-6EFA-A4B38BC83358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentRadius_02_IK_CON_rotateY";
	rename -uid "5B64A5B7-4BF2-8B75-4BAF-BFA9A1A81293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentRadius_02_IK_CON_rotateX";
	rename -uid "9D67FB65-4FE7-86D3-400C-03B1D17E4931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_02_IK_CON_translateZ";
	rename -uid "AACAD79C-41D4-ECB7-E021-B2B4B071614D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_02_IK_CON_translateY";
	rename -uid "C637A048-4740-BDA2-2122-18B5BDB3628D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0.64361503736490711
		 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_02_IK_CON_translateX";
	rename -uid "0EF32C04-477E-6128-6658-0BA53BE721CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 2.4980018054066022e-16
		 40 0;
createNode animCurveTU -n "spineArm_L:tangentRadius_02_IK_CON_visibility";
	rename -uid "4CC92AA1-420F-DF23-08DF-2FA79B4E9AA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "spineArm_L:tangentRadius_01_IK_CON_scaleZ";
	rename -uid "7082BC41-4F1C-804C-5056-569578167750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentRadius_01_IK_CON_scaleY";
	rename -uid "56B2D512-44A0-D895-B918-4D8D146128D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTU -n "spineArm_L:tangentRadius_01_IK_CON_scaleX";
	rename -uid "724DD2E0-437C-7283-8877-F8AAE423405D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
createNode animCurveTA -n "spineArm_L:tangentRadius_01_IK_CON_rotateZ";
	rename -uid "3ADC4F79-4858-B985-A7E7-F5BE90BD82E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentRadius_01_IK_CON_rotateY";
	rename -uid "289898C5-432A-1878-76ED-6AB5D9B3DF84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTA -n "spineArm_L:tangentRadius_01_IK_CON_rotateX";
	rename -uid "225BE981-4474-8EA0-01B9-09BACB9D4CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_01_IK_CON_translateZ";
	rename -uid "D6572796-4ACF-1E59-BE2A-32839E5AD378";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_01_IK_CON_translateY";
	rename -uid "01993CF4-46E7-8CFB-5671-0EB166D7EB34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 -0.51044163932645159
		 40 0;
createNode animCurveTL -n "spineArm_L:tangentRadius_01_IK_CON_translateX";
	rename -uid "945FF62E-4124-AD34-B2B8-A2906F5F4D55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 3.8857805861880479e-16
		 40 0;
createNode animCurveTU -n "spineArm_L:tangentRadius_01_IK_CON_visibility";
	rename -uid "C9C9054E-44AD-38FC-D6E2-AF8BB55D7320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 1 10 1 15 1 30 1 35 1 40 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "spineArm_L:hand_FK_CON_translateZ";
	rename -uid "12F5D401-4815-9C46-44D2-0A9DD2910B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:hand_FK_CON_translateY";
	rename -uid "24C02FF4-4EAC-F163-2CE7-14A8617B0417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 -1.1102230246251565e-16 10 -1.1102230246251565e-16
		 15 -1.1102230246251565e-16 30 -1.1102230246251565e-16 35 -1.1102230246251565e-16
		 40 0;
createNode animCurveTL -n "spineArm_L:hand_FK_CON_translateX";
	rename -uid "F5B045AE-4CD0-1B36-C08D-3FA22D0E0342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 1.4474969836121856
		 40 0;
createNode animCurveTL -n "spineArm_L:radius_FK_CON_translateZ";
	rename -uid "B9D370C0-4C11-1699-2049-1AB347B0CBBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:radius_FK_CON_translateY";
	rename -uid "8AF5A31E-4470-DAF9-BCC8-BE8D4C27D8AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:radius_FK_CON_translateX";
	rename -uid "1CF45ADD-484B-BA6B-9118-FEA23B63450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 1.1985978189280604
		 40 0;
createNode animCurveTL -n "spineArm_L:humerus_FK_CON_translateZ";
	rename -uid "33769F21-45FA-22F9-0E4B-389C6FC5FCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:humerus_FK_CON_translateY";
	rename -uid "36761F1E-4418-1AC9-267D-E8A76B507E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode animCurveTL -n "spineArm_L:humerus_FK_CON_translateX";
	rename -uid "DCFE6450-4316-ECE3-D1B5-63979036FF64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  5 0 10 0 15 0 30 0 35 0 40 0;
createNode ldRigCurveNode -n "spineArm_L:ldRigCurveNode1";
	rename -uid "C04A78FB-4829-ABDB-E582-98B7226E7AF4";
	setAttr ".defCount" 11;
	setAttr ".crvRestL" 4;
	setAttr ".ctrlRestD" 4;
	setAttr -s 2 ".distProfil[0:1]"  0 0 1 1 1 1;
	setAttr ".twistAlign" 0;
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
	setAttr -s 2 ".ts";
createNode ldRigTwistNode -n "ldRigTwistNode2";
	rename -uid "669B6C77-42CD-0933-3D4C-46A5D7E94F9F";
	setAttr ".sr" 0.33300000429153442;
	setAttr ".er" 0.66600000858306885;
	setAttr ".tc" 2;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".ts";
createNode ldRigFkIk2Bones -n "ldRigFkIk2Bones1";
	rename -uid "21D246A6-4163-00CD-4E02-54A1582E432F";
	setAttr ".b1L" 2;
	setAttr ".b2L" 2;
	setAttr ".activateS" 1;
createNode ldRigComparaisonNode -n "ldRigComparaisonNode1";
	rename -uid "E4D0C698-436E-9BAF-5D49-EC87D52FB1D1";
	setAttr ".camparaisonType" 2;
createNode ldRigComparaisonNode -n "ldRigComparaisonNode2";
	rename -uid "E537E383-4213-3EC3-1AAE-33B5F5AC2308";
	setAttr ".camparaisonType" 4;
	setAttr ".secondTerm" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7032DF84-4FED-1166-0503-84A476BD6CB7";
	setAttr ".tgi[0].tn" -type "string" "arm_ik1";
	setAttr ".tgi[0].vl" -type "double2" -253.76880583670251 -528.1532613963459 ;
	setAttr ".tgi[0].vh" -type "double2" 370.83655837432195 428.92578220540196 ;
	setAttr -s 42 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 93.798042297363281;
	setAttr ".tgi[0].ni[0].y" 951.4322509765625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -320.32803344726563;
	setAttr ".tgi[0].ni[1].y" -721.80511474609375;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 465.71429443359375;
	setAttr ".tgi[0].ni[2].y" 887.14288330078125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 303.94366455078125;
	setAttr ".tgi[0].ni[3].y" -1830.5076904296875;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" -664.55621337890625;
	setAttr ".tgi[0].ni[4].y" -1317.3140869140625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 465.71429443359375;
	setAttr ".tgi[0].ni[5].y" 518.5714111328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 454.95693969726563;
	setAttr ".tgi[0].ni[6].y" 246.36128234863281;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 79.770172119140625;
	setAttr ".tgi[0].ni[7].y" 65.87359619140625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 287.80767822265625;
	setAttr ".tgi[0].ni[8].y" -490.0550537109375;
	setAttr ".tgi[0].ni[8].nvs" 18305;
	setAttr ".tgi[0].ni[9].x" -254.45854187011719;
	setAttr ".tgi[0].ni[9].y" 703.370361328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 287.80767822265625;
	setAttr ".tgi[0].ni[10].y" -750.0550537109375;
	setAttr ".tgi[0].ni[10].nvs" 18305;
	setAttr ".tgi[0].ni[11].x" -648.17864990234375;
	setAttr ".tgi[0].ni[11].y" -1416.2459716796875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 287.80767822265625;
	setAttr ".tgi[0].ni[12].y" -627.19793701171875;
	setAttr ".tgi[0].ni[12].nvs" 18305;
	setAttr ".tgi[0].ni[13].x" 465.71429443359375;
	setAttr ".tgi[0].ni[13].y" 1132.857177734375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 287.80767822265625;
	setAttr ".tgi[0].ni[14].y" -1015.7693481445313;
	setAttr ".tgi[0].ni[14].nvs" 18305;
	setAttr ".tgi[0].ni[15].x" -251.88592529296875;
	setAttr ".tgi[0].ni[15].y" 7.3675823211669922;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -682.75347900390625;
	setAttr ".tgi[0].ni[16].y" -1115.00439453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 287.80767822265625;
	setAttr ".tgi[0].ni[17].y" -877.19793701171875;
	setAttr ".tgi[0].ni[17].nvs" 18305;
	setAttr ".tgi[0].ni[18].x" 13.487863540649414;
	setAttr ".tgi[0].ni[18].y" -1774.185302734375;
	setAttr ".tgi[0].ni[18].nvs" 18306;
	setAttr ".tgi[0].ni[19].x" 465.71429443359375;
	setAttr ".tgi[0].ni[19].y" 438.1563720703125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 306.73309326171875;
	setAttr ".tgi[0].ni[20].y" -2009.15283203125;
	setAttr ".tgi[0].ni[20].nvs" 18305;
	setAttr ".tgi[0].ni[21].x" 452.26760864257813;
	setAttr ".tgi[0].ni[21].y" 347.30624389648438;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -242.51748657226563;
	setAttr ".tgi[0].ni[22].y" -66.107437133789063;
	setAttr ".tgi[0].ni[22].nvs" 18305;
	setAttr ".tgi[0].ni[23].x" 303.94366455078125;
	setAttr ".tgi[0].ni[23].y" -1474.79345703125;
	setAttr ".tgi[0].ni[23].nvs" 18305;
	setAttr ".tgi[0].ni[24].x" -673.828125;
	setAttr ".tgi[0].ni[24].y" 666.32391357421875;
	setAttr ".tgi[0].ni[24].nvs" 18305;
	setAttr ".tgi[0].ni[25].x" 465.71429443359375;
	setAttr ".tgi[0].ni[25].y" 641.4285888671875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 465.71429443359375;
	setAttr ".tgi[0].ni[26].y" 1010;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -253.3515625;
	setAttr ".tgi[0].ni[27].y" 596.91448974609375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -657.27728271484375;
	setAttr ".tgi[0].ni[28].y" -1031.3482666015625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -326.44058227539063;
	setAttr ".tgi[0].ni[29].y" -1061.7998046875;
	setAttr ".tgi[0].ni[29].nvs" 18306;
	setAttr ".tgi[0].ni[30].x" 303.94366455078125;
	setAttr ".tgi[0].ni[30].y" -1597.6505126953125;
	setAttr ".tgi[0].ni[30].nvs" 18305;
	setAttr ".tgi[0].ni[31].x" -657.27728271484375;
	setAttr ".tgi[0].ni[31].y" -908.4910888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -633.620849609375;
	setAttr ".tgi[0].ni[32].y" -1587.1978759765625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 465.71429443359375;
	setAttr ".tgi[0].ni[33].y" 764.28570556640625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -309.0362548828125;
	setAttr ".tgi[0].ni[34].y" -471.772705078125;
	setAttr ".tgi[0].ni[34].nvs" 18306;
	setAttr ".tgi[0].ni[35].x" -250.02098083496094;
	setAttr ".tgi[0].ni[35].y" 502.69979858398438;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -233.97805786132813;
	setAttr ".tgi[0].ni[36].y" 88.845458984375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 454.95693969726563;
	setAttr ".tgi[0].ni[37].y" 81.459548950195313;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 465.71429443359375;
	setAttr ".tgi[0].ni[38].y" 165.28373718261719;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 287.80767822265625;
	setAttr ".tgi[0].ni[39].y" -365.769287109375;
	setAttr ".tgi[0].ni[39].nvs" 18305;
	setAttr ".tgi[0].ni[40].x" 14.882577896118164;
	setAttr ".tgi[0].ni[40].y" -1392.0374755859375;
	setAttr ".tgi[0].ni[40].nvs" 18306;
	setAttr ".tgi[0].ni[41].x" -245.40727233886719;
	setAttr ".tgi[0].ni[41].y" 180.27384948730469;
	setAttr ".tgi[0].ni[41].nvs" 18304;
createNode mute -n "aTools_StoreNode";
	rename -uid "2CEAA5FA-4E1C-2E13-96D2-369589E99C69";
createNode mute -n "scene";
	rename -uid "E158C567-4D66-A5AE-D15F-F4907AF658C5";
	addAttr -ci true -sn "id" -ln "id" -dt "string";
	setAttr ".id" -type "string" "1617626548.23";
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
connectAttr "spineArm_L:skinCluster1.og[0]" "arm_meshShape.i";
connectAttr "spineArm_L:skinCluster1GroupId.id" "arm_meshShape.iog.og[0].gid";
connectAttr "spineArm_L:skinCluster1Set.mwc" "arm_meshShape.iog.og[0].gco";
connectAttr "spineArm_L:groupId2.id" "arm_meshShape.iog.og[1].gid";
connectAttr "spineArm_L:tweakSet1.mwc" "arm_meshShape.iog.og[1].gco";
connectAttr "spineArm_L:tweak1.vl[0].vt[0]" "arm_meshShape.twl";
connectAttr "polyCylinder1.out" "spineArm_L:armShapeOrig.i";
connectAttr "ldRigComparaisonNode1.outValue" "spineArm_L:hand_IK_CON.v" -l on;
connectAttr "spineArm_L:character.lv[22]" "spineArm_L:hand_IK_CON.tz";
connectAttr "spineArm_L:character.lv[23]" "spineArm_L:hand_IK_CON.ty";
connectAttr "spineArm_L:character.lv[24]" "spineArm_L:hand_IK_CON.tx";
connectAttr "spineArm_L:character.av[22]" "spineArm_L:hand_IK_CON.rz";
connectAttr "spineArm_L:character.av[23]" "spineArm_L:hand_IK_CON.ry";
connectAttr "spineArm_L:character.av[24]" "spineArm_L:hand_IK_CON.rx";
connectAttr "ldRigComparaisonNode1.outValue" "spineArm_L:upVector_IK_CON.v" -l on
		;
connectAttr "spineArm_L:character.lv[26]" "spineArm_L:upVector_IK_CON.ty";
connectAttr "spineArm_L:character.lv[25]" "spineArm_L:upVector_IK_CON.tz";
connectAttr "spineArm_L:character.lv[27]" "spineArm_L:upVector_IK_CON.tx";
connectAttr "ldRigTwistNode2.ts[0]" "spineArm_L:tangentRadius_01_IK_BUF.opm";
connectAttr "spineArm_L:setup.showSecondSpineControllers" "spineArm_L:tangentRadius_01_IK_CON.v"
		;
connectAttr "spineArm_L:character.lv[19]" "spineArm_L:tangentRadius_01_IK_CON.tz"
		;
connectAttr "spineArm_L:character.lv[20]" "spineArm_L:tangentRadius_01_IK_CON.ty"
		;
connectAttr "spineArm_L:character.lv[21]" "spineArm_L:tangentRadius_01_IK_CON.tx"
		;
connectAttr "spineArm_L:character.uv[25]" "spineArm_L:tangentRadius_01_IK_CON.sz"
		;
connectAttr "spineArm_L:character.uv[26]" "spineArm_L:tangentRadius_01_IK_CON.sy"
		;
connectAttr "spineArm_L:character.uv[27]" "spineArm_L:tangentRadius_01_IK_CON.sx"
		;
connectAttr "spineArm_L:character.av[19]" "spineArm_L:tangentRadius_01_IK_CON.rz"
		;
connectAttr "spineArm_L:character.av[20]" "spineArm_L:tangentRadius_01_IK_CON.ry"
		;
connectAttr "spineArm_L:character.av[21]" "spineArm_L:tangentRadius_01_IK_CON.rx"
		;
connectAttr "ldRigTwistNode2.ts[1]" "spineArm_L:tangentRadius_02_IK_BUF.opm";
connectAttr "spineArm_L:setup.showSecondSpineControllers" "spineArm_L:tangentRadius_02_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[21]" "spineArm_L:tangentRadius_02_IK_CON.sz"
		;
connectAttr "spineArm_L:character.uv[22]" "spineArm_L:tangentRadius_02_IK_CON.sy"
		;
connectAttr "spineArm_L:character.uv[23]" "spineArm_L:tangentRadius_02_IK_CON.sx"
		;
connectAttr "spineArm_L:character.av[16]" "spineArm_L:tangentRadius_02_IK_CON.rz"
		;
connectAttr "spineArm_L:character.av[17]" "spineArm_L:tangentRadius_02_IK_CON.ry"
		;
connectAttr "spineArm_L:character.av[18]" "spineArm_L:tangentRadius_02_IK_CON.rx"
		;
connectAttr "spineArm_L:character.lv[16]" "spineArm_L:tangentRadius_02_IK_CON.tz"
		;
connectAttr "spineArm_L:character.lv[17]" "spineArm_L:tangentRadius_02_IK_CON.ty"
		;
connectAttr "spineArm_L:character.lv[18]" "spineArm_L:tangentRadius_02_IK_CON.tx"
		;
connectAttr "ldRigTwistNode1.ts[0]" "spineArm_L:tangentHumerus_01_IK_BUF.opm";
connectAttr "spineArm_L:setup.showSecondSpineControllers" "spineArm_L:tangentHumerus_01_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[17]" "spineArm_L:tangentHumerus_01_IK_CON.sz"
		;
connectAttr "spineArm_L:character.uv[18]" "spineArm_L:tangentHumerus_01_IK_CON.sy"
		;
connectAttr "spineArm_L:character.uv[19]" "spineArm_L:tangentHumerus_01_IK_CON.sx"
		;
connectAttr "spineArm_L:character.av[13]" "spineArm_L:tangentHumerus_01_IK_CON.rz"
		;
connectAttr "spineArm_L:character.av[14]" "spineArm_L:tangentHumerus_01_IK_CON.ry"
		;
connectAttr "spineArm_L:character.av[15]" "spineArm_L:tangentHumerus_01_IK_CON.rx"
		;
connectAttr "spineArm_L:character.lv[13]" "spineArm_L:tangentHumerus_01_IK_CON.tz"
		;
connectAttr "spineArm_L:character.lv[14]" "spineArm_L:tangentHumerus_01_IK_CON.ty"
		;
connectAttr "spineArm_L:character.lv[15]" "spineArm_L:tangentHumerus_01_IK_CON.tx"
		;
connectAttr "ldRigTwistNode1.ts[1]" "spineArm_L:tangentHumerus_02_IK_BUF.opm";
connectAttr "spineArm_L:setup.showSecondSpineControllers" "spineArm_L:tangentHumerus_02_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[13]" "spineArm_L:tangentHumerus_02_IK_CON.sz"
		;
connectAttr "spineArm_L:character.uv[14]" "spineArm_L:tangentHumerus_02_IK_CON.sy"
		;
connectAttr "spineArm_L:character.uv[15]" "spineArm_L:tangentHumerus_02_IK_CON.sx"
		;
connectAttr "spineArm_L:character.av[10]" "spineArm_L:tangentHumerus_02_IK_CON.rz"
		;
connectAttr "spineArm_L:character.av[11]" "spineArm_L:tangentHumerus_02_IK_CON.ry"
		;
connectAttr "spineArm_L:character.av[12]" "spineArm_L:tangentHumerus_02_IK_CON.rx"
		;
connectAttr "spineArm_L:character.lv[10]" "spineArm_L:tangentHumerus_02_IK_CON.tz"
		;
connectAttr "spineArm_L:character.lv[11]" "spineArm_L:tangentHumerus_02_IK_CON.ty"
		;
connectAttr "spineArm_L:character.lv[12]" "spineArm_L:tangentHumerus_02_IK_CON.tx"
		;
connectAttr "ldRigFkIk2Bones1.b1Trans" "spineArm_L:humerusSpine_IK_BUF.opm";
connectAttr "spineArm_L:setup.showMainSpineControllers" "spineArm_L:humerusSpine_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[9]" "spineArm_L:humerusSpine_IK_CON.sz";
connectAttr "spineArm_L:character.uv[10]" "spineArm_L:humerusSpine_IK_CON.sy";
connectAttr "spineArm_L:character.uv[11]" "spineArm_L:humerusSpine_IK_CON.sx";
connectAttr "spineArm_L:character.av[7]" "spineArm_L:humerusSpine_IK_CON.rz";
connectAttr "spineArm_L:character.av[8]" "spineArm_L:humerusSpine_IK_CON.ry";
connectAttr "spineArm_L:character.av[9]" "spineArm_L:humerusSpine_IK_CON.rx";
connectAttr "spineArm_L:character.lv[7]" "spineArm_L:humerusSpine_IK_CON.tz";
connectAttr "spineArm_L:character.lv[8]" "spineArm_L:humerusSpine_IK_CON.ty";
connectAttr "spineArm_L:character.lv[9]" "spineArm_L:humerusSpine_IK_CON.tx";
connectAttr "ldRigFkIk2Bones1.b2Trans" "spineArm_L:radiusSpine_IK_BUF.opm";
connectAttr "spineArm_L:setup.showMainSpineControllers" "spineArm_L:radiusSpine_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[5]" "spineArm_L:radiusSpine_IK_CON.sz";
connectAttr "spineArm_L:character.uv[6]" "spineArm_L:radiusSpine_IK_CON.sy";
connectAttr "spineArm_L:character.uv[7]" "spineArm_L:radiusSpine_IK_CON.sx";
connectAttr "spineArm_L:character.av[4]" "spineArm_L:radiusSpine_IK_CON.rz";
connectAttr "spineArm_L:character.av[5]" "spineArm_L:radiusSpine_IK_CON.ry";
connectAttr "spineArm_L:character.av[6]" "spineArm_L:radiusSpine_IK_CON.rx";
connectAttr "spineArm_L:character.lv[4]" "spineArm_L:radiusSpine_IK_CON.tz";
connectAttr "spineArm_L:character.lv[5]" "spineArm_L:radiusSpine_IK_CON.ty";
connectAttr "spineArm_L:character.lv[6]" "spineArm_L:radiusSpine_IK_CON.tx";
connectAttr "ldRigFkIk2Bones1.b3Trans" "spineArm_L:handSpine_IK_BUF.opm";
connectAttr "spineArm_L:setup.showMainSpineControllers" "spineArm_L:handSpine_IK_CON.v"
		;
connectAttr "spineArm_L:character.uv[1]" "spineArm_L:handSpine_IK_CON.sz";
connectAttr "spineArm_L:character.uv[2]" "spineArm_L:handSpine_IK_CON.sy";
connectAttr "spineArm_L:character.uv[3]" "spineArm_L:handSpine_IK_CON.sx";
connectAttr "spineArm_L:character.av[1]" "spineArm_L:handSpine_IK_CON.rz";
connectAttr "spineArm_L:character.av[2]" "spineArm_L:handSpine_IK_CON.ry";
connectAttr "spineArm_L:character.av[3]" "spineArm_L:handSpine_IK_CON.rx";
connectAttr "spineArm_L:character.lv[1]" "spineArm_L:handSpine_IK_CON.tz";
connectAttr "spineArm_L:character.lv[2]" "spineArm_L:handSpine_IK_CON.ty";
connectAttr "spineArm_L:character.lv[3]" "spineArm_L:handSpine_IK_CON.tx";
connectAttr "ldRigComparaisonNode2.outValue" "spineArm_L:humerus_FK_CON.v" -l on
		;
connectAttr "spineArm_L:character.lv[36]" "spineArm_L:humerus_FK_CON.tx";
connectAttr "spineArm_L:character.lv[35]" "spineArm_L:humerus_FK_CON.ty";
connectAttr "spineArm_L:character.lv[34]" "spineArm_L:humerus_FK_CON.tz";
connectAttr "spineArm_L:character.av[31]" "spineArm_L:humerus_FK_CON.rz";
connectAttr "spineArm_L:character.av[32]" "spineArm_L:humerus_FK_CON.ry";
connectAttr "spineArm_L:character.av[33]" "spineArm_L:humerus_FK_CON.rx";
connectAttr "ldRigComparaisonNode2.outValue" "spineArm_L:radius_FK_CON.v" -l on;
connectAttr "spineArm_L:character.av[29]" "spineArm_L:radius_FK_CON.ry";
connectAttr "spineArm_L:character.av[28]" "spineArm_L:radius_FK_CON.rz";
connectAttr "spineArm_L:character.av[30]" "spineArm_L:radius_FK_CON.rx";
connectAttr "spineArm_L:character.lv[33]" "spineArm_L:radius_FK_CON.tx";
connectAttr "spineArm_L:character.lv[32]" "spineArm_L:radius_FK_CON.ty";
connectAttr "spineArm_L:character.lv[31]" "spineArm_L:radius_FK_CON.tz";
connectAttr "ldRigComparaisonNode2.outValue" "spineArm_L:hand_FK_CON.v" -l on;
connectAttr "spineArm_L:character.av[25]" "spineArm_L:hand_FK_CON.rz";
connectAttr "spineArm_L:character.av[26]" "spineArm_L:hand_FK_CON.ry";
connectAttr "spineArm_L:character.av[27]" "spineArm_L:hand_FK_CON.rx";
connectAttr "spineArm_L:character.lv[30]" "spineArm_L:hand_FK_CON.tx";
connectAttr "spineArm_L:character.lv[29]" "spineArm_L:hand_FK_CON.ty";
connectAttr "spineArm_L:character.lv[28]" "spineArm_L:hand_FK_CON.tz";
connectAttr "ldRigFkIk2Bones1.b1Trans" "spineArm_L:humerus__JNT.opm";
connectAttr "ldRigFkIk2Bones1.b2Trans" "spineArm_L:radius__JNT.opm";
connectAttr "ldRigFkIk2Bones1.b3Trans" "spineArm_L:hand__JNT.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[0]" "spineArm_L:humerusSpine_1.opm"
		;
connectAttr "spineArm_L:ldRigCurveNode1.defs[1]" "spineArm_L:humerusSpine_2.opm"
		;
connectAttr "spineArm_L:ldRigCurveNode1.defs[2]" "spineArm_L:humerusSpine_3.opm"
		;
connectAttr "spineArm_L:ldRigCurveNode1.defs[3]" "spineArm_L:humerusSpine_4.opm"
		;
connectAttr "spineArm_L:ldRigCurveNode1.defs[4]" "spineArm_L:humerusSpine_5.opm"
		;
connectAttr "spineArm_L:ldRigCurveNode1.defs[5]" "spineArm_L:radiusSpine_1.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[6]" "spineArm_L:radiusSpine_2.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[7]" "spineArm_L:radiusSpine_3.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[8]" "spineArm_L:radiusSpine_4.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[9]" "spineArm_L:radiusSpine_5.opm";
connectAttr "spineArm_L:ldRigCurveNode1.defs[10]" "spineArm_L:handSpine.opm";
connectAttr "spineArm_L:handSpine_IK_CON.wm" "spineArm_L:handAttach.opm";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spineArm_L:skinCluster1GroupParts.og" "spineArm_L:skinCluster1.ip[0].ig"
		;
connectAttr "spineArm_L:skinCluster1GroupId.id" "spineArm_L:skinCluster1.ip[0].gi"
		;
connectAttr "spineArm_L:bindPose1.msg" "spineArm_L:skinCluster1.bp";
connectAttr "spineArm_L:humerusSpine_1.wm" "spineArm_L:skinCluster1.ma[0]";
connectAttr "spineArm_L:humerusSpine_2.wm" "spineArm_L:skinCluster1.ma[1]";
connectAttr "spineArm_L:humerusSpine_3.wm" "spineArm_L:skinCluster1.ma[2]";
connectAttr "spineArm_L:humerusSpine_4.wm" "spineArm_L:skinCluster1.ma[3]";
connectAttr "spineArm_L:humerusSpine_5.wm" "spineArm_L:skinCluster1.ma[4]";
connectAttr "spineArm_L:radiusSpine_1.wm" "spineArm_L:skinCluster1.ma[5]";
connectAttr "spineArm_L:radiusSpine_2.wm" "spineArm_L:skinCluster1.ma[6]";
connectAttr "spineArm_L:radiusSpine_3.wm" "spineArm_L:skinCluster1.ma[7]";
connectAttr "spineArm_L:radiusSpine_4.wm" "spineArm_L:skinCluster1.ma[8]";
connectAttr "spineArm_L:radiusSpine_5.wm" "spineArm_L:skinCluster1.ma[9]";
connectAttr "spineArm_L:handSpine.wm" "spineArm_L:skinCluster1.ma[10]";
connectAttr "spineArm_L:humerusSpine_1.liw" "spineArm_L:skinCluster1.lw[0]";
connectAttr "spineArm_L:humerusSpine_2.liw" "spineArm_L:skinCluster1.lw[1]";
connectAttr "spineArm_L:humerusSpine_3.liw" "spineArm_L:skinCluster1.lw[2]";
connectAttr "spineArm_L:humerusSpine_4.liw" "spineArm_L:skinCluster1.lw[3]";
connectAttr "spineArm_L:humerusSpine_5.liw" "spineArm_L:skinCluster1.lw[4]";
connectAttr "spineArm_L:radiusSpine_1.liw" "spineArm_L:skinCluster1.lw[5]";
connectAttr "spineArm_L:radiusSpine_2.liw" "spineArm_L:skinCluster1.lw[6]";
connectAttr "spineArm_L:radiusSpine_3.liw" "spineArm_L:skinCluster1.lw[7]";
connectAttr "spineArm_L:radiusSpine_4.liw" "spineArm_L:skinCluster1.lw[8]";
connectAttr "spineArm_L:radiusSpine_5.liw" "spineArm_L:skinCluster1.lw[9]";
connectAttr "spineArm_L:handSpine.liw" "spineArm_L:skinCluster1.lw[10]";
connectAttr "spineArm_L:humerusSpine_1.obcc" "spineArm_L:skinCluster1.ifcl[0]";
connectAttr "spineArm_L:humerusSpine_2.obcc" "spineArm_L:skinCluster1.ifcl[1]";
connectAttr "spineArm_L:humerusSpine_3.obcc" "spineArm_L:skinCluster1.ifcl[2]";
connectAttr "spineArm_L:humerusSpine_4.obcc" "spineArm_L:skinCluster1.ifcl[3]";
connectAttr "spineArm_L:humerusSpine_5.obcc" "spineArm_L:skinCluster1.ifcl[4]";
connectAttr "spineArm_L:radiusSpine_1.obcc" "spineArm_L:skinCluster1.ifcl[5]";
connectAttr "spineArm_L:radiusSpine_2.obcc" "spineArm_L:skinCluster1.ifcl[6]";
connectAttr "spineArm_L:radiusSpine_3.obcc" "spineArm_L:skinCluster1.ifcl[7]";
connectAttr "spineArm_L:radiusSpine_4.obcc" "spineArm_L:skinCluster1.ifcl[8]";
connectAttr "spineArm_L:radiusSpine_5.obcc" "spineArm_L:skinCluster1.ifcl[9]";
connectAttr "spineArm_L:handSpine.obcc" "spineArm_L:skinCluster1.ifcl[10]";
connectAttr "spineArm_L:groupParts2.og" "spineArm_L:tweak1.ip[0].ig";
connectAttr "spineArm_L:groupId2.id" "spineArm_L:tweak1.ip[0].gi";
connectAttr "spineArm_L:skinCluster1GroupId.msg" "spineArm_L:skinCluster1Set.gn"
		 -na;
connectAttr "arm_meshShape.iog.og[0]" "spineArm_L:skinCluster1Set.dsm" -na;
connectAttr "spineArm_L:skinCluster1.msg" "spineArm_L:skinCluster1Set.ub[0]";
connectAttr "spineArm_L:tweak1.og[0]" "spineArm_L:skinCluster1GroupParts.ig";
connectAttr "spineArm_L:skinCluster1GroupId.id" "spineArm_L:skinCluster1GroupParts.gi"
		;
connectAttr "spineArm_L:groupId2.msg" "spineArm_L:tweakSet1.gn" -na;
connectAttr "arm_meshShape.iog.og[1]" "spineArm_L:tweakSet1.dsm" -na;
connectAttr "spineArm_L:tweak1.msg" "spineArm_L:tweakSet1.ub[0]";
connectAttr "spineArm_L:armShapeOrig.w" "spineArm_L:groupParts2.ig";
connectAttr "spineArm_L:groupId2.id" "spineArm_L:groupParts2.gi";
connectAttr "spineArm_L:module.msg" "spineArm_L:bindPose1.m[0]";
connectAttr "spineArm_L:bones_GRP.msg" "spineArm_L:bindPose1.m[1]";
connectAttr "spineArm_L:humerusSpine_1.msg" "spineArm_L:bindPose1.m[2]";
connectAttr "spineArm_L:humerusSpine_2.msg" "spineArm_L:bindPose1.m[3]";
connectAttr "spineArm_L:humerusSpine_3.msg" "spineArm_L:bindPose1.m[4]";
connectAttr "spineArm_L:humerusSpine_4.msg" "spineArm_L:bindPose1.m[5]";
connectAttr "spineArm_L:humerusSpine_5.msg" "spineArm_L:bindPose1.m[6]";
connectAttr "spineArm_L:radiusSpine_1.msg" "spineArm_L:bindPose1.m[7]";
connectAttr "spineArm_L:radiusSpine_2.msg" "spineArm_L:bindPose1.m[8]";
connectAttr "spineArm_L:radiusSpine_3.msg" "spineArm_L:bindPose1.m[9]";
connectAttr "spineArm_L:radiusSpine_4.msg" "spineArm_L:bindPose1.m[10]";
connectAttr "spineArm_L:radiusSpine_5.msg" "spineArm_L:bindPose1.m[11]";
connectAttr "spineArm_L:handSpine.msg" "spineArm_L:bindPose1.m[12]";
connectAttr "spineArm_L:bindPose1.w" "spineArm_L:bindPose1.p[0]";
connectAttr "spineArm_L:bindPose1.m[0]" "spineArm_L:bindPose1.p[1]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[2]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[3]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[4]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[5]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[6]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[7]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[8]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[9]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[10]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[11]";
connectAttr "spineArm_L:bindPose1.m[1]" "spineArm_L:bindPose1.p[12]";
connectAttr "spineArm_L:humerusSpine_1.bps" "spineArm_L:bindPose1.wm[2]";
connectAttr "spineArm_L:humerusSpine_2.bps" "spineArm_L:bindPose1.wm[3]";
connectAttr "spineArm_L:humerusSpine_3.bps" "spineArm_L:bindPose1.wm[4]";
connectAttr "spineArm_L:humerusSpine_4.bps" "spineArm_L:bindPose1.wm[5]";
connectAttr "spineArm_L:humerusSpine_5.bps" "spineArm_L:bindPose1.wm[6]";
connectAttr "spineArm_L:radiusSpine_1.bps" "spineArm_L:bindPose1.wm[7]";
connectAttr "spineArm_L:radiusSpine_2.bps" "spineArm_L:bindPose1.wm[8]";
connectAttr "spineArm_L:radiusSpine_3.bps" "spineArm_L:bindPose1.wm[9]";
connectAttr "spineArm_L:radiusSpine_4.bps" "spineArm_L:bindPose1.wm[10]";
connectAttr "spineArm_L:radiusSpine_5.bps" "spineArm_L:bindPose1.wm[11]";
connectAttr "spineArm_L:handSpine.bps" "spineArm_L:bindPose1.wm[12]";
connectAttr "spineArm_L:skinCluster1.msg" "spineArm_L:skinCluster2.sc";
connectAttr "spineArm_L:handSpine_IK_CON_translateZ.o" "spineArm_L:character.lv[1]"
		;
connectAttr "spineArm_L:handSpine_IK_CON_translateY.o" "spineArm_L:character.lv[2]"
		;
connectAttr "spineArm_L:handSpine_IK_CON_translateX.o" "spineArm_L:character.lv[3]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_translateZ.o" "spineArm_L:character.lv[4]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_translateY.o" "spineArm_L:character.lv[5]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_translateX.o" "spineArm_L:character.lv[6]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_translateZ.o" "spineArm_L:character.lv[7]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_translateY.o" "spineArm_L:character.lv[8]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_translateX.o" "spineArm_L:character.lv[9]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_translateZ.o" "spineArm_L:character.lv[10]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_translateY.o" "spineArm_L:character.lv[11]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_translateX.o" "spineArm_L:character.lv[12]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_translateZ.o" "spineArm_L:character.lv[13]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_translateY.o" "spineArm_L:character.lv[14]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_translateX.o" "spineArm_L:character.lv[15]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_translateZ.o" "spineArm_L:character.lv[16]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_translateY.o" "spineArm_L:character.lv[17]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_translateX.o" "spineArm_L:character.lv[18]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_translateZ.o" "spineArm_L:character.lv[19]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_translateY.o" "spineArm_L:character.lv[20]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_translateX.o" "spineArm_L:character.lv[21]"
		;
connectAttr "spineArm_L:hand_IK_CON_translateZ.o" "spineArm_L:character.lv[22]";
connectAttr "spineArm_L:hand_IK_CON_translateY.o" "spineArm_L:character.lv[23]";
connectAttr "spineArm_L:hand_IK_CON_translateX.o" "spineArm_L:character.lv[24]";
connectAttr "spineArm_L:upVector_IK_CON_translateZ.o" "spineArm_L:character.lv[25]"
		;
connectAttr "spineArm_L:upVector_IK_CON_translateY.o" "spineArm_L:character.lv[26]"
		;
connectAttr "spineArm_L:upVector_IK_CON_translateX.o" "spineArm_L:character.lv[27]"
		;
connectAttr "spineArm_L:hand_FK_CON_translateZ.o" "spineArm_L:character.lv[28]";
connectAttr "spineArm_L:hand_FK_CON_translateY.o" "spineArm_L:character.lv[29]";
connectAttr "spineArm_L:hand_FK_CON_translateX.o" "spineArm_L:character.lv[30]";
connectAttr "spineArm_L:radius_FK_CON_translateZ.o" "spineArm_L:character.lv[31]"
		;
connectAttr "spineArm_L:radius_FK_CON_translateY.o" "spineArm_L:character.lv[32]"
		;
connectAttr "spineArm_L:radius_FK_CON_translateX.o" "spineArm_L:character.lv[33]"
		;
connectAttr "spineArm_L:humerus_FK_CON_translateZ.o" "spineArm_L:character.lv[34]"
		;
connectAttr "spineArm_L:humerus_FK_CON_translateY.o" "spineArm_L:character.lv[35]"
		;
connectAttr "spineArm_L:humerus_FK_CON_translateX.o" "spineArm_L:character.lv[36]"
		;
connectAttr "spineArm_L:handSpine_IK_CON_rotateZ.o" "spineArm_L:character.av[1]"
		;
connectAttr "spineArm_L:handSpine_IK_CON_rotateY.o" "spineArm_L:character.av[2]"
		;
connectAttr "spineArm_L:handSpine_IK_CON_rotateX.o" "spineArm_L:character.av[3]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_rotateZ.o" "spineArm_L:character.av[4]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_rotateY.o" "spineArm_L:character.av[5]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_rotateX.o" "spineArm_L:character.av[6]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_rotateZ.o" "spineArm_L:character.av[7]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_rotateY.o" "spineArm_L:character.av[8]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_rotateX.o" "spineArm_L:character.av[9]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_rotateZ.o" "spineArm_L:character.av[10]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_rotateY.o" "spineArm_L:character.av[11]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_rotateX.o" "spineArm_L:character.av[12]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_rotateZ.o" "spineArm_L:character.av[13]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_rotateY.o" "spineArm_L:character.av[14]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_rotateX.o" "spineArm_L:character.av[15]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_rotateZ.o" "spineArm_L:character.av[16]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_rotateY.o" "spineArm_L:character.av[17]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_rotateX.o" "spineArm_L:character.av[18]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_rotateZ.o" "spineArm_L:character.av[19]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_rotateY.o" "spineArm_L:character.av[20]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_rotateX.o" "spineArm_L:character.av[21]"
		;
connectAttr "spineArm_L:hand_IK_CON_rotateZ.o" "spineArm_L:character.av[22]";
connectAttr "spineArm_L:hand_IK_CON_rotateY.o" "spineArm_L:character.av[23]";
connectAttr "spineArm_L:hand_IK_CON_rotateX.o" "spineArm_L:character.av[24]";
connectAttr "spineArm_L:hand_FK_CON_rotateZ.o" "spineArm_L:character.av[25]";
connectAttr "spineArm_L:hand_FK_CON_rotateY.o" "spineArm_L:character.av[26]";
connectAttr "spineArm_L:hand_FK_CON_rotateX.o" "spineArm_L:character.av[27]";
connectAttr "spineArm_L:radius_FK_CON_rotateZ.o" "spineArm_L:character.av[28]";
connectAttr "spineArm_L:radius_FK_CON_rotateY.o" "spineArm_L:character.av[29]";
connectAttr "spineArm_L:radius_FK_CON_rotateX.o" "spineArm_L:character.av[30]";
connectAttr "spineArm_L:humerus_FK_CON_rotateZ.o" "spineArm_L:character.av[31]";
connectAttr "spineArm_L:humerus_FK_CON_rotateY.o" "spineArm_L:character.av[32]";
connectAttr "spineArm_L:humerus_FK_CON_rotateX.o" "spineArm_L:character.av[33]";
connectAttr "spineArm_L:handSpine_IK_CON_scaleZ.o" "spineArm_L:character.uv[1]";
connectAttr "spineArm_L:handSpine_IK_CON_scaleY.o" "spineArm_L:character.uv[2]";
connectAttr "spineArm_L:handSpine_IK_CON_scaleX.o" "spineArm_L:character.uv[3]";
connectAttr "spineArm_L:handSpine_IK_CON_visibility.o" "spineArm_L:character.uv[4]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_scaleZ.o" "spineArm_L:character.uv[5]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_scaleY.o" "spineArm_L:character.uv[6]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_scaleX.o" "spineArm_L:character.uv[7]"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON_visibility.o" "spineArm_L:character.uv[8]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_scaleZ.o" "spineArm_L:character.uv[9]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_scaleY.o" "spineArm_L:character.uv[10]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_scaleX.o" "spineArm_L:character.uv[11]"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON_visibility.o" "spineArm_L:character.uv[12]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_scaleZ.o" "spineArm_L:character.uv[13]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_scaleY.o" "spineArm_L:character.uv[14]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_scaleX.o" "spineArm_L:character.uv[15]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON_visibility.o" "spineArm_L:character.uv[16]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_scaleZ.o" "spineArm_L:character.uv[17]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_scaleY.o" "spineArm_L:character.uv[18]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_scaleX.o" "spineArm_L:character.uv[19]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON_visibility.o" "spineArm_L:character.uv[20]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_scaleZ.o" "spineArm_L:character.uv[21]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_scaleY.o" "spineArm_L:character.uv[22]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_scaleX.o" "spineArm_L:character.uv[23]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON_visibility.o" "spineArm_L:character.uv[24]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_scaleZ.o" "spineArm_L:character.uv[25]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_scaleY.o" "spineArm_L:character.uv[26]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_scaleX.o" "spineArm_L:character.uv[27]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON_visibility.o" "spineArm_L:character.uv[28]"
		;
connectAttr "spineArm_L:handSpine_IK_CON.sz" "spineArm_L:character.dnsm[0]";
connectAttr "spineArm_L:handSpine_IK_CON.sy" "spineArm_L:character.dnsm[1]";
connectAttr "spineArm_L:handSpine_IK_CON.sx" "spineArm_L:character.dnsm[2]";
connectAttr "spineArm_L:handSpine_IK_CON.rz" "spineArm_L:character.dnsm[3]";
connectAttr "spineArm_L:handSpine_IK_CON.ry" "spineArm_L:character.dnsm[4]";
connectAttr "spineArm_L:handSpine_IK_CON.rx" "spineArm_L:character.dnsm[5]";
connectAttr "spineArm_L:handSpine_IK_CON.tz" "spineArm_L:character.dnsm[6]";
connectAttr "spineArm_L:handSpine_IK_CON.ty" "spineArm_L:character.dnsm[7]";
connectAttr "spineArm_L:handSpine_IK_CON.tx" "spineArm_L:character.dnsm[8]";
connectAttr "spineArm_L:handSpine_IK_CON.v" "spineArm_L:character.dnsm[9]";
connectAttr "spineArm_L:radiusSpine_IK_CON.sz" "spineArm_L:character.dnsm[10]";
connectAttr "spineArm_L:radiusSpine_IK_CON.sy" "spineArm_L:character.dnsm[11]";
connectAttr "spineArm_L:radiusSpine_IK_CON.sx" "spineArm_L:character.dnsm[12]";
connectAttr "spineArm_L:radiusSpine_IK_CON.rz" "spineArm_L:character.dnsm[13]";
connectAttr "spineArm_L:radiusSpine_IK_CON.ry" "spineArm_L:character.dnsm[14]";
connectAttr "spineArm_L:radiusSpine_IK_CON.rx" "spineArm_L:character.dnsm[15]";
connectAttr "spineArm_L:radiusSpine_IK_CON.tz" "spineArm_L:character.dnsm[16]";
connectAttr "spineArm_L:radiusSpine_IK_CON.ty" "spineArm_L:character.dnsm[17]";
connectAttr "spineArm_L:radiusSpine_IK_CON.tx" "spineArm_L:character.dnsm[18]";
connectAttr "spineArm_L:radiusSpine_IK_CON.v" "spineArm_L:character.dnsm[19]";
connectAttr "spineArm_L:humerusSpine_IK_CON.sz" "spineArm_L:character.dnsm[20]";
connectAttr "spineArm_L:humerusSpine_IK_CON.sy" "spineArm_L:character.dnsm[21]";
connectAttr "spineArm_L:humerusSpine_IK_CON.sx" "spineArm_L:character.dnsm[22]";
connectAttr "spineArm_L:humerusSpine_IK_CON.rz" "spineArm_L:character.dnsm[23]";
connectAttr "spineArm_L:humerusSpine_IK_CON.ry" "spineArm_L:character.dnsm[24]";
connectAttr "spineArm_L:humerusSpine_IK_CON.rx" "spineArm_L:character.dnsm[25]";
connectAttr "spineArm_L:humerusSpine_IK_CON.tz" "spineArm_L:character.dnsm[26]";
connectAttr "spineArm_L:humerusSpine_IK_CON.ty" "spineArm_L:character.dnsm[27]";
connectAttr "spineArm_L:humerusSpine_IK_CON.tx" "spineArm_L:character.dnsm[28]";
connectAttr "spineArm_L:humerusSpine_IK_CON.v" "spineArm_L:character.dnsm[29]";
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.sz" "spineArm_L:character.dnsm[30]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.sy" "spineArm_L:character.dnsm[31]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.sx" "spineArm_L:character.dnsm[32]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.rz" "spineArm_L:character.dnsm[33]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.ry" "spineArm_L:character.dnsm[34]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.rx" "spineArm_L:character.dnsm[35]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.tz" "spineArm_L:character.dnsm[36]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.ty" "spineArm_L:character.dnsm[37]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.tx" "spineArm_L:character.dnsm[38]"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.v" "spineArm_L:character.dnsm[39]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.sz" "spineArm_L:character.dnsm[40]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.sy" "spineArm_L:character.dnsm[41]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.sx" "spineArm_L:character.dnsm[42]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.rz" "spineArm_L:character.dnsm[43]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.ry" "spineArm_L:character.dnsm[44]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.rx" "spineArm_L:character.dnsm[45]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.tz" "spineArm_L:character.dnsm[46]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.ty" "spineArm_L:character.dnsm[47]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.tx" "spineArm_L:character.dnsm[48]"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.v" "spineArm_L:character.dnsm[49]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.sz" "spineArm_L:character.dnsm[50]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.sy" "spineArm_L:character.dnsm[51]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.sx" "spineArm_L:character.dnsm[52]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.rz" "spineArm_L:character.dnsm[53]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.ry" "spineArm_L:character.dnsm[54]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.rx" "spineArm_L:character.dnsm[55]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.tz" "spineArm_L:character.dnsm[56]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.ty" "spineArm_L:character.dnsm[57]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.tx" "spineArm_L:character.dnsm[58]"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.v" "spineArm_L:character.dnsm[59]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.sz" "spineArm_L:character.dnsm[60]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.sy" "spineArm_L:character.dnsm[61]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.sx" "spineArm_L:character.dnsm[62]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.rz" "spineArm_L:character.dnsm[63]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.ry" "spineArm_L:character.dnsm[64]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.rx" "spineArm_L:character.dnsm[65]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.tz" "spineArm_L:character.dnsm[66]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.ty" "spineArm_L:character.dnsm[67]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.tx" "spineArm_L:character.dnsm[68]"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.v" "spineArm_L:character.dnsm[69]"
		;
connectAttr "spineArm_L:hand_IK_CON.rz" "spineArm_L:character.dnsm[70]";
connectAttr "spineArm_L:hand_IK_CON.ry" "spineArm_L:character.dnsm[71]";
connectAttr "spineArm_L:hand_IK_CON.rx" "spineArm_L:character.dnsm[72]";
connectAttr "spineArm_L:hand_IK_CON.tz" "spineArm_L:character.dnsm[73]";
connectAttr "spineArm_L:hand_IK_CON.ty" "spineArm_L:character.dnsm[74]";
connectAttr "spineArm_L:hand_IK_CON.tx" "spineArm_L:character.dnsm[75]";
connectAttr "spineArm_L:upVector_IK_CON.tz" "spineArm_L:character.dnsm[76]";
connectAttr "spineArm_L:upVector_IK_CON.ty" "spineArm_L:character.dnsm[77]";
connectAttr "spineArm_L:upVector_IK_CON.tx" "spineArm_L:character.dnsm[78]";
connectAttr "spineArm_L:hand_FK_CON.rz" "spineArm_L:character.dnsm[79]";
connectAttr "spineArm_L:hand_FK_CON.ry" "spineArm_L:character.dnsm[80]";
connectAttr "spineArm_L:hand_FK_CON.rx" "spineArm_L:character.dnsm[81]";
connectAttr "spineArm_L:hand_FK_CON.tz" "spineArm_L:character.dnsm[82]";
connectAttr "spineArm_L:hand_FK_CON.ty" "spineArm_L:character.dnsm[83]";
connectAttr "spineArm_L:hand_FK_CON.tx" "spineArm_L:character.dnsm[84]";
connectAttr "spineArm_L:radius_FK_CON.rz" "spineArm_L:character.dnsm[85]";
connectAttr "spineArm_L:radius_FK_CON.ry" "spineArm_L:character.dnsm[86]";
connectAttr "spineArm_L:radius_FK_CON.rx" "spineArm_L:character.dnsm[87]";
connectAttr "spineArm_L:radius_FK_CON.tz" "spineArm_L:character.dnsm[88]";
connectAttr "spineArm_L:radius_FK_CON.ty" "spineArm_L:character.dnsm[89]";
connectAttr "spineArm_L:radius_FK_CON.tx" "spineArm_L:character.dnsm[90]";
connectAttr "spineArm_L:humerus_FK_CON.rz" "spineArm_L:character.dnsm[91]";
connectAttr "spineArm_L:humerus_FK_CON.ry" "spineArm_L:character.dnsm[92]";
connectAttr "spineArm_L:humerus_FK_CON.rx" "spineArm_L:character.dnsm[93]";
connectAttr "spineArm_L:humerus_FK_CON.tz" "spineArm_L:character.dnsm[94]";
connectAttr "spineArm_L:humerus_FK_CON.ty" "spineArm_L:character.dnsm[95]";
connectAttr "spineArm_L:humerus_FK_CON.tx" "spineArm_L:character.dnsm[96]";
connectAttr "spineArm_L:humerusSpine_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[0].ikCtrl"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[1].ikCtrl"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[2].ikCtrl"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[3].ikCtrl"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[4].ikCtrl"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[5].ikCtrl"
		;
connectAttr "spineArm_L:handSpine_IK_CON.wm" "spineArm_L:ldRigCurveNode1.ctrls[6].ikCtrl"
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
connectAttr "spineArm_L:upVector_IK_CON.wm" "ldRigFkIk2Bones1.ikUpV";
connectAttr "spineArm_L:armPivot_IK_BUF.wm" "ldRigFkIk2Bones1.ikR";
connectAttr "spineArm_L:hand_FK_CON.wm" "ldRigFkIk2Bones1.fkB3";
connectAttr "spineArm_L:humerus_FK_CON.wm" "ldRigFkIk2Bones1.fkB1";
connectAttr "spineArm_L:radius_FK_CON.wm" "ldRigFkIk2Bones1.fkB2";
connectAttr "spineArm_L:hand_IK_CON.wm" "ldRigFkIk2Bones1.ikEff";
connectAttr "spineArm_L:setup.blendFkIK" "ldRigFkIk2Bones1.blend";
connectAttr "ldRigFkIk2Bones1.blend" "ldRigComparaisonNode1.firstTerm";
connectAttr "ldRigFkIk2Bones1.blend" "ldRigComparaisonNode2.firstTerm";
connectAttr "spineArm_L:ldRigCurveNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ldRigComparaisonNode2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "spineArm_L:humerusSpine_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "spineArm_L:upVector_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "spineArm_L:radiusSpine_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "spineArm_L:radiusSpine_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spineArm_L:handAttach.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "spineArm_L:radius__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "spineArm_L:humerusSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "spineArm_L:humerusSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "spineArm_L:hand_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "spineArm_L:hand__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "spineArm_L:humerusSpine_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "spineArm_L:handSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "spineArm_L:hand_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "spineArm_L:radiusSpine_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ldRigTwistNode2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "spineArm_L:radiusSpine_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "spineArm_L:tangentRadius_02_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "spineArm_L:radiusSpine_3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "spineArm_L:handSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "spineArm_L:setup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "spineArm_L:humerusSpine_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "spineArm_L:humerusSpine_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "spineArm_L:tangentHumerus_01_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "spineArm_L:humerus_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "ldRigFkIk2Bones1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "spineArm_L:radius_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "spineArm_L:armPivot_IK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "spineArm_L:humerusSpine_4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ldRigComparaisonNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "spineArm_L:tangentHumerus_02_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "spineArm_L:tangentRadius_01_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "spineArm_L:handSpine.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "spineArm_L:radiusSpine_5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "spineArm_L:humerus__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "ldRigTwistNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "spineArm_L:radiusSpine_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "aTools_StoreNode.o" "scene.m";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "arm_meshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "spineArm_L:character.pa" ":characterPartition.st" -na;
// End of armSpineModule_V01.ma

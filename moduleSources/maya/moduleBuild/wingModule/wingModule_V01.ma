//Maya ASCII 2020 scene
//Name: wingModule_V01.ma
//Last modified: Mon, Apr 05, 2021 02:38:29 PM
//Codeset: 1252
requires maya "2020";
requires -nodeType "ldRigTwistNode" -nodeType "ldRigFkIk2Bones" -nodeType "ldRigComparaisonNode"
		 "ldRigNodes" "0.1";
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
fileInfo "UUID" "78E57DA0-42AD-F5AD-E835-50865CF7E1EE";
createNode transform -s -n "persp";
	rename -uid "E24089E6-47CC-6CF3-7421-F9A902B49505";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.57939434089786 8.7115208325288336 7.7468360446408555 ;
	setAttr ".r" -type "double3" 323.66164727098902 -327.3999999999798 3.7753524030120931e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "74D39694-4C9E-E70D-62DE-B38C245C9266";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 36.300157346604962;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6 0 0.34499999999999975 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "08C293D1-455C-4D5A-44D7-BD820D72D227";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.0283755019472505 1000.1 -0.86733535438851639 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DB21041A-436A-B1B9-75A8-73B793659722";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 9.1293160231064938;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 6 0 0.34499999999999975 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B620BEE9-4494-A35A-101D-01A386776E48";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9821A13D-4690-484E-A3F2-20846924671C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 6 0 0.34499999999999975 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E8B3F642-4DC0-0C8A-3852-8BBE8DEA1F13";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "14B5AC60-4AF9-A4CE-910C-36B3C09A3FAB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.5198789914021198;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 6 0 0.34499999999999975 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "wing_L:wingMesh";
	rename -uid "868D3CF7-48CC-3146-5D16-1C83B99F87A2";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "wing_L:wingMeshShape" -p "wing_L:wingMesh";
	rename -uid "3D73B203-4868-4C40-7311-0A8E411A135E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40656881034374237 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "wing_L:wingMeshShapeOrig" -p "wing_L:wingMesh";
	rename -uid "AD348AB8-4A9D-8304-19AF-848280DE8BAB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 102 ".uvst[0].uvsp[0:101]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.375 0.125 0.625 0.125 0.625 0.125 0.875 0.125 0.625 0.6142813
		 0.875 0.13571869 0.125 0.125 0.375 0.625 0.625 0.125 0.875 0.125 0.5 0 0.5 1 0.5
		 0.75 0.5 0.61964065 0.5 0.5 0.5 0.25 0.5 0.125 0.875 0 0.875 0.13035935 0.875 0.25
		 0.625 0.25 0.625 0.125 0.625 0 0.875 0 0.875 0.13303903 0.875 0.25 0.625 0.25 0.625
		 0.125 0.625 0 0.5625 0.616961 0.5625 0.75 0.5625 0 0.5625 1 0.5625 0.125 0.5625 0.25
		 0.5625 0.5 0.4375 0 0.4375 1 0.4375 0.75 0.4375 0.62232029 0.4375 0.5 0.4375 0.25
		 0.4375 0.125 0.875 0.12767968 0.875 0 0.625 0 0.625 0.125 0.625 0.25 0.875 0.25 0.875
		 0 0.875 0.125 0.875 0.25 0.625 0.25 0.625 0.125 0.625 0 0.875 0 0.875 0.125 0.875
		 0.25 0.625 0.25 0.625 0.125 0.625 0 0.875 0.125 0.875 0 0.625 0 0.625 0.125 0.625
		 0.25 0.875 0.25 0.875 0 0.875 0.13454232 0.875 0.25 0.625 0.25 0.625 0.125 0.625
		 0 0.40656883 0 0.40656883 1 0.40656883 0.75 0.4065688 0.62364644 0.40656883 0.5 0.40656883
		 0.25 0.40656883 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[5]" -type "float3" 0 0 -0.032890856 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.032890856 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.032890856 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.046024125 ;
	setAttr ".pt[79]" -type "float3" 0 0 -0.046024125 ;
	setAttr ".pt[80]" -type "float3" 0 0 -0.046024125 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.0089658648 ;
	setAttr ".pt[86]" -type "float3" 0 0 0.0089658648 ;
	setAttr ".pt[87]" -type "float3" 0 0 0.0089658648 ;
	setAttr -s 90 ".vt[0:89]"  -0.001372546 -0.16199189 0.5 3.016413927 -0.16199204 0.54602325
		 -0.001372546 0.16199198 0.5 3.016413927 0.16199198 0.54602313 -0.001372546 0.16199201 -0.49999994
		 3.0056810379 0.16199198 -0.92931652 -0.001372546 -0.16199198 -0.5 3.0056810379 -0.16199186 -0.9293164
		 5.98942947 -0.16199198 -0.5 5.98942947 -0.16199189 0.5 5.98942947 0.16199201 -0.49999994
		 5.98942947 0.16199198 0.5 8.66192245 -0.16199207 -0.6395275 9.82107544 -0.16199198 -0.28350204
		 8.66192245 0.16199201 -0.63952744 9.82107544 0.16199201 -0.28350204 -0.001372546 7.0775926e-08 0.70381707
		 3.016413927 4.9318245e-08 0.74984032 5.98942947 7.0775926e-08 0.70381707 8.66192245 -1.2205874e-08 -0.87724298
		 3.0056810379 0.027781526 -1.16703212 -0.001372546 -5.5601816e-09 -0.73771566 10.44951153 3.4694669e-09 -0.26651731
		 5.98942947 -5.5601816e-09 -0.73771566 1.50752068 -0.16199189 0.53451729 1.50215423 -0.1619921 -0.7146582
		 1.50215423 0.013890683 -0.95237386 1.50215423 0.16199198 -0.71465832 1.50752068 0.16199204 0.53451729
		 1.50752068 1.6251331e-08 0.73833436 4.49755526 -0.16199195 -0.7345379 4.49755526 0.013890675 -0.97225356
		 4.49755526 0.16199195 -0.73453778 4.50292158 0.16199204 0.53451729 4.50292158 1.6251331e-08 0.73833436
		 4.50292158 -0.16199189 0.53451729 3.75161815 -0.16199195 -0.88162625 3.75161815 0.020836137 -1.11934185
		 3.75161815 0.16199195 -0.88162613 3.75966787 0.16199198 0.54602313 3.75966787 4.9318245e-08 0.74984032
		 3.75966787 -0.16199204 0.54602325 2.25391769 0.020836119 -1.12928164 2.25391769 -0.16199192 -0.89156604
		 2.26196718 -0.16199204 0.54602325 2.26196718 4.9318245e-08 0.74984032 2.26196718 0.16199198 0.54602313
		 2.25391769 0.16199201 -0.89156592 0.75307405 -0.16199201 0.52301145 0.75039083 -0.16199192 -0.56756991
		 0.75039083 0.0069454624 -0.80528545 0.75039083 0.16199192 -0.56756991 0.75307405 0.16199204 0.52301157
		 0.75307405 -3.4863003e-08 0.72682852 5.24349213 0.0069454624 -0.80528545 5.24349213 -0.16199192 -0.56756991
		 5.24617577 -0.16199201 0.52301145 5.24617577 -3.4863003e-08 0.72682852 5.24617577 0.16199204 0.52301157
		 5.24349213 0.16199192 -0.56756991 7.32567596 -0.16199198 -0.67910165 7.32567596 6.0930869e-09 -0.91681743
		 7.32567596 0.16199195 -0.67910159 7.93976974 0.16199201 0.15427217 8.25398827 -4.8459405e-08 0.26467305
		 7.93976974 -0.16199204 0.15427211 6.65755272 -0.16199195 -0.59452075 6.65755272 -5.3678324e-09 -0.83223653
		 6.65755272 0.16199192 -0.59452081 6.86680031 0.16199198 0.37315917 7.023909569 7.9144655e-08 0.53026843
		 6.86680031 -0.16199201 0.37315917 7.99379921 -4.9481283e-08 -0.94175923 7.99379921 -0.16199201 -0.70404375
		 8.88617516 -0.16199198 -0.053109154 9.35750294 1.6251523e-08 0.010583691 8.88617516 0.16199204 -0.053109124
		 7.99379921 0.16199198 -0.70404369 3.3331461 -0.16199191 -0.90838051 3.33314586 0.024732513 -1.14609623
		 3.3331461 0.16199198 -0.90838051 3.34270096 0.16199198 0.54602313 3.34270096 4.9318245e-08 0.74984038
		 3.34270096 -0.16199204 0.54602325 0.3796992 -0.16199195 0.51162314 0.37834388 -0.16199195 -0.53412962
		 0.37834385 0.0035081571 -0.77184522 0.37834388 0.16199195 -0.53412962 0.3796992 0.16199201 0.51162314
		 0.3796992 1.7417594e-08 0.71544015;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 84 0 2 88 0 4 87 0 6 85 0 0 16 0 1 17 0 2 4 0 3 5 0
		 4 21 0 5 20 0 6 0 0 7 1 0 7 78 0 1 83 0 8 9 0 5 80 0 10 23 0 3 81 0 11 10 0 9 18 0
		 8 66 0 9 71 0 12 13 0 10 68 0 14 19 0 11 69 0 15 14 0 13 22 0 16 2 0 17 3 0 18 11 0
		 19 12 0 20 7 0 21 6 0 16 89 1 17 82 1 20 42 1 21 16 1 22 15 0 23 8 0 18 70 1 22 19 1
		 19 72 1 23 54 1 24 44 0 25 43 0 26 50 1 27 47 0 28 46 0 29 45 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 24 1 30 55 0 31 37 1 32 59 0 33 58 0 34 57 1 35 56 0 30 31 1 31 32 1
		 32 33 1 33 34 1 34 35 1 35 30 1 36 30 0 37 79 1 38 32 0 39 33 0 40 34 1 41 35 0 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 26 1 43 7 0 44 1 0 45 17 1 46 3 0 47 5 0
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 24 0 49 25 0 50 86 1 51 27 0 52 28 0
		 53 29 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 31 1 55 8 0 56 9 0 57 18 1
		 58 11 0 59 10 0 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 73 0 61 67 1 62 77 0
		 63 76 0 64 75 1 65 74 0 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 60 0 67 23 1
		 68 62 0 69 63 0 70 64 1 71 65 0 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1 72 61 1
		 73 12 0 74 13 0 75 22 1 76 15 0 77 14 0 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 72 1
		 78 36 0 79 20 1 80 38 0 81 39 0 82 40 1 83 41 0 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 78 1 84 48 0 85 49 0;
	setAttr ".ed[166:175]" 86 21 1 87 51 0 88 52 0 89 53 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 54 49 89 -49
		mu 0 4 37 38 55 56
		f 4 53 48 90 -48
		mu 0 4 36 37 56 57
		f 4 52 47 91 80
		mu 0 4 35 36 57 51
		f 4 50 45 87 -45
		mu 0 4 33 34 52 54
		f 4 41 -25 -27 -39
		mu 0 4 30 25 20 21
		f 4 37 28 6 8
		mu 0 4 28 22 2 13
		f 4 67 56 111 -62
		mu 0 4 44 39 66 67
		f 4 115 104 63 58
		mu 0 4 70 65 40 41
		f 4 64 59 114 -59
		mu 0 4 41 42 69 70
		f 4 65 60 113 -60
		mu 0 4 42 43 68 69
		f 4 127 116 147 -122
		mu 0 4 76 71 84 85
		f 4 151 140 123 118
		mu 0 4 88 83 72 73
		f 4 124 119 150 -119
		mu 0 4 73 74 87 88
		f 4 125 120 149 -120
		mu 0 4 74 75 86 87
		f 4 55 44 88 -50
		mu 0 4 38 32 53 55
		f 4 112 -61 66 61
		mu 0 4 67 68 43 44
		f 4 51 -81 86 -46
		mu 0 4 34 35 51 52
		f 4 10 4 -38 33
		mu 0 4 12 0 22 28
		f 4 148 -121 126 121
		mu 0 4 85 86 75 76
		f 4 -23 -32 -42 -28
		mu 0 4 18 19 25 30
		f 4 122 -141 146 -117
		mu 0 4 71 72 83 84
		f 4 62 -105 110 -57
		mu 0 4 39 40 65 66
		f 4 98 93 -51 -93
		mu 0 4 59 60 34 33
		f 4 99 -47 -52 -94
		mu 0 4 60 61 35 34
		f 4 100 95 -53 46
		mu 0 4 61 62 36 35
		f 4 101 96 -54 -96
		mu 0 4 62 63 37 36
		f 4 102 97 -55 -97
		mu 0 4 63 64 38 37
		f 4 103 92 -56 -98
		mu 0 4 64 58 32 38
		f 4 74 -58 -63 -69
		mu 0 4 45 46 40 39
		f 4 -64 57 75 70
		mu 0 4 41 40 46 47
		f 4 76 71 -65 -71
		mu 0 4 47 48 42 41
		f 4 77 72 -66 -72
		mu 0 4 48 49 43 42
		f 4 -67 -73 78 73
		mu 0 4 44 43 49 50
		f 4 79 68 -68 -74
		mu 0 4 50 45 39 44
		f 4 158 -70 -75 -153
		mu 0 4 89 90 46 45
		f 4 -76 69 159 154
		mu 0 4 47 46 90 91
		f 4 160 155 -77 -155
		mu 0 4 91 92 48 47
		f 4 161 156 -78 -156
		mu 0 4 92 93 49 48
		f 4 -79 -157 162 157
		mu 0 4 50 49 93 94
		f 4 163 152 -80 -158
		mu 0 4 94 89 45 50
		f 4 -87 -37 32 -82
		mu 0 4 52 51 26 7
		f 4 -88 81 11 -83
		mu 0 4 54 52 7 9
		f 4 -89 82 5 -84
		mu 0 4 55 53 1 23
		f 4 -90 83 29 -85
		mu 0 4 56 55 23 3
		f 4 -91 84 7 -86
		mu 0 4 57 56 3 5
		f 4 -92 85 9 36
		mu 0 4 51 57 5 26
		f 4 170 165 -99 -165
		mu 0 4 96 97 60 59
		f 4 171 -95 -100 -166
		mu 0 4 97 98 61 60
		f 4 172 167 -101 94
		mu 0 4 98 99 62 61
		f 4 173 168 -102 -168
		mu 0 4 99 100 63 62
		f 4 174 169 -103 -169
		mu 0 4 100 101 64 63
		f 4 175 164 -104 -170
		mu 0 4 101 95 58 64
		f 4 -111 -44 39 -106
		mu 0 4 66 65 31 15
		f 4 -112 105 14 -107
		mu 0 4 67 66 15 14
		f 4 -108 -113 106 19
		mu 0 4 24 68 67 14
		f 4 -114 107 30 -109
		mu 0 4 69 68 24 17
		f 4 -115 108 18 -110
		mu 0 4 70 69 17 16
		f 4 43 -116 109 16
		mu 0 4 31 65 70 16
		f 4 134 -118 -123 -129
		mu 0 4 77 78 72 71
		f 4 -124 117 135 130
		mu 0 4 73 72 78 79
		f 4 136 131 -125 -131
		mu 0 4 79 80 74 73
		f 4 137 132 -126 -132
		mu 0 4 80 81 75 74
		f 4 -127 -133 138 133
		mu 0 4 76 75 81 82
		f 4 139 128 -128 -134
		mu 0 4 82 77 71 76
		f 4 -40 -130 -135 -21
		mu 0 4 15 31 78 77
		f 4 -136 129 -17 23
		mu 0 4 79 78 31 16
		f 4 -19 25 -137 -24
		mu 0 4 16 17 80 79
		f 4 -31 40 -138 -26
		mu 0 4 17 24 81 80
		f 4 -139 -41 -20 21
		mu 0 4 82 81 24 14
		f 4 -15 20 -140 -22
		mu 0 4 14 15 77 82
		f 4 -147 -43 31 -142
		mu 0 4 84 83 25 19
		f 4 -148 141 22 -143
		mu 0 4 85 84 19 18
		f 4 -144 -149 142 27
		mu 0 4 30 86 85 18
		f 4 -150 143 38 -145
		mu 0 4 87 86 30 21
		f 4 -151 144 26 -146
		mu 0 4 88 87 21 20
		f 4 42 -152 145 24
		mu 0 4 25 83 88 20
		f 4 -33 -154 -159 -13
		mu 0 4 10 27 90 89
		f 4 -160 153 -10 15
		mu 0 4 91 90 27 11
		f 4 -8 17 -161 -16
		mu 0 4 11 3 92 91
		f 4 -30 35 -162 -18
		mu 0 4 3 23 93 92
		f 4 -163 -36 -6 13
		mu 0 4 94 93 23 1
		f 4 -12 12 -164 -14
		mu 0 4 1 10 89 94
		f 4 3 -171 -1 -11
		mu 0 4 6 97 96 8
		f 4 -167 -172 -4 -34
		mu 0 4 29 98 97 6
		f 4 2 -173 166 -9
		mu 0 4 4 99 98 29
		f 4 1 -174 -3 -7
		mu 0 4 2 100 99 4
		f 4 34 -175 -2 -29
		mu 0 4 22 101 100 2
		f 4 0 -176 -35 -5
		mu 0 4 0 95 101 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wing_L:featherMesh";
	rename -uid "563FF8A3-4191-1675-D4F5-32B1271F9578";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 4.6927007734775543 0.30505079030990601 -1.7223161458969116 ;
	setAttr ".sp" -type "double3" 4.6927007734775543 0.30505079030990601 -1.7223161458969116 ;
createNode mesh -n "wing_L:featherMeshShape" -p "wing_L:featherMesh";
	rename -uid "4FEFB7E8-46E9-B671-66E4-3C9B2F527162";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "wing_L:polySurfaceShape1" -p "wing_L:featherMesh";
	rename -uid "0EDCF5F5-47FA-583E-2B8F-0E98D441A32E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 196 ".uvst[0].uvsp[0:195]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625
		 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt";
	setAttr ".pt[4]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[12]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[29]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[36]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[37]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[38]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[39]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[44]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[45]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[46]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[52]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[53]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[54]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[60]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[62]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[63]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[68]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[69]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[70]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[71]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[76]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[77]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[84]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[85]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[86]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[87]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[92]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[93]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[95]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[100]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[101]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[108]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[109]" -type "float3" 0 -0.10595324 0 ;
	setAttr ".pt[110]" -type "float3" 0 0.10595324 0 ;
	setAttr ".pt[111]" -type "float3" 0 0.10595324 0 ;
	setAttr -s 112 ".vt[0:111]"  5.71057272 0.1396572 -0.16468984 6.55821228 0.1396572 0.36588681
		 5.71057272 0.47044438 -0.16468984 6.55821228 0.47044438 0.36588681 7.48441124 0.47044438 -2.9985342
		 8.33205032 0.47044438 -2.46795774 7.48441124 0.1396572 -2.9985342 8.33205032 0.1396572 -2.46795774
		 5.67435598 0.1396572 -0.024323642 6.63039112 0.1396572 0.26893246 5.67435598 0.47044438 -0.024323642
		 6.63039112 0.47044438 0.26893246 6.65477753 0.47044438 -3.22056317 7.61081266 0.47044438 -2.92730761
		 6.65477753 0.1396572 -3.22056317 7.61081266 0.1396572 -2.92730761 5.45894432 0.1396572 0.023860067
		 6.45319557 0.1396572 0.13094124 5.45894432 0.47044438 0.023860067 6.45319557 0.47044438 0.13094124
		 5.81694126 0.47044438 -3.30014539 6.81119251 0.47044438 -3.19306445 5.81694126 0.1396572 -3.30014539
		 6.81119251 0.1396572 -3.19306445 4.82491016 0.1396572 0.10437977 5.82491016 0.1396572 0.10437977
		 4.82491016 0.47044438 0.10437977 5.82491016 0.47044438 0.10437977 4.82491016 0.47044438 -3.23884821
		 5.82491016 0.47044438 -3.23884821 4.82491016 0.1396572 -3.23884821 5.82491016 0.1396572 -3.23884821
		 4.18768644 0.1396572 -0.022827864 5.18768644 0.1396572 -0.022827864 4.18768644 0.47044438 -0.022827864
		 5.18768644 0.47044438 -0.022827864 4.18768644 0.47044438 -3.36605501 5.18768644 0.47044438 -3.36605501
		 4.18768644 0.1396572 -3.36605501 5.18768644 0.1396572 -3.36605501 3.66370249 0.1396572 -0.18295062
		 4.66370249 0.1396572 -0.18295062 3.66370249 0.47044438 -0.18295062 4.66370249 0.47044438 -0.18295062
		 3.66370249 0.47044438 -3.52617836 4.66370249 0.47044438 -3.52617836 3.66370249 0.1396572 -3.52617836
		 4.66370249 0.1396572 -3.52617836 3.15835786 0.1396572 -0.35961634 4.15835762 0.1396572 -0.35961634
		 3.15835786 0.47044438 -0.35961634 4.15835762 0.47044438 -0.35961634 3.15835786 0.47044438 -3.70284367
		 4.15835762 0.47044438 -3.70284367 3.15835786 0.1396572 -3.70284367 4.15835762 0.1396572 -3.70284367
		 2.50932074 0.1396572 -0.57997704 3.50932074 0.1396572 -0.57997704 2.50932074 0.47044438 -0.57997704
		 3.50932074 0.47044438 -0.57997704 2.50932074 0.47044438 -3.9232049 3.50932074 0.47044438 -3.9232049
		 2.50932074 0.1396572 -3.9232049 3.50932074 0.1396572 -3.9232049 1.7467258 0.1396572 -0.53735614
		 2.7467258 0.1396572 -0.53735614 1.7467258 0.47044438 -0.53735614 2.7467258 0.47044438 -0.53735614
		 1.7467258 0.47044438 -3.88058472 2.7467258 0.47044438 -3.88058472 1.7467258 0.1396572 -3.88058472
		 2.7467258 0.1396572 -3.88058472 1.10290432 0.1396572 -0.36426777 2.10290432 0.1396572 -0.36426777
		 1.10290432 0.47044438 -0.36426777 2.10290432 0.47044438 -0.36426777 1.10290432 0.47044438 -3.70749593
		 2.10290432 0.47044438 -3.70749593 1.10290432 0.1396572 -3.70749593 2.10290432 0.1396572 -3.70749593
		 0.59662867 0.1396572 -0.11192149 1.59662867 0.1396572 -0.11192149 0.59662867 0.47044438 -0.11192149
		 1.59662867 0.47044438 -0.11192149 0.59662867 0.47044438 -3.45514989 1.59662867 0.47044438 -3.45514989
		 0.59662867 0.1396572 -3.45514989 1.59662867 0.1396572 -3.45514989 -0.045990169 0.1396572 0.027685851
		 0.95400983 0.1396572 0.027685851 -0.045990169 0.47044438 0.027685851 0.95400983 0.47044438 0.027685851
		 -0.045990169 0.47044438 -3.31554294 0.95400983 0.47044438 -3.31554294 -0.045990169 0.1396572 -3.31554294
		 0.95400983 0.1396572 -3.31554294 5.76797962 0.1396572 -0.24791366 6.48048592 0.1396572 0.45375505
		 5.76797962 0.47044438 -0.24791366 6.48048592 0.47044438 0.45375505 8.11382198 0.47044438 -2.62997723
		 8.82632637 0.47044438 -1.92830873 8.11382198 0.1396572 -2.62997723 8.82632637 0.1396572 -1.92830873
		 6.028678417 0.1396572 -0.39209312 6.52055788 0.1396572 0.47857261 6.52055788 0.47044438 0.47857261
		 6.028678417 0.47044438 -0.39209312 9.43139172 0.47044438 -1.16588497 8.93951416 0.47044438 -2.036550045
		 9.43139172 0.1396572 -1.16588497 8.93951416 0.1396572 -2.036550045;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 98 99 0 100 101 0 102 103 0 96 98 0 97 99 0 98 100 0 99 101 0
		 100 102 0 101 103 0 102 96 0 103 97 0 104 105 0 105 106 0 107 106 0 104 107 0 106 108 0
		 109 108 0 107 109 0 108 110 0 111 110 0 109 111 0;
	setAttr ".ed[166:167]" 110 105 0 111 104 0;
	setAttr -s 84 -ch 336 ".fc[0:83]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 156 157 -159 -160
		mu 0 4 168 169 170 171
		f 4 158 160 -162 -163
		mu 0 4 171 170 172 173
		f 4 161 163 -165 -166
		mu 0 4 173 172 174 175
		f 4 164 166 -157 -168
		mu 0 4 175 174 176 177
		f 4 -167 -164 -161 -158
		mu 0 4 169 178 179 170
		f 4 167 159 162 165
		mu 0 4 180 168 171 181
		f 4 148 145 -150 -145
		mu 0 4 182 183 184 185
		f 4 150 146 -152 -146
		mu 0 4 183 186 187 184
		f 4 152 147 -154 -147
		mu 0 4 186 188 189 187
		f 4 154 144 -156 -148
		mu 0 4 188 190 191 189
		f 4 149 151 153 155
		mu 0 4 185 184 192 193
		f 4 -153 -151 -149 -155
		mu 0 4 194 195 183 182;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "wing_L:featherMeshShapeOrig" -p "wing_L:featherMesh";
	rename -uid "B31A8373-4B51-92D7-1D02-948AF7D377B5";
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
createNode transform -n "wing_L:module";
	rename -uid "246054B5-4DB3-A18E-1CA6-728945F15B57";
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
createNode transform -n "wing_L:setup" -p "wing_L:module";
	rename -uid "29812131-43FF-4AA3-BBD2-779AC379E98B";
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
	addAttr -ci true -sn "switchFKIK" -ln "switchFKIK" -nn "Switch FK <==> IK" -dv 1 
		-min 0 -max 1 -at "double";
	addAttr -ci true -sn "showSecondaryCtrls" -ln "showSecondaryCtrls" -nn "Show Secondary Ctrls" 
		-min 0 -max 1 -at "bool";
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
	setAttr -k on ".switchFKIK";
	setAttr -k on ".showSecondaryCtrls" yes;
createNode transform -n "wing_L:guid_GRP" -p "wing_L:module";
	rename -uid "4FFF3F35-4000-4B05-F22D-33BBA5569292";
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
createNode transform -n "wing_L:hand__GUD" -p "wing_L:guid_GRP";
	rename -uid "AF589D80-429F-21C3-CB32-D296B3B68897";
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
	setAttr ".t" -type "double3" 6 0 0.345 ;
	setAttr ".r" -type "double3" 0 8.3036337235543005 0 ;
createNode rigShape -n "wing_L:hand__GUDShape" -p "wing_L:hand__GUD";
	rename -uid "8B4BAFD5-421F-DA5A-9D74-86BD4F0836E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.25 0 0 0 0 0.25 0 0 0 0 0.25 0 0 0 0 1;
createNode transform -n "wing_L:radius__GUD" -p "wing_L:guid_GRP";
	rename -uid "B622C4DD-47FD-A381-7759-25B430FCEF82";
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
	setAttr ".t" -type "double3" 3 0 -0.05 ;
	setAttr ".r" -type "double3" 0 -7.5007979957868605 0 ;
createNode rigShape -n "wing_L:radius__GUDShape" -p "wing_L:radius__GUD";
	rename -uid "E9972855-4227-48FA-4CDD-558B6677629A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.25 0 0 0 0 0.25 0 0 0 0 0.25 0 0 0 0 1;
createNode transform -n "wing_L:humerus__BUF" -p "wing_L:guid_GRP";
	rename -uid "E78EE503-4504-CE88-A06A-3DB2FD260633";
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
	setAttr ".t" -type "double3" 0 0 0.4 ;
	setAttr ".r" -type "double3" 0 8.530765609948137 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "wing_L:humerus__GUD" -p "wing_L:humerus__BUF";
	rename -uid "70053248-4FAB-7943-4701-E68963AEA41F";
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
createNode rigShape -n "wing_L:humerus__GUDShape" -p "wing_L:humerus__GUD";
	rename -uid "4DA3E9FB-473E-6606-C590-C6A7F8A45978";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.5 0 ;
	setAttr ".shapeType" 25;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.25 0 0 0 0 0.25 0 0 0 0 0.25 0 0 0 0 1;
createNode transform -n "wing_L:controllers_GRP" -p "wing_L:module";
	rename -uid "73F90FC6-4C89-D968-5E7C-469E52C0790C";
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
createNode transform -n "wing_L:IK_GRP" -p "wing_L:controllers_GRP";
	rename -uid "AA6862AE-40A9-0467-A8F7-BCB235A8B191";
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
createNode transform -n "wing_L:humerusPivot_IK_BUF" -p "wing_L:IK_GRP";
	rename -uid "49B9D20F-4D2A-D6D0-AB03-549C72E5446E";
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
	setAttr ".t" -type "double3" 6.8621244302700773e-18 0 0.4 ;
	setAttr ".r" -type "double3" 0 8.5307656099481388 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "wing_L:humerusPivot_IK_GRP" -p "wing_L:humerusPivot_IK_BUF";
	rename -uid "5FAEDA30-40EB-0F85-344F-3686B7705EB5";
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
	setAttr ".opm" -type "matrix" 1 0 2.7755575615628914e-17 0 0 1 0 0 -2.7755575615628914e-17 0 1 0
		 6.9388939039072284e-18 0 0 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 5;
createNode transform -n "wing_L:upVector_IK_BUF" -p "wing_L:IK_GRP";
	rename -uid "AEAC6212-467A-0437-3553-A38ED0CECE83";
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
	setAttr ".t" -type "double3" 3 0 -6 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "wing_L:upVector_IK_CON" -p "wing_L:upVector_IK_BUF";
	rename -uid "4016F4B6-4E61-5DDE-A926-83B0BEA601EE";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:upVector_IK_CONShape" -p "wing_L:upVector_IK_CON";
	rename -uid "2B5B192C-4BC9-9669-04DC-5496424258DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 25;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.25 0 0 0 0 0.25 0 0 0 0 0.25 0 0 0 0 1;
createNode transform -n "wing_L:hand_IK_BUF" -p "wing_L:IK_GRP";
	rename -uid "1E80D41F-4123-E54C-8704-18BDA6D111E4";
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
	setAttr ".t" -type "double3" 6 0 0.345 ;
	setAttr ".r" -type "double3" 0 8.3036337235543058 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "wing_L:hand_IK_CON" -p "wing_L:hand_IK_BUF";
	rename -uid "D2019B7B-4947-E503-AA06-0CA324A1847F";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 1 0 1.3877787807814457e-16 0 0 1 0 0 -1.3877787807814457e-16 0 1 0
		 0 0 -2.2204460492503131e-16 1;
	setAttr ".rig_controllerType" 2;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:hand_IK_CONShape" -p "wing_L:hand_IK_CON";
	rename -uid "8A21E20C-4ECC-7EF1-4EA8-11A20E1B95AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 24;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 2.2805401483435723 0 -0.10425477937387789 0
		 0 0.38068384412823519 0 0 0.040225166447631425 0 0.87991272542668142 0 2.2543027126009063 0 -0.50781413953736931 1;
createNode transform -n "wing_L:FK_GRP" -p "wing_L:controllers_GRP";
	rename -uid "53BA699E-41AC-6E0D-C10E-278D2C38360C";
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
createNode transform -n "wing_L:humerus_FK_BUF" -p "wing_L:FK_GRP";
	rename -uid "EE5DCA9A-4762-F95F-7775-15A0F8375CBB";
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
	setAttr ".t" -type "double3" 6.8621244302700773e-18 0 0.4 ;
	setAttr ".r" -type "double3" 0 8.5307656099481388 0 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 0 1 0 ;
	setAttr ".rig_objectType" 1;
createNode transform -n "wing_L:humerus_FK_CON" -p "wing_L:humerus_FK_BUF";
	rename -uid "FB5F2E06-48BB-2DE0-F5DE-5ABBBAA93759";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 1 0 2.7755575615628914e-17 0 0 1 0 0 -2.7755575615628914e-17 0 1 0
		 6.9388939039072284e-18 0 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:humerus_FK_CONShape" -p "wing_L:humerus_FK_CON";
	rename -uid "84E89ADE-49BD-4BCF-CC50-D2AE599A1947";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 36;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -1.6850866640521853e-16 -0.3794477836156207 0 0
		 -1 4.4408920985006262e-16 -1.224646799147353e-16 0 4.6468951364842738e-17 -2.3385275161494153e-32 -0.3794477836156207 0
		 0.24962725290799379 -1.0061107064210909e-16 6.4798844488932123e-17 1;
createNode transform -n "wing_L:radius_FK_CON" -p "wing_L:humerus_FK_CON";
	rename -uid "5EA05CC6-4383-7C53-9B1E-CD85BDFB8C53";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 0.96110970454059008 0 0.27616686230954657 0 0 1 0 0
		 -0.27616686230954657 0 0.96110970454059008 0 3.0335622624235028 0 4.4408920985006262e-16 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:radius_FK_CONShape" -p "wing_L:radius_FK_CON";
	rename -uid "270F0DFA-46D5-4322-57A9-53831453E19C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 36;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -1.6850866640521853e-16 -0.3794477836156207 0 0
		 -1 4.4408920985006262e-16 -1.224646799147353e-16 0 4.6468951364842738e-17 -2.3385275161494153e-32 -0.3794477836156207 0
		 0.24962725290799379 -1.0061107064210909e-16 6.4798844488932123e-17 1;
createNode transform -n "wing_L:hand_FK_CON" -p "wing_L:radius_FK_CON";
	rename -uid "79BA5369-4C5D-C2EB-8BA1-8DB4FB6BC683";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 0.96219693029281195 0 -0.27235467195384921 0 0 1 0 0
		 0.27235467195384921 0 0.96219693029281195 0 3.0258924303418322 0 -3.5344990823027445e-16 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:hand_FK_CONShape" -p "wing_L:hand_FK_CON";
	rename -uid "4EF6DEBE-43B2-674F-6DAB-4C95D26E0759";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 36;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" -1.6850866640521853e-16 -0.3794477836156207 0 0
		 -1 4.4408920985006262e-16 -1.224646799147353e-16 0 4.6468951364842738e-17 -2.3385275161494153e-32 -0.3794477836156207 0
		 0.24962725290799379 -1.0061107064210909e-16 6.4798844488932123e-17 1;
createNode transform -n "wing_L:humerusSubCtrl_FK_BUF" -p "wing_L:FK_GRP";
	rename -uid "68FD0350-4D05-90D0-87C7-F683043D4D7B";
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
createNode transform -n "wing_L:humerusSubCtrl_FK_CON" -p "wing_L:humerusSubCtrl_FK_BUF";
	rename -uid "D0ACEC05-45BB-3777-0AC5-6998A73529B1";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".opm" -type "matrix" 0.98893647968046239 0 -0.14833960751334765 0 0 1 0 0
		 0.14833960751334768 0 0.98893647968046261 0 0 0 0 1;
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:humerusSubCtrl_FK_CONShape" -p "wing_L:humerusSubCtrl_FK_CON";
	rename -uid "B79BF44D-4750-A970-D9B8-AFA73E3F58AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.18933033348900991 0 0.028240193583480105 0
		 0 1 0 0 -0.1475262461043797 0 0.98905814121837654 0 0.35082150164992276 0.38916428490226984 -1.0791707916856619 1;
createNode transform -n "wing_L:radiusSubCtrl_FK_BUF" -p "wing_L:FK_GRP";
	rename -uid "60B9F579-4CE5-0898-C645-09858EF5CAF2";
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
createNode transform -n "wing_L:radiusSubCtrl_FK_CON" -p "wing_L:radiusSubCtrl_FK_BUF";
	rename -uid "6966185A-4BDA-BEE8-69D3-F5B21B250B0A";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:radiusSubCtrl_FK_CONShape" -p "wing_L:radiusSubCtrl_FK_CON";
	rename -uid "4C0495FA-4DD8-2E07-0A3F-4DB8743E60BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.1912572033220577 0 -0.0080103614223838611 0
		 0 1 0 0 0.041845979103872777 0 0.99912407339270848 0 0.23309457574299527 0.38916428490226984 -1.0460677721654277 1;
createNode transform -n "wing_L:handSubCtrl_FK_BUF" -p "wing_L:FK_GRP";
	rename -uid "E16EC5F2-44F0-FBF1-8C81-24A5E53A028B";
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
createNode transform -n "wing_L:handSubCtrl_FK_CON" -p "wing_L:handSubCtrl_FK_BUF";
	rename -uid "6CF8B619-4463-0A4A-C692-FEB1E844B836";
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
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rig_controllerType" 1;
	setAttr ".rig_objectType" 3;
createNode rigShape -n "wing_L:handSubCtrl_FK_CONShape" -p "wing_L:handSubCtrl_FK_CON";
	rename -uid "E84ACFC5-4E24-0A47-5E31-7F85726EA96F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".shapeType" 1;
	setAttr ".wireWidth" 2;
	setAttr ".fill" yes;
	setAttr ".transparency" 0.10000000149011612;
	setAttr ".offsetMatrix" -type "matrix" 0.1912572033220577 0 -0.0080103614223838646 0
		 0 1 0 0 0.041845979103872791 0 0.99912407339270848 0 0.16924656159875245 0.38916428490226984 -1.0433936471624827 1;
createNode transform -n "wing_L:bones_GRP" -p "wing_L:module";
	rename -uid "1F610E45-4D62-372D-7C6D-82B07BF6AE38";
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
createNode joint -n "wing_L:humerus__JNT" -p "wing_L:bones_GRP";
	rename -uid "1BE444E2-47EA-79D0-518F-1395FD15D9DA";
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
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius__JNT" -p "wing_L:bones_GRP";
	rename -uid "A9F38ACE-48E2-2F55-7249-369945A97416";
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
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand__JNT" -p "wing_L:bones_GRP";
	rename -uid "64D99150-4F1A-0A00-DCFD-93B9E5B37F32";
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
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:lPropatagiale01_JNT" -p "wing_L:bones_GRP";
	rename -uid "38D5977F-4DAC-3ADD-9B83-BFA904DC5F7E";
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
	setAttr ".bps" -type "matrix" 0.99995798875867603 0 -0.0091662815636213962 0 0 1 0 0
		 0.0091662815636213962 0 0.99995798875867603 0 0.90000003576278687 0 0.3917499996721745 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:lPropatagiale02_JNT" -p "wing_L:bones_GRP";
	rename -uid "F715183C-43EC-8169-DDC5-BA9A10DD3FD2";
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
	setAttr ".bps" -type "matrix" 0.99995798875867592 0 -0.0091662815636206017 0 0 1 0 0
		 0.0091662815636206017 0 0.99995798875867592 0 1.950000062584877 0 0.38212499942630529 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:lPropatagiale03_JNT" -p "wing_L:bones_GRP";
	rename -uid "F657A228-417A-3DD7-B3B8-5C9D54B46D24";
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
	setAttr ".bps" -type "matrix" 0.99995798875867581 0 -0.009166281563620966 0 0 1 0 0
		 0.009166281563620966 0 0.99995798875867581 0 3.0000000894069672 0 0.37249999918043614 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:lPropatagiale04_JNT" -p "wing_L:bones_GRP";
	rename -uid "2C437912-4A55-73D0-EA9B-14BCE6F3113F";
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
	setAttr ".bps" -type "matrix" 0.99995798875867581 0 -0.0091662815636217119 0 0 1 0 0
		 0.0091662815636217119 0 0.99995798875867581 0 4.0500001162290573 0 0.36287499893456698 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:lPropatagiale05_JNT" -p "wing_L:bones_GRP";
	rename -uid "9F2C5CDD-4E1D-3954-155E-1DBECCD87B5E";
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
	setAttr ".bps" -type "matrix" 0.9999579887586757 0 -0.0091662815636216703 0 0 1 0 0
		 0.0091662815636216703 0 0.9999579887586757 0 5.1000001430511475 0 0.35324999868869783 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:humerus_05__JNT" -p "wing_L:bones_GRP";
	rename -uid "256CA902-4815-3021-AE44-C4A72EC4259A";
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
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:humerus_04__JNT" -p "wing_L:bones_GRP";
	rename -uid "565FCD91-47F9-ADC5-437B-4BBB5AB0F4B0";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:humerus_03__JNT" -p "wing_L:bones_GRP";
	rename -uid "5AFF4B9C-463B-9B03-5F81-B296519415F8";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:humerus_02__JNT" -p "wing_L:bones_GRP";
	rename -uid "A49510D8-477F-3AB8-5F42-BC91F010D3F7";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:humerus_01__JNT" -p "wing_L:bones_GRP";
	rename -uid "BE2B3612-41D8-FAF8-5377-2383FCE3630A";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius_01__JNT" -p "wing_L:bones_GRP";
	rename -uid "62068AA0-45F3-C9A0-ADEE-ABBBE35DC16E";
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
	setAttr ".t" -type "double3" -4.4408920985006262e-16 0 5.5511151231257827e-17 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4408920985006262e-16 0 5.5511151231257827e-17 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius_02__JNT" -p "wing_L:bones_GRP";
	rename -uid "A0BC36BC-449F-5651-84EB-0D870C39C17F";
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
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 1.1102230246251565e-16 ;
	setAttr ".jo" -type "double3" 0 -1.5902773407317588e-15 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.8817841970012523e-16 0 1.1102230246251565e-16 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius_03__JNT" -p "wing_L:bones_GRP";
	rename -uid "3641B765-41F6-F019-D4E7-C7AE98D0A063";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius_04__JNT" -p "wing_L:bones_GRP";
	rename -uid "3A2AD111-4537-2AA8-E4B9-7F900A9C6395";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.1102230246251565e-16 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.8817841970012523e-16 0 -1.1102230246251565e-16 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:radius_05__JNT" -p "wing_L:bones_GRP";
	rename -uid "0BC45190-413A-6D8E-EF12-B78B1D93F90C";
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
	setAttr ".t" -type "double3" 0 0 5.5511151231257827e-17 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.5511151231257827e-17 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand_01__JNT" -p "wing_L:bones_GRP";
	rename -uid "925F3BAD-46CC-9404-A5D6-8F908A46F59E";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand_02__JNT" -p "wing_L:bones_GRP";
	rename -uid "66E0D7DB-408E-7048-7723-D7A12F42EAF9";
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
	setAttr ".jo" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand_03__JNT" -p "wing_L:bones_GRP";
	rename -uid "A181ACD5-4CA7-AB0E-CCA4-1881461B3ACD";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand_04__JNT" -p "wing_L:bones_GRP";
	rename -uid "576DB1A3-4E8B-487C-31C9-A8B2CB25FF8B";
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
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 2.2204460492503131e-16 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.8817841970012523e-16 0 2.2204460492503131e-16 1;
	setAttr ".rig_objectType" 8;
createNode joint -n "wing_L:hand_05__JNT" -p "wing_L:bones_GRP";
	rename -uid "587B3355-4122-5D96-C96D-889D633C2E9F";
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
	setAttr ".t" -type "double3" -8.8817841970012523e-16 0 -2.2204460492503131e-16 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.8817841970012523e-16 0 -2.2204460492503131e-16 1;
	setAttr ".rig_objectType" 8;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0F180438-4F9E-34AC-1DAE-7FBCBB6095D6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "95232793-4193-C6A8-7366-13B0DD773F87";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C202B466-43DA-1734-9034-05BA440ECD19";
createNode displayLayerManager -n "layerManager";
	rename -uid "258556CB-424C-B9E3-E479-EF93A71A393F";
createNode displayLayer -n "defaultLayer";
	rename -uid "C141A1C3-496D-0950-28FC-44AAE00D43D8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B70C5414-4838-5BAD-5D28-B79792F0FC97";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A387206F-41D1-0104-DE07-01B0ADDC9C61";
	setAttr ".g" yes;
createNode mute -n "wing_L:aTools_StoreNode";
	rename -uid "F954A827-4271-A2A3-B05A-9F86ECC00AA8";
createNode mute -n "wing_L:scene";
	rename -uid "2A7C70EE-4734-A643-0897-3AAF6DAAB5AA";
createNode mute -n "wing_L:aTools_StoreNode1";
	rename -uid "D4F7ED82-4BC8-4F76-D7DD-FBAD13F71FC4";
createNode mute -n "wing_L:scene1";
	rename -uid "7F72343F-4A10-B441-9EE4-E785FFBE2ADC";
createNode mute -n "wing_L:aTools_StoreNode2";
	rename -uid "1D82DA69-46E4-38A7-A6DE-7ABF4BC5CFFA";
createNode mute -n "wing_L:scene2";
	rename -uid "5ED75403-4CBF-C9FF-27AF-D897D0547493";
createNode mute -n "wing_L:aTools_StoreNode3";
	rename -uid "DD9C3DB7-4F15-14A6-C4FD-4991C6B00495";
createNode mute -n "wing_L:scene3";
	rename -uid "203653A1-4EAA-BFD8-A2BA-ED9B171F7A17";
createNode mute -n "wing_L:aTools_StoreNode4";
	rename -uid "4B440E99-422B-7ED1-BEA5-228042D3684D";
createNode mute -n "wing_L:scene4";
	rename -uid "1D3F2470-4D7E-542F-4208-9687454BF5D7";
createNode mute -n "wing_L:aTools_StoreNode5";
	rename -uid "4F8D7129-4697-0AAC-4D25-C0BD8C07DCE9";
createNode mute -n "wing_L:scene5";
	rename -uid "77F1354C-4B4D-43EC-DDA7-229564123BFE";
createNode mute -n "wing_L:aTools_StoreNode6";
	rename -uid "562AAEE0-4C0E-3422-0B85-7A859531D433";
createNode mute -n "wing_L:scene6";
	rename -uid "F8EB68E9-4CCC-98B6-B8C0-2B9CB0FC9577";
createNode mute -n "wing_L:aTools_StoreNode7";
	rename -uid "D4D80F03-456C-32DD-4940-9EB1047CD6BF";
createNode mute -n "wing_L:scene7";
	rename -uid "D601D312-4017-835A-5ED6-CBA111E812CE";
createNode mute -n "wing_L:aTools_StoreNode8";
	rename -uid "B386A551-4C6E-82BF-B715-A5B7E494343F";
createNode mute -n "wing_L:scene8";
	rename -uid "EF534422-44B6-9EC3-399D-EAB6E76197BB";
createNode mute -n "wing_L:aTools_StoreNode9";
	rename -uid "4E63DF64-4F98-A52E-7BAB-5B84E1B34446";
createNode mute -n "wing_L:scene9";
	rename -uid "A6EDC3ED-40A3-6302-7B2B-4AA7E65E0C82";
createNode mute -n "wing_L:aTools_StoreNode10";
	rename -uid "76F9311E-4BBA-6A48-0632-4A98C55F3942";
createNode mute -n "wing_L:scene10";
	rename -uid "DD8A4101-4EEF-C302-E59A-8D81D645B82B";
createNode mute -n "wing_L:aTools_StoreNode11";
	rename -uid "DECE5B0E-4B6E-E10F-96CE-A195D4A18021";
createNode mute -n "wing_L:scene11";
	rename -uid "B123A7A2-4145-C979-B79D-439F68CC2B9C";
createNode mute -n "wing_L:aTools_StoreNode12";
	rename -uid "91EA6876-4725-CE77-F722-0D9BDE367AE1";
createNode mute -n "wing_L:scene12";
	rename -uid "67CFE43D-4FCD-FCE0-F4B4-9998370D6B1B";
createNode mute -n "wing_L:aTools_StoreNode13";
	rename -uid "C41EAE30-490E-5F8C-F4C2-389BC442A635";
createNode mute -n "wing_L:scene13";
	rename -uid "5FCA270D-4B2C-D860-375E-159FBEB14124";
createNode mute -n "wing_L:aTools_StoreNode14";
	rename -uid "A069A68C-4EA9-E978-9FA9-D696FF6978BB";
createNode mute -n "wing_L:scene14";
	rename -uid "A45038C6-494E-6EE9-9D3A-E4AA31DBC90B";
createNode mute -n "wing_L:aTools_StoreNode15";
	rename -uid "DED23D7D-451A-B207-A41F-FCBE981D214B";
createNode mute -n "wing_L:scene15";
	rename -uid "AE171821-4766-8765-D123-43959ABE5A00";
createNode mute -n "wing_L:aTools_StoreNode16";
	rename -uid "802E5A19-4646-396A-2567-A5B0FE78F12D";
createNode mute -n "wing_L:scene16";
	rename -uid "890C91AB-4C24-B2A7-60AB-3AB34996525B";
createNode mute -n "wing_L:aTools_StoreNode17";
	rename -uid "47A0CDA1-432C-A2F0-F8CA-0DBE3DD4532E";
createNode mute -n "wing_L:scene17";
	rename -uid "253D602C-466C-6256-1556-868BB6FE92BA";
createNode mute -n "wing_L:aTools_StoreNode18";
	rename -uid "74832940-4BAB-AFAF-4303-9CAA09997A7B";
createNode mute -n "wing_L:scene18";
	rename -uid "EC58646F-4CAD-69BF-3233-94B693DD2A65";
createNode mute -n "wing_L:aTools_StoreNode19";
	rename -uid "F0334B83-4AC3-4A09-E260-D9A52A9E50B8";
createNode mute -n "wing_L:scene19";
	rename -uid "BFF2BA65-4729-3BE4-4F8D-F899E5B38C08";
createNode mute -n "wing_L:aTools_StoreNode20";
	rename -uid "2C0CB7CA-45B0-D156-7E7E-898FBC35BE95";
createNode mute -n "wing_L:scene20";
	rename -uid "2988A95B-4864-F18A-F793-CA8CD840B01F";
createNode mute -n "wing_L:aTools_StoreNode21";
	rename -uid "CDD75DCE-4C92-9C0E-9B53-679ED1B66B90";
createNode mute -n "wing_L:scene21";
	rename -uid "4C0FF472-42F2-A55F-285E-DC9CA6E5566F";
createNode mute -n "wing_L:aTools_StoreNode22";
	rename -uid "5E538C97-43AC-88E4-3092-A595C977843F";
createNode mute -n "wing_L:scene22";
	rename -uid "7671F59E-4651-F759-B35F-5BAD422F26EA";
createNode mute -n "wing_L:aTools_StoreNode23";
	rename -uid "3B274CE8-48F1-F049-EB71-BD9663B2F332";
createNode mute -n "wing_L:scene23";
	rename -uid "00ADD6F6-45BB-FCFD-13AD-65874E74D320";
createNode mute -n "wing_L:aTools_StoreNode24";
	rename -uid "613D0842-46F0-A6C3-C74D-739FF0113288";
createNode mute -n "wing_L:scene24";
	rename -uid "FE70AA2A-4DA3-6462-289F-1B9F7322E2E8";
createNode mute -n "wing_L:aTools_StoreNode25";
	rename -uid "6EB35C1B-47AF-B5A7-1378-058896842026";
createNode mute -n "wing_L:scene25";
	rename -uid "C4B6CC3B-4C77-9D8B-C026-EA937A7A5327";
createNode mute -n "wing_L:aTools_StoreNode26";
	rename -uid "37128BD7-41B7-7964-BA77-339A4BB812CD";
createNode mute -n "wing_L:scene26";
	rename -uid "ED2044C5-4D32-FF6C-37B6-8BB719A6BA6C";
createNode mute -n "wing_L:aTools_StoreNode27";
	rename -uid "4AA5F8F9-445C-DC50-2942-8FA9B17007B7";
createNode mute -n "wing_L:scene27";
	rename -uid "6FA50EF9-4C29-B008-FD53-EE8F013C6690";
createNode mute -n "wing_L:aTools_StoreNode28";
	rename -uid "0A5795FE-4AF0-4E07-3397-7EAEDC13384E";
createNode mute -n "wing_L:scene28";
	rename -uid "02A9FCF9-4D47-B922-C4CC-128F03C5D371";
createNode mute -n "wing_L:aTools_StoreNode29";
	rename -uid "E5DEC331-4768-14BB-DA6A-7298502F55FC";
createNode mute -n "wing_L:scene29";
	rename -uid "B255BC08-4C10-09FB-DC9D-43A261738B44";
createNode mute -n "wing_L:aTools_StoreNode30";
	rename -uid "0E7894E1-467E-CA9D-C6EF-68BAA9AB86BD";
createNode mute -n "wing_L:scene30";
	rename -uid "8DBD39E4-479F-4114-835B-8B801BDB6607";
createNode mute -n "wing_L:aTools_StoreNode31";
	rename -uid "88D4A565-48AC-9538-1F4A-5592D180ABC9";
createNode mute -n "wing_L:scene31";
	rename -uid "98F7564A-4292-E55F-DDA8-31BCDCF29994";
createNode mute -n "wing_L:aTools_StoreNode32";
	rename -uid "545351BA-4840-E43D-0E24-CB94ED5381CB";
createNode mute -n "wing_L:scene32";
	rename -uid "20411A31-4148-E8E6-E687-16AD886FA32D";
createNode mute -n "wing_L:aTools_StoreNode33";
	rename -uid "53A50348-4BED-A10A-6414-8F93B1E6489E";
createNode mute -n "wing_L:scene33";
	rename -uid "0B8D3D9F-40A8-D91A-B1BE-13984215E3F6";
createNode mute -n "wing_L:aTools_StoreNode34";
	rename -uid "3340F817-4AA6-0B6B-5A64-809A45580217";
createNode mute -n "wing_L:scene34";
	rename -uid "2205FC23-4C6B-E0CA-FC0A-FDBB0ECC85F1";
createNode mute -n "wing_L:aTools_StoreNode35";
	rename -uid "179D44C3-4289-1DCB-233C-25BF67D6C001";
createNode mute -n "wing_L:scene35";
	rename -uid "26B6EED3-43CF-1018-71FF-46B1CEB712A2";
createNode mute -n "wing_L:aTools_StoreNode36";
	rename -uid "569581A3-4AE2-EAEB-F2B1-5CAE9E0A5519";
createNode mute -n "wing_L:scene36";
	rename -uid "4826837C-4A90-A3DC-2983-E8AA62DBDA22";
createNode mute -n "wing_L:aTools_StoreNode37";
	rename -uid "E023B553-4CDB-1BBA-1F2A-719E8A26A2F9";
createNode mute -n "wing_L:scene37";
	rename -uid "5794AA0E-4D2F-A4BC-EC3B-258367C232B2";
createNode mute -n "wing_L:aTools_StoreNode38";
	rename -uid "76C7E605-4CC7-62BD-5711-96ABDCF41B94";
createNode mute -n "wing_L:scene38";
	rename -uid "7D6D8169-47DB-2B79-DA35-D68D02125AA8";
createNode mute -n "wing_L:aTools_StoreNode39";
	rename -uid "A19E3B75-4495-0E1B-BE23-CE925F5D02D3";
createNode mute -n "wing_L:scene39";
	rename -uid "CDCE69D9-4E4B-1B5D-8D7A-6D94FE30ACE2";
createNode mute -n "wing_L:aTools_StoreNode40";
	rename -uid "DEBC363C-4553-D164-5802-069C48858BFD";
createNode mute -n "wing_L:scene40";
	rename -uid "0C0DFFCE-450F-C291-2CEB-E68179983C0E";
createNode mute -n "wing_L:aTools_StoreNode41";
	rename -uid "B0017828-40EA-9E33-82A5-1D911972218D";
createNode mute -n "wing_L:scene41";
	rename -uid "450EF703-4CA1-FEB3-1E2F-07AA02C91B92";
createNode mute -n "wing_L:aTools_StoreNode42";
	rename -uid "25772911-4326-D66D-3873-7D9E57CD8112";
createNode mute -n "wing_L:scene42";
	rename -uid "FA41B99B-43C7-1917-842E-C19FF851B0D7";
createNode mute -n "wing_L:aTools_StoreNode43";
	rename -uid "B5D77974-48EA-CD11-0E46-3EAF9B6984A4";
createNode mute -n "wing_L:scene43";
	rename -uid "525ADB75-4C12-9D71-B690-ACA8126AE371";
createNode mute -n "wing_L:aTools_StoreNode44";
	rename -uid "3109C79B-4C18-DFA3-6F5C-B988DE9C4FE3";
createNode mute -n "wing_L:scene44";
	rename -uid "FA10B169-4ADC-708E-0CE8-50A7C143DE87";
createNode mute -n "wing_L:aTools_StoreNode45";
	rename -uid "BCAC8D26-4B32-F01A-856D-4DBA8F4057FB";
createNode mute -n "wing_L:scene45";
	rename -uid "FA74DABB-4095-C930-6BAC-AEA538D76344";
createNode mute -n "wing_L:aTools_StoreNode46";
	rename -uid "CF871ABF-456E-7235-6A51-259D0F421AED";
createNode mute -n "wing_L:scene46";
	rename -uid "19230740-416A-F273-604E-15A9C1EF6E8D";
createNode mute -n "wing_L:aTools_StoreNode47";
	rename -uid "6089ED17-4228-0C37-F63C-9CB1713EFE51";
createNode mute -n "wing_L:scene47";
	rename -uid "D3E98112-47D8-0E5A-E22D-A78AEAD39A41";
createNode mute -n "wing_L:aTools_StoreNode48";
	rename -uid "D522FDF7-4EF0-BBD2-DF25-FAA2D77DFAEA";
createNode mute -n "wing_L:scene48";
	rename -uid "46BAEECA-48F6-08A2-461A-2BB359C38A1F";
createNode mute -n "wing_L:aTools_StoreNode49";
	rename -uid "AA3E4702-4B0A-A9F9-54ED-14BA58B0CAF0";
createNode mute -n "wing_L:scene49";
	rename -uid "3DCAF9EB-43D7-426E-82CF-FFBB10B6EFEB";
createNode mute -n "wing_L:aTools_StoreNode50";
	rename -uid "B47533FA-4972-44E7-9D7D-0B9A0C52D172";
createNode mute -n "wing_L:scene50";
	rename -uid "8FA76379-4F68-E31D-1496-C6AB7F390BAC";
createNode mute -n "wing_L:aTools_StoreNode51";
	rename -uid "C35E0A61-4680-87F8-1CE6-B0BAC6AF7692";
createNode mute -n "wing_L:scene51";
	rename -uid "6ABC13FB-41AB-27A2-D361-B2A6FD34513D";
createNode mute -n "wing_L:aTools_StoreNode52";
	rename -uid "35753E55-4661-DFB9-2648-018EA44883A5";
createNode mute -n "wing_L:scene52";
	rename -uid "6C864BD6-4E4E-F4AF-E9DE-A89504FA8886";
createNode mute -n "wing_L:aTools_StoreNode53";
	rename -uid "4D28A748-4E5B-7F4D-4B00-1E88A3897D61";
createNode mute -n "wing_L:scene53";
	rename -uid "41354356-41BC-82C1-60AE-AD815D93AE42";
createNode mute -n "wing_L:aTools_StoreNode54";
	rename -uid "6A9E44BC-4181-F70B-E37D-43B6C26685C1";
createNode mute -n "wing_L:scene54";
	rename -uid "0CEBE2D5-4254-AC9B-2CEE-D7AF15621C38";
createNode mute -n "wing_L:aTools_StoreNode55";
	rename -uid "381FD8F6-476A-831A-16E9-778B58FD863E";
createNode mute -n "wing_L:scene55";
	rename -uid "3384E38E-49AE-8828-1B25-53873ECDBDFE";
createNode mute -n "wing_L:aTools_StoreNode56";
	rename -uid "1F3CDA38-49A0-DB86-9345-60A8226EEB60";
createNode mute -n "wing_L:scene56";
	rename -uid "0E3C74A8-4CE2-7CEA-FF5B-6E8CDC922EDD";
createNode mute -n "wing_L:aTools_StoreNode57";
	rename -uid "6A0D05CC-41BC-74F8-98D8-11852E3996F3";
createNode mute -n "wing_L:scene57";
	rename -uid "6C6BAFBF-4915-1759-96D9-CDB2D2846085";
createNode mute -n "wing_L:aTools_StoreNode58";
	rename -uid "77936570-4C5A-0D43-6895-FF8CC5ACA821";
createNode mute -n "wing_L:scene58";
	rename -uid "0268A24B-4C90-CF62-6CF2-CA880B4ED4EC";
createNode mute -n "wing_L:aTools_StoreNode59";
	rename -uid "825DF7C3-4FDA-706C-4A10-B2AB338783BF";
createNode mute -n "wing_L:scene59";
	rename -uid "AA078337-405A-1F69-B729-609FAF4E4A62";
createNode mute -n "wing_L:aTools_StoreNode60";
	rename -uid "01BCAA3F-4C01-15D2-E951-2BAA481AD58C";
createNode mute -n "wing_L:scene60";
	rename -uid "821BFC58-4EA3-AB00-0DF9-4685C39AA28E";
createNode mute -n "wing_L:aTools_StoreNode61";
	rename -uid "1A37D1F1-4529-E5F4-BFE0-858B10DFC269";
createNode mute -n "wing_L:scene61";
	rename -uid "0236A60E-4E96-7963-2D5B-AD9DE2349533";
createNode mute -n "wing_L:aTools_StoreNode62";
	rename -uid "38A88FA1-473B-992B-072F-F5828D5C5F26";
createNode mute -n "wing_L:scene62";
	rename -uid "14D35321-4302-4C5E-6890-608D32CF55B9";
createNode mute -n "wing_L:aTools_StoreNode63";
	rename -uid "9C58BAAB-49DA-0528-4972-B694CDECB867";
createNode mute -n "wing_L:scene63";
	rename -uid "95A08590-4ECB-8E12-41E6-6F9C4C41B7E8";
createNode mute -n "wing_L:aTools_StoreNode64";
	rename -uid "E2076D96-4D8C-F4A7-706B-CC8D3D993EF5";
createNode mute -n "wing_L:scene64";
	rename -uid "733EA324-4E9C-9CA9-AE40-B686C9D9943C";
createNode mute -n "wing_L:aTools_StoreNode65";
	rename -uid "014B339C-4B86-96EB-5E70-A79597B24038";
createNode mute -n "wing_L:scene65";
	rename -uid "6EAD1A8F-4FC5-1BED-6965-AE95ACE55F42";
createNode mute -n "wing_L:aTools_StoreNode66";
	rename -uid "5B6AB264-4C19-1DAB-5D05-44A340968935";
createNode mute -n "wing_L:scene66";
	rename -uid "C2F1DB7D-4A79-257C-55CA-D0A4F8F10750";
createNode mute -n "wing_L:aTools_StoreNode67";
	rename -uid "97E24310-435C-53E9-93AE-A280597EF814";
createNode mute -n "wing_L:scene67";
	rename -uid "B2CAF22C-4CF2-B900-FCF7-3DB3DD6CCD29";
createNode mute -n "wing_L:aTools_StoreNode68";
	rename -uid "1FD94DF8-4817-1E6A-CB20-09A24DF2293C";
createNode mute -n "wing_L:scene68";
	rename -uid "3F9ECF7F-47A6-8B14-4837-519C9647CE5C";
createNode mute -n "wing_L:aTools_StoreNode69";
	rename -uid "55C9B1BC-4FE3-D192-722A-3286AC2B3AC9";
createNode mute -n "wing_L:scene69";
	rename -uid "FF1CC51B-476E-340D-EC90-77BE3913C922";
createNode mute -n "wing_L:aTools_StoreNode70";
	rename -uid "CAF62BBA-45F6-0945-6C21-4D8D97B7F1D0";
createNode mute -n "wing_L:scene70";
	rename -uid "936865C7-493A-892C-5C3D-FF8FC6406F88";
createNode mute -n "wing_L:aTools_StoreNode71";
	rename -uid "61A20E74-434A-47A3-481C-12AAC6EADC4A";
createNode mute -n "wing_L:scene71";
	rename -uid "D573DED1-44BE-9AA1-D4D4-0F8E577C7BDB";
createNode mute -n "wing_L:aTools_StoreNode72";
	rename -uid "D781FF98-46B5-8F3A-943D-4C9CA10C522D";
createNode mute -n "wing_L:scene72";
	rename -uid "ABA503E2-4DEC-0FAB-8FAA-769C5CE37DB7";
createNode mute -n "wing_L:aTools_StoreNode73";
	rename -uid "B36EA600-4D1C-53EE-36EE-CBB043D3CE8A";
createNode mute -n "wing_L:scene73";
	rename -uid "59270843-4B48-0952-0EC6-11B4B302E705";
createNode mute -n "wing_L:aTools_StoreNode74";
	rename -uid "A3558DA5-42CD-AAA6-B36B-A3BD704A2280";
createNode mute -n "wing_L:scene74";
	rename -uid "B4FFF74A-45F9-1B5F-A67C-20B3772B9E57";
createNode mute -n "wing_L:aTools_StoreNode75";
	rename -uid "21330D03-4590-7524-7EDA-FB9D921EE899";
createNode mute -n "wing_L:scene75";
	rename -uid "32949423-4DAB-781E-B3B4-BBB6EF68BAFB";
createNode mute -n "wing_L:aTools_StoreNode76";
	rename -uid "DAFA6462-4739-5FE0-3AB9-34AAF4CB0E67";
createNode mute -n "wing_L:scene76";
	rename -uid "16892CD8-4AEE-1BED-760E-9FB7DBB374A6";
createNode mute -n "wing_L:aTools_StoreNode77";
	rename -uid "B3D01A16-4B75-6013-2D37-4299D37D643D";
createNode mute -n "wing_L:scene77";
	rename -uid "F1987B87-4365-7093-F10F-D1B3F4A07856";
createNode mute -n "wing_L:aTools_StoreNode78";
	rename -uid "4D67967B-4E60-DDF8-4725-D49A48CFB53D";
createNode mute -n "wing_L:scene78";
	rename -uid "1A4B0A49-4951-401A-4E45-B2BBBA02274E";
createNode mute -n "wing_L:aTools_StoreNode79";
	rename -uid "0FD89E58-403B-FE96-FC0A-A492024A2F94";
createNode mute -n "wing_L:scene79";
	rename -uid "3B4CAAF6-4177-6E0B-0340-67B9265C9F64";
createNode mute -n "wing_L:aTools_StoreNode80";
	rename -uid "6E7BBFC7-43D9-DFD3-0106-F5AEF110BCFC";
createNode mute -n "wing_L:scene80";
	rename -uid "719C2B0F-43F7-046C-FB4A-859688BFC97F";
createNode mute -n "wing_L:aTools_StoreNode81";
	rename -uid "8EE65588-4FF9-B172-5FF5-EB81FA909AB0";
createNode mute -n "wing_L:scene81";
	rename -uid "CB4F375E-4D5E-C228-1E2A-6EB25ECC118B";
createNode mute -n "wing_L:aTools_StoreNode82";
	rename -uid "1E04952A-4050-37B1-CD31-2796F45FF62D";
createNode mute -n "wing_L:scene82";
	rename -uid "8BCB2E2A-4D1D-8F08-B602-7295331A6E63";
createNode mute -n "wing_L:aTools_StoreNode83";
	rename -uid "8C749EBF-4D72-5A28-2045-4EA391FB852B";
createNode mute -n "wing_L:scene83";
	rename -uid "E3E92DFF-42D7-8417-5B10-3EBF8A11FFCE";
createNode mute -n "wing_L:aTools_StoreNode84";
	rename -uid "D8474D02-4078-B3D9-01C8-D0BB81A0AEC2";
createNode mute -n "wing_L:scene84";
	rename -uid "FF6C40DE-4B7A-4CDD-BD51-4989B2658A44";
createNode mute -n "wing_L:aTools_StoreNode85";
	rename -uid "4A599F9C-4B02-899E-10AF-9DA028399636";
createNode mute -n "wing_L:scene85";
	rename -uid "1B36267A-444E-F864-9A3F-60829077A3B3";
createNode mute -n "wing_L:aTools_StoreNode86";
	rename -uid "FC770BCA-402D-506A-0918-77A310058B65";
createNode mute -n "wing_L:scene86";
	rename -uid "F12F25B6-4006-84DF-6F75-7986CBD2822E";
createNode mute -n "wing_L:aTools_StoreNode87";
	rename -uid "D81CBFC8-4879-62F1-9B7E-44A6AAB945B8";
createNode mute -n "wing_L:scene87";
	rename -uid "6CEF82AA-435A-050C-903D-E3ACD8BDB8A6";
createNode mute -n "wing_L:aTools_StoreNode88";
	rename -uid "B5041B50-4B8D-6929-F784-23AA2F89EAB7";
createNode mute -n "wing_L:scene88";
	rename -uid "1EA46895-4D33-BDE6-50F0-3C98830B464A";
createNode mute -n "wing_L:aTools_StoreNode89";
	rename -uid "FCC26F69-463E-EB10-26BC-4DBF8267CA28";
createNode mute -n "wing_L:scene89";
	rename -uid "E0316F68-464D-E654-F441-A485C9AA4107";
createNode mute -n "wing_L:aTools_StoreNode90";
	rename -uid "A6CE0521-4EA8-4A8C-D8A9-CEB2BCFB4C9C";
createNode mute -n "wing_L:scene90";
	rename -uid "394404ED-4562-4C55-7FDF-9D9F7AFDFB65";
createNode mute -n "wing_L:aTools_StoreNode91";
	rename -uid "D2BFAB6A-4FCB-89A9-A5A5-B3A030543C66";
createNode mute -n "wing_L:scene91";
	rename -uid "7E9F3A42-4926-DBC9-42F4-8E95ED4DC36E";
createNode mute -n "wing_L:aTools_StoreNode92";
	rename -uid "F8A3B218-43BD-1646-BFA7-CA899A2C6FF6";
createNode mute -n "wing_L:scene92";
	rename -uid "206EB61B-45F5-79FB-0646-31AECBD691AC";
createNode mute -n "wing_L:aTools_StoreNode93";
	rename -uid "302AC184-4BD4-3C6B-AC9D-97BAD291D7BF";
createNode mute -n "wing_L:scene93";
	rename -uid "BD7824E6-42A7-AAE6-1B71-2AA389E4CCAA";
createNode mute -n "wing_L:aTools_StoreNode94";
	rename -uid "311761CF-49A2-951D-E584-6091CB02C708";
createNode mute -n "wing_L:scene94";
	rename -uid "88280964-452F-E2A0-3A93-FB9B10884325";
createNode mute -n "wing_L:aTools_StoreNode95";
	rename -uid "F249E153-42F0-652D-FBA6-B2851EDE58EC";
createNode mute -n "wing_L:scene95";
	rename -uid "25781571-419F-CF41-5123-238D9E3C4064";
createNode mute -n "wing_L:aTools_StoreNode96";
	rename -uid "3FBABC0E-41D1-A088-C47E-BA89919C9E5F";
createNode mute -n "wing_L:scene96";
	rename -uid "9D64071E-4A10-3D91-E39C-AE9A39DA9012";
createNode mute -n "wing_L:aTools_StoreNode97";
	rename -uid "D70E010C-46EB-0D7E-B5B4-AAA97A0AF10A";
createNode mute -n "wing_L:scene97";
	rename -uid "E53D39AD-497B-E46A-93E9-33A7F1A75081";
createNode mute -n "wing_L:aTools_StoreNode98";
	rename -uid "0BF00F67-4351-0B0A-1BA1-23A014C26ABC";
createNode mute -n "wing_L:scene98";
	rename -uid "BB71DCC2-40E7-B349-97E3-F485BB6EDA52";
createNode mute -n "wing_L:aTools_StoreNode99";
	rename -uid "F85C6E7A-48AD-413C-6642-C9B0A1567378";
createNode mute -n "wing_L:scene99";
	rename -uid "5E2CA0B3-4EB6-BCC0-1B87-C38B914CB155";
createNode mute -n "wing_L:aTools_StoreNode100";
	rename -uid "E23CD068-4ACB-5654-D9DD-39B07FA83D28";
createNode mute -n "wing_L:scene100";
	rename -uid "E6C530F3-46A1-1E64-42DF-0FBD0161D834";
createNode mute -n "wing_L:aTools_StoreNode101";
	rename -uid "65CEA88E-42A1-7B50-C1F8-C9BA713F9CB3";
createNode mute -n "wing_L:scene101";
	rename -uid "366B368B-46DF-C0C5-A6BB-B6B3C51B01E8";
createNode mute -n "wing_L:aTools_StoreNode102";
	rename -uid "206AEB1E-4B19-782F-EA36-779FF0092EBD";
createNode mute -n "wing_L:scene102";
	rename -uid "A83E093B-4567-FF21-1159-86830D3EC9A0";
createNode mute -n "wing_L:aTools_StoreNode103";
	rename -uid "5020C056-4BA9-3676-CC2A-8884ED868828";
createNode mute -n "wing_L:scene103";
	rename -uid "C6F2F72C-4993-87E5-587C-EBBE3AE04CE0";
createNode mute -n "wing_L:aTools_StoreNode104";
	rename -uid "8E054709-4AA5-0E4F-AB2B-6795FA403C6C";
createNode mute -n "wing_L:scene104";
	rename -uid "33171CE5-4FF6-6362-8D59-0BB10366E0F9";
createNode mute -n "wing_L:aTools_StoreNode105";
	rename -uid "8CD111CD-426A-1ACF-B700-14973B6C1CD2";
createNode mute -n "wing_L:scene105";
	rename -uid "4A47F3C0-4CC3-F3BF-EA6F-C796045ECE5D";
createNode mute -n "wing_L:aTools_StoreNode106";
	rename -uid "41377AA3-4770-87BC-730C-A2834EFABA1D";
createNode mute -n "wing_L:scene106";
	rename -uid "EF7BEDB3-447E-DECD-A3A1-C89FC87E5765";
createNode mute -n "wing_L:aTools_StoreNode107";
	rename -uid "44EC6C49-4DE6-84B8-13CE-3598C8C446FF";
createNode mute -n "wing_L:scene107";
	rename -uid "7CB5A85C-494A-2DC3-98D2-978F9A125D3E";
createNode mute -n "wing_L:aTools_StoreNode108";
	rename -uid "97133136-4879-CF6D-9148-19A75C0D0548";
createNode mute -n "wing_L:scene108";
	rename -uid "D6F18E6E-4AF3-4C57-23CA-869224C43817";
createNode mute -n "wing_L:aTools_StoreNode109";
	rename -uid "905B9059-454D-A495-7874-57BB78559F6F";
createNode mute -n "wing_L:scene109";
	rename -uid "B47AAAF0-426A-BDA0-9243-2C8BB1D9E2C7";
createNode mute -n "wing_L:aTools_StoreNode110";
	rename -uid "992309D7-4DCE-DF50-B5A8-51B0333AB570";
createNode mute -n "wing_L:scene110";
	rename -uid "4AE1F7A8-4974-76FF-F39D-33B42C156F91";
createNode mute -n "wing_L:aTools_StoreNode111";
	rename -uid "3E2D5CCE-44D4-1F60-5DB6-63B9D6677ED5";
createNode mute -n "wing_L:scene111";
	rename -uid "F601CE82-4753-DF4C-19E3-D48A76A448AA";
createNode mute -n "wing_L:aTools_StoreNode112";
	rename -uid "5F98AE47-4694-608C-7A36-3F9FA44B39A1";
createNode mute -n "wing_L:scene112";
	rename -uid "2BC17F45-4062-E47B-69AA-C0A4DBCD2B63";
createNode mute -n "wing_L:aTools_StoreNode113";
	rename -uid "2B6CDA3C-40A5-C452-D957-D5815BAA95F6";
createNode mute -n "wing_L:scene113";
	rename -uid "8E228DDC-47F6-7C5F-263D-B79278B7201B";
createNode mute -n "wing_L:aTools_StoreNode114";
	rename -uid "1A2A6806-4F51-7D17-7A47-C88A212E55E5";
createNode mute -n "wing_L:scene114";
	rename -uid "578A0E6F-4DC3-00CD-03D3-E8B578D31F37";
createNode mute -n "wing_L:aTools_StoreNode115";
	rename -uid "1EDD7EE8-4FC8-AD35-6B45-D78BB3CE7D35";
createNode mute -n "wing_L:scene115";
	rename -uid "5F6F2D9A-471C-E2F8-4D3E-4BA072083F93";
createNode mute -n "wing_L:aTools_StoreNode116";
	rename -uid "9DC79A13-4567-0170-04BA-14898D96AD44";
createNode mute -n "wing_L:scene116";
	rename -uid "C69ADA78-4585-DA0B-D0D1-7AB34786B43D";
createNode mute -n "wing_L:aTools_StoreNode117";
	rename -uid "36F854FD-4D53-A1A5-1769-C0B4D91AFC79";
createNode mute -n "wing_L:scene117";
	rename -uid "45182CEC-4EA3-3CBA-4805-A69015F4FE6A";
createNode mute -n "wing_L:aTools_StoreNode118";
	rename -uid "2E17D1AD-4770-39EA-9E16-4581AA52811E";
createNode mute -n "wing_L:scene118";
	rename -uid "4FCE17A1-4485-ECBF-CE94-CD8605041BD8";
createNode mute -n "wing_L:aTools_StoreNode119";
	rename -uid "6E5EC83A-4D0E-6B8C-45C6-18B7FCC37F7B";
createNode mute -n "wing_L:scene119";
	rename -uid "C53BC3A8-49F5-2C47-3A7A-2895D7EB1E24";
createNode mute -n "wing_L:aTools_StoreNode120";
	rename -uid "39C42436-466D-53D9-2A04-4BBE4EFC6E07";
createNode mute -n "wing_L:scene120";
	rename -uid "B9081D89-4A18-FBFE-C789-8C95B1349CAA";
createNode mute -n "wing_L:aTools_StoreNode121";
	rename -uid "C4C1ACDA-44BC-3D4D-18C6-CF9DF1AD86F1";
createNode mute -n "wing_L:scene121";
	rename -uid "5062636C-429A-2FF1-6834-C4B7B7233D20";
createNode mute -n "wing_L:aTools_StoreNode122";
	rename -uid "4977F91B-4394-FDBB-6DFF-7C9A3F6965A8";
createNode mute -n "wing_L:scene122";
	rename -uid "E44487FE-40A5-90E0-70A6-BEA54FDAB364";
createNode mute -n "wing_L:aTools_StoreNode123";
	rename -uid "E2D799BC-4C83-1322-8C67-36AE9746EFB0";
createNode mute -n "wing_L:scene123";
	rename -uid "38D365F7-4F0F-9DF5-B34F-E284C7BE4500";
createNode mute -n "wing_L:aTools_StoreNode124";
	rename -uid "AE6E3BB9-4C85-5BA6-8E49-118209A649AE";
createNode mute -n "wing_L:scene124";
	rename -uid "A487103C-4765-CA0E-22E8-D4829E6FD2DA";
createNode mute -n "wing_L:aTools_StoreNode125";
	rename -uid "CDB5221E-42AF-F277-F23D-668B54BFFE22";
createNode mute -n "wing_L:scene125";
	rename -uid "025CFC4F-470B-1AEE-2D5B-869A1F2C0974";
createNode mute -n "wing_L:aTools_StoreNode126";
	rename -uid "21AFACAD-4B2E-A0C2-3666-5AB5407A3947";
createNode mute -n "wing_L:scene126";
	rename -uid "4344AC3F-4B5E-1615-189D-27927512F9D4";
createNode mute -n "wing_L:aTools_StoreNode127";
	rename -uid "F46CECF7-49C1-EB28-6807-8FA345D5DD83";
createNode mute -n "wing_L:scene127";
	rename -uid "58326F3E-46F5-3007-2748-1C97E3025B26";
createNode mute -n "wing_L:aTools_StoreNode128";
	rename -uid "586F2562-4194-B399-A01C-2199CB0DF420";
createNode mute -n "wing_L:scene128";
	rename -uid "9E2EE8EA-4ABD-FB42-1649-9CB1502B3275";
createNode mute -n "wing_L:aTools_StoreNode129";
	rename -uid "CF10C92E-4AE4-AFF8-0207-C988CB266267";
createNode mute -n "wing_L:scene129";
	rename -uid "0B02129D-46D6-2FB5-CEC6-74A5429EDA69";
createNode mute -n "wing_L:aTools_StoreNode130";
	rename -uid "A8C7F106-4DDE-39D4-C249-C995A2D3AE64";
createNode mute -n "wing_L:scene130";
	rename -uid "B6D3A9D8-48AC-E6E8-0A82-DBAA58A58F9F";
createNode mute -n "wing_L:aTools_StoreNode131";
	rename -uid "C2C6685D-4F72-2364-24A4-618505E9A483";
createNode mute -n "wing_L:scene131";
	rename -uid "E65773A1-4941-A724-774A-EA8C8DC402CA";
createNode mute -n "wing_L:aTools_StoreNode132";
	rename -uid "BE609E40-4974-3540-EF5B-60B2F86A49AE";
createNode mute -n "wing_L:scene132";
	rename -uid "7A3DD3F1-4D2D-21DD-F4CB-1187DA5921AA";
createNode mute -n "wing_L:aTools_StoreNode133";
	rename -uid "C57F3DA1-4DAA-B0AE-8C1A-559F8AFD0B63";
createNode mute -n "wing_L:scene133";
	rename -uid "E0AD07B2-4DB1-B12C-A017-CEAD28FC04CA";
createNode mute -n "wing_L:aTools_StoreNode134";
	rename -uid "1A4F9FDE-45DD-9935-070B-3281C3331475";
createNode mute -n "wing_L:scene134";
	rename -uid "8E07AB2C-4BC7-9F26-EBF3-6A8C42DA829E";
createNode mute -n "wing_L:aTools_StoreNode135";
	rename -uid "0DB4ED19-46EC-AEF5-779B-419EE8F268E8";
createNode mute -n "wing_L:scene135";
	rename -uid "D8FB4042-497E-DD4F-68D8-A88422B0BCDF";
createNode mute -n "wing_L:aTools_StoreNode136";
	rename -uid "EAAD76A9-4394-0751-8C94-6A97B5650C4A";
createNode mute -n "wing_L:scene136";
	rename -uid "D8C196A2-4AB7-EBAF-B53A-F69F5F131E2E";
createNode mute -n "wing_L:aTools_StoreNode137";
	rename -uid "CC809717-433B-4E05-AB76-D4A3FC520DE8";
createNode mute -n "wing_L:scene137";
	rename -uid "556DF2EB-4CE2-1B1F-E74D-7BAAFBC44F9A";
createNode mute -n "wing_L:aTools_StoreNode138";
	rename -uid "3CD7B082-48B0-DC14-906C-62B02C69CA66";
createNode mute -n "wing_L:scene138";
	rename -uid "831683D9-4F56-24ED-1EC6-8ABF70637654";
createNode mute -n "wing_L:aTools_StoreNode139";
	rename -uid "87570B54-4B14-3132-AC4B-37A8CF6593E5";
createNode mute -n "wing_L:scene139";
	rename -uid "8567BC07-4773-0C0D-0D3C-C48F13F8149C";
createNode mute -n "wing_L:aTools_StoreNode140";
	rename -uid "E13A9620-4CCB-8D4F-3586-F1898DFA2B74";
createNode mute -n "wing_L:scene140";
	rename -uid "65735609-4F36-DBE1-2727-8D9C32060CBB";
createNode mute -n "wing_L:aTools_StoreNode141";
	rename -uid "819BDE04-4C9E-B528-5B1E-18BDF9AB3EDA";
createNode mute -n "wing_L:scene141";
	rename -uid "47973570-44C9-C567-8FC8-EC9D4E2C1426";
createNode mute -n "wing_L:aTools_StoreNode142";
	rename -uid "C4A77B41-4F30-6107-8C99-6BB7E96B0E3E";
createNode mute -n "wing_L:scene142";
	rename -uid "081CE004-42EB-C3A3-B8DB-589E8092E8E4";
createNode mute -n "wing_L:aTools_StoreNode143";
	rename -uid "632AB389-4D26-3B00-4C51-169BF744EBF7";
createNode mute -n "wing_L:scene143";
	rename -uid "EDFE4C6D-49DF-7A0A-4602-CFB9EE637D1F";
createNode mute -n "wing_L:aTools_StoreNode144";
	rename -uid "0AA550D8-4FD5-8BD4-5E1B-8CBC44DA9041";
createNode mute -n "wing_L:scene144";
	rename -uid "F5D6AF74-42A1-1C47-55D9-C3AC66D77663";
createNode mute -n "wing_L:aTools_StoreNode145";
	rename -uid "BC526509-412C-AC7A-DBE2-6AA294742281";
createNode mute -n "wing_L:scene145";
	rename -uid "D426DFE3-4B75-5788-8944-11BF1F658DF9";
createNode mute -n "wing_L:aTools_StoreNode146";
	rename -uid "3D6CA315-433E-E1DF-8317-2E9F6C1A0850";
createNode mute -n "wing_L:scene146";
	rename -uid "BBA559AD-4318-8AB1-F776-8EAFFE70A9A1";
createNode mute -n "wing_L:aTools_StoreNode147";
	rename -uid "AF99DD5E-4E89-E15D-C153-BB9993655EDF";
createNode mute -n "wing_L:scene147";
	rename -uid "274A3DAE-43FA-7A4D-D186-1EA31E9F2B93";
createNode mute -n "wing_L:aTools_StoreNode148";
	rename -uid "2D1AE59F-45ED-F346-AAC2-50AC568A3EBF";
createNode mute -n "wing_L:scene148";
	rename -uid "FDA19FA8-4630-C7AC-8D41-BBA5B0870686";
createNode mute -n "wing_L:aTools_StoreNode149";
	rename -uid "9BF7BDD5-4EF2-8C9A-EA88-1DB4939C9256";
createNode mute -n "wing_L:scene149";
	rename -uid "BB1B537B-4C81-3C92-EE0A-E1A555975A77";
createNode mute -n "wing_L:aTools_StoreNode150";
	rename -uid "846BB831-4FFF-46FA-25F1-30A997323B2E";
createNode mute -n "wing_L:scene150";
	rename -uid "0FC4BBA6-4322-9045-B367-7FB6CF1EFF75";
createNode mute -n "wing_L:aTools_StoreNode151";
	rename -uid "FCB9BA79-4A65-B160-64A1-098725F85775";
createNode mute -n "wing_L:scene151";
	rename -uid "BAE20C5B-4FE8-91BD-306B-4AB9D1B124ED";
createNode mute -n "wing_L:aTools_StoreNode152";
	rename -uid "5068D147-4544-0C5C-CB86-919E3A84134F";
createNode mute -n "wing_L:scene152";
	rename -uid "08FD911E-488C-6A37-F1D8-D190E26C53B2";
createNode mute -n "wing_L:aTools_StoreNode153";
	rename -uid "E24879B6-4D9E-E128-967F-E79E84058F73";
createNode mute -n "wing_L:scene153";
	rename -uid "38D6DF0F-4F4A-EA26-2AE7-3AB1EB76A2BC";
createNode mute -n "wing_L:aTools_StoreNode154";
	rename -uid "A5790FF4-4D34-9525-1081-CAA63F566B91";
createNode mute -n "wing_L:scene154";
	rename -uid "1A8DC93A-472B-5086-A942-94A43909065F";
createNode mute -n "wing_L:aTools_StoreNode155";
	rename -uid "C789C401-4AE1-B72D-8283-E3B122ECDD2F";
createNode mute -n "wing_L:scene155";
	rename -uid "CF3A55C9-4F6D-1310-EEC4-A08FB1C9ACF6";
createNode mute -n "wing_L:aTools_StoreNode156";
	rename -uid "A5791591-4BF8-32E1-0329-10B9BCBB5E7E";
createNode mute -n "wing_L:scene156";
	rename -uid "23A184BD-4B82-FD60-6A26-CFBFE5358F64";
createNode mute -n "wing_L:aTools_StoreNode157";
	rename -uid "87E9CBED-4B4A-BE19-0CC4-6EB89512C5C5";
createNode mute -n "wing_L:scene157";
	rename -uid "4D4731D3-4CE2-EB50-F12D-AD955FDB0BEB";
createNode mute -n "wing_L:aTools_StoreNode158";
	rename -uid "02D6D2AF-4C8E-2785-2F61-CE966E9BF17E";
createNode mute -n "wing_L:scene158";
	rename -uid "648803C4-426E-F1EF-E696-9A8FE95E1F99";
createNode mute -n "wing_L:aTools_StoreNode159";
	rename -uid "F620C390-41EE-36EA-6AAF-CC810E077038";
createNode mute -n "wing_L:scene159";
	rename -uid "2613625F-489B-CC46-BC95-8EB7680FD8C8";
createNode mute -n "wing_L:aTools_StoreNode160";
	rename -uid "6EC297DC-4278-92E2-A8DC-44999FED3CAC";
createNode mute -n "wing_L:scene160";
	rename -uid "F032C78B-4333-6F8A-AA1F-4DA6730E2435";
createNode mute -n "wing_L:aTools_StoreNode161";
	rename -uid "66708B4C-4A72-88D0-1D4F-E98D27ADAA34";
createNode mute -n "wing_L:scene161";
	rename -uid "ADA1E3F8-41D6-BD24-A33A-18A8FB3C9788";
createNode mute -n "wing_L:aTools_StoreNode162";
	rename -uid "3F9F63CC-4901-80EE-A0F0-968505D5B503";
createNode mute -n "wing_L:scene162";
	rename -uid "5A31B101-4527-095B-1293-DC8EF2B4EF3A";
createNode mute -n "wing_L:aTools_StoreNode163";
	rename -uid "90355D56-487E-2316-A2BF-9BAE8144D349";
createNode mute -n "wing_L:scene163";
	rename -uid "6524A9E2-4D39-A164-E547-E58998AB8333";
createNode mute -n "wing_L:aTools_StoreNode164";
	rename -uid "2CC74651-47E3-C640-5A45-E38E8651B3B3";
createNode mute -n "wing_L:scene164";
	rename -uid "CB8081C2-4E41-67CC-0485-44BA9EAC4DFD";
createNode mute -n "wing_L:aTools_StoreNode165";
	rename -uid "A8D4CE03-48BF-B57F-A46B-13BEF0402190";
createNode mute -n "wing_L:scene165";
	rename -uid "A8DF70B1-47F8-0F65-F37C-6AB23AE75D5A";
createNode mute -n "wing_L:aTools_StoreNode166";
	rename -uid "73607F46-489F-85D5-CC49-AD8723D93C58";
createNode mute -n "wing_L:scene166";
	rename -uid "4C704773-4459-BBE2-B692-CFA6EA87B692";
createNode mute -n "wing_L:aTools_StoreNode167";
	rename -uid "467B9391-466E-0C3F-6AE6-AD83BE430EF4";
createNode mute -n "wing_L:scene167";
	rename -uid "F04E2D3E-4AF8-8DAA-AD8A-B2A6772EF8CC";
createNode mute -n "wing_L:aTools_StoreNode168";
	rename -uid "5FEC3581-45A8-8D14-7968-4ABC65AC75AA";
createNode mute -n "wing_L:scene168";
	rename -uid "34908D90-4764-713B-7D76-02814F354AA5";
createNode mute -n "wing_L:aTools_StoreNode169";
	rename -uid "FDDFAB89-44E3-5851-0987-CA97198AE2C1";
createNode mute -n "wing_L:scene169";
	rename -uid "AE9FF264-47BA-03CE-7BC4-558A90FA66F6";
createNode mute -n "wing_L:aTools_StoreNode170";
	rename -uid "522FEE87-42D8-D255-CA84-B8B6F73E1E55";
createNode mute -n "wing_L:scene170";
	rename -uid "65126AC4-4345-1ED6-3185-6785328D4186";
createNode mute -n "wing_L:aTools_StoreNode171";
	rename -uid "0F158E6C-4C3E-BF84-3B56-41ADF6BC61A2";
createNode mute -n "wing_L:scene171";
	rename -uid "8240E759-4A74-047B-625C-8BA8985DE4FE";
createNode mute -n "wing_L:aTools_StoreNode172";
	rename -uid "7D9F6B89-4665-004E-928A-B8B84B87CFF1";
createNode mute -n "wing_L:scene172";
	rename -uid "84731100-4874-F5E2-D58B-E8B680B8ECA2";
createNode mute -n "wing_L:aTools_StoreNode173";
	rename -uid "4A1C7FC0-40E8-9AE9-D169-86A7033FAB5D";
createNode mute -n "wing_L:scene173";
	rename -uid "A5C2535B-4D9A-C01B-6591-FAABB1A2E1D4";
createNode mute -n "wing_L:aTools_StoreNode174";
	rename -uid "C4F63927-479D-CEB0-2E1C-5E9D48E94468";
createNode mute -n "wing_L:scene174";
	rename -uid "D48FBDEC-4586-0F32-83EB-D9B4941EF921";
createNode mute -n "wing_L:aTools_StoreNode175";
	rename -uid "44D62953-4E34-56A2-E6D3-C78EF262B0A5";
createNode mute -n "wing_L:scene175";
	rename -uid "83B3FCE0-421B-24E8-D3A0-59A9F401796F";
createNode mute -n "wing_L:aTools_StoreNode176";
	rename -uid "853D2870-4EB2-9E1D-C288-87A6E343910C";
createNode mute -n "wing_L:scene176";
	rename -uid "CF608DF3-417B-773D-5A63-CAB890469B65";
createNode mute -n "wing_L:aTools_StoreNode177";
	rename -uid "7FC885A9-4205-4276-17EA-F099FE70ABF0";
createNode mute -n "wing_L:scene177";
	rename -uid "A13980B8-48D8-3472-FB6E-CD8E5EDE2FE6";
createNode mute -n "wing_L:aTools_StoreNode178";
	rename -uid "35390547-4BF2-010C-8DAC-1CA7B2EB4BD7";
createNode mute -n "wing_L:scene178";
	rename -uid "8D79C892-4DDA-A302-41A2-328047736323";
createNode mute -n "wing_L:aTools_StoreNode179";
	rename -uid "6FE08B82-4F00-B976-F85D-03A941BD6F9C";
createNode mute -n "wing_L:scene179";
	rename -uid "D1FF31D4-4ABC-0140-0BEA-8C8EA3B9EAD8";
createNode mute -n "wing_L:aTools_StoreNode180";
	rename -uid "F41D0CF2-45C6-5377-A991-4E9ED9A19F96";
createNode mute -n "wing_L:scene180";
	rename -uid "7376680B-4E5E-6A56-A853-F2B38C952341";
createNode mute -n "wing_L:aTools_StoreNode181";
	rename -uid "D43AC1BD-42D0-80A9-2554-E680B1B6C8BD";
createNode mute -n "wing_L:scene181";
	rename -uid "DE981522-4B50-4676-4E3C-A390032F376B";
createNode mute -n "wing_L:aTools_StoreNode182";
	rename -uid "163CFD57-4097-11B1-1CE1-9EB5D4730892";
createNode mute -n "wing_L:scene182";
	rename -uid "03BAD15C-47B1-8F4D-2435-D393B89CE560";
createNode mute -n "wing_L:aTools_StoreNode183";
	rename -uid "5C75993E-4A7E-F81A-0500-CC8A884C6B53";
createNode mute -n "wing_L:scene183";
	rename -uid "FB1581A0-4321-E8C1-A08F-DDBB33EB4946";
createNode mute -n "wing_L:aTools_StoreNode184";
	rename -uid "F32A910E-4336-A8F2-C00B-3E8F4B489345";
createNode mute -n "wing_L:scene184";
	rename -uid "1B7159CB-418A-B8A7-ED9B-3FB5B366F0D6";
createNode mute -n "wing_L:aTools_StoreNode185";
	rename -uid "F9EC2D0C-4E2C-BC74-1D66-8297553CFFF6";
createNode mute -n "wing_L:scene185";
	rename -uid "893049F6-41E9-2726-A484-4BBF3398A85C";
createNode mute -n "wing_L:aTools_StoreNode186";
	rename -uid "7FF64771-4BE6-A530-7CBA-42BCA16107AA";
createNode mute -n "wing_L:scene186";
	rename -uid "D92C8B7E-468F-A535-4FC4-E0914BD995B7";
createNode mute -n "wing_L:aTools_StoreNode187";
	rename -uid "95E255ED-4D90-0D60-0C6D-EE950DE69FD2";
createNode mute -n "wing_L:scene187";
	rename -uid "B79492C5-4392-3870-54B5-0E9972D5D4BE";
createNode mute -n "wing_L:aTools_StoreNode188";
	rename -uid "ECFE5B20-4A87-CFF4-9203-CF903DC069EA";
createNode mute -n "wing_L:scene188";
	rename -uid "19A60638-4562-25F4-341B-649173E08C92";
createNode mute -n "wing_L:aTools_StoreNode189";
	rename -uid "68C88AB0-4C3B-7B9B-5F5F-36BA616C9D7D";
createNode mute -n "wing_L:scene189";
	rename -uid "333E3FB8-42D3-0D92-51A6-FC978F1E0438";
createNode mute -n "wing_L:aTools_StoreNode190";
	rename -uid "0E9AEBCA-438C-B542-5B03-94A66BBEC689";
createNode mute -n "wing_L:scene190";
	rename -uid "C2B12C75-4D3C-3DEA-2329-FEB0E9D851B9";
createNode mute -n "wing_L:aTools_StoreNode191";
	rename -uid "2C3AB863-437B-3A26-94B2-B094B838BE9C";
createNode mute -n "wing_L:scene191";
	rename -uid "24767A16-4244-EAA0-896D-9182002E2A7D";
createNode mute -n "wing_L:aTools_StoreNode192";
	rename -uid "2A5D3399-4472-B11E-8D1D-4FA7E268B46E";
createNode mute -n "wing_L:scene192";
	rename -uid "2DBEFBFF-407B-6A47-AA2C-12A5BBCBD078";
createNode mute -n "wing_L:aTools_StoreNode193";
	rename -uid "A711D34B-40D8-146B-6BA9-B5A17E49C700";
createNode mute -n "wing_L:scene193";
	rename -uid "91124438-45A1-01AE-9890-FF83D5FCC521";
createNode mute -n "wing_L:aTools_StoreNode194";
	rename -uid "3264A3AC-423F-E887-7657-3398D54644B8";
createNode mute -n "wing_L:scene194";
	rename -uid "9AAD2812-447C-AC5C-D18B-B0997203C5C2";
createNode mute -n "wing_L:aTools_StoreNode195";
	rename -uid "ACFCE4A4-4F72-E2AD-24DF-06B48BB27FBC";
createNode mute -n "wing_L:scene195";
	rename -uid "ABE5BC7A-4F71-2CA6-5E3E-258A9ABA197F";
createNode mute -n "wing_L:aTools_StoreNode196";
	rename -uid "9105AEDC-4018-8B81-813E-F6B52D090A89";
createNode mute -n "wing_L:scene196";
	rename -uid "8632CF1F-425E-5BF5-D7D0-FDAA2E3344CF";
createNode mute -n "wing_L:aTools_StoreNode197";
	rename -uid "078F6C91-464E-DA3B-40AD-83BD75B314A4";
createNode mute -n "wing_L:scene197";
	rename -uid "4246144C-47E0-2B56-6ADC-EB9E279D2B73";
createNode mute -n "wing_L:aTools_StoreNode198";
	rename -uid "E372FAE2-4D1D-F42B-F5FB-EBB1B9898B9C";
createNode mute -n "wing_L:scene198";
	rename -uid "EB4229EB-44D0-BBFC-67E9-58ABBD334313";
createNode mute -n "wing_L:aTools_StoreNode199";
	rename -uid "D3BE2DBF-4B35-BACB-A4F1-F1AF1107CBC1";
createNode mute -n "wing_L:scene199";
	rename -uid "0A3D3FF5-4E6E-A6CA-318C-EE85514EE822";
createNode mute -n "wing_L:aTools_StoreNode200";
	rename -uid "0E73594A-42F5-1E08-29E5-E9B8E0903768";
createNode mute -n "wing_L:scene200";
	rename -uid "F5D5EE71-4483-4991-0F46-E19CD25BF340";
createNode mute -n "wing_L:aTools_StoreNode201";
	rename -uid "6FBEAAE0-49E1-0EA6-6D64-57817ABB36A1";
createNode mute -n "wing_L:scene201";
	rename -uid "0E121AD2-4E82-51D5-D50C-878860C371CF";
createNode mute -n "wing_L:aTools_StoreNode202";
	rename -uid "7F568C15-4229-E95A-9C5B-FDA5E7D4F632";
createNode mute -n "wing_L:scene202";
	rename -uid "BC12CC40-40C2-EB98-FA08-FB99187CC356";
createNode mute -n "wing_L:aTools_StoreNode203";
	rename -uid "925711EB-4903-1A39-C537-D4B1CE11F747";
createNode mute -n "wing_L:scene203";
	rename -uid "74291BDE-4468-A7E0-D6F2-8E9613D966C2";
createNode mute -n "wing_L:aTools_StoreNode204";
	rename -uid "9EB076F4-4A4E-B3A8-036E-6EA24E0564AE";
createNode mute -n "wing_L:scene204";
	rename -uid "CB75C457-4D78-8978-4DD8-FEA83E488216";
createNode mute -n "wing_L:aTools_StoreNode205";
	rename -uid "B0945816-4D24-6D3E-5C77-C0B2D988DD9D";
createNode mute -n "wing_L:scene205";
	rename -uid "E0B8AEF4-4E97-4DC1-7B96-13BCC9E0E097";
createNode mute -n "wing_L:aTools_StoreNode206";
	rename -uid "A9385875-4FDF-79C5-2C2B-B3988F48C3CB";
createNode mute -n "wing_L:scene206";
	rename -uid "BEBEF0AB-4EF3-361A-E78F-16AADB388A02";
createNode mute -n "wing_L:aTools_StoreNode207";
	rename -uid "B79822DC-438B-5699-AFE5-E5AA7CBE689D";
createNode mute -n "wing_L:scene207";
	rename -uid "6B2AE5B3-4428-FD0E-0C33-63B629F32B1A";
createNode mute -n "wing_L:aTools_StoreNode208";
	rename -uid "BD8A7795-42BB-FD3E-61DD-8DBF23AE9C90";
createNode mute -n "wing_L:scene208";
	rename -uid "03B35C16-4E7B-6559-4CA0-25BCF9CB4AF9";
createNode mute -n "wing_L:aTools_StoreNode209";
	rename -uid "9A387865-4AAD-2595-4CF0-EB96FF799171";
createNode mute -n "wing_L:scene209";
	rename -uid "5F856742-4FC3-4ED7-CD4B-9884D8F1C797";
createNode mute -n "wing_L:aTools_StoreNode210";
	rename -uid "448F9282-4881-5399-BA9A-AF965CF41561";
createNode mute -n "wing_L:scene210";
	rename -uid "BC04C6FD-4339-1911-F543-75800E529CC8";
createNode mute -n "wing_L:aTools_StoreNode211";
	rename -uid "11D32C9C-47CC-986E-2ED6-A2889938ABA9";
createNode mute -n "wing_L:scene211";
	rename -uid "FD8F856D-4361-05BD-D906-E4B6ABB2BF37";
createNode mute -n "wing_L:aTools_StoreNode212";
	rename -uid "3C3C8138-4379-BA7A-7F65-C088939B21B1";
createNode mute -n "wing_L:scene212";
	rename -uid "6285941C-4603-062D-E07D-ADAB8D90A884";
createNode mute -n "wing_L:aTools_StoreNode213";
	rename -uid "BD222FBA-45DC-2D72-6B2A-26863C5C0C25";
createNode mute -n "wing_L:scene213";
	rename -uid "E04C68DE-447B-6161-333D-6585C584A265";
createNode mute -n "wing_L:aTools_StoreNode214";
	rename -uid "A42CD770-445C-BB7E-5930-CE9DD182981B";
createNode mute -n "wing_L:scene214";
	rename -uid "03F81841-4D1B-8D13-9D2C-819B0A57D951";
createNode mute -n "wing_L:aTools_StoreNode215";
	rename -uid "70581B3F-4D94-4706-88FC-688EF163E86F";
createNode mute -n "wing_L:scene215";
	rename -uid "8BDEB859-4FC3-5D23-8F57-B1A710981F33";
createNode mute -n "wing_L:aTools_StoreNode216";
	rename -uid "5AE708C8-4F18-5EF1-AEB6-64A9A7F147FE";
createNode mute -n "wing_L:scene216";
	rename -uid "A80C6848-43DD-E3DC-16CA-319910B80088";
createNode mute -n "wing_L:aTools_StoreNode217";
	rename -uid "5F73B444-49B9-0715-4B2D-8AB12C4A9833";
createNode mute -n "wing_L:scene217";
	rename -uid "13DE61AC-412C-8562-AFDE-D381A6750537";
createNode mute -n "wing_L:aTools_StoreNode218";
	rename -uid "D4B725A9-46F2-72BB-947E-6EB097F2DE36";
createNode mute -n "wing_L:scene218";
	rename -uid "D60A74F7-431F-B028-C6A9-1D9FBFCB223D";
createNode mute -n "wing_L:aTools_StoreNode219";
	rename -uid "7B7AD618-4E82-7820-06B5-648EEF79579B";
createNode mute -n "wing_L:scene219";
	rename -uid "D6A78BC8-4D4D-A840-C053-68B9C2D54981";
createNode mute -n "wing_L:aTools_StoreNode220";
	rename -uid "EFC904B6-4950-1A50-6A09-62B9F7F2347C";
createNode mute -n "wing_L:scene220";
	rename -uid "8FF4EC23-45CE-76F6-EEE0-EA9AB2AB9076";
createNode mute -n "wing_L:aTools_StoreNode221";
	rename -uid "779DE0EB-4D2E-37F4-8B37-6C8B9693D450";
createNode mute -n "wing_L:scene221";
	rename -uid "A36CF6F6-4DA8-46CC-9981-DDA865F3720F";
createNode mute -n "wing_L:aTools_StoreNode222";
	rename -uid "9F19D067-4069-AFAD-BEC9-EEA058277B88";
createNode mute -n "wing_L:scene222";
	rename -uid "1C12E57D-4484-E039-61F4-3B8919488345";
createNode mute -n "wing_L:aTools_StoreNode223";
	rename -uid "0FB938B6-4307-191D-33DA-51A09DD9035B";
createNode mute -n "wing_L:scene223";
	rename -uid "C9D79714-4B2B-6D4B-96D3-EAA4C3D9CC43";
createNode mute -n "wing_L:aTools_StoreNode224";
	rename -uid "6BD34516-4EBC-2A43-652F-4082ADF62ACC";
createNode mute -n "wing_L:scene224";
	rename -uid "A250696A-409E-0929-A5E4-DA8D01C1D5C2";
createNode mute -n "wing_L:aTools_StoreNode225";
	rename -uid "B7EB4DE3-4680-D6A3-938B-7BAA099E7A7E";
createNode mute -n "wing_L:scene225";
	rename -uid "1F3E06DD-4184-D1D2-6D20-528AFC184638";
createNode mute -n "wing_L:aTools_StoreNode226";
	rename -uid "26FC3FB7-4F82-8F71-5DEE-EC83A779CA7A";
createNode mute -n "wing_L:scene226";
	rename -uid "E37C1B5C-4F52-E0C9-435C-029FB9F5586B";
createNode mute -n "wing_L:aTools_StoreNode227";
	rename -uid "5C0DE4E5-4709-8001-0F23-08A523A6E261";
createNode mute -n "wing_L:scene227";
	rename -uid "5E676ED0-48F4-F923-919D-56A259A26F36";
createNode mute -n "wing_L:aTools_StoreNode228";
	rename -uid "3956DEA9-4200-43FF-A3D6-65A5C8C73E49";
createNode mute -n "wing_L:scene228";
	rename -uid "939BAE9D-4DBE-4A33-5BF0-089BF764BC0A";
createNode mute -n "wing_L:aTools_StoreNode229";
	rename -uid "44696C71-4A5C-ABC5-FCC6-21BE3159042B";
createNode mute -n "wing_L:scene229";
	rename -uid "3B0E9189-4340-04FC-C6E9-A2B1E531FBC8";
createNode mute -n "wing_L:aTools_StoreNode230";
	rename -uid "DE7790E9-482B-E726-E07A-3BA9E1AC10B9";
createNode mute -n "wing_L:scene230";
	rename -uid "78F63F9E-4381-72C9-C64C-158D616C30CA";
createNode mute -n "wing_L:aTools_StoreNode231";
	rename -uid "686553EC-487D-3D55-87A5-AAAD87553499";
createNode mute -n "wing_L:scene231";
	rename -uid "4C902E1A-49A5-51C9-E0F6-B2AC04EBFA04";
createNode mute -n "wing_L:aTools_StoreNode232";
	rename -uid "E5FE8CBC-4982-BA1C-95E0-139B2347F68B";
createNode mute -n "wing_L:scene232";
	rename -uid "CED17900-40A2-C7ED-F66D-029EAA6AD03F";
createNode mute -n "wing_L:aTools_StoreNode233";
	rename -uid "749B814B-4FE4-5C5F-F87E-13B1DA390DB4";
createNode mute -n "wing_L:scene233";
	rename -uid "FADFD4A2-4798-A9E9-6214-75A81918BA81";
createNode mute -n "wing_L:aTools_StoreNode234";
	rename -uid "6881224C-4DEE-0259-6E3F-BDB20DD2FDD8";
createNode mute -n "wing_L:scene234";
	rename -uid "95A98F48-41BA-BAA7-1004-4ABE1B3F1EF0";
createNode mute -n "wing_L:aTools_StoreNode235";
	rename -uid "329BAFA7-4053-3F48-A5CE-0396B31F5C59";
createNode mute -n "wing_L:scene235";
	rename -uid "76038F91-4023-53F2-22A3-B3A24DAB6AFD";
createNode mute -n "wing_L:aTools_StoreNode236";
	rename -uid "74C10F6E-45D7-3BBC-F8F5-56847C0AC432";
createNode mute -n "wing_L:scene236";
	rename -uid "F62C46E7-4FBA-349C-5F2C-8591BD6F7BFA";
createNode mute -n "wing_L:aTools_StoreNode237";
	rename -uid "CEBAD1FB-466A-DA36-667E-C4AA64695F76";
createNode mute -n "wing_L:scene237";
	rename -uid "B7466D02-46AA-8730-7867-97B40130CA40";
createNode mute -n "wing_L:aTools_StoreNode238";
	rename -uid "0F74ED4C-4001-1D28-37EB-09BB2C735AD4";
createNode mute -n "wing_L:scene238";
	rename -uid "23702835-4D0B-016E-F21C-6F94865A3E0F";
createNode mute -n "wing_L:aTools_StoreNode239";
	rename -uid "7DFF9541-4976-67D1-4275-568AB9D6DDF5";
createNode mute -n "wing_L:scene239";
	rename -uid "8ED5C9A1-4823-AD4E-BB67-E3B76927E5BB";
createNode mute -n "wing_L:aTools_StoreNode240";
	rename -uid "40B197DC-4440-F40B-1D7A-7C927006B71C";
createNode mute -n "wing_L:scene240";
	rename -uid "3D2AB36D-4BDA-DA84-90A2-68B6607081A1";
createNode mute -n "wing_L:aTools_StoreNode241";
	rename -uid "DD8FEB96-46CB-3BFB-F66A-0EAA550F2FC9";
createNode mute -n "wing_L:scene241";
	rename -uid "56A41112-4F1D-722C-1EF6-1E8E9FAC85CD";
createNode mute -n "wing_L:aTools_StoreNode242";
	rename -uid "4DD55305-4AFC-E099-8C93-929393F0A4E8";
createNode mute -n "wing_L:scene242";
	rename -uid "F4D611DC-4069-7B64-DFCA-16803F9FDEC2";
createNode mute -n "wing_L:aTools_StoreNode243";
	rename -uid "C562C7CF-46BA-7F39-A871-CB9355DFB174";
createNode mute -n "wing_L:scene243";
	rename -uid "D1414F6D-4025-8AAE-9DDD-C6BF5697D1B9";
createNode mute -n "wing_L:aTools_StoreNode244";
	rename -uid "FA8A0AE0-495A-78B7-9EAD-9EA17858474B";
createNode mute -n "wing_L:scene244";
	rename -uid "5D876EA1-4E2A-A643-FB2C-B390A9F592BA";
createNode mute -n "wing_L:aTools_StoreNode245";
	rename -uid "74FFD418-49A8-5556-1284-62A6A231C14E";
createNode mute -n "wing_L:scene245";
	rename -uid "7C95E15F-4049-F022-4D2E-E7A5748F6F49";
createNode mute -n "wing_L:aTools_StoreNode246";
	rename -uid "2E86E92A-405F-EB6E-A107-FE8A33DF9E05";
createNode mute -n "wing_L:scene246";
	rename -uid "10606CE6-4239-B216-62E3-119EDFA3B0CC";
createNode mute -n "wing_L:aTools_StoreNode247";
	rename -uid "C63F01EB-44FC-D182-84D7-2D888A682E17";
createNode mute -n "wing_L:scene247";
	rename -uid "198C3A45-419B-CD93-A39B-FC852DE7CA86";
createNode mute -n "wing_L:aTools_StoreNode248";
	rename -uid "BBEAE8B9-4A2F-651C-727D-1483368E2784";
createNode mute -n "wing_L:scene248";
	rename -uid "F57AF769-43F8-8D8A-A452-6BA65536AEFB";
createNode mute -n "wing_L:aTools_StoreNode249";
	rename -uid "2DFD25FA-4C1D-E9D7-8784-5185795A953B";
createNode mute -n "wing_L:scene249";
	rename -uid "E615212A-4431-D776-874F-E481A77448F6";
createNode mute -n "wing_L:aTools_StoreNode250";
	rename -uid "AD911F52-480C-0AA3-E086-D694B32FF127";
createNode mute -n "wing_L:scene250";
	rename -uid "464FF8F1-41A5-0FE7-31B2-F4817082661F";
createNode mute -n "wing_L:aTools_StoreNode251";
	rename -uid "0FD5ACA3-4113-2116-D782-86B22A4AA6BB";
createNode mute -n "wing_L:scene251";
	rename -uid "A66266F1-493E-62E3-1F8D-3EBB66FC1DAF";
createNode mute -n "wing_L:aTools_StoreNode252";
	rename -uid "57510486-4C1E-FC7D-D238-199270EB4C50";
createNode mute -n "wing_L:scene252";
	rename -uid "8F6D5D07-4471-F698-8153-D291FEE194DE";
createNode mute -n "wing_L:aTools_StoreNode253";
	rename -uid "A06F16A7-42D5-724C-48A4-3AA63469A207";
createNode mute -n "wing_L:scene253";
	rename -uid "36177C97-49CD-B2CE-BA66-1B9A4B376C04";
createNode mute -n "wing_L:aTools_StoreNode254";
	rename -uid "1B59FF2C-4274-12D7-D59C-08A4D5239C88";
createNode mute -n "wing_L:scene254";
	rename -uid "8607E00A-434D-56CD-7770-B9BEDF100725";
createNode mute -n "wing_L:aTools_StoreNode255";
	rename -uid "4C2F439B-4223-DE5D-CB8D-67BE56D01AEA";
createNode mute -n "wing_L:scene255";
	rename -uid "F41221DD-4B42-1435-92D3-658A85708CAB";
createNode mute -n "wing_L:aTools_StoreNode256";
	rename -uid "3E63C6A8-4427-9FB9-C0EC-AEAABD9F6271";
createNode mute -n "wing_L:scene256";
	rename -uid "029AB3EE-466E-1623-F8AE-F6BB8A83B3F6";
createNode mute -n "wing_L:aTools_StoreNode257";
	rename -uid "6357CF91-473C-B656-BF5B-72B1471AEA5E";
createNode mute -n "wing_L:scene257";
	rename -uid "69138529-421D-81C3-A95C-5681A06786D2";
createNode mute -n "wing_L:aTools_StoreNode258";
	rename -uid "758C840B-4C34-E12E-F63C-4BAB0353966E";
createNode mute -n "wing_L:scene258";
	rename -uid "34470B5F-427C-32F9-2908-D3A92DB2FE0B";
createNode mute -n "wing_L:aTools_StoreNode259";
	rename -uid "1EFB5686-41EF-D339-6AA7-87B665D25834";
createNode mute -n "wing_L:scene259";
	rename -uid "A823A407-411D-8EFA-D5D9-53BD65EF583F";
createNode mute -n "wing_L:aTools_StoreNode260";
	rename -uid "3893F9CC-4F31-C585-4AD2-07A347C6BD7C";
createNode mute -n "wing_L:scene260";
	rename -uid "9CEA68A4-432F-3D52-88AA-A0A3AA2CED41";
createNode mute -n "wing_L:aTools_StoreNode261";
	rename -uid "3A93350B-461D-3555-A455-3E81F0D3D43A";
createNode mute -n "wing_L:scene261";
	rename -uid "1486C958-44B9-6D90-2699-5BB9FE6DF1F4";
createNode mute -n "wing_L:aTools_StoreNode262";
	rename -uid "9D6A31DA-4598-7266-A8D8-A6A38989C4AD";
createNode mute -n "wing_L:scene262";
	rename -uid "369B38B9-4EED-BBCC-8D7C-599032481FC0";
createNode mute -n "wing_L:aTools_StoreNode263";
	rename -uid "5A65AA31-4F64-8A32-291A-6188B41265B8";
createNode mute -n "wing_L:scene263";
	rename -uid "217E879C-432E-E521-8A9C-F0BC95E40361";
createNode mute -n "wing_L:aTools_StoreNode264";
	rename -uid "9C575EED-4510-63B7-98EE-CBA1AA598D86";
createNode mute -n "wing_L:scene264";
	rename -uid "8E775E5F-4010-8C4F-60DB-63B490B40182";
createNode mute -n "wing_L:aTools_StoreNode265";
	rename -uid "6289E2E2-4696-AB85-95A5-5EB4DC6B06A1";
createNode mute -n "wing_L:scene265";
	rename -uid "E995C674-4149-4E66-C546-768C124BE287";
createNode mute -n "wing_L:aTools_StoreNode266";
	rename -uid "5F60EE78-4276-C417-D839-A1963C5071D2";
createNode mute -n "wing_L:scene266";
	rename -uid "749F740A-4C7E-691B-1068-1BAFC16B8AE4";
createNode mute -n "wing_L:aTools_StoreNode267";
	rename -uid "8B268CB8-4B9B-FD4C-36E5-1B88E23E9934";
createNode mute -n "wing_L:scene267";
	rename -uid "D15FDE96-4190-4BFC-AC31-EDBF94D77AB3";
createNode mute -n "wing_L:aTools_StoreNode268";
	rename -uid "A9110B89-4790-3E75-4CD6-219124DF0CD4";
createNode mute -n "wing_L:scene268";
	rename -uid "B69579D6-4B1B-1A01-6168-D4B036F74A54";
createNode mute -n "wing_L:aTools_StoreNode269";
	rename -uid "BD8C354D-4706-3C6F-0FE8-23A265E2C13C";
createNode mute -n "wing_L:scene269";
	rename -uid "67182E8C-43B1-30B7-EB71-4089CC656D4B";
createNode mute -n "wing_L:aTools_StoreNode270";
	rename -uid "544F2A32-4DE0-577D-21D2-69A7C69DE2CC";
createNode mute -n "wing_L:scene270";
	rename -uid "0824C8FF-4799-26EC-2060-0FA6CDF5963D";
createNode mute -n "wing_L:aTools_StoreNode271";
	rename -uid "7159E7C3-4403-7B8F-8A68-7B877584E00B";
createNode mute -n "wing_L:scene271";
	rename -uid "81BC1E46-4365-14EF-D227-049CD0438050";
createNode mute -n "wing_L:aTools_StoreNode272";
	rename -uid "4CB9D023-4309-80FA-D424-14BE7BF9E07E";
createNode mute -n "wing_L:scene272";
	rename -uid "4A58D64B-4228-42AE-F4B9-B7BB614A298B";
createNode mute -n "wing_L:aTools_StoreNode273";
	rename -uid "F3CA79C6-491D-7E5F-D98E-22AF859FF7AE";
createNode mute -n "wing_L:scene273";
	rename -uid "A4D5F8C7-4228-67D6-0007-9BB2BB5349E7";
createNode mute -n "wing_L:aTools_StoreNode274";
	rename -uid "1975EDD4-4EF4-B64F-9F5C-EDAD721F0B1E";
createNode mute -n "wing_L:scene274";
	rename -uid "CAA2A5BD-485C-292A-89A8-E99B143A2DB0";
createNode mute -n "wing_L:aTools_StoreNode275";
	rename -uid "24088B52-4ADB-D5A9-924F-8982AD64EBC7";
createNode mute -n "wing_L:scene275";
	rename -uid "8327FEF8-4534-7FAF-6612-14A5CC9FE309";
createNode mute -n "wing_L:aTools_StoreNode276";
	rename -uid "CD4C6576-4758-DA42-01C4-E08A955A63DF";
createNode mute -n "wing_L:scene276";
	rename -uid "BDEA88DB-4284-F953-1A27-45A0B0E78EA9";
createNode mute -n "wing_L:aTools_StoreNode277";
	rename -uid "EA987E81-4F4A-1B84-F9D5-AF8A6CDA87BB";
createNode mute -n "wing_L:scene277";
	rename -uid "1E4EE664-49A9-44ED-E0D0-92B064216E6D";
createNode mute -n "wing_L:aTools_StoreNode278";
	rename -uid "0EEB2F84-448D-795D-2222-02B792607B17";
createNode mute -n "wing_L:scene278";
	rename -uid "A165DC4A-4E14-4F0F-975C-A1B60D93A600";
createNode mute -n "wing_L:aTools_StoreNode279";
	rename -uid "FF79AB2E-4CCF-67F7-5747-66BB2DA4B5CA";
createNode mute -n "wing_L:scene279";
	rename -uid "8BB5CC01-4DFF-4F7F-AFE3-1AADB5952B1B";
createNode mute -n "wing_L:aTools_StoreNode280";
	rename -uid "C2A81402-41D2-9A12-481E-56BE5441CA16";
createNode mute -n "wing_L:scene280";
	rename -uid "14A22A55-479F-54BF-1CF5-8BBF261D5E99";
createNode mute -n "wing_L:aTools_StoreNode281";
	rename -uid "A2EC9DC8-4219-B222-584B-06B32E0844A4";
createNode mute -n "wing_L:scene281";
	rename -uid "63265EDC-4664-6856-371C-67BE16EBB5C3";
createNode mute -n "wing_L:aTools_StoreNode282";
	rename -uid "7F8229FA-4B41-AEA2-5397-DF858D45E892";
createNode mute -n "wing_L:scene282";
	rename -uid "FADB08E0-487F-82B1-EB6C-CE962B91B265";
createNode mute -n "wing_L:aTools_StoreNode283";
	rename -uid "A48DCA24-4E0E-2B3E-D069-ED9B96F5E711";
createNode mute -n "wing_L:scene283";
	rename -uid "5A8D4365-446A-1B38-D96F-48BB29269F32";
createNode mute -n "wing_L:aTools_StoreNode284";
	rename -uid "1B37BACA-4FF9-D406-B975-1FAF79FAFBF3";
createNode mute -n "wing_L:scene284";
	rename -uid "47CDD22B-49A4-D51E-3ED1-D4A8212D28CD";
createNode mute -n "wing_L:aTools_StoreNode285";
	rename -uid "8D974A38-4464-FAD9-B50F-DF8B910189EE";
createNode mute -n "wing_L:scene285";
	rename -uid "B7649410-4123-AD2D-452A-4DA16C0CB308";
createNode mute -n "wing_L:aTools_StoreNode286";
	rename -uid "F36D6296-43F7-5AE6-3626-DAA4543E05D5";
createNode mute -n "wing_L:scene286";
	rename -uid "C2175047-4865-7C2D-5DE2-249961F14B84";
createNode mute -n "wing_L:aTools_StoreNode287";
	rename -uid "B67D4B6C-4B15-B1CF-DEB1-BCAB27DA50AA";
createNode mute -n "wing_L:scene287";
	rename -uid "40B46143-4300-6F52-33D4-9989812EA229";
createNode mute -n "wing_L:aTools_StoreNode288";
	rename -uid "D3D4F33B-4FC7-4392-4F66-BBA65D4DAB22";
createNode mute -n "wing_L:scene288";
	rename -uid "A202377B-4CE3-B2EA-6F6A-2F92C1FDF167";
createNode mute -n "wing_L:aTools_StoreNode289";
	rename -uid "521DF275-450D-1B5F-852D-7086825E72B5";
createNode mute -n "wing_L:scene289";
	rename -uid "FE285A50-47F3-EF56-910C-0587C7328048";
createNode mute -n "wing_L:aTools_StoreNode290";
	rename -uid "02B658D5-4F5C-173B-F108-FC9DBC244CEA";
createNode mute -n "wing_L:scene290";
	rename -uid "487BF4E9-46FC-524C-F505-D4B4FE1BF293";
createNode mute -n "wing_L:aTools_StoreNode291";
	rename -uid "2FA5C769-4A64-273D-FC87-BEBF06780AC0";
createNode mute -n "wing_L:scene291";
	rename -uid "F8549B9E-4304-116A-DBC3-F1BD2C2969E5";
createNode mute -n "wing_L:aTools_StoreNode292";
	rename -uid "AF7D0629-46B7-EBCC-0845-B7943D382EA6";
createNode mute -n "wing_L:scene292";
	rename -uid "2EAB8726-4209-B28B-1C59-9F959C556782";
createNode mute -n "wing_L:aTools_StoreNode293";
	rename -uid "7961C6E4-4211-D27F-A39F-798F778055F1";
createNode mute -n "wing_L:scene293";
	rename -uid "CFAE5B9F-43D3-78DF-E59F-78B703318B21";
createNode mute -n "wing_L:aTools_StoreNode294";
	rename -uid "06883C6A-4B31-0E40-3E9C-DEB0BD48ABAB";
createNode mute -n "wing_L:scene294";
	rename -uid "B3A5DE88-447B-93DF-93CC-6D86DF0E7094";
createNode mute -n "wing_L:aTools_StoreNode295";
	rename -uid "83BA58E8-42E3-1A4C-74E3-E2BCB5F271B3";
createNode mute -n "wing_L:scene295";
	rename -uid "156F1EB8-4E34-21E5-A079-C0B4786F88E2";
createNode mute -n "wing_L:aTools_StoreNode296";
	rename -uid "161DD70C-49E4-7DBC-0453-6BAC8EB4ADD0";
createNode mute -n "wing_L:scene296";
	rename -uid "FC57F3A5-474A-13F1-B000-B2AF5C05B5B2";
createNode mute -n "wing_L:aTools_StoreNode297";
	rename -uid "B30A20E2-4451-75C4-A4A9-51B9E7FF7C3B";
createNode mute -n "wing_L:scene297";
	rename -uid "0557624D-423E-079A-24DE-96A8B64E52CF";
createNode mute -n "wing_L:aTools_StoreNode298";
	rename -uid "C120C055-4199-FB21-6896-1C88778C896B";
createNode mute -n "wing_L:scene298";
	rename -uid "13344F9B-4FC1-60D4-DF4E-0D885AF9A6BD";
createNode mute -n "wing_L:aTools_StoreNode299";
	rename -uid "98ECDED7-4EE2-7AC2-849F-88A1A890B2A0";
createNode mute -n "wing_L:scene299";
	rename -uid "5D30F861-4E90-77F4-B8DC-4CBAC6E170BD";
createNode mute -n "wing_L:aTools_StoreNode300";
	rename -uid "8A486CEA-4B82-809B-110C-06AA9CE4F080";
createNode mute -n "wing_L:scene300";
	rename -uid "B83E2F49-4269-F1FC-CDE3-1C8DCDE639F0";
createNode mute -n "wing_L:aTools_StoreNode301";
	rename -uid "1AB44AAF-48F9-74A2-2B16-6C94EF0D0D6D";
createNode mute -n "wing_L:scene301";
	rename -uid "36509E1F-4DC6-8F06-FC50-B3817D63484C";
createNode mute -n "wing_L:aTools_StoreNode302";
	rename -uid "F418FC67-4D5D-1090-89AA-908A95F241F8";
createNode mute -n "wing_L:scene302";
	rename -uid "10FEEF7F-4544-2808-033B-FA932D13E512";
createNode mute -n "wing_L:aTools_StoreNode303";
	rename -uid "54544603-4A5E-D834-868F-FE81B9FB97D7";
createNode mute -n "wing_L:scene303";
	rename -uid "F64AC3A8-4450-81DC-3B26-4EA382916E07";
createNode mute -n "wing_L:aTools_StoreNode304";
	rename -uid "903DEBDC-4173-A3B4-D2F0-0C96C4BF64FD";
createNode mute -n "wing_L:scene304";
	rename -uid "9A5FE36D-45F9-AAC8-F6BD-5EB8E0C0929E";
createNode mute -n "wing_L:aTools_StoreNode305";
	rename -uid "2710B62E-48D2-6B0F-3BC5-67921B8FC6DC";
createNode mute -n "wing_L:scene305";
	rename -uid "C3B1B73A-4B59-267D-0F0B-23A31C8A6FF4";
createNode mute -n "wing_L:aTools_StoreNode306";
	rename -uid "5A928C80-4A3F-11D1-8EC1-99A863EC776C";
createNode mute -n "wing_L:scene306";
	rename -uid "7846E1FE-484A-BFCF-CA4D-B2800B9D23A1";
createNode mute -n "wing_L:aTools_StoreNode307";
	rename -uid "27F6C12F-476C-8D16-D9B3-6183F0699A59";
createNode mute -n "wing_L:scene307";
	rename -uid "463FEF48-4C4E-2ECC-3679-9A8B9803A52F";
createNode mute -n "wing_L:aTools_StoreNode308";
	rename -uid "D858B450-4CE9-51D4-DBCA-D2B0A6A789A3";
createNode mute -n "wing_L:scene308";
	rename -uid "FB89653D-44E4-FD40-A157-B1A8C4F4C542";
createNode mute -n "wing_L:aTools_StoreNode309";
	rename -uid "86458D4F-4328-501A-B057-EA8FC08048B7";
createNode mute -n "wing_L:scene309";
	rename -uid "F4752F94-4F45-1894-9302-C0B792D6BDED";
createNode mute -n "wing_L:aTools_StoreNode310";
	rename -uid "02362780-4B9F-C68A-60CE-EC93832FFF27";
createNode mute -n "wing_L:scene310";
	rename -uid "1D09D5BA-42D4-5F65-2D64-44A21E1BC813";
createNode mute -n "wing_L:aTools_StoreNode311";
	rename -uid "402F26F7-40B3-C32E-D765-F89F866A8AFE";
createNode mute -n "wing_L:scene311";
	rename -uid "113E00A8-4485-50FB-C734-FF8287532933";
createNode mute -n "wing_L:aTools_StoreNode312";
	rename -uid "836940B2-4812-2FD8-9FED-FB8F3FC52375";
createNode mute -n "wing_L:scene312";
	rename -uid "1369B953-4D20-4D3C-EE2E-02A3B8F0078A";
createNode mute -n "wing_L:aTools_StoreNode313";
	rename -uid "C0E82B59-4CDF-8B92-6F68-2CAE1322BDF4";
createNode mute -n "wing_L:scene313";
	rename -uid "66E108EB-42E4-3FFD-589F-E58B010AA3E6";
createNode mute -n "wing_L:aTools_StoreNode314";
	rename -uid "4BE2385D-4C3E-798C-599A-1583CB4EB2C3";
createNode mute -n "wing_L:scene314";
	rename -uid "8E443E8A-46F8-0B15-9E64-B0827B997E01";
createNode mute -n "wing_L:aTools_StoreNode315";
	rename -uid "7A12E4AE-48BF-99AE-0B82-61B15580AA38";
createNode mute -n "wing_L:scene315";
	rename -uid "9D003652-4281-8E24-00CC-058C50030591";
createNode mute -n "wing_L:aTools_StoreNode316";
	rename -uid "6AB40283-4B13-018D-D4DD-948A87BFA8B2";
createNode mute -n "wing_L:scene316";
	rename -uid "925CBD92-4D76-FFDD-F0D1-56A9B733CA39";
createNode mute -n "wing_L:aTools_StoreNode317";
	rename -uid "7159124E-4EF7-064D-C5D1-A69DB7279B09";
createNode mute -n "wing_L:scene317";
	rename -uid "382EB982-4836-5D5C-B9EC-21B1A3646F05";
createNode mute -n "wing_L:aTools_StoreNode318";
	rename -uid "B303C62B-4256-BA49-9CD9-67BD5B45549A";
createNode mute -n "wing_L:scene318";
	rename -uid "6AD0826B-4924-5AF9-2FDE-99B0E754C61E";
createNode mute -n "wing_L:aTools_StoreNode319";
	rename -uid "51E44B18-46C7-6F63-96BB-BAB0E7B5FD41";
createNode mute -n "wing_L:scene319";
	rename -uid "AFC26643-42AC-1390-9DA4-BB9AFDFA50AA";
createNode mute -n "wing_L:aTools_StoreNode320";
	rename -uid "F454EE01-4962-E8B0-57E7-368FE6C5F305";
createNode mute -n "wing_L:scene320";
	rename -uid "008A81C0-41BE-647E-57BD-D7810DD73D3A";
createNode mute -n "wing_L:aTools_StoreNode321";
	rename -uid "5944696C-4269-F57A-C21A-5DAA9FADE5A5";
createNode mute -n "wing_L:scene321";
	rename -uid "76B0F653-4150-87FA-D9B0-62AD17DE864C";
createNode mute -n "wing_L:aTools_StoreNode322";
	rename -uid "8C4C43E4-4624-3B6C-0FA5-1DB1ED48CC99";
createNode mute -n "wing_L:scene322";
	rename -uid "6A592720-4CB2-294B-7F45-C2BE8154C503";
createNode mute -n "wing_L:aTools_StoreNode323";
	rename -uid "5778BC43-413D-CA0B-BE28-B4A012B754DA";
createNode mute -n "wing_L:scene323";
	rename -uid "B72AA100-4D9F-674F-5E59-E293D1A1B050";
createNode mute -n "wing_L:aTools_StoreNode324";
	rename -uid "20E571DC-4F65-FA73-EE52-359ABD6DDCAF";
createNode mute -n "wing_L:scene324";
	rename -uid "EC05342C-498F-79EF-8F4F-0797644DAF1E";
createNode mute -n "wing_L:aTools_StoreNode325";
	rename -uid "82000611-4C84-FF7B-BDFC-3FBF78E3FB52";
createNode mute -n "wing_L:scene325";
	rename -uid "159880B9-4323-650E-DAE7-9680F3CE0387";
createNode mute -n "wing_L:aTools_StoreNode326";
	rename -uid "851FB84C-483F-F0B3-F3B6-E19F90BA2C04";
createNode mute -n "wing_L:scene326";
	rename -uid "66EDA676-455A-619C-9FBF-77856ACDAE52";
createNode mute -n "wing_L:aTools_StoreNode327";
	rename -uid "CFF4438D-4860-96A3-9BD1-0BA54785E3E1";
createNode mute -n "wing_L:scene327";
	rename -uid "DE47F2BE-45AF-DB5C-0B0F-67B0B5D8450D";
createNode mute -n "wing_L:aTools_StoreNode328";
	rename -uid "C198C3EC-4566-B9F8-FA3D-8B8677D872AA";
createNode mute -n "wing_L:scene328";
	rename -uid "879737D2-426E-78D7-3CC1-1DA76577FF90";
createNode mute -n "wing_L:aTools_StoreNode329";
	rename -uid "17792A50-455C-ACF4-2F86-AA8FA86D0103";
createNode mute -n "wing_L:scene329";
	rename -uid "E0B7F53E-42E7-9511-E0EA-94A4D28AA755";
createNode mute -n "wing_L:aTools_StoreNode330";
	rename -uid "35B69B98-464B-233B-2099-01894A2344F2";
createNode mute -n "wing_L:scene330";
	rename -uid "989DA8AC-4897-00ED-7083-D191E046C191";
createNode mute -n "wing_L:aTools_StoreNode331";
	rename -uid "8981342A-40F8-A814-0AE8-91A822CF52F7";
createNode mute -n "wing_L:scene331";
	rename -uid "4FFD1D80-4E8C-E9E6-6454-F8866046AB59";
createNode mute -n "wing_L:aTools_StoreNode332";
	rename -uid "FC69ED05-478B-7ED5-0319-49BC493C88A9";
createNode mute -n "wing_L:scene332";
	rename -uid "F3106F42-433C-FB4B-FEC5-429006EC5FF2";
createNode mute -n "wing_L:aTools_StoreNode333";
	rename -uid "52740AB1-40B7-CB28-78C5-FCAC5341A59B";
createNode mute -n "wing_L:scene333";
	rename -uid "7990E15D-4105-08C0-3F0F-738867234A67";
createNode mute -n "wing_L:aTools_StoreNode334";
	rename -uid "F2854A92-4D34-AA33-B4CB-52850D01D823";
createNode mute -n "wing_L:scene334";
	rename -uid "CA79CB51-41C1-40B9-55EC-D68F4B401BB4";
createNode mute -n "wing_L:aTools_StoreNode335";
	rename -uid "A97C3814-4D69-966C-EF5F-849BB2A9FF44";
createNode mute -n "wing_L:scene335";
	rename -uid "6032BDE9-4A7E-DE5B-B2E6-96AE8040EDD7";
createNode mute -n "wing_L:aTools_StoreNode336";
	rename -uid "FDA38548-4795-6E0E-74DD-EFA51F376352";
createNode mute -n "wing_L:scene336";
	rename -uid "82ADE592-4FAC-1D27-8203-19860319E820";
createNode mute -n "wing_L:aTools_StoreNode337";
	rename -uid "3DC08DF9-4C57-963D-44B4-6F88CBBCDFE7";
createNode mute -n "wing_L:scene337";
	rename -uid "1390128B-4C72-528A-60FA-60926E2FADA9";
createNode mute -n "wing_L:aTools_StoreNode338";
	rename -uid "5861DA10-4A4C-275E-3A6D-5BB6DCE8E3CD";
createNode mute -n "wing_L:scene338";
	rename -uid "6EB2FF7D-4CC0-3BA3-27FC-488AA49A02B5";
createNode mute -n "wing_L:aTools_StoreNode339";
	rename -uid "68EC53C8-49A8-F580-1A5E-04A3A855382D";
createNode mute -n "wing_L:scene339";
	rename -uid "0009265F-4B75-4567-8CFB-6D91755BB20D";
createNode mute -n "wing_L:aTools_StoreNode340";
	rename -uid "E06E81F4-42DD-70F7-D4A4-F1AF434E0F78";
createNode mute -n "wing_L:scene340";
	rename -uid "B0D34A6A-4B88-B5A3-A5D3-9090ADC269AB";
createNode mute -n "wing_L:aTools_StoreNode341";
	rename -uid "C2155434-4F68-7898-96A4-DBB691B43CC2";
createNode mute -n "wing_L:scene341";
	rename -uid "D0535011-4601-585B-7D44-F4BF15242DCA";
createNode mute -n "wing_L:aTools_StoreNode342";
	rename -uid "62DF7DD3-4B5D-A3BE-3F2E-6BBD6999F128";
createNode mute -n "wing_L:scene342";
	rename -uid "CFE6554F-4DB6-A302-0A52-799B56E9D538";
createNode mute -n "wing_L:aTools_StoreNode343";
	rename -uid "4BFC0550-46AE-7FB4-DFCF-AC981A2DC077";
createNode mute -n "wing_L:scene343";
	rename -uid "6FBE541B-4314-E4CE-15D1-39BDC8E68EAF";
createNode mute -n "wing_L:aTools_StoreNode344";
	rename -uid "5F9ED2C6-474A-A486-15BA-ACB147BCB8D1";
createNode mute -n "wing_L:scene344";
	rename -uid "10002277-4832-CDAC-6DCB-80BCBA174759";
createNode mute -n "wing_L:aTools_StoreNode345";
	rename -uid "3FBF746B-45D8-935C-3FAD-12937931A597";
createNode mute -n "wing_L:scene345";
	rename -uid "6128FBAB-496B-900C-3139-E4A376F81D81";
createNode mute -n "wing_L:aTools_StoreNode346";
	rename -uid "7E991B99-420F-3D37-D056-53B7373CEC51";
createNode mute -n "wing_L:scene346";
	rename -uid "DD780C28-47A5-B4B2-967E-0A8956649663";
createNode mute -n "wing_L:aTools_StoreNode347";
	rename -uid "E9F27BC5-44FE-B9A5-2922-00998929E5A5";
createNode mute -n "wing_L:scene347";
	rename -uid "FA2BC545-453D-5592-17AB-B19291BE83D3";
createNode mute -n "wing_L:aTools_StoreNode348";
	rename -uid "0275355C-464A-502A-F9A2-B7A4EB0A3F08";
createNode mute -n "wing_L:scene348";
	rename -uid "1DBD2D8E-4150-3C17-9C63-CDBE154734B0";
createNode mute -n "wing_L:aTools_StoreNode349";
	rename -uid "8101CD80-4A8F-F271-423D-F09D8CBE0C77";
createNode mute -n "wing_L:scene349";
	rename -uid "2397A5B7-4A5A-CDD7-00CC-889CFF8D9172";
createNode mute -n "wing_L:aTools_StoreNode350";
	rename -uid "1BF648A9-4E30-C3BE-5C6C-D4823B526980";
createNode mute -n "wing_L:scene350";
	rename -uid "2F4D7010-4E40-5FAC-9040-77BE2DD94B74";
createNode mute -n "wing_L:aTools_StoreNode351";
	rename -uid "E8AA851E-4238-3B95-0634-5ABFA001EAE5";
createNode mute -n "wing_L:scene351";
	rename -uid "34378310-4717-BE2C-26CE-348E63755D7A";
createNode mute -n "wing_L:aTools_StoreNode352";
	rename -uid "CEE2CFB1-4AF7-D577-DDB6-7BA588881703";
createNode mute -n "wing_L:scene352";
	rename -uid "88850714-4770-1584-A4C8-2F9AA25E08AA";
createNode mute -n "wing_L:aTools_StoreNode353";
	rename -uid "97035EE7-43D1-203B-0929-6FB7C14C5B82";
createNode mute -n "wing_L:scene353";
	rename -uid "9A8A6968-462E-2C11-61FB-9BABF8B263AD";
createNode mute -n "wing_L:aTools_StoreNode354";
	rename -uid "0EB55601-4308-3BD3-50E9-869ED373F32C";
createNode mute -n "wing_L:scene354";
	rename -uid "7EDDA225-4DC1-8173-6093-83A26D95621A";
createNode mute -n "wing_L:aTools_StoreNode355";
	rename -uid "459D6A05-4004-DAA5-F793-E18123AF3D76";
createNode mute -n "wing_L:scene355";
	rename -uid "D9E0FFF0-487B-4ED2-86AD-D5B1F225F572";
createNode mute -n "wing_L:aTools_StoreNode356";
	rename -uid "3E215C19-458E-19DB-6314-8FAED6D0B785";
createNode mute -n "wing_L:scene356";
	rename -uid "099301B8-444B-0982-65F0-B0B86A51D1EA";
createNode mute -n "wing_L:aTools_StoreNode357";
	rename -uid "86512806-48BA-0CB6-DA59-1A8C39616C26";
createNode mute -n "wing_L:scene357";
	rename -uid "EA73F47F-497E-1BBD-3C12-BE9A6E2AF311";
createNode mute -n "wing_L:aTools_StoreNode358";
	rename -uid "769DA591-4566-3005-C910-8BB9F7068F39";
createNode mute -n "wing_L:scene358";
	rename -uid "3EE476E5-45A1-C216-95F9-4F9B97379AEA";
createNode mute -n "wing_L:aTools_StoreNode359";
	rename -uid "735DF090-4785-F2B9-848A-B88DCB07AAF7";
createNode mute -n "wing_L:scene359";
	rename -uid "03BA977B-4316-E6BD-FFAD-6F964F8FE079";
createNode mute -n "wing_L:aTools_StoreNode360";
	rename -uid "F528AFE4-4D1B-E500-0878-50B55F51D7A7";
createNode mute -n "wing_L:scene360";
	rename -uid "82E10D4C-47E4-65CF-F081-C4A4359DDFB0";
createNode mute -n "wing_L:aTools_StoreNode361";
	rename -uid "2C33DB3E-40F0-F096-B505-3BBAE09DCA58";
createNode mute -n "wing_L:scene361";
	rename -uid "F4D7F87B-44B7-FEE2-E4DD-1596FD1AA499";
createNode mute -n "wing_L:aTools_StoreNode362";
	rename -uid "BAC2CA5E-4573-5620-4CE1-0FAC0DB12612";
createNode mute -n "wing_L:scene362";
	rename -uid "C86D3340-4438-FFC1-0EE0-F084956CCFAE";
createNode mute -n "wing_L:aTools_StoreNode363";
	rename -uid "554CBBC6-49C5-3183-EA14-99BC4EEB8A0A";
createNode mute -n "wing_L:scene363";
	rename -uid "87444B6B-46D8-571D-4A82-5D9465BB4A43";
createNode mute -n "wing_L:aTools_StoreNode364";
	rename -uid "912C88E7-42D0-6849-4AE3-F8825D1A8D79";
createNode mute -n "wing_L:scene364";
	rename -uid "2F6784FB-494B-AE18-2B24-D7A0C504A70F";
createNode mute -n "wing_L:aTools_StoreNode365";
	rename -uid "893CB97A-4C22-9418-0FA8-87BF53D49ACF";
createNode mute -n "wing_L:scene365";
	rename -uid "9628F40E-410B-4FD7-F3E8-1BA857D9B336";
createNode mute -n "wing_L:aTools_StoreNode366";
	rename -uid "2434C98B-4A8D-4FF0-C201-539F96CCBEAE";
createNode mute -n "wing_L:scene366";
	rename -uid "0F8802AF-43F6-2929-AAE2-C0AB933BBE44";
createNode mute -n "wing_L:aTools_StoreNode367";
	rename -uid "AF362991-4216-2413-00FD-6DABA650AC3D";
createNode mute -n "wing_L:scene367";
	rename -uid "50E56624-4933-C04B-4BB0-1F8743FE05FB";
createNode mute -n "wing_L:aTools_StoreNode368";
	rename -uid "B41B4AFC-4185-8185-19E4-09842D6C188C";
createNode mute -n "wing_L:scene368";
	rename -uid "8FED27F5-4910-283A-5638-DF8A3910F9F4";
createNode mute -n "wing_L:aTools_StoreNode369";
	rename -uid "F4D9912F-4AC8-9164-C18D-6F842799547E";
createNode mute -n "wing_L:scene369";
	rename -uid "92F5D9E6-49EA-384C-FCE8-8FA979EB78EB";
createNode mute -n "wing_L:aTools_StoreNode370";
	rename -uid "599D4BB8-4A48-4CF1-DC37-A586509C2E1A";
createNode mute -n "wing_L:scene370";
	rename -uid "9EFD7CD3-4107-781F-641D-AAA4FC401BD0";
createNode mute -n "wing_L:aTools_StoreNode371";
	rename -uid "C4FAD9BE-4BD9-BF63-6128-91ADD55055DD";
createNode mute -n "wing_L:scene371";
	rename -uid "718E2292-4B22-7C6C-176E-0B9D699DC1C0";
createNode mute -n "wing_L:aTools_StoreNode372";
	rename -uid "19B096FF-4C83-3618-0AC7-B18A0E790B31";
createNode mute -n "wing_L:scene372";
	rename -uid "7B7B054E-4DB6-3472-C739-BFA81E480F33";
createNode mute -n "wing_L:aTools_StoreNode373";
	rename -uid "02CBD897-4B73-6246-5BC9-3185B0C33852";
createNode mute -n "wing_L:scene373";
	rename -uid "6C485847-452D-0EE6-6317-07AB4CEB1421";
createNode mute -n "wing_L:aTools_StoreNode374";
	rename -uid "EB7EE626-44D0-DE6F-8834-FE89378B3346";
createNode mute -n "wing_L:scene374";
	rename -uid "AB53A104-4760-9752-DA0D-7E99833D5704";
createNode mute -n "wing_L:aTools_StoreNode375";
	rename -uid "35C1C166-4BCE-D578-CE4D-B2A20D723B0B";
createNode mute -n "wing_L:scene375";
	rename -uid "408C4BD6-431E-8655-6CD3-5A8DC174A190";
createNode mute -n "wing_L:aTools_StoreNode376";
	rename -uid "BE59A17F-49F9-E30C-C137-EBBA09F09294";
createNode mute -n "wing_L:scene376";
	rename -uid "38B4CEF3-45A0-BDD9-6FAB-66BDD7FCA703";
createNode mute -n "wing_L:aTools_StoreNode377";
	rename -uid "E73F809E-48B5-967D-4C49-DFA7E51CBC4B";
createNode mute -n "wing_L:scene377";
	rename -uid "120A96C3-4A16-613B-AAEE-049DE5ED7BCF";
createNode mute -n "wing_L:aTools_StoreNode378";
	rename -uid "1791D9AC-448E-D961-49E8-348466E49C88";
createNode mute -n "wing_L:scene378";
	rename -uid "9067C307-42C2-C4D8-4BE5-4ABAF4691E4F";
createNode mute -n "wing_L:aTools_StoreNode379";
	rename -uid "43097AF4-46E7-F6E4-6048-FB9E717FA8F4";
createNode mute -n "wing_L:scene379";
	rename -uid "69DB72DC-4DB0-79C2-BB1A-83A4863265F2";
createNode mute -n "wing_L:aTools_StoreNode380";
	rename -uid "711F5869-49A5-7E09-E185-4AB41A47F5D9";
createNode mute -n "wing_L:scene380";
	rename -uid "16017A09-4C12-E8C8-2797-F69C9F71E0BA";
createNode mute -n "wing_L:aTools_StoreNode381";
	rename -uid "4930F223-4119-91F2-D65C-19822AE4DE72";
createNode mute -n "wing_L:scene381";
	rename -uid "0042EF06-456D-4B84-7D2C-E0B49097635E";
createNode mute -n "wing_L:aTools_StoreNode382";
	rename -uid "80B9D646-42DF-705A-5715-C4B252EE1E9F";
createNode mute -n "wing_L:scene382";
	rename -uid "F5189F07-4C86-E3A0-22AB-29BA3FF9EF96";
createNode mute -n "wing_L:aTools_StoreNode383";
	rename -uid "7504CDB5-4FC2-B644-D153-47941C5324EF";
createNode mute -n "wing_L:scene383";
	rename -uid "79ADF009-46C0-E1A8-52E5-F980BCDB83E4";
createNode mute -n "wing_L:aTools_StoreNode384";
	rename -uid "55265503-4BEF-B7F8-D06D-33B5AFD7B51E";
createNode mute -n "wing_L:scene384";
	rename -uid "E5C8CA1B-47B9-69BB-D873-DD8E8DC73250";
createNode mute -n "wing_L:aTools_StoreNode385";
	rename -uid "CE69C0E1-4CFE-88BE-FD3D-99B683733343";
createNode mute -n "wing_L:scene385";
	rename -uid "8E1E27FE-4AE4-1490-57C0-F68B403FE4EF";
createNode mute -n "wing_L:aTools_StoreNode386";
	rename -uid "5CBCE362-4B00-E005-37D4-5CA79D644F3F";
createNode mute -n "wing_L:scene386";
	rename -uid "43EB2C9D-4B3D-021A-6870-06A64DFBE44E";
createNode mute -n "wing_L:aTools_StoreNode387";
	rename -uid "FAD2EB99-4FF7-7E54-ED5D-4B8F07E6346A";
createNode mute -n "wing_L:scene387";
	rename -uid "A6BF2883-4773-927E-0667-5195D087895D";
createNode mute -n "wing_L:aTools_StoreNode388";
	rename -uid "7E14FF5E-487B-7F96-5008-FF8338DBCD0D";
createNode mute -n "wing_L:scene388";
	rename -uid "9E191D89-4635-AA08-6E92-99AB47858FDF";
createNode mute -n "wing_L:aTools_StoreNode389";
	rename -uid "DC440759-47B9-1C41-2307-98A6D13515AA";
createNode mute -n "wing_L:scene389";
	rename -uid "4FAAA70F-4AB0-8C12-CFA0-F08C56643CCF";
createNode mute -n "wing_L:aTools_StoreNode390";
	rename -uid "0D76314F-406D-9F72-3991-CFA1521CD33A";
createNode mute -n "wing_L:scene390";
	rename -uid "CDD96B19-4F8F-6A89-72F1-34A3FDDDC5A8";
createNode mute -n "wing_L:aTools_StoreNode391";
	rename -uid "ADB69689-4A22-FA35-C3C7-10BD667F6DD0";
createNode mute -n "wing_L:scene391";
	rename -uid "E33CF182-4354-E952-F969-F5BD91355104";
createNode mute -n "wing_L:aTools_StoreNode392";
	rename -uid "8DA07740-45A8-F0F6-C8B3-D8B090FB251D";
createNode mute -n "wing_L:scene392";
	rename -uid "0871CF69-407A-C05B-28BF-3C88724864FB";
createNode mute -n "wing_L:aTools_StoreNode393";
	rename -uid "1C810CED-4037-8D58-5510-31903F16F6BC";
createNode mute -n "wing_L:scene393";
	rename -uid "FA8F50D9-4836-0B3D-A6DB-21A633B2BE1A";
createNode mute -n "wing_L:aTools_StoreNode394";
	rename -uid "D473F870-4038-DF01-3DA0-EF9178BEF49C";
createNode mute -n "wing_L:scene394";
	rename -uid "2A682068-4BAB-05EE-2E4B-F2A1BB3C6A11";
createNode mute -n "wing_L:aTools_StoreNode395";
	rename -uid "C0078B22-4C84-A141-2DA2-FDBEF2C0174A";
createNode mute -n "wing_L:scene395";
	rename -uid "68B5603C-4C84-090F-C7D0-319D915B1312";
createNode mute -n "wing_L:aTools_StoreNode396";
	rename -uid "7FF41256-420C-9B3B-40C3-C69EFEB9427F";
createNode mute -n "wing_L:scene396";
	rename -uid "AC532728-40DA-BE25-AB5C-11B2BC4F6BB5";
createNode mute -n "wing_L:aTools_StoreNode397";
	rename -uid "3A8C1A3C-441B-6FCE-8B7F-F488666C16DD";
createNode mute -n "wing_L:scene397";
	rename -uid "61131F16-4973-060E-FF16-4EB806EC3297";
createNode mute -n "wing_L:aTools_StoreNode398";
	rename -uid "1B0E9622-4AB9-A3B0-DB0E-F6AC49ADA731";
createNode mute -n "wing_L:scene398";
	rename -uid "BE86A0E7-4174-90EF-BF2B-8581B9B6DF89";
createNode mute -n "wing_L:aTools_StoreNode399";
	rename -uid "0A639089-426C-5786-B951-F7BAA0288978";
createNode mute -n "wing_L:scene399";
	rename -uid "50F7D1C0-4B26-F276-FE2E-22B78D1B946F";
createNode mute -n "wing_L:aTools_StoreNode400";
	rename -uid "28B21823-45B5-E7F1-BA53-72A3045DA2DD";
createNode mute -n "wing_L:scene400";
	rename -uid "A0E02F63-49B0-9909-7531-B39D7745992A";
createNode mute -n "wing_L:aTools_StoreNode401";
	rename -uid "E0181560-4F92-CF94-D872-C68F15FF7680";
createNode mute -n "wing_L:scene401";
	rename -uid "912796AA-46B2-0B42-B087-CCAADD7F46EF";
createNode mute -n "wing_L:aTools_StoreNode402";
	rename -uid "E52806F5-4B7C-F607-2E22-A788D1EE7C1A";
createNode mute -n "wing_L:scene402";
	rename -uid "E3064243-4560-1D56-B614-2284BFE3EA25";
createNode mute -n "wing_L:aTools_StoreNode403";
	rename -uid "70AD84AA-4705-9D34-6D32-0EB845413AA6";
createNode mute -n "wing_L:scene403";
	rename -uid "1BBB966A-4FCD-7668-D0A2-458432F71097";
createNode mute -n "wing_L:aTools_StoreNode404";
	rename -uid "279F232E-4165-ED8B-C6BB-14BC07EF5847";
createNode mute -n "wing_L:scene404";
	rename -uid "5DE73544-4007-CF5D-D0A2-89BB0DE4E738";
createNode mute -n "wing_L:aTools_StoreNode405";
	rename -uid "44DEA784-4D2B-9E9F-7026-7C87CB46DE80";
createNode mute -n "wing_L:scene405";
	rename -uid "34132180-4345-D438-472C-BE9CBDCF0FE5";
createNode mute -n "wing_L:aTools_StoreNode406";
	rename -uid "79115A75-4C18-620E-98AD-EDAAC87E3D2C";
createNode mute -n "wing_L:scene406";
	rename -uid "1A35ED46-4AB9-3012-6F34-DEAFE0098868";
createNode mute -n "wing_L:aTools_StoreNode407";
	rename -uid "D2FFC790-475B-5D47-AB48-BB9BB8CE68E5";
createNode mute -n "wing_L:scene407";
	rename -uid "4EF11347-461C-2959-609E-AE80D6AA5A9F";
createNode mute -n "wing_L:aTools_StoreNode408";
	rename -uid "6A3DD874-4213-8E06-4AD0-919649E18604";
createNode mute -n "wing_L:scene408";
	rename -uid "8A751D1E-43D8-F7EC-488A-BFB0425ECF1E";
createNode mute -n "wing_L:aTools_StoreNode409";
	rename -uid "BF564073-4720-0B2E-E07F-01A2AFE9AEA9";
createNode mute -n "wing_L:scene409";
	rename -uid "21A15A62-4B32-31C1-4AB3-3EA7BC435F81";
createNode mute -n "wing_L:aTools_StoreNode410";
	rename -uid "6C949756-40C4-DF76-E151-F39E3A995FB4";
createNode mute -n "wing_L:scene410";
	rename -uid "2959D316-48E1-FEA7-7896-4E84C563A3F0";
createNode mute -n "wing_L:aTools_StoreNode411";
	rename -uid "CF73CD4D-41FA-9CEE-123F-479188D52014";
createNode mute -n "wing_L:scene411";
	rename -uid "0AA67AEE-4696-8104-6436-1F9B6E445328";
createNode mute -n "wing_L:aTools_StoreNode412";
	rename -uid "1E5B9E77-4368-12A3-2238-B89987659392";
createNode mute -n "wing_L:scene412";
	rename -uid "67151676-4CA9-C0B2-E645-33BE636110FE";
createNode mute -n "wing_L:aTools_StoreNode413";
	rename -uid "FB48C47D-46BC-4D5B-2C7A-DEB5D743CBDB";
createNode mute -n "wing_L:scene413";
	rename -uid "6458A8BD-40B0-CE20-89F3-54B51457409B";
createNode mute -n "wing_L:aTools_StoreNode414";
	rename -uid "8F6D4C1A-4AC4-15DB-552D-36AC10EE78FB";
createNode mute -n "wing_L:scene414";
	rename -uid "1273D9D8-4ED1-C895-950E-FFBD229CE2C9";
createNode mute -n "wing_L:aTools_StoreNode415";
	rename -uid "B3C07953-4595-058F-C058-F8829DC1FE02";
createNode mute -n "wing_L:scene415";
	rename -uid "AA749C35-4BE1-45DA-8D36-3EA5ECE8523C";
createNode mute -n "wing_L:aTools_StoreNode416";
	rename -uid "D43AE41F-49A5-D0E1-8867-BC8D5C1C9914";
createNode mute -n "wing_L:scene416";
	rename -uid "76A15AB3-4369-FFE3-518F-38A118A782B7";
createNode mute -n "wing_L:aTools_StoreNode417";
	rename -uid "66E0F1B5-4EDA-3549-EBCD-B5AA86EEFF23";
createNode mute -n "wing_L:scene417";
	rename -uid "2E4F71A9-4659-003C-904E-8CB9537864E5";
createNode mute -n "wing_L:aTools_StoreNode418";
	rename -uid "1E2975C9-4850-D89B-087A-439048918B94";
createNode mute -n "wing_L:scene418";
	rename -uid "646E97D5-4027-4E11-E77E-4FA22B8D9287";
createNode mute -n "wing_L:aTools_StoreNode419";
	rename -uid "649C96F7-421A-25A7-C90D-88A2E544B17C";
createNode mute -n "wing_L:scene419";
	rename -uid "8A351D43-4A27-6875-57B0-E5A74C0FEA05";
createNode mute -n "wing_L:aTools_StoreNode420";
	rename -uid "DC640109-475C-FBBD-1AF3-128032EB1EF0";
createNode mute -n "wing_L:scene420";
	rename -uid "B40145D5-44FE-67D5-30CD-CBA33C7B85F8";
createNode mute -n "wing_L:aTools_StoreNode421";
	rename -uid "0B465270-439B-B4EA-BAF0-5C89C10807AF";
createNode mute -n "wing_L:scene421";
	rename -uid "EA2C3AAB-4096-1C21-EAEE-79B19E050666";
createNode mute -n "wing_L:aTools_StoreNode422";
	rename -uid "EE20B2B1-4677-A1CE-23F8-5EA86AF80042";
createNode mute -n "wing_L:scene422";
	rename -uid "72721AE2-44CB-AAB2-FED9-61857CC93B15";
createNode mute -n "wing_L:aTools_StoreNode423";
	rename -uid "615628D2-4421-6085-6052-B49CE63D0E9B";
createNode mute -n "wing_L:scene423";
	rename -uid "ACB4DFDD-4430-43F9-0673-61B497C37E27";
createNode mute -n "wing_L:aTools_StoreNode424";
	rename -uid "710A845E-4BEF-293F-E99C-0A91EFC61807";
createNode mute -n "wing_L:scene424";
	rename -uid "D4FA56CE-4745-9A51-8746-96B3920A9BA4";
createNode mute -n "wing_L:aTools_StoreNode425";
	rename -uid "E8D38766-4B4E-0091-BC1A-BBA034A7C90D";
createNode mute -n "wing_L:scene425";
	rename -uid "A3019BD1-42E9-AEE9-C008-60A4499EB608";
createNode mute -n "wing_L:aTools_StoreNode426";
	rename -uid "BE886510-4532-C7C6-AF40-F399FCDC8118";
createNode mute -n "wing_L:scene426";
	rename -uid "4D39A072-4955-7A0D-EAD8-A8B81A61AEFF";
createNode mute -n "wing_L:aTools_StoreNode427";
	rename -uid "71088876-4818-FC0E-604F-0BB791195BA1";
createNode mute -n "wing_L:scene427";
	rename -uid "8CF43863-4621-F4A4-5F80-E2AF156A1F71";
createNode mute -n "wing_L:aTools_StoreNode428";
	rename -uid "DA1863D5-41A0-F350-274E-ACAA0BBB05D5";
createNode mute -n "wing_L:scene428";
	rename -uid "3BA63954-49AA-4FB2-CFEA-EB8DDE737473";
createNode mute -n "wing_L:aTools_StoreNode429";
	rename -uid "81919BB0-45F4-C201-0712-7A8AA1AF8345";
createNode mute -n "wing_L:scene429";
	rename -uid "927634DB-4861-E0B4-44A9-009D92D2A657";
createNode mute -n "wing_L:aTools_StoreNode430";
	rename -uid "AA0BF3A5-417B-AF5C-7FBD-21A034ED00F4";
createNode mute -n "wing_L:scene430";
	rename -uid "8B3438FF-4DA8-1EDA-F718-3B890279B63A";
createNode mute -n "wing_L:aTools_StoreNode431";
	rename -uid "FEE41E9A-4333-0E17-291F-90AFC1978CCB";
createNode mute -n "wing_L:scene431";
	rename -uid "18EDCB2A-449A-BBAD-CE91-EB9857C37818";
createNode mute -n "wing_L:aTools_StoreNode432";
	rename -uid "72F62FDF-43CF-2D0E-AD9C-15AE1523DEE9";
createNode mute -n "wing_L:scene432";
	rename -uid "2B0BC719-447D-1ED7-728C-17A3637FBFE0";
createNode mute -n "wing_L:aTools_StoreNode433";
	rename -uid "B6CFF614-4565-1A7A-3403-09875706792F";
createNode mute -n "wing_L:scene433";
	rename -uid "8EF7BBFB-40ED-E8E8-9A34-CBA6BFFCA1FD";
createNode mute -n "wing_L:aTools_StoreNode434";
	rename -uid "B29787F4-4A04-B67E-71CF-FCA4BCBF9E2C";
createNode mute -n "wing_L:scene434";
	rename -uid "2C68FEB2-42CC-0B64-B750-6884F5A02AB6";
createNode mute -n "wing_L:aTools_StoreNode435";
	rename -uid "2843907F-4967-B352-876C-88812036ABB4";
createNode mute -n "wing_L:scene435";
	rename -uid "B775679B-4471-EC3C-35CB-51BE1D02DFEC";
createNode mute -n "wing_L:aTools_StoreNode436";
	rename -uid "AD397CEF-43D1-D233-C4B9-EFA911527B08";
createNode mute -n "wing_L:scene436";
	rename -uid "AAE982CD-4259-32F2-F4C4-E69224A871CE";
createNode mute -n "wing_L:aTools_StoreNode437";
	rename -uid "77D94150-4FD5-FFEE-2E73-53BB86E287EC";
createNode mute -n "wing_L:scene437";
	rename -uid "DBFDF238-47D8-CC4E-CDB4-A1A0F79E208B";
createNode mute -n "wing_L:aTools_StoreNode438";
	rename -uid "E25A1306-4E15-B387-BB19-DBA654435C1A";
createNode mute -n "wing_L:scene438";
	rename -uid "30C8BA75-4635-04B2-F647-E7BADEF2CF12";
createNode mute -n "wing_L:aTools_StoreNode439";
	rename -uid "43C1E15F-46F6-5460-5B16-A4BBA4338812";
createNode mute -n "wing_L:scene439";
	rename -uid "DEBF31C4-4DB4-D108-B152-5D8B7F58EF4A";
createNode mute -n "wing_L:aTools_StoreNode440";
	rename -uid "9D44F131-4515-B172-7F71-EE91F39B9931";
createNode mute -n "wing_L:scene440";
	rename -uid "40ABAC9F-4251-7FC9-BDF6-928BD129EEE7";
createNode mute -n "wing_L:aTools_StoreNode441";
	rename -uid "53554050-4A16-F3C4-C16F-25AF5C84B8B5";
createNode mute -n "wing_L:scene441";
	rename -uid "69B3D074-4985-F7CD-3693-1397F17F6A41";
createNode mute -n "wing_L:aTools_StoreNode442";
	rename -uid "593E1852-40BE-5C18-D448-BC91EB24B85B";
createNode mute -n "wing_L:scene442";
	rename -uid "52FCFA54-4989-CFA0-26A0-858464DE1EBD";
createNode mute -n "wing_L:aTools_StoreNode443";
	rename -uid "8C44AFEE-419E-BCB1-C618-91BF2A4AF06F";
createNode mute -n "wing_L:scene443";
	rename -uid "8E8F6199-46A2-73B0-1DD1-ACB1A2BCCD9D";
createNode mute -n "wing_L:aTools_StoreNode444";
	rename -uid "B90B7A87-477D-6B9C-9750-9EAB4B45A876";
createNode mute -n "wing_L:scene444";
	rename -uid "BC024689-4776-0602-1702-37AD6B1245B5";
createNode mute -n "wing_L:aTools_StoreNode445";
	rename -uid "D559A641-40E4-1240-6761-10A14474A311";
createNode mute -n "wing_L:scene445";
	rename -uid "630FEF27-4A30-DD9D-4E60-E5B932A06ABC";
createNode mute -n "wing_L:aTools_StoreNode446";
	rename -uid "D0C60B30-47F1-74CD-4702-A08B17E451DC";
createNode mute -n "wing_L:scene446";
	rename -uid "9C77C571-403C-3AA9-A7B9-BC9000F675D1";
createNode mute -n "wing_L:aTools_StoreNode447";
	rename -uid "5104DB48-420C-F71D-24F3-8FB4FE6460A1";
createNode mute -n "wing_L:scene447";
	rename -uid "06156451-4DF8-309B-9B89-13942BD0B87B";
createNode mute -n "wing_L:aTools_StoreNode448";
	rename -uid "6013D1AF-44F1-1D57-24A9-14810FA0D2E7";
createNode mute -n "wing_L:scene448";
	rename -uid "6BA5EA8B-4299-76DE-9F23-1388D80A1C1E";
createNode mute -n "wing_L:aTools_StoreNode449";
	rename -uid "C1793EA2-4BD8-3B67-B5FF-09A61F3B138B";
createNode mute -n "wing_L:scene449";
	rename -uid "F4372CA1-494E-9AC4-08FA-5384BE7CF67E";
createNode mute -n "wing_L:aTools_StoreNode450";
	rename -uid "B30A91E9-4F82-5596-7FF1-C98BFBAB9300";
createNode mute -n "wing_L:scene450";
	rename -uid "84214F96-42EC-6093-F69C-BB9AD319974A";
createNode mute -n "wing_L:aTools_StoreNode451";
	rename -uid "DCD40618-4FFA-085E-C078-2EBAC846AB46";
createNode mute -n "wing_L:scene451";
	rename -uid "D0520A36-4C78-C714-AD61-C5931B6B82E3";
createNode mute -n "wing_L:aTools_StoreNode452";
	rename -uid "7FB57B4F-455A-D554-B995-BBB7B5FB061E";
createNode mute -n "wing_L:scene452";
	rename -uid "A6D91459-4689-241A-E6D1-7B99FF099A85";
createNode mute -n "wing_L:aTools_StoreNode453";
	rename -uid "C6EFD0FB-4BCC-A2B6-561B-20A393AEDADB";
createNode mute -n "wing_L:scene453";
	rename -uid "FBD633E4-4C0D-D2EE-44B3-A282B15BED94";
createNode mute -n "wing_L:aTools_StoreNode454";
	rename -uid "C9D4AA94-4C85-EFA9-1A67-DA99EC01E38F";
createNode mute -n "wing_L:scene454";
	rename -uid "C24B8B98-44E0-C117-A944-488AEC15E140";
createNode mute -n "wing_L:aTools_StoreNode455";
	rename -uid "D125EAA2-4349-C3F0-9734-1C9C8D1EA361";
createNode mute -n "wing_L:scene455";
	rename -uid "D5CC3470-48F0-93B7-5DFB-E3956B36A275";
createNode mute -n "wing_L:aTools_StoreNode456";
	rename -uid "529D60AB-4DBC-C9E7-015B-D7AA8E09238E";
createNode mute -n "wing_L:scene456";
	rename -uid "657C2041-42FB-75DA-1A96-17ADBF945DFD";
createNode mute -n "wing_L:aTools_StoreNode457";
	rename -uid "D448AC0D-4ACF-05D3-B648-D09021CE4F84";
createNode mute -n "wing_L:scene457";
	rename -uid "7CD52AD1-43F2-B38F-E072-758E2C787B90";
createNode mute -n "wing_L:aTools_StoreNode458";
	rename -uid "C92745B5-440B-D793-C7EA-E59572F27BBD";
createNode mute -n "wing_L:scene458";
	rename -uid "AEB9D28B-48CE-6F9D-48FC-479C6F0BD3C4";
createNode mute -n "wing_L:aTools_StoreNode459";
	rename -uid "DCB4682C-41B5-FA11-2CF1-9ABB98E4C2DC";
createNode mute -n "wing_L:scene459";
	rename -uid "8A3B32FA-47AE-9220-0FD8-6FBCD2223711";
createNode mute -n "wing_L:aTools_StoreNode460";
	rename -uid "F9915E83-4B95-C3A1-B3AF-659812D6BB78";
createNode mute -n "wing_L:scene460";
	rename -uid "FF7BCB60-4AF1-6E85-0C0B-259EA0855668";
createNode mute -n "wing_L:aTools_StoreNode461";
	rename -uid "EA3EE7DD-4685-C03D-A7B0-A0B5D3014374";
createNode mute -n "wing_L:scene461";
	rename -uid "54ADD710-4EE1-D329-5A80-4C9DC67E1754";
createNode mute -n "wing_L:aTools_StoreNode462";
	rename -uid "B59C2BBD-4E96-6564-D9F2-63BCF094A691";
createNode mute -n "wing_L:scene462";
	rename -uid "D399ADC0-44FA-DACD-A85A-979403938F2B";
createNode mute -n "wing_L:aTools_StoreNode463";
	rename -uid "389FEE22-40B1-48E7-9E84-4E8CDC1D4BB2";
createNode mute -n "wing_L:scene463";
	rename -uid "2E344784-42A5-BC3F-691C-C58D0B355629";
createNode mute -n "wing_L:aTools_StoreNode464";
	rename -uid "5E1D7E7B-462B-99CA-2431-289AAD903F09";
createNode mute -n "wing_L:scene464";
	rename -uid "4F1AAE18-40BE-394B-48D2-7DB4A2BA8D9A";
createNode mute -n "wing_L:aTools_StoreNode465";
	rename -uid "4610DE7D-497E-0D9C-FA0C-A9A7DD7EA817";
createNode mute -n "wing_L:scene465";
	rename -uid "4587BCCF-4546-3E79-845C-24B358031227";
createNode mute -n "wing_L:aTools_StoreNode466";
	rename -uid "94C69BE1-49E1-DFB8-C76A-9BA58F1ADD38";
createNode mute -n "wing_L:scene466";
	rename -uid "6D398C0C-407E-61CD-7313-74ACB1BA71BB";
createNode mute -n "wing_L:aTools_StoreNode467";
	rename -uid "6C7C9019-4A03-60AE-6A04-BD9AED3F04ED";
createNode mute -n "wing_L:scene467";
	rename -uid "7314CCFE-408C-F0F1-AD85-CD9B9F66FC68";
createNode mute -n "wing_L:aTools_StoreNode468";
	rename -uid "684CDF2D-477F-1A4F-64F8-F09754649011";
createNode mute -n "wing_L:scene468";
	rename -uid "90D13BA7-4035-0F94-CDDB-D885F6F79FFF";
createNode mute -n "wing_L:aTools_StoreNode469";
	rename -uid "0FFAD247-439A-6369-613F-CF9E5208B6D1";
createNode mute -n "wing_L:scene469";
	rename -uid "58CDE963-40AE-42CF-18CF-8C992A185325";
createNode mute -n "wing_L:aTools_StoreNode470";
	rename -uid "76E26ADC-4E7D-6F64-F245-359F788FE736";
createNode mute -n "wing_L:scene470";
	rename -uid "D68EEA02-4E87-2785-6937-76AFA1C7DF86";
createNode mute -n "wing_L:aTools_StoreNode471";
	rename -uid "FFC02949-4077-ED22-F251-BF8422544908";
createNode mute -n "wing_L:scene471";
	rename -uid "4EA2FC30-42B1-5A31-3A5D-74B98722B5B7";
createNode mute -n "wing_L:aTools_StoreNode472";
	rename -uid "1F08B013-496A-B569-27CB-4FAE7A5207B7";
createNode mute -n "wing_L:scene472";
	rename -uid "998E31C1-4796-5055-515F-B2A25913D257";
createNode mute -n "wing_L:aTools_StoreNode473";
	rename -uid "2E3A34C7-4C18-4D28-150A-F2B2C1B36DC3";
createNode mute -n "wing_L:scene473";
	rename -uid "5D833F83-444C-B2B8-C47F-97AEE5F2A144";
createNode mute -n "wing_L:aTools_StoreNode474";
	rename -uid "0D5A6351-44ED-2365-72FD-A3B2FAB86B3B";
createNode mute -n "wing_L:scene474";
	rename -uid "FAA5CC52-447D-A71A-9261-CC8A7BBD3027";
createNode mute -n "wing_L:aTools_StoreNode475";
	rename -uid "82D8F968-4E85-030A-D23C-21971B38014D";
createNode mute -n "wing_L:scene475";
	rename -uid "33AB7120-4BAC-9B17-C086-64B377BEA11F";
createNode mute -n "wing_L:aTools_StoreNode476";
	rename -uid "58FCCF11-4C9F-79E0-9738-25AF9766759C";
createNode mute -n "wing_L:scene476";
	rename -uid "ACDB40A8-4125-F66C-CA18-C5A0A3FC2B72";
createNode mute -n "wing_L:aTools_StoreNode477";
	rename -uid "38696499-4D09-D323-2B75-2F9D1E29C83F";
createNode mute -n "wing_L:scene477";
	rename -uid "2253A384-4EE3-15D0-841E-B9A3F458773B";
createNode mute -n "wing_L:aTools_StoreNode478";
	rename -uid "D352DF1F-4CEF-246B-F2BA-15BCA57587EB";
createNode mute -n "wing_L:scene478";
	rename -uid "F9CBE998-4C8C-E115-7121-C596A33E1542";
createNode mute -n "wing_L:aTools_StoreNode479";
	rename -uid "1A8B10A4-460D-B76F-AAE6-75B8382F55E4";
createNode mute -n "wing_L:scene479";
	rename -uid "21D01BD7-4DD5-41A3-A447-7799833F0D7A";
createNode mute -n "wing_L:aTools_StoreNode480";
	rename -uid "3DDC6CD5-4E76-F979-558D-0C9EFF018E13";
createNode mute -n "wing_L:scene480";
	rename -uid "DC2616AB-4B9C-0E2B-3E0B-678687605501";
createNode mute -n "wing_L:aTools_StoreNode481";
	rename -uid "E27F3F3F-4280-DCE8-0923-73977C56E29B";
createNode mute -n "wing_L:scene481";
	rename -uid "CEF86449-4C04-DBCE-E948-9089DC96577E";
createNode mute -n "wing_L:aTools_StoreNode482";
	rename -uid "71F344AC-4B21-D286-16C8-D49E786004E7";
createNode mute -n "wing_L:scene482";
	rename -uid "1F74FE1F-4BBB-B2BA-AF3D-21BC37B7B76B";
createNode mute -n "wing_L:aTools_StoreNode483";
	rename -uid "7495899D-433C-EF63-601E-B58FC6E1BBCE";
createNode mute -n "wing_L:scene483";
	rename -uid "6E020834-4BF1-5712-AE9E-B9A4DACE1974";
createNode mute -n "wing_L:aTools_StoreNode484";
	rename -uid "A288E52D-4A91-0C02-1AB4-A29E1C39F51A";
createNode mute -n "wing_L:scene484";
	rename -uid "93CA99FB-4343-626E-089F-5B8B7D7EA2CC";
createNode mute -n "wing_L:aTools_StoreNode485";
	rename -uid "6176D0EE-4AB0-18B3-A790-A2A9FC4ECB7A";
createNode mute -n "wing_L:scene485";
	rename -uid "45DDC662-4BF8-CE1F-C367-10A8A0DFE324";
createNode mute -n "wing_L:aTools_StoreNode486";
	rename -uid "0D293E75-4A7E-DFE8-86BC-B0B436197132";
createNode mute -n "wing_L:scene486";
	rename -uid "C2B594F4-463E-B6BC-477D-FE8160D32A89";
createNode mute -n "wing_L:aTools_StoreNode487";
	rename -uid "81097DC5-457F-F1FD-7DDF-E1867D6CE2B2";
createNode mute -n "wing_L:scene487";
	rename -uid "66E4A648-4243-40EC-CD87-7787CB3660E9";
createNode mute -n "wing_L:aTools_StoreNode488";
	rename -uid "8A4E0DD0-44A2-47EE-1474-65895D1548EA";
createNode mute -n "wing_L:scene488";
	rename -uid "22D16289-4D2E-C88D-07E2-80B685AB3186";
createNode mute -n "wing_L:aTools_StoreNode489";
	rename -uid "7B149A10-41F0-464B-1186-F99ED200648E";
createNode mute -n "wing_L:scene489";
	rename -uid "3491CF9D-4E6F-FFF2-4D6C-C3BB8FBD4956";
createNode mute -n "wing_L:aTools_StoreNode490";
	rename -uid "F486DBE3-4118-DA19-01A6-349B704238BC";
createNode mute -n "wing_L:scene490";
	rename -uid "241F6CD5-41B3-420E-C9CF-168DC1B1BB0C";
createNode mute -n "wing_L:aTools_StoreNode491";
	rename -uid "6023B0E6-49CB-507C-D57B-AABE72C307E5";
createNode mute -n "wing_L:scene491";
	rename -uid "D45E7044-46E3-6278-7FD2-2894E126A962";
createNode mute -n "wing_L:aTools_StoreNode492";
	rename -uid "7ED26830-4DA6-FCD5-4015-FF803B4262B7";
createNode mute -n "wing_L:scene492";
	rename -uid "34C06D77-4855-9633-626A-8580FC1293BD";
createNode mute -n "wing_L:aTools_StoreNode493";
	rename -uid "8A53AE0A-4416-74FD-7D88-E3A72C380D3D";
createNode mute -n "wing_L:scene493";
	rename -uid "5A8D7196-45C9-7656-4286-A882AFB1CFEB";
createNode mute -n "wing_L:aTools_StoreNode494";
	rename -uid "BC75BC20-49C5-AD91-7BBA-5E8CA916CAF0";
createNode mute -n "wing_L:scene494";
	rename -uid "8D0A1170-4E66-41B3-B964-5ABCE38E47A0";
createNode mute -n "wing_L:aTools_StoreNode495";
	rename -uid "93CD95A8-4BE3-82CF-879E-6CBF197DFBAA";
createNode mute -n "wing_L:scene495";
	rename -uid "854FAD9A-474E-3E10-D12A-FBB6AD006C71";
createNode mute -n "wing_L:aTools_StoreNode496";
	rename -uid "8777E6BB-4440-BEAC-6CEF-9EB6B7E49F66";
createNode mute -n "wing_L:scene496";
	rename -uid "69A58D86-48BE-E3A5-CB07-4688A0148240";
createNode mute -n "wing_L:aTools_StoreNode497";
	rename -uid "DFA88B5D-473F-6DAA-4D1F-959358CF8CBC";
createNode mute -n "wing_L:scene497";
	rename -uid "F412DCEA-4904-577E-5400-8CB1B8BEF5F7";
createNode mute -n "wing_L:aTools_StoreNode498";
	rename -uid "931C3558-42AA-32B1-1470-57A80ADB741A";
createNode mute -n "wing_L:scene498";
	rename -uid "FC17D038-45BA-8E58-BF35-9C8767F37EF7";
createNode mute -n "wing_L:aTools_StoreNode499";
	rename -uid "E544EBA2-4865-5631-3932-EC8CF377017A";
createNode mute -n "wing_L:scene499";
	rename -uid "0447344E-4540-9FA6-A198-999583750A4B";
createNode mute -n "wing_L:aTools_StoreNode500";
	rename -uid "C930B037-4092-E948-4459-8E890C8BDFA6";
createNode mute -n "wing_L:scene500";
	rename -uid "66756236-43CC-A7FC-7C57-498D8D98A7C9";
createNode mute -n "wing_L:aTools_StoreNode501";
	rename -uid "538B14CA-4F85-1E53-DB99-35A724BEDD87";
createNode mute -n "wing_L:scene501";
	rename -uid "3525995A-4044-CCCE-E59F-799F985743A4";
createNode mute -n "wing_L:aTools_StoreNode502";
	rename -uid "C134A82B-4C21-BAA2-05D1-838E34123B3E";
createNode mute -n "wing_L:scene502";
	rename -uid "62D11151-4F14-10CF-C7B3-8188844554FD";
createNode mute -n "wing_L:aTools_StoreNode503";
	rename -uid "DFDB0147-4427-7054-A3BB-9F87A31CB189";
createNode mute -n "wing_L:scene503";
	rename -uid "4E2A6501-4C14-05B1-11B9-A0A0D17BAD0C";
createNode mute -n "wing_L:aTools_StoreNode504";
	rename -uid "DD48A342-4C10-F065-72CE-BD8FD97E677C";
createNode mute -n "wing_L:scene504";
	rename -uid "6C805A80-4F62-472F-0C43-42A16C279B73";
createNode mute -n "wing_L:aTools_StoreNode505";
	rename -uid "B2F553E4-420D-20A2-B0FE-4482736232ED";
createNode mute -n "wing_L:scene505";
	rename -uid "DBA7A421-47D0-8CEF-5360-EF82E0082F03";
createNode mute -n "wing_L:aTools_StoreNode506";
	rename -uid "7E9D649D-4603-2BB4-699A-1595EF88E504";
createNode mute -n "wing_L:scene506";
	rename -uid "8DE6775A-4188-95C4-374A-F497B23F2458";
createNode mute -n "wing_L:aTools_StoreNode507";
	rename -uid "D3D41608-4AA2-A39E-F71B-23B4AECA8CDC";
createNode mute -n "wing_L:scene507";
	rename -uid "404564BD-4D2C-AEB0-FE45-EDB5D99715D8";
createNode mute -n "wing_L:aTools_StoreNode508";
	rename -uid "68BD9EB6-42B8-BEA5-EFBE-488DD7570AE2";
createNode mute -n "wing_L:scene508";
	rename -uid "7965E995-4F05-23F8-D614-009324CE0BF5";
createNode mute -n "wing_L:aTools_StoreNode509";
	rename -uid "CC625675-4B64-0184-0064-52920DCD835E";
createNode mute -n "wing_L:scene509";
	rename -uid "95549F21-48A0-383E-C5CC-2AB61D9C418B";
createNode mute -n "wing_L:aTools_StoreNode510";
	rename -uid "91DD236B-4A95-44C3-F234-1086A690B6AE";
createNode mute -n "wing_L:scene510";
	rename -uid "C7172CCD-4022-E735-5AF7-9F9F6A2B86E0";
createNode mute -n "wing_L:aTools_StoreNode511";
	rename -uid "5A9B2CF6-4339-E2EF-8DCE-23B95CC0CDC0";
createNode mute -n "wing_L:scene511";
	rename -uid "BCAF4DB6-49AD-E996-F0EA-0DAC113333AF";
createNode mute -n "wing_L:aTools_StoreNode512";
	rename -uid "05B4BD4F-4043-00DB-8019-35B1C23A60DC";
createNode mute -n "wing_L:scene512";
	rename -uid "5B183D2F-4A5E-02A0-9B8B-F8B8AC9FCD3D";
createNode mute -n "wing_L:aTools_StoreNode513";
	rename -uid "128C2410-46B7-70D0-4546-98B6480CED7A";
createNode mute -n "wing_L:scene513";
	rename -uid "C25EFBD7-49E3-D716-2BC7-E3992F4B6646";
createNode mute -n "wing_L:aTools_StoreNode514";
	rename -uid "2DEB4208-4C0D-A73C-C5B7-8383F7829203";
createNode mute -n "wing_L:scene514";
	rename -uid "BBD7C5D1-4674-72EE-AAD8-9781F2C61C8D";
createNode mute -n "wing_L:aTools_StoreNode515";
	rename -uid "914B7641-47B1-5194-2575-178E28144F4F";
createNode mute -n "wing_L:scene515";
	rename -uid "0F320009-4D07-8038-50BA-75BE1BC47314";
createNode mute -n "wing_L:aTools_StoreNode516";
	rename -uid "11313BC0-456F-E608-F046-92B23868DF93";
createNode mute -n "wing_L:scene516";
	rename -uid "B34D21F8-45F0-8FFC-5085-C3876CC229E4";
createNode mute -n "wing_L:aTools_StoreNode517";
	rename -uid "B239A8E1-4C04-2CC2-CD86-E9AAD10291C1";
createNode mute -n "wing_L:scene517";
	rename -uid "B660DF10-4565-A1C1-99A9-6B996B144820";
createNode mute -n "wing_L:aTools_StoreNode518";
	rename -uid "25A4F23E-49DE-8884-EF2F-B88461E1D8E1";
createNode mute -n "wing_L:scene518";
	rename -uid "7B6CAA95-41D0-54CB-84F4-529910D5728C";
createNode mute -n "wing_L:aTools_StoreNode519";
	rename -uid "7938DB7D-4F2B-E6FB-21CD-7FA648DF22E8";
createNode mute -n "wing_L:scene519";
	rename -uid "A1DF36CB-44EF-0976-322F-4292AE57E2CC";
createNode mute -n "wing_L:aTools_StoreNode520";
	rename -uid "1CA13A20-4169-14C4-5868-AEB68CDD2518";
createNode mute -n "wing_L:scene520";
	rename -uid "05519A1E-425F-F31C-6BDD-028C2D66D81F";
createNode mute -n "wing_L:aTools_StoreNode521";
	rename -uid "37C09199-42F9-DC73-02D1-88B6920F3B03";
createNode mute -n "wing_L:scene521";
	rename -uid "746B2128-469B-3C35-658D-C3AADFA3CAFD";
createNode mute -n "wing_L:aTools_StoreNode522";
	rename -uid "BDEA1307-4E04-D69F-1185-61B0BE89AF01";
createNode mute -n "wing_L:scene522";
	rename -uid "B3180347-4DF0-A62B-BE6B-49B09BFF8EF1";
createNode mute -n "wing_L:aTools_StoreNode523";
	rename -uid "1C2094EC-4CB1-2FEF-CEAB-3B84A3BEA799";
createNode mute -n "wing_L:scene523";
	rename -uid "B779BF19-46D8-16A0-B253-BA869756CF56";
createNode mute -n "wing_L:aTools_StoreNode524";
	rename -uid "E4289710-40C1-0CE7-F9BC-F4B6EA000DA1";
createNode mute -n "wing_L:scene524";
	rename -uid "EB4A2046-4B07-A30B-8C3A-1A8DEAAFCAC9";
createNode mute -n "wing_L:aTools_StoreNode525";
	rename -uid "308D9576-47D4-8DFF-7779-F586FD41894D";
createNode mute -n "wing_L:scene525";
	rename -uid "B7A2C3DF-4799-A657-87FA-E79C56CC41B8";
createNode mute -n "wing_L:aTools_StoreNode526";
	rename -uid "47275D0F-41F4-CCE4-3A19-B0B311FC972B";
createNode mute -n "wing_L:scene526";
	rename -uid "D82323A7-4500-B956-302F-9393742BBF35";
createNode mute -n "wing_L:aTools_StoreNode527";
	rename -uid "F776E705-4766-AF60-5AB5-7E81A23EEFB1";
createNode mute -n "wing_L:scene527";
	rename -uid "D1FCEA7F-4301-FD36-FFCA-1EB5580950E7";
createNode mute -n "wing_L:aTools_StoreNode528";
	rename -uid "82BDDD8A-4008-CD04-C418-AFAB7D864AF0";
createNode mute -n "wing_L:scene528";
	rename -uid "FECB1F6D-43E1-3884-0F57-79ADD7E6E0B3";
createNode mute -n "wing_L:aTools_StoreNode529";
	rename -uid "84323DCE-452A-BB7C-9D67-B2A87AEFADCD";
createNode mute -n "wing_L:scene529";
	rename -uid "C68D83D4-4D06-AB54-8D95-F4910DE10EC4";
createNode mute -n "wing_L:aTools_StoreNode530";
	rename -uid "1B20E992-4850-22E2-35CE-D5B80A4F4EB3";
createNode mute -n "wing_L:scene530";
	rename -uid "E5F8A108-497B-D407-9652-D386F31BBB76";
createNode mute -n "wing_L:aTools_StoreNode531";
	rename -uid "E1D5679D-4858-18C0-AEA9-409749843CAC";
createNode mute -n "wing_L:scene531";
	rename -uid "FCC067AB-41A1-1E5E-98B9-87927176FDF6";
createNode mute -n "wing_L:aTools_StoreNode532";
	rename -uid "6781124A-427F-D531-A658-4DB8296FE98C";
createNode mute -n "wing_L:scene532";
	rename -uid "921942E6-46D8-CD30-BA91-73B6D3C1569A";
createNode mute -n "wing_L:aTools_StoreNode533";
	rename -uid "E88AAA32-4E26-19D7-0F77-899CC129D8DF";
createNode mute -n "wing_L:scene533";
	rename -uid "0F715B1F-4D88-B8AC-BB78-0CAD89EB4CC9";
createNode mute -n "wing_L:aTools_StoreNode534";
	rename -uid "B59E7A41-43CB-5FB2-95FF-4C9375F13038";
createNode mute -n "wing_L:scene534";
	rename -uid "51CF1E27-4E93-750E-7923-F2AAF83E1785";
createNode mute -n "wing_L:aTools_StoreNode535";
	rename -uid "2517AEE2-4CB1-D769-9068-E5BF3E3C791F";
createNode mute -n "wing_L:scene535";
	rename -uid "11D4C8C6-4BBE-2406-F475-FFB51F802946";
createNode mute -n "wing_L:aTools_StoreNode536";
	rename -uid "929F1EF8-45DB-8D5D-D9A8-428BDA2DD0F3";
createNode mute -n "wing_L:scene536";
	rename -uid "45E25F35-474E-769F-4057-0CB99EBAAA1E";
createNode mute -n "wing_L:aTools_StoreNode537";
	rename -uid "A41DC51C-4EED-7FB4-9685-7980A9A8D580";
createNode mute -n "wing_L:scene537";
	rename -uid "21853F76-4F84-24CD-58D2-FA99B83495B3";
createNode mute -n "wing_L:aTools_StoreNode538";
	rename -uid "A3486F28-41CC-49CF-BC57-D599BF839A10";
createNode mute -n "wing_L:scene538";
	rename -uid "B059F0CA-4100-14A6-3DF6-7EB2B142E753";
createNode mute -n "wing_L:aTools_StoreNode539";
	rename -uid "AA0414E4-4B2B-24CB-C250-2B973DF162FC";
createNode mute -n "wing_L:scene539";
	rename -uid "44070895-4796-C977-2814-4AB0C009092D";
createNode mute -n "wing_L:aTools_StoreNode540";
	rename -uid "E903A6BB-49E8-3123-4819-72AFF49CCB33";
createNode mute -n "wing_L:scene540";
	rename -uid "C1197373-4154-AC37-043D-10AD5AAE9859";
createNode mute -n "wing_L:aTools_StoreNode541";
	rename -uid "FA6146C8-4908-A613-1A09-5F823589906C";
createNode mute -n "wing_L:scene541";
	rename -uid "21115B69-4503-FFE5-FF30-4EA8FE7D1359";
createNode mute -n "wing_L:aTools_StoreNode542";
	rename -uid "F6FFEF1D-4BFA-5105-F3C1-CBAF1F1DF207";
createNode mute -n "wing_L:scene542";
	rename -uid "00F89F59-48BE-53B3-7BEB-058426FA3F4A";
createNode mute -n "wing_L:aTools_StoreNode543";
	rename -uid "4174DB85-4555-E207-FCED-3BBAA5A65376";
createNode mute -n "wing_L:scene543";
	rename -uid "57B512BF-4B8A-9594-E4C0-208484A57B2A";
createNode mute -n "wing_L:aTools_StoreNode544";
	rename -uid "09A8523B-4495-61F1-6E69-679D41C7B762";
createNode mute -n "wing_L:scene544";
	rename -uid "971E0101-48E9-D03C-53C1-F5A4EE55713F";
createNode mute -n "wing_L:aTools_StoreNode545";
	rename -uid "AED04403-4727-2370-BF5A-4AAF3DE01E8E";
createNode mute -n "wing_L:scene545";
	rename -uid "C30EF39B-42E5-C4B1-A394-259B58456ABA";
createNode mute -n "wing_L:aTools_StoreNode546";
	rename -uid "F7F562AB-4A55-A268-51FC-009B1B37E252";
createNode mute -n "wing_L:scene546";
	rename -uid "1EA5A1BF-40C1-FDAA-9B3E-E693F4691FE7";
createNode mute -n "wing_L:aTools_StoreNode547";
	rename -uid "A0F6A8AC-4578-E6FA-16A9-32B964DF362C";
createNode mute -n "wing_L:scene547";
	rename -uid "59BC5AF0-4576-43D6-6698-ACAE2DA0CF79";
createNode mute -n "wing_L:aTools_StoreNode548";
	rename -uid "ED3C6DFE-4A4B-C357-1469-E18E31E24585";
createNode mute -n "wing_L:scene548";
	rename -uid "171D74AF-4027-0CCB-509D-269F1E6EE65C";
createNode mute -n "wing_L:aTools_StoreNode549";
	rename -uid "4BF36A79-40D6-CEC9-68B6-989208755589";
createNode mute -n "wing_L:scene549";
	rename -uid "A336A988-48CF-16C2-23AC-08BA3C887A8A";
createNode mute -n "wing_L:aTools_StoreNode550";
	rename -uid "01AECECC-4EE0-9C9E-5D8F-3F9ED3E2D728";
createNode mute -n "wing_L:scene550";
	rename -uid "A3DC3296-4CA7-40DA-F2A7-C69C6E57EF64";
createNode mute -n "wing_L:aTools_StoreNode551";
	rename -uid "0E029DA8-4B61-82E1-E180-2C8DC9AC9B7D";
createNode mute -n "wing_L:scene551";
	rename -uid "107A95C5-40ED-A4BF-3986-A09CD5283E6E";
createNode mute -n "wing_L:aTools_StoreNode552";
	rename -uid "E7BD235B-4E37-93AA-7BF2-33AE4D5E229B";
createNode mute -n "wing_L:scene552";
	rename -uid "07D36A6C-4303-F2B2-0EF6-E3B51B54585A";
createNode mute -n "wing_L:aTools_StoreNode553";
	rename -uid "7F9BB9AF-420B-562E-995B-34B6421182F9";
createNode mute -n "wing_L:scene553";
	rename -uid "B98DE051-4FF4-1918-3A82-F8B7863F7473";
createNode mute -n "wing_L:aTools_StoreNode554";
	rename -uid "6E1BE57D-486E-3061-3B83-D28793B5F2CC";
createNode mute -n "wing_L:scene554";
	rename -uid "9606E66C-439D-293C-C9B5-2BA0B78302E9";
createNode mute -n "wing_L:aTools_StoreNode555";
	rename -uid "09957CC4-428F-6C8F-5D65-588AB54331E0";
createNode mute -n "wing_L:scene555";
	rename -uid "59096E68-4A8B-7143-1523-F4AA57F196C6";
createNode mute -n "wing_L:aTools_StoreNode556";
	rename -uid "E204B3BE-47C1-8075-0224-749E35F45DB1";
createNode mute -n "wing_L:scene556";
	rename -uid "A42CB908-4EB4-F681-2813-1ABDF34BB146";
createNode mute -n "wing_L:aTools_StoreNode557";
	rename -uid "829CE7D0-4EC5-14DA-FA6B-7280ACFFEDD1";
createNode mute -n "wing_L:scene557";
	rename -uid "4B336A39-454F-F2F9-D23C-96A0879FE035";
createNode mute -n "wing_L:aTools_StoreNode558";
	rename -uid "3B308658-4603-5806-3886-438712C0D3A5";
createNode mute -n "wing_L:scene558";
	rename -uid "0F33CDC1-413E-81F2-62A9-049C6EDFDA33";
createNode mute -n "wing_L:aTools_StoreNode559";
	rename -uid "2BAACBDA-4CCB-B3C8-9778-11A6F4DFCC94";
createNode mute -n "wing_L:scene559";
	rename -uid "3A8EE5C3-4DCC-2D45-F589-7C8DB06184D3";
createNode mute -n "wing_L:aTools_StoreNode560";
	rename -uid "AE27F40B-4281-BA4F-58FA-2385F07123E0";
createNode mute -n "wing_L:scene560";
	rename -uid "6DA93C97-4198-D6D6-7773-BD91E3756BC0";
createNode mute -n "wing_L:aTools_StoreNode561";
	rename -uid "434F3D5F-4564-BBFD-CFF7-73B648BCB885";
createNode mute -n "wing_L:scene561";
	rename -uid "E5DAAB5F-4F2A-8A01-C387-2C8035A5100F";
createNode mute -n "wing_L:aTools_StoreNode562";
	rename -uid "A603D325-4036-F1E6-AB65-B9858A9FFD4D";
createNode mute -n "wing_L:scene562";
	rename -uid "1F5BF8B1-455A-38C4-7C01-49841D176A50";
createNode mute -n "wing_L:aTools_StoreNode563";
	rename -uid "90D5AB78-48BF-4661-4851-19A825E2E573";
createNode mute -n "wing_L:scene563";
	rename -uid "69F1DA40-44E8-F809-64DE-2EB427E90CB6";
createNode mute -n "wing_L:aTools_StoreNode564";
	rename -uid "D9384CC9-4343-D7FB-0C9E-F6892A8B0F1B";
createNode mute -n "wing_L:scene564";
	rename -uid "6A484EDB-46C4-6A20-4BDB-65BA91EE95E7";
createNode mute -n "wing_L:aTools_StoreNode565";
	rename -uid "49247191-4000-1310-3F84-F09E43185B53";
createNode mute -n "wing_L:scene565";
	rename -uid "C2C5D154-4C96-33A1-2209-65BA5D058293";
createNode mute -n "wing_L:aTools_StoreNode566";
	rename -uid "9DD3EC1B-4749-0029-545D-F691CDE10C57";
createNode mute -n "wing_L:scene566";
	rename -uid "F7F4BB24-4624-598E-1270-BE97971A0809";
createNode mute -n "wing_L:aTools_StoreNode567";
	rename -uid "2325C773-4623-E3C7-6690-7AAD8D99345A";
createNode mute -n "wing_L:scene567";
	rename -uid "318CA5D3-4B4C-3B5E-2EEB-AFB19BE170B5";
createNode mute -n "wing_L:aTools_StoreNode568";
	rename -uid "157FFFA9-4879-DF31-4213-22872374FB0C";
createNode mute -n "wing_L:scene568";
	rename -uid "D6FE59F2-4D38-CF23-B2D0-2BA919F11AFB";
createNode mute -n "wing_L:aTools_StoreNode569";
	rename -uid "BA9452F4-4EA6-6D1C-1C11-28B58B9A0AFC";
createNode mute -n "wing_L:scene569";
	rename -uid "761D2A48-49B2-765C-C8D9-E7A3A650A38D";
createNode mute -n "wing_L:aTools_StoreNode570";
	rename -uid "D1E7C4FB-49A6-6B63-55DA-349ECBCACFA1";
createNode mute -n "wing_L:scene570";
	rename -uid "9BC62EE6-4EBA-B597-CB2F-31AD81E2895B";
createNode mute -n "wing_L:aTools_StoreNode571";
	rename -uid "78419E68-426B-A1E0-9F09-AB817601CAA6";
createNode mute -n "wing_L:scene571";
	rename -uid "E96ED8B0-4F53-9B3C-7D3D-E1838E1D2F73";
createNode mute -n "wing_L:aTools_StoreNode572";
	rename -uid "B27D750E-4CA6-CE5D-705C-F9BFE520797F";
createNode mute -n "wing_L:scene572";
	rename -uid "AE9D40DD-437C-04F1-3AF2-FDA09A550D75";
createNode mute -n "wing_L:aTools_StoreNode573";
	rename -uid "C001F376-4B1C-861E-6928-22BB53EC4305";
createNode mute -n "wing_L:scene573";
	rename -uid "BAB2810A-440F-9A36-62BA-A9A3A04EBC7E";
createNode mute -n "wing_L:aTools_StoreNode574";
	rename -uid "04E0B19B-4807-2139-BB6F-5EAF245F4C86";
createNode mute -n "wing_L:scene574";
	rename -uid "92667F8A-4DFF-0CC5-BBDC-FD81DDD90F4C";
createNode mute -n "wing_L:aTools_StoreNode575";
	rename -uid "6A5AA607-492A-496D-8240-DA8F0AA4D584";
createNode mute -n "wing_L:scene575";
	rename -uid "CDE7CCF0-4CFA-3994-D121-90B7A798B1A0";
createNode mute -n "wing_L:aTools_StoreNode576";
	rename -uid "2CCAFE79-4B72-8A51-D571-43A4A9472112";
createNode mute -n "wing_L:scene576";
	rename -uid "624EB6D7-46EE-56CB-8E7E-0997E531A926";
createNode mute -n "wing_L:aTools_StoreNode577";
	rename -uid "F1804EC5-4C7F-3B08-29D1-B9832B07B28D";
createNode mute -n "wing_L:scene577";
	rename -uid "B7BEC0BF-4F2F-58A9-1EE6-10A65ACBA91C";
createNode mute -n "wing_L:aTools_StoreNode578";
	rename -uid "BB9FA783-4158-C0AC-BF00-F8B4B8063407";
createNode mute -n "wing_L:scene578";
	rename -uid "8E10245F-4EFF-6F28-CEC6-F29366B92FA4";
createNode mute -n "wing_L:aTools_StoreNode579";
	rename -uid "178F6B9B-4FF7-8C02-07C2-6D8C94E08CED";
createNode mute -n "wing_L:scene579";
	rename -uid "2945BD6C-4940-07E8-B13A-549F6E3B91CD";
createNode mute -n "wing_L:aTools_StoreNode580";
	rename -uid "D869DB67-4A72-2EE2-B8DC-DF82DA4A1278";
createNode mute -n "wing_L:scene580";
	rename -uid "87882244-407B-202F-2860-9DBE06E78A60";
createNode mute -n "wing_L:aTools_StoreNode581";
	rename -uid "1EC36AC3-4F24-5945-7236-BEA9A3935C76";
createNode mute -n "wing_L:scene581";
	rename -uid "AEE0BDFE-4690-5723-5363-5EBA78630C5F";
createNode mute -n "wing_L:aTools_StoreNode582";
	rename -uid "AA79BE60-4320-C04B-7894-BBBA21FE4280";
createNode mute -n "wing_L:scene582";
	rename -uid "0AB9AC30-43C3-FDDC-735A-6DBCDDBC9553";
createNode mute -n "wing_L:aTools_StoreNode583";
	rename -uid "2A28F189-44B2-1327-DC29-EAAC5F3EC518";
createNode mute -n "wing_L:scene583";
	rename -uid "572A8F5B-4726-2A16-0EC6-E887E01B471E";
createNode mute -n "wing_L:aTools_StoreNode584";
	rename -uid "E882210C-493C-3167-C31B-A78E7CB5BA4D";
createNode mute -n "wing_L:scene584";
	rename -uid "7054C267-42D5-2811-1098-5E9118F3C302";
createNode mute -n "wing_L:aTools_StoreNode585";
	rename -uid "0079ECF6-4299-87BA-9079-5199D6DEB39C";
createNode mute -n "wing_L:scene585";
	rename -uid "031F1EBA-4CA1-930B-0EBF-9EBCDA378337";
createNode mute -n "wing_L:aTools_StoreNode586";
	rename -uid "1D382112-4DE5-43FD-AE44-B8B171045686";
createNode mute -n "wing_L:scene586";
	rename -uid "ED0A8C10-4632-AE75-48C4-FAAAF1B7CB59";
createNode mute -n "wing_L:aTools_StoreNode587";
	rename -uid "29F6EDDE-4E0B-7A13-FB6F-41AF86B95473";
createNode mute -n "wing_L:scene587";
	rename -uid "5B7CA7F5-447E-9DF7-AF69-E9971E610EEE";
createNode mute -n "wing_L:aTools_StoreNode588";
	rename -uid "2DBCA9C6-4259-E02F-511D-A9A696D33E7F";
createNode mute -n "wing_L:scene588";
	rename -uid "A69163AE-411A-C222-8F98-B1A25453DC2D";
createNode mute -n "wing_L:aTools_StoreNode589";
	rename -uid "418B9C09-4C2B-E1E1-8AC6-FCA2448F1A62";
createNode mute -n "wing_L:scene589";
	rename -uid "B3CB5365-44D0-8817-0BD0-3886B4FA25F9";
createNode mute -n "wing_L:aTools_StoreNode590";
	rename -uid "B60762A5-47EB-C417-D310-9CA7304B628B";
createNode mute -n "wing_L:scene590";
	rename -uid "28EF1EC7-475A-99E4-481E-BCA062670999";
createNode mute -n "wing_L:aTools_StoreNode591";
	rename -uid "87B39B25-49A4-ABF1-CA80-108B0FC1AECB";
createNode mute -n "wing_L:scene591";
	rename -uid "71FFC51C-4C31-3D04-868D-E5902005B5F6";
createNode mute -n "wing_L:aTools_StoreNode592";
	rename -uid "68D0BFE7-42BC-7813-CC61-A6A24FD6E845";
createNode mute -n "wing_L:scene592";
	rename -uid "B2073B0B-4C77-717B-E90C-949E7A632801";
createNode mute -n "wing_L:aTools_StoreNode593";
	rename -uid "48B859FA-45EA-E06E-B1C9-0991DAD0E9C8";
createNode mute -n "wing_L:scene593";
	rename -uid "2F9282FE-4C86-5B0B-4DB8-09949AC1372A";
createNode mute -n "wing_L:aTools_StoreNode594";
	rename -uid "1F705553-4B5F-1D5A-FC23-2B91E69A61C2";
createNode mute -n "wing_L:scene594";
	rename -uid "5AB56505-413E-17B7-24DB-3784E229B6A6";
createNode mute -n "wing_L:aTools_StoreNode595";
	rename -uid "44DC12F4-4FA1-4477-AF93-E6B057828D88";
createNode mute -n "wing_L:scene595";
	rename -uid "B5C346DF-4CB3-71AD-B641-0A9728E881B7";
createNode mute -n "wing_L:aTools_StoreNode596";
	rename -uid "2A254539-48BB-D880-DF12-4293FDEB4F5F";
createNode mute -n "wing_L:scene596";
	rename -uid "E44410A1-4249-CA30-4C5A-999336589CA5";
createNode mute -n "wing_L:aTools_StoreNode597";
	rename -uid "473CE343-4B50-796E-5DA5-218007A215CD";
createNode mute -n "wing_L:scene597";
	rename -uid "542AAA73-4B50-AAAC-5163-3F90412D5F8D";
createNode mute -n "wing_L:aTools_StoreNode598";
	rename -uid "3AB8897C-4C6F-8BA7-EB42-B6BEF9CF2157";
createNode mute -n "wing_L:scene598";
	rename -uid "87DBD6D8-41F9-5CEA-012D-6C91A18F3ADD";
createNode mute -n "wing_L:aTools_StoreNode599";
	rename -uid "D0B21382-4667-F6E4-0FD2-72B21B4B32A4";
createNode mute -n "wing_L:scene599";
	rename -uid "0B91AF7B-41C9-F257-6E60-1C9604C805D6";
createNode mute -n "wing_L:aTools_StoreNode600";
	rename -uid "B36BBEC4-44B2-A91A-F1E8-91B590CF6209";
createNode mute -n "wing_L:scene600";
	rename -uid "E88BD52F-4CAF-B703-A7B3-1A97DCD1F580";
createNode mute -n "wing_L:aTools_StoreNode601";
	rename -uid "07A50235-4B08-C485-E26D-3B801C10115E";
createNode mute -n "wing_L:scene601";
	rename -uid "DF4FEF72-4DB9-990E-9FBC-82ABA8AB9D79";
createNode mute -n "wing_L:aTools_StoreNode602";
	rename -uid "696669CC-42D3-3FA5-7689-3484A88F7076";
createNode mute -n "wing_L:scene602";
	rename -uid "A7756F5F-451A-2196-47E0-168308203A68";
createNode mute -n "wing_L:aTools_StoreNode603";
	rename -uid "DA82300B-48DE-0E5A-F4E8-91A7F42AD585";
createNode mute -n "wing_L:scene603";
	rename -uid "7234CE7C-4C3B-0E7E-C67D-F8911E669FBF";
createNode mute -n "wing_L:aTools_StoreNode604";
	rename -uid "BD8CAE6A-43A5-BE9A-A229-0EAFEF65EABB";
createNode mute -n "wing_L:scene604";
	rename -uid "F38F8F38-4ED3-5115-FA63-879C67638481";
createNode mute -n "wing_L:aTools_StoreNode605";
	rename -uid "15C57D50-4F71-B602-C8E8-E7986B364AFE";
createNode mute -n "wing_L:scene605";
	rename -uid "DEC7D86B-4C0C-B4D7-5733-518C47A38673";
createNode mute -n "wing_L:aTools_StoreNode606";
	rename -uid "EFD6D69E-4BB6-EA44-D7AF-ECB87582FE81";
createNode mute -n "wing_L:scene606";
	rename -uid "D9A35DFE-4A57-76D7-E167-39B56AE3E4CB";
createNode mute -n "wing_L:aTools_StoreNode607";
	rename -uid "68087839-49AD-7A69-0F26-CB9268B87E62";
createNode mute -n "wing_L:scene607";
	rename -uid "54546309-406F-9A81-A960-5482C988D57B";
createNode mute -n "wing_L:aTools_StoreNode608";
	rename -uid "585841B6-425E-724A-F5E9-B7AEA17BCF79";
createNode mute -n "wing_L:scene608";
	rename -uid "A1C2E605-493B-2E47-BA8D-9BA3325DE476";
createNode mute -n "wing_L:aTools_StoreNode609";
	rename -uid "CDEB50EB-4082-FAEE-7966-D3B776BAD453";
createNode mute -n "wing_L:scene609";
	rename -uid "3AF2CB0D-4000-2362-BBB6-33B111685D26";
createNode mute -n "wing_L:aTools_StoreNode610";
	rename -uid "E27592AF-4615-18D6-E847-4FBCA8598EBF";
createNode mute -n "wing_L:scene610";
	rename -uid "F5C4EF81-41E1-9C87-88D7-65816DE10877";
createNode mute -n "wing_L:aTools_StoreNode611";
	rename -uid "615BA406-4EB3-7E25-E2C9-C3913C4569C9";
createNode mute -n "wing_L:scene611";
	rename -uid "DB27C42A-4860-8F52-9914-4190D2DDB529";
createNode mute -n "wing_L:aTools_StoreNode612";
	rename -uid "5A6D737B-470E-1D94-0943-69AB7E29309C";
createNode mute -n "wing_L:scene612";
	rename -uid "672780DE-4C77-15DD-5CAB-CA8F60EF01C8";
createNode mute -n "wing_L:aTools_StoreNode613";
	rename -uid "16F6262B-4416-3ABE-9FA6-E5A9D50088B9";
createNode mute -n "wing_L:scene613";
	rename -uid "9C93F531-4FFC-E8A8-7A04-0FBBC5BAFBCA";
createNode mute -n "wing_L:aTools_StoreNode614";
	rename -uid "57235746-4ED1-A794-182E-6A8A0536A516";
createNode mute -n "wing_L:scene614";
	rename -uid "2C85A05E-45EF-29D8-EC4C-75B8321C47D6";
createNode mute -n "wing_L:aTools_StoreNode615";
	rename -uid "42FEE6DA-4419-F18B-7EED-51B7C1D6B690";
createNode mute -n "wing_L:scene615";
	rename -uid "54EB787E-4D26-AE48-70C3-9097AE7B3DEF";
createNode mute -n "wing_L:aTools_StoreNode616";
	rename -uid "2FEC0A23-4ACE-36F3-74D9-05B449EEFDA8";
createNode mute -n "wing_L:scene616";
	rename -uid "5709D930-4D10-9A43-DAAD-769A7F460308";
createNode mute -n "wing_L:aTools_StoreNode617";
	rename -uid "8F0AFF8C-42B5-8FAF-18D7-43A193C6ECBA";
createNode mute -n "wing_L:scene617";
	rename -uid "878911F8-462D-0BBB-5E94-E691DA3C6DE1";
createNode mute -n "wing_L:aTools_StoreNode618";
	rename -uid "98E104F8-4EE6-BA1C-849F-E39C3D50DB6C";
createNode mute -n "wing_L:scene618";
	rename -uid "12CE489C-4A75-CB4D-B4F6-D5A9987784FB";
createNode mute -n "wing_L:aTools_StoreNode619";
	rename -uid "06B73235-4C44-9ADF-3363-A5946BA6DE6D";
createNode mute -n "wing_L:scene619";
	rename -uid "922B73A2-4EA4-34D7-44DA-9A87983F96E5";
createNode mute -n "wing_L:aTools_StoreNode620";
	rename -uid "CEB19491-45B5-195D-4580-78B07CE528C9";
createNode mute -n "wing_L:scene620";
	rename -uid "A2989B79-4159-3B7E-6266-59B77DA1C3EB";
createNode mute -n "wing_L:aTools_StoreNode621";
	rename -uid "8CDCA661-4F48-B40E-17F6-5095530E36A2";
createNode mute -n "wing_L:scene621";
	rename -uid "F39D6836-4561-4538-4B0B-EB8192DA69D7";
createNode mute -n "wing_L:aTools_StoreNode622";
	rename -uid "77271BF3-4F46-E187-8789-45916A80E9F3";
createNode mute -n "wing_L:scene622";
	rename -uid "85039F30-4404-96E4-F621-E9BAA4813AD6";
createNode mute -n "wing_L:aTools_StoreNode623";
	rename -uid "913592BF-4C45-9F57-1FD9-91A2122E3D46";
createNode mute -n "wing_L:scene623";
	rename -uid "1130CFC4-4843-8267-621D-98ADC9E3ACF8";
createNode mute -n "wing_L:aTools_StoreNode624";
	rename -uid "F51B8839-4AB9-B1B9-8CDD-A285EB05D11C";
createNode mute -n "wing_L:scene624";
	rename -uid "51B14D81-4BAA-90F5-7783-69BC635A50FB";
createNode mute -n "wing_L:aTools_StoreNode625";
	rename -uid "8C60CE37-40ED-F3AD-A6D4-7F82D08AC899";
createNode mute -n "wing_L:scene625";
	rename -uid "1F7FBDBB-496E-83DB-FEE2-7E80358B0436";
createNode mute -n "wing_L:aTools_StoreNode626";
	rename -uid "C3EEBC87-4648-7F61-0FB6-89BF2073AC06";
createNode mute -n "wing_L:scene626";
	rename -uid "9DEDC726-401E-4340-98F1-02B84262FDAE";
createNode mute -n "wing_L:aTools_StoreNode627";
	rename -uid "92CF6EF8-4F1A-C083-AABD-2EB750C6572A";
createNode mute -n "wing_L:scene627";
	rename -uid "51F7E680-4C16-7281-1B9C-CCB82C87F168";
createNode mute -n "wing_L:aTools_StoreNode628";
	rename -uid "1C7ECB17-42D0-C3FF-CB86-45A0314E8EA9";
createNode mute -n "wing_L:scene628";
	rename -uid "903FE897-4050-BFC1-219B-DFBD873B3761";
createNode mute -n "wing_L:aTools_StoreNode629";
	rename -uid "8B177CB7-4C61-4369-BFAE-46B2CD6B7E9C";
createNode mute -n "wing_L:scene629";
	rename -uid "939DA274-44EE-05B8-4730-BCB037168953";
createNode mute -n "wing_L:aTools_StoreNode630";
	rename -uid "CB37C8CC-4FB4-A3D4-7BE5-69894102004C";
createNode mute -n "wing_L:scene630";
	rename -uid "507728C8-4598-9513-E8C8-D0BA9AB45EDA";
createNode mute -n "wing_L:aTools_StoreNode631";
	rename -uid "99AA6275-449B-AFD2-F15A-A4B8685BDC4F";
createNode mute -n "wing_L:scene631";
	rename -uid "760E9176-4898-E39C-11D6-EF9FAADE9319";
createNode mute -n "wing_L:aTools_StoreNode632";
	rename -uid "A9ABB1A8-4165-8860-4A9C-71BCD91C1EC7";
createNode mute -n "wing_L:scene632";
	rename -uid "ED6FB17A-496C-D6A0-85AB-B58FBC341BC6";
createNode mute -n "wing_L:aTools_StoreNode633";
	rename -uid "D5EDCCA2-4817-71CB-2BAF-1E9F7E73B7FD";
createNode mute -n "wing_L:scene633";
	rename -uid "0FBE0BAE-43B6-C05F-C571-52972C1EF2D2";
createNode mute -n "wing_L:aTools_StoreNode634";
	rename -uid "D4ADEE1D-430C-17C0-4270-CBAC53BA2C3E";
createNode mute -n "wing_L:scene634";
	rename -uid "A3D0A590-42AA-FE7E-8D53-F09F383E8089";
createNode mute -n "wing_L:aTools_StoreNode635";
	rename -uid "73A29B33-433A-5D5E-7389-939B029D7856";
createNode mute -n "wing_L:scene635";
	rename -uid "1901C9D0-4190-1C6B-9CEA-0A923550910B";
createNode mute -n "wing_L:aTools_StoreNode636";
	rename -uid "E8C0E4EC-4933-C2FB-672C-30837E63E26D";
createNode mute -n "wing_L:scene636";
	rename -uid "3D895580-40D9-E06E-27FF-3996D4B8BCA3";
createNode mute -n "wing_L:aTools_StoreNode637";
	rename -uid "AA8C26BA-4AE3-520B-31C5-988F3E012D5C";
createNode mute -n "wing_L:scene637";
	rename -uid "815AF0C3-4CE5-D1ED-70AD-B183206A432E";
createNode mute -n "wing_L:aTools_StoreNode638";
	rename -uid "A1CC61B7-49A6-32DA-86B9-0A87367EFDF0";
createNode mute -n "wing_L:scene638";
	rename -uid "61AC5A0F-4758-AAEE-0BA6-ACA9AD9818A2";
createNode mute -n "wing_L:aTools_StoreNode639";
	rename -uid "8D39DA17-4D11-3F80-D6A1-DC99EF841356";
createNode mute -n "wing_L:scene639";
	rename -uid "58F691F9-4624-1B0A-C85B-1B8534D30B3D";
createNode mute -n "wing_L:aTools_StoreNode640";
	rename -uid "A20A3459-48DF-E148-D28E-D3877BC23D31";
createNode mute -n "wing_L:scene640";
	rename -uid "7C4DA6E0-4887-12C0-7AEF-5CA878783CEB";
createNode mute -n "wing_L:aTools_StoreNode641";
	rename -uid "FBEEF9C2-49EB-3478-619C-228344DE9BB4";
createNode mute -n "wing_L:scene641";
	rename -uid "718101D6-487F-967E-A3DF-36BB5D27A41B";
createNode mute -n "wing_L:aTools_StoreNode642";
	rename -uid "240AF292-46A6-0DEC-15F8-6C94A8735A3E";
createNode mute -n "wing_L:scene642";
	rename -uid "6DACA8A9-455D-60FD-54A2-8596FB7805EB";
createNode mute -n "wing_L:aTools_StoreNode643";
	rename -uid "E3F130D6-4592-23C2-BFC8-438F22097DF6";
createNode mute -n "wing_L:scene643";
	rename -uid "62062E27-45E4-C723-F0FE-099A42D9E421";
createNode mute -n "wing_L:aTools_StoreNode644";
	rename -uid "70079F08-4278-5166-0867-C49E17922E68";
createNode mute -n "wing_L:scene644";
	rename -uid "CDCC8E42-4C74-0A71-E41D-569159158CDD";
createNode mute -n "wing_L:aTools_StoreNode645";
	rename -uid "D6528AAC-4CD9-5345-6294-10B08F274A1D";
createNode mute -n "wing_L:scene645";
	rename -uid "F8957362-4E60-CAFF-D56F-FF86731C3084";
createNode mute -n "wing_L:aTools_StoreNode646";
	rename -uid "E0A7CE24-4BEE-4B5B-2C61-B2A796100999";
createNode mute -n "wing_L:scene646";
	rename -uid "D6D6BFA1-43D0-772E-7BFF-E298A3ADC831";
createNode mute -n "wing_L:aTools_StoreNode647";
	rename -uid "152A47C0-4894-5B61-6DC3-0198F51058FB";
createNode mute -n "wing_L:scene647";
	rename -uid "98C79EAD-4C24-7F53-4563-9F9764002C5C";
createNode mute -n "wing_L:aTools_StoreNode648";
	rename -uid "6330BA61-4F51-3698-D4AF-3784320C7696";
createNode mute -n "wing_L:scene648";
	rename -uid "CCF40F7B-462B-F403-24F7-30B4E087684A";
createNode mute -n "wing_L:aTools_StoreNode649";
	rename -uid "4C9BF6CA-4FE9-B9C4-14CC-D1A8F293B5C2";
createNode mute -n "wing_L:scene649";
	rename -uid "2A856ACF-4A15-491A-8B65-CF916F6778F8";
createNode mute -n "wing_L:aTools_StoreNode650";
	rename -uid "F6923E3E-476A-936D-B73B-1E8B79BB2C3D";
createNode mute -n "wing_L:scene650";
	rename -uid "AD3D7D75-41E3-CB4E-71D1-5EB748634501";
createNode mute -n "wing_L:aTools_StoreNode651";
	rename -uid "4E0DA136-4B68-FC86-8569-BEBB0BB6FDC0";
createNode mute -n "wing_L:scene651";
	rename -uid "D1121D06-4BC5-D34E-0291-9FB8D4A9C287";
createNode mute -n "wing_L:aTools_StoreNode652";
	rename -uid "34F0E7D9-420A-58C0-A1E3-4386CDDE1B7B";
createNode mute -n "wing_L:scene652";
	rename -uid "320C8A3E-47C2-6932-A11F-7EAD4074C4E7";
createNode mute -n "wing_L:aTools_StoreNode653";
	rename -uid "19054FA7-4B72-31AD-7BF8-4E80EFF3C320";
createNode mute -n "wing_L:scene653";
	rename -uid "7607B307-486B-7EDD-7178-3497D4A7AFCF";
createNode mute -n "wing_L:aTools_StoreNode654";
	rename -uid "A44D6336-4900-CD4A-43B9-8D99B8140722";
createNode mute -n "wing_L:scene654";
	rename -uid "D7375ED7-461B-9E7F-93F7-0AA01865ED7E";
createNode mute -n "wing_L:aTools_StoreNode655";
	rename -uid "610C7BED-424A-E8C4-681A-3CB00FFF6CDB";
createNode mute -n "wing_L:scene655";
	rename -uid "869F0400-48C8-F9CC-AFE5-19A11D4C06A8";
createNode mute -n "wing_L:aTools_StoreNode656";
	rename -uid "44954766-4A06-2C35-A9D6-5F9C71D99B9F";
createNode mute -n "wing_L:scene656";
	rename -uid "7BE2E0C3-44C6-6A31-66E0-C5BB9ADFC0B3";
createNode mute -n "wing_L:aTools_StoreNode657";
	rename -uid "6429971A-4545-686D-F520-C59773D399A7";
createNode mute -n "wing_L:scene657";
	rename -uid "6EAA8966-46B6-F227-F482-058D2E68019F";
createNode mute -n "wing_L:aTools_StoreNode658";
	rename -uid "6682AD06-4F5E-783C-9C2C-EFAE614910F9";
createNode mute -n "wing_L:scene658";
	rename -uid "009D3401-4703-71D3-A244-BC88CF38FC7D";
createNode mute -n "wing_L:aTools_StoreNode659";
	rename -uid "57A3868D-4661-521F-187E-B598CFE25B6B";
createNode mute -n "wing_L:scene659";
	rename -uid "E00B8A73-455C-C62D-A3AC-549C5C2E2220";
createNode mute -n "wing_L:aTools_StoreNode660";
	rename -uid "C2712C7C-40D1-3E44-55F6-9983B0007962";
createNode mute -n "wing_L:scene660";
	rename -uid "C95684E0-46D9-94AD-73CC-FE9EFB97F164";
createNode mute -n "wing_L:aTools_StoreNode661";
	rename -uid "528B5E9E-495C-A4A2-EB7E-E18C1B59CD82";
createNode mute -n "wing_L:scene661";
	rename -uid "E62BAEEB-4591-E6CB-20B1-19B8E596E2F8";
createNode mute -n "wing_L:aTools_StoreNode662";
	rename -uid "1A73B695-434A-8E4B-69AD-DEB8AC83295D";
createNode mute -n "wing_L:scene662";
	rename -uid "DF629689-4604-87FF-9522-4AB88E688A31";
createNode mute -n "wing_L:aTools_StoreNode663";
	rename -uid "6C20576C-4D04-01F0-1BB9-278167A76B6A";
createNode mute -n "wing_L:scene663";
	rename -uid "0A33EFCB-44E8-E3E2-3790-AF8CA90FE4FA";
createNode mute -n "wing_L:aTools_StoreNode664";
	rename -uid "5B323DDF-4B0B-14F9-92D6-D6BD963F755B";
createNode mute -n "wing_L:scene664";
	rename -uid "E0E85506-407B-720A-B204-7BBF7F310035";
createNode mute -n "wing_L:aTools_StoreNode665";
	rename -uid "F6344450-4310-C4FB-7FBB-959C8DAF207F";
createNode mute -n "wing_L:scene665";
	rename -uid "5181E3ED-4DF2-D0C0-923B-84B42EFE5AEC";
createNode mute -n "wing_L:aTools_StoreNode666";
	rename -uid "55441BBA-476A-36B7-3FF8-7D90F7334ED7";
createNode mute -n "wing_L:scene666";
	rename -uid "4F53BF94-46C5-A779-AA07-67A62BD4A665";
createNode mute -n "wing_L:aTools_StoreNode667";
	rename -uid "4D6668B3-451A-29FE-2532-6B82BD846DAF";
createNode mute -n "wing_L:scene667";
	rename -uid "08D0BB46-48E7-9FA0-6CBD-A5B41C4956BF";
createNode mute -n "wing_L:aTools_StoreNode668";
	rename -uid "EBCC0770-44A6-6973-F834-ADBBC6F512B6";
createNode mute -n "wing_L:scene668";
	rename -uid "7E8E1742-49EC-055B-8527-BAB424C02171";
createNode mute -n "wing_L:aTools_StoreNode669";
	rename -uid "5496CD81-40EF-9FA5-8C59-B3B6AABBDB3D";
createNode mute -n "wing_L:scene669";
	rename -uid "1D360E23-4FD5-4B41-53E1-E59AE4F7026B";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1B9F10DA-4C17-A2CF-AEB7-5FA904E220F3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
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
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 977\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 977\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 977\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A0CDBED8-4020-F54A-948A-9DBA7C93A6F9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mute -n "aTools_StoreNode";
	rename -uid "7A25F59F-4B54-89BC-624E-EC91F8F4C093";
createNode mute -n "scene";
	rename -uid "CFDBBF2B-457C-5F4D-FA0D-498067E4AF3C";
	addAttr -ci true -sn "id" -ln "id" -dt "string";
	setAttr ".id" -type "string" "1617451901.42";
createNode ldRigFkIk2Bones -n "wing_L:ldRigFkIk2Bones1";
	rename -uid "287724CC-4FAF-5866-267D-B4A7FB134FC0";
	setAttr ".b1L" 3.0335619449615479;
	setAttr ".b2L" 3.0258920192718506;
createNode ldRigTwistNode -n "wing_L:ldRigTwistNode1";
	rename -uid "2EB0DB8E-4F15-B261-A125-69942A55235E";
	setAttr ".sr" 0.15000000596046448;
	setAttr ".er" 0.85000002384185791;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".ts";
createNode ldRigTwistNode -n "wing_L:ldRigTwistNode2";
	rename -uid "DC58D089-4CBA-B847-834D-D7B2B3518B4B";
	setAttr ".sr" 0;
	setAttr ".er" 0.80000001192092896;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".ts";
createNode ldRigTwistNode -n "wing_L:ldRigTwistNode3";
	rename -uid "3A5B7E2E-4B0B-C088-F9BA-31966B43BA5B";
	setAttr ".sr" 0;
	setAttr ".er" 0.80000001192092896;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".ts";
createNode ldRigTwistNode -n "wing_L:ldRigTwistNode4";
	rename -uid "9AEB2378-49E5-1D51-FEF5-8F8DFF2CDE44";
	setAttr ".sr" 0;
	setAttr ".er" 0.80000001192092896;
	setAttr -s 2 ".tf[0:1]"  0 0 1 1 1 1;
	setAttr -s 5 ".ts";
createNode ldRigComparaisonNode -n "ldRigComparaisonNode1";
	rename -uid "6879DF4D-48FD-0914-703C-66A7621C993D";
	setAttr ".camparaisonType" 2;
createNode ldRigComparaisonNode -n "ldRigComparaisonNode2";
	rename -uid "3C218C9C-42A0-861F-E3C6-8083543EDBE0";
	setAttr ".camparaisonType" 4;
	setAttr ".secondTerm" 1;
createNode character -n "wing_L:wing";
	rename -uid "15311C73-4C3E-6E18-F179-DDA33324BEA0";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 27 ".dnsm";
	setAttr -s 6 ".lv";
	setAttr -s 6 ".lv";
	setAttr -s 21 ".av";
	setAttr -s 21 ".av";
	setAttr ".am" -type "characterMapping" 27 "wing_L:upVector_IK_CON.translateZ" 
		1 1 "wing_L:upVector_IK_CON.translateY" 1 2 "wing_L:upVector_IK_CON.translateX" 
		1 3 "wing_L:hand_IK_CON.rotateZ" 2 1 "wing_L:hand_IK_CON.rotateY" 
		2 2 "wing_L:hand_IK_CON.rotateX" 2 3 "wing_L:hand_IK_CON.translateZ" 
		1 4 "wing_L:hand_IK_CON.translateY" 1 5 "wing_L:hand_IK_CON.translateX" 
		1 6 "wing_L:humerus_FK_CON.rotateZ" 2 4 "wing_L:humerus_FK_CON.rotateY" 
		2 5 "wing_L:humerus_FK_CON.rotateX" 2 6 "wing_L:hand_FK_CON.rotateZ" 
		2 7 "wing_L:hand_FK_CON.rotateY" 2 8 "wing_L:hand_FK_CON.rotateX" 
		2 9 "wing_L:radius_FK_CON.rotateZ" 2 10 "wing_L:radius_FK_CON.rotateY" 
		2 11 "wing_L:radius_FK_CON.rotateX" 2 12 "wing_L:humerusSubCtrl_FK_CON.rotateZ" 
		2 13 "wing_L:humerusSubCtrl_FK_CON.rotateY" 2 14 "wing_L:humerusSubCtrl_FK_CON.rotateX" 
		2 15 "wing_L:radiusSubCtrl_FK_CON.rotateZ" 2 16 "wing_L:radiusSubCtrl_FK_CON.rotateY" 
		2 17 "wing_L:radiusSubCtrl_FK_CON.rotateX" 2 18 "wing_L:handSubCtrl_FK_CON.rotateZ" 
		2 19 "wing_L:handSubCtrl_FK_CON.rotateY" 2 20 "wing_L:handSubCtrl_FK_CON.rotateX" 
		2 21  ;
	setAttr ".aal" -type "attributeAlias" {"wing_L:radius_FK_CON_rotateZ","angularValues[10]"
		,"wing_L:radius_FK_CON_rotateY","angularValues[11]","wing_L:radius_FK_CON_rotateX"
		,"angularValues[12]","wing_L:humerusSubCtrl_FK_CON_rotateZ","angularValues[13]","wing_L:humerusSubCtrl_FK_CON_rotateY"
		,"angularValues[14]","wing_L:humerusSubCtrl_FK_CON_rotateX","angularValues[15]","wing_L:radiusSubCtrl_FK_CON_rotateZ"
		,"angularValues[16]","wing_L:radiusSubCtrl_FK_CON_rotateY","angularValues[17]","wing_L:radiusSubCtrl_FK_CON_rotateX"
		,"angularValues[18]","wing_L:handSubCtrl_FK_CON_rotateZ","angularValues[19]","wing_L:hand_IK_CON_rotateZ"
		,"angularValues[1]","wing_L:handSubCtrl_FK_CON_rotateY","angularValues[20]","wing_L:handSubCtrl_FK_CON_rotateX"
		,"angularValues[21]","wing_L:hand_IK_CON_rotateY","angularValues[2]","wing_L:hand_IK_CON_rotateX"
		,"angularValues[3]","wing_L:humerus_FK_CON_rotateZ","angularValues[4]","wing_L:humerus_FK_CON_rotateY"
		,"angularValues[5]","wing_L:humerus_FK_CON_rotateX","angularValues[6]","wing_L:hand_FK_CON_rotateZ"
		,"angularValues[7]","wing_L:hand_FK_CON_rotateY","angularValues[8]","wing_L:hand_FK_CON_rotateX"
		,"angularValues[9]","wing_L:upVector_IK_CON_translateZ","linearValues[1]","wing_L:upVector_IK_CON_translateY"
		,"linearValues[2]","wing_L:upVector_IK_CON_translateX","linearValues[3]","wing_L:hand_IK_CON_translateZ"
		,"linearValues[4]","wing_L:hand_IK_CON_translateY","linearValues[5]","wing_L:hand_IK_CON_translateX"
		,"linearValues[6]"} ;
createNode animCurveTL -n "wing_L:upVector_IK_CON_translateZ";
	rename -uid "7FC63C92-45AC-DBF2-07D7-4DACE96844BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTL -n "wing_L:upVector_IK_CON_translateY";
	rename -uid "7993CA22-4C10-5EC2-EC98-2CBAE23E22E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 -0.92896014995064002
		 35 -1.8579202999012798 40 0;
createNode animCurveTL -n "wing_L:upVector_IK_CON_translateX";
	rename -uid "0573ED42-4C6F-048E-E79F-268AC78FC26D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -3.731175213115542 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:hand_IK_CON_rotateZ";
	rename -uid "D364CC6D-4A36-0685-5864-8E9C35059022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -44.900019904257938 10 0 15 0 20 0
		 25 0 30 54.370716839066688 35 -38.248514839621052 40 0;
createNode animCurveTA -n "wing_L:hand_IK_CON_rotateY";
	rename -uid "B48BB2BE-4C82-7FF7-D0EC-E79DE1EE6848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 72.143794015001816 10 0 15 0 20 0
		 25 0 30 -7.9413650117864902 35 27.594975446687201 40 0;
createNode animCurveTA -n "wing_L:hand_IK_CON_rotateX";
	rename -uid "44878C71-42F3-FF8D-4C27-E7842298A1E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 40.667142310197804 10 0 15 25.229826673758364
		 20 -25.981693612673215 25 0 30 -41.715327337386242 35 1.4912254049058591 40 0;
createNode animCurveTL -n "wing_L:hand_IK_CON_translateZ";
	rename -uid "6B510014-4C44-6AB8-3A87-F3A34AC33BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -1.7049591072808115 10 0 15 0 20 0
		 25 0 30 -0.18599069767632662 35 -0.96452674391984194 40 0;
createNode animCurveTL -n "wing_L:hand_IK_CON_translateY";
	rename -uid "57911C6E-46DA-7A91-43B5-E4B1C28BBC3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -1.6024484443902809 10 0 15 0 20 0
		 25 0 30 3.643875542888829 35 -2.6981786269505661 40 0;
createNode animCurveTL -n "wing_L:hand_IK_CON_translateX";
	rename -uid "668E9D3E-4060-68C4-3697-8B94A68F96DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -5.3751121705508211 10 0 15 0 20 0
		 25 0 30 -1.4242910367653285 35 -2.0181201443317542 40 0;
createNode animCurveTA -n "wing_L:humerus_FK_CON_rotateZ";
	rename -uid "6C02F0DF-4EB7-19E0-9931-9087594EB999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 2.8737139128792142e-14 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:humerus_FK_CON_rotateY";
	rename -uid "CD91083F-4D15-51DF-F2B4-F49C14108777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 77.211369011826903 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:humerus_FK_CON_rotateX";
	rename -uid "B9DA38E4-4CE6-9D03-7C23-42963FDAA9F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 61.995333555338604 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:hand_FK_CON_rotateZ";
	rename -uid "47B6A175-46FB-23A7-1DC4-A0B92C03408C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:hand_FK_CON_rotateY";
	rename -uid "A53A0F80-4D87-17BD-482B-9295A38D049B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 110.83815027072188 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:hand_FK_CON_rotateX";
	rename -uid "B027CB52-49D2-CF74-1EA2-D3B86FA33D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 20.341526429508832 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radius_FK_CON_rotateZ";
	rename -uid "7ED00AF7-4BA2-BF23-0F7B-98A506796CC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radius_FK_CON_rotateY";
	rename -uid "B997F88E-47A7-17FE-AB0C-E192D6DE405A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -142.80028190513195 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radius_FK_CON_rotateX";
	rename -uid "E291D868-47A5-E9CB-39A5-2199FF815532";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:humerusSubCtrl_FK_CON_rotateZ";
	rename -uid "552CDC68-4B52-C702-23A9-E499074266C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:humerusSubCtrl_FK_CON_rotateY";
	rename -uid "A755A9B3-41C7-02FB-A5B6-FCA4563ABFD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 -68.835521211173216 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:humerusSubCtrl_FK_CON_rotateX";
	rename -uid "86269D63-46AA-80F2-9A71-9CAA9EAE24AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radiusSubCtrl_FK_CON_rotateZ";
	rename -uid "A389038C-47C5-733F-BF4B-B799205BF06D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radiusSubCtrl_FK_CON_rotateY";
	rename -uid "174E42B7-4118-A6BB-C7CE-5293109DB31B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 71.561319074339252 10 0 15 0 20 0
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:radiusSubCtrl_FK_CON_rotateX";
	rename -uid "8CAEB6DB-45A4-1447-318C-50B0D26B02E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 28.978750688421226 20 -18.762315249450911
		 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:handSubCtrl_FK_CON_rotateZ";
	rename -uid "509AC2AC-41CD-3614-CDFC-6B899ECCCAD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:handSubCtrl_FK_CON_rotateY";
	rename -uid "A548C55F-4563-FF5D-C4BD-7FB057AAC46E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 0 20 0 25 0 30 0 35 0 40 0;
createNode animCurveTA -n "wing_L:handSubCtrl_FK_CON_rotateX";
	rename -uid "8DF2144D-4684-2A86-90C4-3CAEE62EFB28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 5 0 10 0 15 54.982227159936429 20 -23.400595464466214
		 25 0 30 0 35 0 40 0;
createNode skinCluster -n "wing_L:skinCluster1";
	rename -uid "327E7812-43D8-9BC9-28BC-4EA700357CD8";
	setAttr -s 90 ".wl";
	setAttr ".wl[0:38].w"
		1 0 1
		7 0 0.005576486547747909 1 0.12739232900109645 2 0.68992076230181942 
		3 0.073755044919464538 6 0.013713215318913811 7 0.00017206093858182273 
		9 0.089470100972375954
		1 0 1
		7 0 0.0069078000765971119 1 0.12806263314064301 2 0.66766666052447798 
		3 0.082932396091570271 6 0.01673411917545994 7 0.00024857290065744654 
		9 0.097447818090594218
		18 0 0.58409265726011461 1 0.016033707611405129 2 0.0014020807012576372 
		3 0.00015336531144964391 4 6.4993793601910572e-06 5 0.0076977774497091088 
		6 0.0085677732247023998 7 0.02303523502815202 8 0.043013424910455615 
		9 0.3133200389909 10 0.0021906223912525557 11 0.00038441576044013023 
		12 8.20472867691549e-05 13 1.2453431859160307e-05 14 4.5282657694021951e-06 
		15 7.6788291300310273e-07 16 5.43873715517109e-07 19 2.0612397746853707e-06
		20 0 0.0095927567108596394 1 0.044663828858442785 2 0.098026978892422525 
		3 0.027503411396536347 4 0.0018987812477529269 5 0.3867259434035718 
		6 0.064691952743252082 7 0.022281043722177752 8 0.012459635187906219 
		9 0.021147508545146878 10 0.23419019073184338 11 0.057853529752345145 
		12 0.014151143473451559 13 0.0024969068199136796 14 0.0010935940072160208 
		15 0.00024597759744722167 16 0.00018277731326280642 17 6.3026286915651979e-05 
		18 1.2297225501323822e-05 19 0.00071871608403418347
		18 0 0.58536105058922427 1 0.015793728462344253 2 0.0013880609045409218 
		3 0.00015332140881969798 4 6.6737389533428276e-06 5 0.0075789199273016451 
		6 0.0085202740441986564 7 0.022766209141384382 8 0.042502884693456748 
		9 0.31326767741231354 10 0.0021784854242907978 11 0.00038012474257806265 
		12 8.1853898801129962e-05 13 1.2615469069483664e-05 14 4.602243674833906e-06 
		15 7.9985039681735049e-07 16 5.6707488214210352e-07 19 2.1509737692885789e-06
		20 0 0.0097526406077749015 1 0.047124279867501929 2 0.10543350024601514 
		3 0.028996816173569615 4 0.002155780994811981 5 0.36774064577199644 
		6 0.069102897295743246 7 0.02217192091822515 8 0.012258969860658397 
		9 0.021062372781053568 10 0.23722419463627095 11 0.056953721075581457 
		12 0.014568529240235229 13 0.0027888932775836386 14 0.0012135423144094073 
		15 0.00029177489413491527 16 0.00021647778346343456 17 7.4721524100285813e-05 
		18 1.4754984728496729e-05 19 0.00085356575214186401
		20 0 1.0210666019824976e-05 1 9.8006881447282307e-05 2 0.0028464624440597648 
		3 0.027168606073008205 4 0.098584467154824246 5 0.0050921370227608349 
		6 0.00031571107630827029 7 2.1910942614805463e-05 8 1.1422457770757983e-05 
		9 0.0021320667184926458 10 0.015674192014420048 11 0.02568694995378628 
		12 0.054590196633082635 13 0.070823787602576765 14 0.10124827347674403 
		15 0.05753851457671804 16 0.064188955573529063 17 0.045323625583906728 
		18 0.012604044959804689 19 0.41604045818812507
		1 19 1
		20 0 1.0859786202409265e-05 1 0.00010558776324251572 2 0.0030284913726356579 
		3 0.027632651364793086 4 0.09975810700824865 5 0.0054651248115149239 
		6 0.00033339835107217339 7 2.3753128354897042e-05 8 1.2411739153123233e-05 
		9 0.0022864108470257495 10 0.016166574512747767 11 0.025647695255331657 
		12 0.053600522341879377 13 0.068748218593999225 14 0.099261287301150802 
		15 0.057490933125863453 16 0.065624673860710386 17 0.045944579978354209 
		18 0.012294743617557898 19 0.41656397524016214
		20 0 1.0230689013586623e-12 1 1.1135378323749031e-11 2 3.6517161890576911e-10 
		3 3.6711127846971146e-09 4 2.3514516796775325e-07 5 6.019987348050132e-10 
		6 3.2620902840831203e-11 7 2.0128772986507378e-12 8 1.0500788714166864e-12 
		9 2.9911520788813325e-10 10 2.1178412573893746e-09 11 3.9403645194738744e-09 
		12 9.808735257815187e-09 13 1.4467365231759009e-08 14 2.9035936619121728e-08 
		15 2.0149327746001262e-08 16 1.731073790929965e-08 17 8.4466852155567246e-09 
		18 1.9867121484751392e-09 19 0.99999965260588553
		16 2 1.0287799942365359e-05 3 0.00013428360110708578 4 0.00080332513238735707 
		5 1.2778913323433818e-05 6 4.9672192975660591e-07 9 1.0058509867107782e-05 
		10 6.9410670627206695e-05 11 0.00018086200174285445 12 0.00090989379916689515 
		13 0.0021450884631370789 14 0.010050613849132209 15 0.015315458901234924 
		16 0.04968689566752181 17 0.17777305715905864 18 0.3398753910985397 19 
		0.40302209771128167
		1 19 1
		16 2 1.4406655711329898e-05 3 0.00017749498210649185 4 0.0010179046341761892 
		5 1.9205003470007833e-05 6 8.2146338180716388e-07 9 1.3619622181540974e-05 
		10 9.3179861563066817e-05 11 0.00023143438025874716 12 0.0011141276595551431 
		13 0.0025731503517584385 14 0.01201533313337232 15 0.017892129242294684 
		16 0.054570264217928301 17 0.1743409633057143 18 0.29840385876030434 
		19 0.43752210672622327
		6 14 0.00025457543573700832 15 0.00054565045244183569 16 0.0026139403858305914 
		17 0.018909430924351617 18 0.063397559202156339 19 0.91427884359948264
		1 0 1
		7 0 0.0066765188671049584 1 0.13930059022364613 2 0.70649705708151278 
		3 0.085569394203208846 6 0.011939673564555791 7 0.00020136480481144087 
		9 0.049815401255160027
		1 19 1
		16 2 1.1840125484601798e-05 3 0.00015040787521253371 4 0.00088591690869263377 
		5 1.5198607112110911e-05 6 6.1685618136766137e-07 9 1.1409682373994395e-05 
		10 7.8249029051534591e-05 11 0.00019994089900098904 12 0.00099270775650643823 
		13 0.0023258480549174189 14 0.011142527859260376 15 0.016966171468476551 
		16 0.05386478926760202 17 0.1845649685031025 18 0.33598377967472259 19 
		0.39280562743230241
		20 0 0.0069742685436935091 1 0.031224826296736601 2 0.054789005244240366 
		3 0.016484101430372187 4 0.0010628302835409759 5 0.44282175997919254 
		6 0.073120636785888635 7 0.022029431715700536 8 0.011562155746133224 
		9 0.013211553463803588 10 0.25421445106700363 11 0.056275217522788412 
		12 0.012875055382087774 13 0.002004792803435464 14 0.00074061979859745897 
		15 0.00012993125102978264 16 9.2742224362138298e-05 17 2.9290476693509399e-05 
		18 5.4281159079766764e-06 19 0.00035190186879160854
		18 0 0.5658481756599445 1 0.016182561975184695 2 0.0014389418056563253 
		3 0.00015822031872527158 4 6.7989052827202911e-06 5 0.0079105261186387874 
		6 0.0088407407198398437 7 0.023691108651687737 8 0.044543873004738901 
		9 0.32861910943635725 10 0.0022592328335326655 11 0.00039488043351783362 
		12 8.4619414384119355e-05 13 1.2941051496238369e-05 14 4.7129971551194431e-06 
		15 8.0918224499809671e-07 16 5.7341158356934322e-07 19 2.1740800294375077e-06
		1 19 1
		20 0 1.3456136280180349e-05 1 0.00012615291312557196 2 0.0034918343436819827 
		3 0.031278886545776222 4 0.10441771364888328 5 0.0064968947729163277 
		6 0.00041076518510672368 7 2.9916297242455397e-05 8 1.5617734201433963e-05 
		9 0.0025451055786901299 10 0.01854575463617773 11 0.028332459393080649 
		12 0.057436199180164196 13 0.072214321790679437 14 0.10380717580928235 
		15 0.060710688441821245 16 0.070930571826204269 17 0.051659898034743718 
		18 0.01408647961150941 19 0.37345010812043272
		4 0 0.18469502330597715 1 0.71143455243594333 6 0.097740451027645642 
		7 0.0061299732304338512
		20 0 0.18782662542896775 1 0.22404546653200336 2 0.025643487640227274 
		3 0.0032240975661116666 4 0.00015484610388789914 5 0.11470775146109891 
		6 0.077344791618362038 7 0.090878765391316313 8 0.084523553515723715 
		9 0.14023396508648789 10 0.04109031438419946 11 0.0080388868235217962 
		12 0.0018084376120429343 13 0.00028541553582381275 14 0.0001053123536855723 
		15 1.8858409388635047e-05 16 1.3417337605014186e-05 17 4.2121223823254902e-06 
		18 7.8100410934558478e-07 19 5.1014073054401805e-05
		20 0 0.1852779376703507 1 0.18988594403826509 2 0.026512113109567931 
		3 0.0033758013524419028 4 0.00015738138668564973 5 0.12546075847996413 
		6 0.075870077256277701 7 0.094998724726838429 8 0.089333637186051806 
		9 0.15325683975869409 10 0.04466248235409969 11 0.0087658858033082838 
		12 0.0019463449632893595 13 0.00029931035289422383 14 0.00010941431925406078 
		15 1.8743822549456617e-05 16 1.3296608299167001e-05 17 4.1433323261556647e-06 
		18 7.6251570542892341e-07 19 5.0400963136868598e-05
		20 0 0.19144237306294101 1 0.2218376797772125 2 0.026456601010984959 
		3 0.0032903141098520657 4 0.00014781492809472845 5 0.11655340246333722 
		6 0.07637210589181051 7 0.08576185887375419 8 0.080689554502840016 
		9 0.14447275397297371 10 0.042180809380886142 11 0.0084559491330207532 
		12 0.0018712761783746348 13 0.00028337716964040157 14 0.00010358053638743307 
		15 1.7296050558570272e-05 16 1.2264821030367728e-05 17 3.8164057858840471e-06 
		18 6.9995946010527632e-07 19 4.6471771054926934e-05
		4 0 0.19584491174084906 1 0.69048938756053591 6 0.10540713751682632 
		7 0.0082585631817888114
		6 0 0.20183256738102498 1 0.74226512251768395 2 1.6779799274117147e-08 
		6 0.051503361469775889 7 0.0043989318515144354 9 2.0146619488072833e-13
		20 0 0.00034698031631918047 1 0.0023530844133574052 2 0.036864621813395719 
		3 0.25058398637853346 4 0.13263041390773875 5 0.074838933276588707 
		6 0.0066266671070208854 7 0.00091188822874892401 8 0.00047798115993551648 
		9 0.020406674099280125 10 0.12285477377968984 11 0.079395224803302647 
		12 0.073660728076774415 13 0.046058036228517223 14 0.041298366171049185 
		15 0.017389032017565746 16 0.014961716293815309 17 0.007097048411609819 
		18 0.0016732911201747978 19 0.069570552396582358
		20 0 0.00034010992661710819 1 0.002340779063029329 2 0.036768873999164293 
		3 0.20786787402842902 4 0.13252787465566102 5 0.081564402849047049 
		6 0.006944015261424465 7 0.00091540042256881384 8 0.00047966493803442729 
		9 0.019083681684206457 10 0.13456194347602429 11 0.085409619040199711 
		12 0.078176227783603322 13 0.048854994011755568 14 0.04405176320530093 
		15 0.018689026154341259 16 0.016265759356312415 17 0.0078659327324081124 
		18 0.0018604680197323602 19 0.07543158939214005
		20 0 0.00033371024240492261 1 0.0023535334484412252 2 0.038300965896649782 
		3 0.24234648248915025 4 0.13674245621209913 5 0.076405936758243365 
		6 0.0065152591173250592 7 0.00090497644316287124 8 0.00047524043926192228 
		9 0.022665960419040426 10 0.1245146488832076 11 0.078680376215082393 
		12 0.071768366105140508 13 0.044933161913359283 14 0.040662409535875667 
		15 0.017304474362801803 16 0.015109608994503761 17 0.0073305056288953223 
		18 0.0017295595829064491 19 0.07092236731244829
		20 0 2.5326429266254681e-05 1 0.00050274494892302095 2 0.026564139410810952 
		3 0.80634192903696367 4 0.10302329606633961 5 0.00022631283820413067 
		6 7.3459308858932735e-05 7 2.438419543402018e-06 8 8.2689671029505017e-07 
		9 0.061407993991554673 10 0.00043348027350558415 11 0.0003492590806201478 
		12 0.00034782225353856868 13 0.00020415440288688887 14 0.00016520844071957807 
		15 6.3197137627719955e-05 16 4.8936074415047814e-05 17 1.8087782381039381e-05 
		18 3.6449896118186751e-06 19 0.00019774221751873088
		8 0 1.702694564418684e-05 1 0.00036991773201444514 2 0.021493242018999839 
		3 0.87897482920654679 4 0.08529061407632102 6 3.4506983376359602e-05 
		7 5.4237729998578236e-07 9 0.013819320659797392
		8 0 1.0320103965734536e-05 1 0.0002419902223421453 2 0.017313063617951777 
		3 0.86027898755915222 4 0.075600290874946754 6 2.3424549639504393e-05 
		7 3.1905973136390381e-07 9 0.046531604012270418
		20 0 0.0013128072217940959 1 0.0080056606344115315 2 0.089485230357123538 
		3 0.18842133030254754 4 0.042694439002993183 5 0.17654531116506228 
		6 0.019010491597183165 7 0.0035518284262135592 8 0.0018657650891588675 
		9 0.025732479346670473 10 0.23002579758352196 11 0.090330305173149245 
		12 0.049750598394987203 13 0.022301294469956989 14 0.016472830808782653 
		15 0.006135490970704904 16 0.0049230097940492464 17 0.0020112645952141644 
		18 0.00043769587908481155 19 0.020986369187390538
		20 0 0.0011184934212804124 1 0.0067957493195943191 2 0.072413499335936021 
		3 0.15099551465818131 4 0.043740383714098656 5 0.18975903226096924 
		6 0.018591157013396226 7 0.0031979257081260685 8 0.0016760990829384466 
		9 0.021518928561672528 10 0.25742501303844789 11 0.10097199147277794 
		12 0.054530902022395092 13 0.023920523216762829 14 0.017410902804184704 
		15 0.0064243205572794984 16 0.0051494267220644485 17 0.0020974113570941338 
		18 0.00045400863116688362 19 0.021808717101633325
		14 0 0.0012187428140920859 1 0.0077618797627063297 2 0.090284224890702078 
		3 0.1785010918759059 4 0.04357122784821757 5 0.17984787411910413 6 
		0.018166389034004939 7 0.0034976779453921533 8 0.0018419458788099842 9 
		0.027676251418049882 10 0.23350186014987895 11 0.091691550569513058 12 
		0.04944225727094604 13 0.021926899325231633;
	setAttr ".wl[38:78].w"
		6 14 0.016241983597524969 15 0.0060806431871389035 16 0.0049359086415451956 
		17 0.0020684452249216797 18 0.00045392201151429282 19 0.021289224434800188
		20 0 0.0002782830972588713 1 0.0054550696898270435 2 0.2727382275610829 
		3 0.60609969897767613 4 0.0033803981881441445 5 0.0016791673425599215 
		6 0.00077966125575502855 7 3.4728125356478402e-05 8 1.3303342432595595e-05 
		9 0.10493573960548516 10 0.0023596860837952669 11 0.0010005422134274932 
		12 0.00055615513191259079 13 0.0002357740608653382 14 0.00016151211169449447 
		15 5.6358734259294931e-05 16 4.3264142741332417e-05 17 1.5783124018795736e-05 
		18 3.1705850507338197e-06 19 0.00017347662665636318
		8 0 0.00021396616890581423 1 0.0046750109080258926 2 0.26228777458413849 
		3 0.6795855569773267 4 0.00076071457736920085 6 0.00042195458477804434 
		7 6.729970291652128e-06 9 0.052048292229164295
		8 0 0.0001341055159047575 1 0.0031774057594295686 2 0.23010676800563154 
		3 0.67770229890494238 4 0.00016552247474267348 6 0.0003101273865233198 
		7 4.1318843987336353e-06 9 0.088399640068427057
		20 0 0.079032077716302537 1 0.17767419140321572 2 0.062620241295756773 
		3 0.0097970272361761479 4 0.00052934230990095757 5 0.250131115657517 
		6 0.084334120440123048 7 0.064452793879963152 8 0.050414161522000164 
		9 0.066133220482146676 10 0.12080275207606529 11 0.026393071844572499 
		12 0.0060662838378682101 13 0.00095677387202291889 14 0.00035848611785726549 
		15 6.4549280778713845e-05 16 4.619357163968628e-05 17 1.4685304365861098e-05 
		18 2.736826256197931e-06 19 0.00017617532547115706
		20 0 0.075189759712591245 1 0.20996244254368013 2 0.071771574652733497 
		3 0.010326120805262483 4 0.00058523726852284096 5 0.22965915643794083 
		6 0.085683940482359264 7 0.063225020492954073 8 0.048706982022382064 
		9 0.061093703530578913 10 0.11171565999116209 11 0.024569861475044294 
		12 0.0058104395340790888 13 0.00097000402077030855 14 0.00037519965310805299 
		15 7.4231544024562569e-05 16 5.3599637058096623e-05 17 1.741471111138684e-05 
		18 3.3060978316296316e-06 19 0.00020634538680522094
		7 0 0.033108663835306175 1 0.70223947545670218 2 0.16911770925114314 
		3 0.0013378325796832369 6 0.091377447384295929 7 0.0010372210846822229 
		9 0.0017816504081871079
		7 0 0.038393410954233452 1 0.7213523439507491 2 0.18551357308700703 
		3 0.0019998712187876545 6 0.05041955535665172 7 0.0010566720232520329 
		9 0.001264573409319066
		7 0 0.04109793011472699 1 0.6459970215000147 2 0.1969900597446588 
		3 0.0024930021106583638 6 0.10866733232055402 7 0.0015573876637696661 
		9 0.0031972665456173575
		20 0 0.078579192297651437 1 0.20357119207558591 2 0.073435965808294618 
		3 0.010213305022621487 4 0.00052489947253386371 5 0.23350728973261226 
		6 0.084696455785688671 7 0.059730366026062083 8 0.046737120159538167 
		9 0.063281462645210007 10 0.11296302692175773 11 0.025362991601288264 
		12 0.0058325278372269463 13 0.00091381871356587083 14 0.00034948581092284365 
		15 6.3295062810402654e-05 16 4.5562447327612332e-05 17 1.4667077325304009e-05 
		18 2.7456212691406265e-06 19 0.00017462988070735558
		4 0 0.90562768177228758 1 0.056676828248929979 6 0.00040304128298755492 
		7 0.037292448695794837
		18 0 0.37998032080661942 1 0.068214913110844017 2 0.0060976553879716362 
		3 0.00069282598850880367 4 3.0920207390257998e-05 5 0.031984671914591208 
		6 0.03267796042171181 7 0.078199209367864009 8 0.099662263428722392 
		9 0.29066530909102872 10 0.0096096694528224804 11 0.0017147467168073228 
		12 0.00037378282123604354 13 5.8104955622711352e-05 14 2.1236838774786848e-05 
		15 3.7291990984881744e-06 16 2.6450578698550457e-06 19 1.0035232516130178e-05
		18 0 0.3388929574119518 1 0.066898775124605764 2 0.0066746913469344169 
		3 0.00075878696782314997 4 3.3133775176155188e-05 5 0.035814841925190355 
		6 0.034745436358421707 7 0.081183724707735994 8 0.10602733038239333 
		9 0.3158488480908036 10 0.010685269559163636 11 0.0019183624878818704 
		12 0.000414217862765895 13 6.3292247367937267e-05 14 2.3040013490139361e-05 
		15 3.935803390238025e-06 16 2.7884622904832986e-06 19 1.0567472613592094e-05
		18 0 0.37382440244748227 1 0.070289458299292631 2 0.006305994226742005 
		3 0.00070891844394058677 4 3.0054657062922941e-05 5 0.033025781917650793 
		6 0.031930351763883653 7 0.075793900572034098 8 0.097090191972387108 
		9 0.29884651262681894 10 0.0098753315954805028 11 0.0017983068693186775 
		12 0.00038612736425877613 13 5.8138455334246834e-05 14 2.1106231643971959e-05 
		15 3.5147394088191806e-06 16 2.4876719398636541e-06 19 9.4201453202465873e-06
		4 0 0.87675694529218406 1 0.073649002352683277 6 0.00085101414313459704 
		7 0.048743038211998088
		4 0 0.918383426463106 1 0.072574198795170852 6 0.00046190515044422758 
		7 0.0085804695912788768
		20 0 7.6308140387799464e-05 1 0.00061118328928823015 2 0.013133040895505608 
		3 0.095429444073828862 4 0.2344881211946277 5 0.027536802642070764 
		6 0.0020187522262786143 7 0.00018904506846675065 8 9.8896483827926084e-05 
		9 0.008159578590536249 10 0.057867249162462872 11 0.058223524783222909 
		12 0.078695341669736227 13 0.067211656440460343 14 0.075093462459854127 
		15 0.036619506390093398 16 0.035817507195060896 17 0.020984914204621924 
		18 0.005360770062406448 19 0.18238489502726227
		20 0 7.8388769892084149e-05 1 0.00060568182268828203 2 0.012462705018428841 
		3 0.094068851944214465 4 0.28509683734544605 5 0.02552132053905682 
		6 0.0019382096092995741 7 0.00019436294121692049 8 0.00010167944598555799 
		9 0.0076996310447288597 10 0.052781286294824759 11 0.05255878587088525 
		12 0.071257236912977306 13 0.061459700623469102 14 0.068990412562758882 
		15 0.033593875977300201 16 0.0326288730084969 17 0.019072062286037108 
		18 0.0049262281921357608 19 0.17496386979015735
		1 4 1
		1 4 1
		1 4 1
		20 0 7.6180339198179722e-05 1 0.00060588412999569986 2 0.012706271487466312 
		3 0.092475281000674453 4 0.28513193387951996 5 0.025740102165898619 
		6 0.0019041622462323382 7 0.00019249999778470734 8 0.00010087456848985558 
		9 0.0081396010507978275 10 0.05311469781674779 11 0.052695099740191785 
		12 0.071293004500873336 13 0.061250910715988573 14 0.06879459383616697 
		15 0.033650178766109977 16 0.032945998310504244 17 0.019208505923144954 
		18 0.0048691528357639518 19 0.17510506668845036
		17 1 1.8013092431889042e-06 2 8.3383412787766938e-05 3 0.0011188159536416433 
		4 0.0067001817639672084 5 0.00010050148867284377 6 3.7877696653511785e-06 
		9 8.235855715287745e-05 10 0.00057658436954174832 11 0.0015194389225699481 
		12 0.0075648203070091732 13 0.017752913411248621 14 0.061575338551394451 
		15 0.075475239598674665 16 0.1652142817241179 17 0.21833281125872936 
		18 0.078268560825885333 19 0.365629180775698
		17 1 1.6724392632860109e-06 2 7.4043582257678266e-05 3 0.00095856046820138501 
		4 0.005769443167897635 5 9.2582588502176016e-05 6 3.5777286447280771e-06 
		9 7.2372046350577962e-05 10 0.00049628500184538263 11 0.0012963271077274894 
		12 0.0066596716987443409 13 0.015874462961065067 14 0.068486555160958293 
		15 0.094231531207773056 16 0.21661699151172387 17 0.24926742335691204 
		18 0.069940901965657623 19 0.27015759800647537
		17 1 2.9159069379375164e-06 2 0.00011004710472900455 3 0.0012762671400079802 
		4 0.0068547308699262359 5 0.0001573557250566886 6 7.3653064212324351e-06 
		9 9.9969557474546334e-05 10 0.00068370434046485904 11 0.0015920634948220084 
		12 0.0070402407552670578 13 0.015597250983493851 14 0.061065965605573695 
		15 0.07919053644634412 16 0.17906994272621851 17 0.21518488440003772 
		18 0.071587240250479689 19 0.36047951938674477
		16 2 3.5586629716172977e-06 3 4.2462589373024215e-05 4 0.00024700246952219247 
		5 4.8833615233476045e-06 6 2.1436108261851008e-07 9 3.3227406939334478e-06 
		10 2.2341798792130424e-05 11 5.4327637053878139e-05 12 0.00026911713471258866 
		13 0.0006358362490947962 14 0.0037127561655912762 15 0.0044382793736861288 
		16 0.0075495575311655743 17 0.0079160586287222584 18 0.0024865673730568132 
		19 0.9726137139229577
		1 19 1
		1 19 1
		20 0 2.4907549067155722e-06 1 2.653611330407253e-05 2 0.00087251593577211261 
		3 0.0090886798846817815 4 0.037031183947181488 5 0.0014384041044475907 
		6 8.0709374391916858e-05 7 4.8916480831055157e-06 8 2.54613677733537e-06 
		9 0.00070648874014372638 10 0.0051815109131357609 11 0.0098479603050106012 
		12 0.026769236715072454 13 0.043312989345893109 14 0.087551966813626911 
		15 0.071059842990136998 16 0.10915308131125208 17 0.10753058299033384 
		18 0.03348884575727383 19 0.45684953621857444
		20 0 3.0208676194264198e-06 1 3.1628014771544423e-05 2 0.0010099200878720632 
		3 0.010172877354659148 4 0.040239575748041725 5 0.0017040417910933775 
		6 9.685967451281503e-05 7 6.1015172454178436e-06 8 3.1798168526701358e-06 
		9 0.00080714924228462233 10 0.0058695153223794804 11 0.010820923378944497 
		12 0.02888233527073597 13 0.046250686585147811 14 0.092781872677043437 
		15 0.076926036051107038 16 0.12421356796290024 17 0.11946908212301585 
		18 0.034456609178788511 19 0.40625501733498431
		20 0 2.5849844051936994e-06 1 2.7413566988313335e-05 2 0.00088202632367759986 
		3 0.0089045996452172989 4 0.036463063723336006 5 0.0014663157097244629 
		6 8.1746254011816368e-05 7 5.2047124286275821e-06 8 2.714857334382435e-06 
		9 0.00071573973061909947 10 0.0051039226882320749 11 0.0095602192829509301 
		12 0.026411873373399078 13 0.043296902350330124 14 0.090431450984757369 
		15 0.075304532349589268 16 0.11712006508727302 17 0.10778299449002499 
		18 0.030983856567115865 19 0.44545277331858452
		20 0 6.9101092387930572e-09 1 1.3096289963998359e-07 2 6.3635016993387933e-06 
		3 8.4048759065326144e-05 4 0.00079437415808703514 5 6.9997689233308353e-06 
		6 1.6514574252174607e-07 7 2.3090070163956606e-09 8 1.0987651885124916e-09 
		9 6.766992779101311e-06 10 3.9657255147794362e-05 11 0.00011483330864270822 
		12 0.001065126592469391 13 0.0032760056775961227 14 0.048501025623025537 
		15 0.050208073362300765 16 0.03357037052472378 17 0.0092825237738940677 
		18 0.0014918537190964655 19 0.85155167055602554
		18 0 7.3182902363593982e-10 1 1.5417985897425959e-08 2 8.0634815297460499e-07 
		3 1.1467229017619085e-05 4 0.00012729548974722179 5 8.4326011101604098e-07 
		6 2.1961612316694565e-08 9 8.5854456816303702e-07 10 5.2960343028422852e-06 
		11 1.4816172398330409e-05 12 0.00017249222735315556 13 0.00061597934341328653 
		14 0.024378917492422776 15 0.025202974100225383 16 0.015225357221471239 
		17 0.0035267879191738564 18 0.00056354721856369694 19 0.93015252328765119
		18 0 3.5813181544739726e-09 1 7.8977115191520132e-08 2 4.3849733878110871e-06 
		3 6.6752962706823304e-05 4 0.00049812062518654924 5 4.5139970675348157e-06 
		6 1.4920913817126863e-07 9 4.5686208784817664e-06 10 3.2255845352347586e-05 
		11 8.827044867535187e-05 12 0.00060925822848357885 13 0.001934710218429023 
		14 0.039228922429598849 15 0.039469945047977205 16 0.024576737282778822 
		17 0.0067685468589538892 18 0.0013906401629815328 19 0.88532214052997071
		17 1 7.4406723147247639e-07 2 3.207540597463128e-05 3 0.00040932053021451359 
		4 0.0024190614276852632 5 4.0938924436959037e-05 6 1.6457004670560652e-06 
		9 3.0999011541042935e-05 10 0.00021280197571302986 11 0.00054613073311433012 
		12 0.0027256954779870807 13 0.0064042211861061 14 0.027948350612862088 
		15 0.039672131694388497 16 0.10690776537310517 17 0.24221211208723051 
		18 0.22603315874314642 19 0.34440284704879576
		17 1 6.5726985148741944e-07 2 2.9664596765295507e-05 3 0.00039101464542881897 
		4 0.0023396488233102812 5 3.6462305341389689e-05 6 1.401537323861729e-06 
		9 2.9109451992821475e-05 10 0.00020194330152226281 11 0.00052841118127321129 
		12 0.0026489997907813245 13 0.0062358867868361539 14 0.025175060951108903 
		15 0.034648042239104893 16 0.093523239519275034 17 0.22359541439481184 
		18 0.21649646985950166 19 0.39411857334577077
		1 19 1
		1 19 1
		6 14 3.6357852663399059e-05 15 7.6029576748226922e-05 16 0.00034809990110497166 
		17 0.0021286614713059717 18 0.00069007594855793799 19 0.99672077524961955
		17 1 9.3459846878368671e-07 2 3.7156259400663928e-05 3 0.00044843847728840672 
		4 0.0025164242917512809 5 5.0786712428916836e-05 6 2.2466933136928075e-06 
		9 3.464751555443057e-05 10 0.0002370738523843615 11 0.00057635914403607791 
		12 0.0027012010878611774 13 0.0061615379252694443 14 0.026280001306163737 
		15 0.036609603724395416 16 0.096841684383846272 17 0.21240531389212136 
		18 0.20157991426557087 19 0.41351667587014507
		4 0 0.0031272075065193407 1 0.017631875522424432 2 0.11511456530199071 
		3 0.078757467389945768;
	setAttr ".wl[78:89].w"
		16 4 0.011544675323660837 5 0.27445769415046384 6 0.036262017306744485 
		7 0.0084520513244395763 8 0.0044583506490594492 9 0.019321706690807471 
		10 0.29194456830391075 11 0.086057011430207539 12 0.029926412833336968 
		13 0.0088973120891529638 14 0.0052448685696263996 15 0.0016757823970708307 
		16 0.0012914704219083258 17 0.00048134419645320031 18 9.9198376214564487e-05 
		19 0.005254420216062569
		20 0 0.0022541359065096512 1 0.011940035942613832 2 0.065809612991694966 
		3 0.05475675520849739 4 0.0096035005472967366 5 0.29888484200360776 
		6 0.033120962807088171 7 0.006892522603905926 8 0.0036041629024435233 
		9 0.013097935688498603 10 0.34907566394099954 11 0.099140957908272431 
		12 0.031535713458259645 13 0.0084063250536281098 14 0.004655104175620148 
		15 0.0014022242663668482 16 0.0010694032355384956 17 0.00038860240998856029 
		18 7.8498257369358199e-05 19 0.0042830406918002951
		20 0 0.0027723724461667003 1 0.016181853004739979 2 0.10649536987813393 
		3 0.074165593821208492 4 0.010820694189683613 5 0.28292901464679227 
		6 0.033530195277545256 7 0.0082802905063501485 8 0.0043835175981353901 
		9 0.019801761337159836 10 0.29851807695871385 11 0.08993533275795372 
		12 0.030452864437407783 13 0.0086752514708603474 14 0.0050078014373802467 
		15 0.0015509357144843556 16 0.0011881468307278779 17 0.00043585336996473673 
		18 8.8263208779445641e-05 19 0.0047868111078120711
		8 0 0.00085655526137353051 1 0.01666188691183005 2 0.66685997119660834 
		3 0.2332807256079317 4 1.8458308040847566e-08 6 0.0020823349295466492 
		7 3.0963388246102173e-05 9 0.080227544246155608
		8 0 0.00079404556916773199 1 0.017516412425213505 2 0.70835251406983279 
		3 0.23960809151075266 4 1.3979232750351722e-08 6 0.0014071054893889385 
		7 2.3973383646370927e-05 9 0.032297843572765279
		7 0 0.00051608200690368038 1 0.012479031043468352 2 0.70280191229763567 
		3 0.21481520826268374 6 0.001267853943931801 7 1.5858574189593621e-05 
		9 0.06810405387118719
		3 0 0.99963488370060671 1 0.00021801084540980313 7 0.00014710545398354303
		18 0 0.49769531468341816 1 0.030671580670825906 2 0.0027203299832692669 
		3 0.00030357250194990601 4 1.3333686789334666e-05 5 0.014656422804619724 
		6 0.01592346259778438 7 0.040770430029284481 8 0.065009765083918342 
		9 0.32700118389750732 10 0.004278119270373258 11 0.00075238313742719801 
		12 0.00016271970648587788 13 2.5154324771906508e-05 14 9.1823572716708044e-06 
		15 1.6016065735144227e-06 16 1.135666314222401e-06 19 4.3079914155188364e-06
		18 0 0.45529214219639669 1 0.032368388947011162 2 0.0029854508450148916 
		3 0.00033219693847836613 4 1.4350927384452453e-05 5 0.016254215072239266 
		6 0.017278284955182154 7 0.044006530692952926 8 0.070623865158336033 
		9 0.35507107361288437 10 0.0047167121044838474 11 0.00083297698535816759 
		12 0.00017899409326362171 13 2.7357895455498988e-05 14 9.9613258626177969e-06 
		15 1.7062544729019487e-06 16 1.2089890812890859e-06 19 4.5830061417065281e-06
		18 0 0.49516799491912256 1 0.031197665045402091 2 0.0027610229539652077 
		3 0.00030502576729715149 4 1.2918720617738113e-05 5 0.014918230006024207 
		6 0.015773742445581929 7 0.040470692377879487 8 0.064657044437778408 
		9 0.32944300365900453 10 0.0043192980441264855 11 0.00076847424519051145 
		12 0.0001643286521804141 13 2.4854817181442922e-05 14 9.0308415269484178e-06 
		15 1.5198419409797204e-06 16 1.0761447153440358e-06 19 4.0770804644737487e-06
		3 0 0.99914810974905621 1 0.00050854527743481232 7 0.00034334497350905206
		3 0 0.99952408635052781 1 0.00046032167929939286 7 1.5591970172800177e-05;
	setAttr -s 20 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.99995798875867603 0 0.0091662815636213962 0 0 1 0 0
		 -0.0091662815636213962 0 0.99995798875867603 0 -0.89637133484454912 0 -0.39998319550347061 1;
	setAttr ".pm[1]" -type "matrix" 0.99995798875867614 0 0.0091662815636206034 0 0 1 0 0
		 -0.0091662815636206034 0 0.99995798875867614 0 -1.9464154753244263 0 -0.39998319550346928 1;
	setAttr ".pm[2]" -type "matrix" 0.99995798875867625 0 0.0091662815636209694 0 0 1 0 0
		 -0.0091662815636209694 0 0.99995798875867625 0 -2.9964596158043038 0 -0.39998319550346978 1;
	setAttr ".pm[3]" -type "matrix" 0.99995798875867625 0 0.0091662815636217154 0 0 1 0 0
		 -0.0091662815636217154 0 0.99995798875867625 0 -4.0465037562841806 0 -0.39998319550347256 1;
	setAttr ".pm[4]" -type "matrix" 0.99995798875867636 0 0.0091662815636216772 0 0 1 0 0
		 -0.0091662815636216772 0 0.99995798875867636 0 -5.096547896764057 0 -0.399983195503473 1;
	setAttr ".pm[5]" -type "matrix" 0.98893635286829762 0 0.14834045293024392 0 0 1 0 0
		 -0.14834045293024392 0 0.98893635286829762 0 -2.3675136649295845 0 -0.39557454114731749 1;
	setAttr ".pm[6]" -type "matrix" 0.98893635286829784 0 0.14834045293024373 0 0 1 0 0
		 -0.14834045293024375 0 0.98893635286829773 0 -1.7608012034041647 0 -0.3955745411473176 1;
	setAttr ".pm[7]" -type "matrix" 0.98893635286829773 0 0.14834045293024473 0 0 1 0 0
		 -0.14834045293024475 0 0.98893635286829762 0 -1.1540887418787436 0 -0.39557454114731927 1;
	setAttr ".pm[8]" -type "matrix" 0.98893635286829717 0 0.14834045293024845 0 0 1 0 0
		 -0.14834045293024847 0 0.98893635286829695 0 -0.54737628035332131 0 -0.39557454114732121 1;
	setAttr ".pm[9]" -type "matrix" 0.98893635286829773 0 0.14834045293024506 0 0 1 0 0
		 -0.14834045293024509 0 0.98893635286829751 0 0.059336181172098025 0 -0.39557454114731905 1;
	setAttr ".pm[10]" -type "matrix" 0.99144304335402078 0 -0.13054000070827959 0 0 1 0 0
		 0.13054000070827959 0 0.99144304335402078 0 -2.9678021300266475 0 0.44119215429253955 1;
	setAttr ".pm[11]" -type "matrix" 0.99144304335402067 0 -0.13054000070827895 0 0 1 0 0
		 0.13054000070827895 0 0.99144304335402067 0 -3.5729806251128755 0 0.44119215429253739 1;
	setAttr ".pm[12]" -type "matrix" 0.99144304335402078 0 -0.13054000070827929 0 0 1 0 0
		 0.13054000070827929 0 0.99144304335402078 0 -4.1781591201991057 0 0.44119215429253866 1;
	setAttr ".pm[13]" -type "matrix" 0.99144304335402111 0 -0.13054000070827892 0 0 1 0 0
		 0.13054000070827892 0 0.99144304335402111 0 -4.7833376152853377 0 0.44119215429253689 1;
	setAttr ".pm[14]" -type "matrix" 0.99144304335402111 0 -0.13054000070827879 0 0 1 0 0
		 0.13054000070827879 0 0.99144304335402111 0 -5.3885161103715653 0 0.44119215429253578 1;
	setAttr ".pm[15]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502382 0 -1.2078969792511753 1;
	setAttr ".pm[16]" -type "matrix" 0.98951663194516137 0 0.14441895687168241 0 0 1 0 0
		 -0.14441895687168241 0 0.98951663194516137 0 -5.8872752515502373 0 -1.2078969792511753 1;
	setAttr ".pm[17]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502382 0 -1.2078969792511753 1;
	setAttr ".pm[18]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502373 0 -1.2078969792511756 1;
	setAttr ".pm[19]" -type "matrix" 0.98951663194516137 0 0.14441895687168241 0 0 1 0 0
		 -0.14441895687168241 0 0.98951663194516137 0 -5.8872752515502365 0 -1.2078969792511751 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 20 ".ma";
	setAttr -s 20 ".dpf[0:19]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 20 ".lw";
	setAttr -s 20 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
	setAttr -s 20 ".ifcl";
createNode tweak -n "wing_L:tweak1";
	rename -uid "465F7779-44BF-3A4A-1BB4-3F8A8308BA99";
createNode objectSet -n "wing_L:skinCluster1Set";
	rename -uid "65CAD4B5-4CC9-94BF-FB39-35A120BB6E10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wing_L:skinCluster1GroupId";
	rename -uid "DE98ECFE-4640-A806-5B19-CC9AB000FB7B";
	setAttr ".ihi" 0;
createNode groupParts -n "wing_L:skinCluster1GroupParts";
	rename -uid "8BF9D3AB-42A8-D73F-A591-34974DBF1ACA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "wing_L:tweakSet1";
	rename -uid "75B2D413-40E6-4B1D-7E12-DA8FCBC25D2E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wing_L:groupId2";
	rename -uid "4DB44E79-47A7-58D0-F9FD-4BB556E17F72";
	setAttr ".ihi" 0;
createNode groupParts -n "wing_L:groupParts2";
	rename -uid "979C4E76-4E46-106E-ADEA-38BE2FD35988";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "wing_L:bindPose1";
	rename -uid "E1F11609-4397-C03C-A8B0-E0B6540B75F6";
	setAttr -s 22 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 22 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.90000003576278687 0
		 0.3917499996721745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
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
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4408920985006262e-16
		 0 5.5511151231257827e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-16
		 0 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.8817841970012523e-16
		 0 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 5.5511151231257827e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-16
		 0 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.8817841970012523e-16
		 0 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 22 ".m";
	setAttr -s 22 ".p";
	setAttr -s 22 ".g[0:21]" yes yes no no no no no no no no no no no no 
		no no no no no no no no;
	setAttr ".bp" yes;
createNode ngst2SkinLayerData -n "wing_L:skinCluster2";
	rename -uid "FEC3F3D9-4A90-28BE-FB7C-5ABBD242BDF4";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 14 8633 {
"nHNcWgAAAAEAAAAMAAAAQmFzZSB3ZWlnaHRzARQJAQTwPwkIBAAAASwAFBENBQEFHAygXtd2DSQFEAyAWkt8ARAMoOKw4gEIDOBdpYMBCAjARrsFEAgAMfkFEBAgz2nlPgVHCQEMYE3G5gEQLCB+/3E9AAAAQGt+UAEQEQEMwG8GXC4QAAQAAAlwDCDWWHsBYBEBDOBv0lQBKAigDJEFiAhAbRsJeA0BDEA1OOwBIAwAFqTHATgMwLMKyAEICKAvtwUQCKAugQUQDEByEckBGAhAptUFCAzgXL02ARAIgBhKBQgMILreNQEQDOCCjvoBUAzAotrxAQgIQJCkBdgMwE+CVQUgCExTUgEIDMDG91MBCAyA0DwyAQgMIIMLLAEIDKDVkyEBCAwAcju0AQgMwKI/swEIDGCe86ABCAzgTKijAQgMYMkKpQEICMDDHQUoDKDm+uwBEAwgl1HYAQgMQGqw1QEIDKC77NcFCARkDgUgDKBlY+0BEAzA8wAUBQgElIwFCF4BAAxAYPgTASgMQNh4fgHQDGBi4H0BCAzAPcSPAQgMADf7PQUIOgEADMDa5MQBGAxAQ1fJAQgMwDWvxQEICEC+rQUwDGA8JQkBEAxgZsMuAQgMIFGtawEIDAAGA2cFCFoBAAwgyjxzASAMYDqeaQGYDKBDd2IBCAzAFbZmAQgMIE4RTAEIDADwBEoBCAygNelAAQgMIAL97wEIDIA82t8FCAiAI90BCAgA1LAFEAhgBfkFIBDgGfzvP1nwBQEMQGROwAUsDQEIQFtkBRAMgCNrkAEYDEAt3qYBCAjgOiwFEAwgrCCoARAMQCGxGQEIEQEMoN+tGwEQDCCpfKhB1AjAqQcpRBEBCPahlwHcPgEADOCZ1MEBOBEBDIDsk5IBKAxAZvmfBRgEKZIFeBEBDED9iCABGAxAEsTmAQgMYIWtzAUICC5OyAEICOAsZQUQCEB9GAUgDMCiwOcBGAxgxkZjAQgIwPcsBQgIQLdHBQgIgFR5JUQMgDA+OAEgDCDYty8BCAxgRWWAAQgIoNvVZXQMIOvKfwEQCMANWIUEDIAaJnMFEAiAB2oBCAzgBr7GAQgMgAzgygEICOC+eAWACEBRFQWADKABrOQBGAiAng4FIAyAvgStARAMAId2sQEICMBFIAUICEB8/gkICKnasgEYCAA5lAkICPoGRAEQDMDT2EMBCF4BAAhAhtoFIAxAjzi+JUgIEQ+8AQgMANt1yAEIDMDSRXgBCD4BAAyAO9P7ARgMIAqVAAFgDGDFvvwBEAyA2ZOBAQgIQBCOhaQMwEMzdQEQDOB896gBCAxg5w2mAQhiAQAII1yvASAM4BYOkgFYDAAEdIgBCAiA+Q==",
"kSXYDCDQD5EBEAig0u8FCAwgm46JARAIwDqThTQIAF5oRQgIQJaShSQIwEbyBRAIoPypKbgQ6io+PwI2fgAIoNQTJXwRAQyAhl3lAVQMIMD4VgEIDKBLGLkFCATyvQUQDECw/boBEAzAdlFnAQgRAQygNM9oARAMwCoY+UHUCOA3k4XwEQEMgII27gHcPgEACICfmzKAAAzAndToASgMoE0NrAFQDIBbk1cBCBEBDEDommwuEAAMIElCmgEQDGD9JZsBCAgAcBcJCA0BDGBlBFIBUAxA69+iASAIQF7TBQgIwC6cpUAIIKEzCTAIUwKWASAIAIS6JVwMwIDotgEQCKCwiUVUDIDdHLcBEAzAinTRAQgMgFLJ0AUICCN0zQEIDCDhB7AFCASfXwUwDCCmpcUBEAhg6L7FQAgA+DbFMAjAsswFIBUBCNn5eAEoCIDpVmU8DMBO1HkBED4BAAzAfuWKARgI4AuGJfReAQAI4L4FBSgMQMPbFQEwCED6aKW4DMAg2RwBEAxgK9rNIRA+AQAIYDGXpTAMQOmLUAEoCID45gUQDIDBsNoBMAxAeg6rAQgMAFRk0gEICGAW0UX8DCAHG/8BEF4BAAzgBnsDBVAIJXi9AQgIwOXYJSgMYEdDuwEQCIDqVkVwCADTqkUICGBafQUIEQEIYPFIpdAIwPB0RWAIIEieBRAyAQAAAzIOAAwAQJzhMmQBDMAOO7UFbAgVGiQFCAjaKZwFCAScGAUQDABXsZ0BEAggFtJJDA0BCIC7SwUoDMDciC8B5AjgzpnplA0BDGC9QycBOEIBAATg5wVwEQEMQNm2IwEoDCA14ZABCAjA/bwJeA0BCEDJA2WwFQEEbGmlKAwgkadrATAIgEn0BRA+AQAIQJEJSYQEaZulKAwANQXPBTAIjc3pAQgIwI8g5ewMwGeH6wEQCGAwHqn4CNFTwwEQCEAf2aWIDOAqZeMBEAgAKr8ljAjAvK8FCAyAdhCEARgMYNwlhQEICMBG6xK8CAyACGJgARAMADRsZAEICEC26gUoEQEMwNazRgEYDIAo3UgBCAxA1TpHAQg+AQAMQBBuuAEYCGDlFAUIXgEACMB1rGl8BKZUEjQJDKD7aE8BOAzgC+lUAQgMQDtDBgEIPgEADMAVnYIBGAhAhNUFoAjAkjwJEAhqCBYBGAjgawyFbAzgtn8RARAMAELTOgEIDMAioDkBCF4BAAzgi2M9ASAIwHIpEnQJCEATCYWsCOCD/EV4CEAk3IUUDIB6q84BKAyAEH/LAQgRAQxgGeUzARAIIFbFEiwKCAB7/QUQMgEAAAQyDgBiAQAMIKdC20GcDKAQHF8BVAjg3v0FEAzg/6hhARAIwNQ8pQ==",
"wBUBBL+JBRAIwIaPEnQICODGUhIgCREBCCBmrYUAfgEADECbB00BYAwg1WlRAQgMQESE3AGIEQEIgB67xSgRAQjAxUtF9AiA16AFCAhA2F9lFD4BAAhgCPoSVAkIAKz2BQgIgMaAFvQIBLxfCVAEm9VlXAhgiloWEAsEC9wSAAsIYCNlEnwJCGD3TgUICAA1sWU8COBV7UmECAOyJQGoDMBxWEEBCAhgUy3l/F4BAAjALDMFKBUBBAk2hfAMYCJfAQFACEC6g1L4BAjAtAMl9AzABj/SASgekAxCCAAAmgkgCEClcaX4DCCyoXcBMAjAshMSoAwMYAMwMAEQPgEACCDA9cXADOBHmqQFIARJqwUQCACxByXICOBTrxL0CQigiVLp9AQj0RK8CQggmSoFCF4BAAiAUp1lzAzAu6SHAVgIoP+qEpANDKAoKYYBEBDAx9FTPg6ADQgqBU4BCD4BAAwgd/brARgIQJcY5egIgK4XBRAyAQAABTIOAGIBAAigs4cSQAoIAB7AFsQMBBILBRAIwA+JEsQMDAB+23QBlBUBBJliEmgKDKA8rwQBhAzAn8zqAQgVAQhNI/QyEABaAQAMwK/f7wEoDMAwV9wBYAiAZDMS2AoRAQzgfJx6ARgRAQiAfF3F1AjgGA9FrAggcdYFED4BAAjApChFrAggZ+GFMAiAVo8FEAxgzKktLlAAEQEIIAmZpZgIwAVKqbAEQAUSRAgMwO+CW04wAAjAJQLJCAR4ZYV4XgEACKCQ4zIgAAhASmDFeAggUVZFRAhAwOgFED4BAAhgmzLpCARCIhJsCWIBAASdWwUgDGCJWBoBqAzAG0UYAQgI4PmfZfQMAHh71CFgPgEACGAakRLkCQigROsJ4AgsBlgBOAxA8VvdATAMgIxLrAEICMDd7hJ8CAyAunYFASAIAOMdElwIXgEADIB5oAoBKAjAtpAWtAkI7SDTARAIAIIbcZxyAQAM4C4EjgEwCEDxpOW4COBxjQUQMgEAAAYyDgAQAICsFYwBNBEBCMC/IhJQCgyg+ouBARgIwKaPEgAJCIATcwUQCAC6sBLEDAygwLA0ASARAQjAftnFHAzg++7BDlALDKDOqqAhBBUBBFCQFpAJOgEACKDTcxI0DBEBDIDAsqQBOAiACLjFnAjAFxvlBBUBBH/rxfQIgIQFxRgIIN7MSZwEOGwFCAgAH40FCAhg9vupgAimXqoBqAggkCSFuAhAU3GFsAgAvq9lHAhAxUEScAoM4HIXAgEoDMD6j/gBgAxAfHeTARAIII8JBQgIYDWaEuQMDGBFjEkBGAzgOKc7AQgIABNTJQgIgOuWpegI4GHvBQgIIINkEgQIDECX0KkBKAjgng==",
"0RJACghgqq4FIAjg6GkFyAggKbtFxAzgJcqhASgIwCtZBRAMANPiSwEQDIB7RT4BCAhAoYkSxAgIoHDB5TheAQAIoKIyBSAMICvGzwHIDOAbA84BCAzAbeTeBQgIY8WMAQg+AQAIQFAoFoALBCRkEvwPCIDlbQUQDOBcKoYFMAjDlFcBCAwgyQaEAQgMgDqcuwEIDECOg7cBCF4BAAxAvNjCASAIIO+QZbQIwDr1BeAIYN4qBfAI4PgO5fgIINQNZVQIwMPFEiQJFQEEPU5FzAhgZbFFmAhg/SYFEDIBAAAHMg4AEAAgaI0mITQRAQiAXErFnAzgi5aXARgIYNfQFjwNBAZQBRAIIDy0BRAMYKz59gGsEQEIQC7oRQwMwJi0gUHUCCAdX8VUEQEMwGKDZC4wABEBDECuZCoBaBEBDOBVb1sBKAjg4Y4FaAzgekKYLiAACECYXumcBL4bEkwNCIDUQ0U8CMDVURJoCgjgfPRFNAig3eml4AxAnQRyAUAIwHjhEtQICMDu/gUICIB9pwUICEB3dBbEEgj8MqIBeAyAZ2mVAQgMALkYbQE4COCIMhagCwQppxacDgQhNUX8COA/OhIUCQzAk1TRATAIQPp/ZfwIwIMvBQgMoGv+UAFACMAAUBJECQzgJ4RZARAMAPqUrgEICMD+FxKkDgiA2wTFOAggc8gFCAhgOWdllAgA2fQSYBIIIKOShUwMoEzHKAE4DOC8eSkBCF4BAAhgOjsJIAjbPH8BmAjAKoUSuBAM4DC/mgEQDODBYEcBCD4BAAjAXYSpwAh0l9kFIAiE1NUFCAiP1SMBCAzgykC7IdgMQC8W4AEIDMCD0XEFGAid02kBCF4BAAhgG8oSTBQI4E5PBcgI4FQ7hVQIgEH1JaAIwNU7EnwJDIBOI/kBSAzgAKHwAQgIIApIFkQKBNzfEgwJCEAFiBL8CQhgkrgFEAhgX4ASlBUUAHBZ8D4IXn4ANgEACIDaBQVECMBvhBJoDwjA78ISYAoIwDobBRAMgGL05wF8EQEIIIAHEmwIDIAieXIB9Axgs/FDLiAADMCTQVUuEABeAQAMQNdYTAUoBOatEoAJCOBzzgWIEQEIgFpgBfQRAQjAVaNFxAhgkd4SqBAIwBGoRRw+AQAMIDFTP0EMCIBwbwkIBDUlBQgIAP2+VkAGCJWRXgEwCEARduWMCMCtLQUQCAAt5kbQCQ4QCgTiz6WQCAAf8EWMXgEADCDt7acBWBEBCGB1g8lwBJkkpcgIgOXaZZw+AQAIgNTsqUAEl6cSVAheAQAI4JNxBSAMICr/byFIDMDJCHIBCAxg1s6LAQgMQOVDOAEIPgEACEDJWxKQFgyAmqzKASAMIBzGxg==",
"AQgMQGvgEgEIPgEADCDLZWIFGAjbi1oFCFoBAAygQOluASAIIOtChVwIoHmGhSwMQHP0cS4IAV4BAAhgeqSFJAggZxTluAigXI0FEDIBAAAJMg4ADAAgg+dFDBEBCCBX8ilUCG8N1AF0DCCxp5UBCAiAkwwFEAigX5EJEAREd8U0EQEIQPO6EkwXDCAXjvRB1AiAHhg2zBME+Y8WLBk6AQAIQGeBSQwNAQgghu1lLAxgqA6LAXgIABgIEowYEQEIIHnZEnQMEQEIoC/zEuwNDEDrncMFMAgVfsIFCA0BDKCVWkwFkAh85ZQBGAjAq4oWTAgEvjXFeAxA3nCvBRgETU0ShAkIgP3SRXQIIJ1ZEpgKCIAOCcUwCEApVxLQCgggEd0S1AgIoBKmEtQICOBboSVACCAb7iVsCGCsRwVQDIDIMF0BWAggAbjpTAQnMaXwCIA2MwUoEQEIQEGaElgKCGDcNiVgBOBLGnAKPgEABPi1hdgM4KWJfwFYXgEACMB+qwUoCGD8lhI8CAyAzfgSBTAE1jRF7AzAh9/LQWQ+AQAIwHQmEnARCIDbchYUDgQOdAUQCEAAYsWQCGDXzhJQCwyghCnTAUAIwJ1ApWAM4AGG/gEQXgEACCBPKsXYCIARySV4CKAW0xJsFAhg6UYlkAigyomFhAjgV4kWlAgERG8S3AoRAQjAle0lGAwge7nWAcgIYJcVMhACBQEACgUGhgEABBHyRbQIgPH5EtQMCCCd2AUQCGBcXRKADwgg5Qwy2AgIQPiNBRAMoC4xIgHkCMARMilMDQEI4DBtEqwMfgEACIAzgxIoGwiADEUSdA0IAPSBZSwRAQiAqP0S2AoVAQTKCcVACOD/3aXQCMC4mAUQPgEADMBoc78hFAgAUzllBAiAMOAFEAyAl2g8BRg6AQAI4HtxBfgIgKZ5CYgAYxbcDQiAnlRS6A8MgO3svgFIDKBlmbwBCF4BAAigJOsyIAAIgDquEggQCMAm4hIEFAhAgzkSTBM+AQAMgMagrQVYCCYGqwUIWgEACIDZMQUgDMC85EIBKAxAI0NABQgEUmcWNBQIVG33IaBCAQAINTl1ASgMwKEKeAEICGDZ5xIEEAyAtMoEARAMwJI21gE4CCBO6UXMDMBy5CsBGAhgF3gyPAo+AQAIIOASEsQaDAA4r9IBMAgAQVdFnAhA6xoWLA56AQAIYO6FqdAE1FES5BoIIByxCRAuAQAACy4NAGYBAAyAbDE5AYQIIPqeJUwI4G7pEmgbCGAJKQkQBK1NhcgRAQhgY0MJEAh67DAF/AS4tDaQFgilVS4BUH4BAAiA5jQlJAigGtASyBQIAP7gBYgRAQggLwMSIBcVAQSxdoWYCA==",
"ANnzErAJCABaUQkIOgEACKA+U4UQDCBn3bUBiAhAZSQFEAhAmOMWmAk6AQAIwOIfEqgLCIBM2RIcCAiAGHkFEAjAk2QSKAs+AQAMwMgGmwFYDGDXKJkBCF4BAAggwfgyIAAMICkYXAEwCGAvbhLcDQhgo3al4D4BAAggec8leAgg/OjFIF4BAAgg2voFIAwg/ORYAVgIwC89EigXDECXFVoBEAwgu3sMAQg+AQAIoCorZUwEgEcWZBMIgE6UZWwMoFQaHgEwCCBfEhKQEgxguiMXARAIoEblEpQUCCCiUAUIXgEACGDZ4mVcCMDUB8XQCMBMYSVQCCAABiVQfgEACMBxpxI0FQhgg0sSNA8IAG0uEqQPMgEAAAwyDgBiAQAMIBmCFQG8CCBG++WUCOAedQUQDIAa1o0BGAjgPvOFEBEBCMCGcQUQDMBoEEVB1AhAvdAShA0RAQjA/EASBBh+AQAIYLdDRTQIYDxexaQIALYuEvQXFQEER2gl3BEBCOAioUUECICP40UUCACzqBb4CjoBAAjAbdsSkAkIAFsDRcwEAGka8BsEfctW1AIE6HgWFAkEeesF2AhgflAFEAjAXTklpD4BAAhg9diF4Ajgr8wSEBZeAQAI4NjjMiAACCAHf4UsCOBpJRJIEQjAIk4yxAMRAQigYCUJuATqPQnIWgEACCBCQAUgDMBI/H4lqAQqRxLwEQggONYSnA0MIAmjMQEYPgEACMBkaWmUBFSThTQIQLYLBRAIoHZzFuQOBOCbEkwQCMDT9hKAFwhgMlQS0BsMoFqzZU5QABEBCMDTIAUoDCAHpZ4BKAigciUSZAgIoAgvEuQeggEACPdTJQU4BAp2pSQIoPOJBRAyAQAADTIOAGYBAATiHRb0DQRkdBLACghg4HQFEAhgu9gFpAjggSElPBEBCIB7mRIICQyghBFPQdQIIJOSEqwIEQEIwEgUcvwAEQEIoKcN5dwIwFpsErwSCACsIzKUDQhAo3wyeAAMQHq0MgH0COCXnRJgGghgR5IFEEIBAATrlBIoCwgAhQNFnAhAegEFEAjgSMLFGD4BAAhAJtYSSAsIwJ5+EngRCOAAdAUQCEBD51JwBgjg/1kSsBsIoPvIBQheAQAIQKrxNuwDCLR2DgHADCB3lxAFCAQ0ewUQPgEACGDINCVgCECldxKwC14BAAiAR1wFIAgg0S0SpAkIgGRBEhQKDEBx8Y8BYAjAx9USOCI+AQAIgB4tErwJCEArriUYCIACKwUQCKBH1hYIDAQ1LwU4CMDCsoU8CMBPOxIMFQjAzIoSgBJeAQAIoNY8BSAIwMA4EpQVCIBVN+VICEBUxAUIfgEACEBPYBJkJgwg06/8RVgE6Q==",
"DwUQMgEAAA4yDgBiAQAIwC/+FlwXBN3qZagIwJ5NEhwMCOD24RKgJggAaOvFRBEBCMAvaQUQDGBWLV8BfAgAapXFzBEBCMB9mxKIFgggEa8SLBReAQAIIOTREmAaCKDERMl0BIrEBXgRAQhgG5MSpA0RAQhAZJsSPCUIQKuuEtAgCKArJwUQQgEABA8lEmgLCGDzjSmsBLPREhQSCKB5p0b4AxQAAADAQN5FDAigKdQSGBUIwLyhBRAIIHIrUjAADOBlfjdBNAggzpaleF4BAAjAZecyGAYIwLZEEhQVCKC/KBYMFQSnIQUQPgEACCBTORbkEwRbqUXcXgEACMCFnAUgCEDMhkXcCABViAUQCIAHRAUQDIA2am4BqEIBAATOaRIcCAhAjcASFAgIgIMmBQgI4B/VEsgRCGDJ9mncBM8VJTgIwH2eEjQPCGB9xzJMCREBCEDeDxKMGQhgJOkSlAoIYKR7ErALCKA6ERYYCwQPgxKwC4IBAAi9QeNBUAxg8ePkAQgMwGTw4gEIMgEAAA8yDgBiAQAMwA/EqQE8CKDRHkWEDCCp1qoBEAhgKx+lEAgAsHUyBAgIQHNvBRAI4JqiErQTCEC1XYUYEQEIwE9ShTgIYD/hcoAJCACUX0lEBMQHFjAiBNImMmwTCKB4FSWcEQEM4EPG8wWYBIGnBQgMQN8i8gEQQgEABG7OBVgI4DYjEoAPCEBDuAUQCIAWkaUgQgEABIchhWAIAGNQiZAEA+gWXAgIVowNUhQCBNTrBUgIIJh1EsQZXgEABKCoqZARAQiAYkgSHBkMAAiC0AG4CIDWe1JkJAigyr8StBgMYDczoVKAAA0BCKCYOgUgCKBXUmUECMCNHxLIEghA00USvAgIYN8tElQTPgEACCD6MOUACIBssQU4CAAoRwUICODetMXYCODOzkW8CEBnNUXUCKDnTwUICCBjvQVwPgEACCBC7ikIBH6+BbgIQL10EhQVCGBa+RIMJwggGGkWsBd6AQAMQNjeuiUYBE2gFmAoCKt/uQEQMgEAABAyDgBiAQAIgNY/EoQYCAD99BLICAyAIgejAUwIoMlfEgQoCOCvbjKUEgggx8wFEAjgVpYSCCcI4I5wJQwRAQggofASmAoIgNRpcoQICKAplAUoDADTTxglvASRPQV4EQEIgIEoJXwRAQygYCPsAZgIgI/iEqQIDMCfuOkBED4BAAxAP6SOAVAIQPinpXAIwMjxBRAMoBaoCQEYPgEACCAmKoVICGCQF4VgCICsNwUQCEDQrlYEJAj+NwgBSAhgBRpShA0RAQxgSeMHASgRAQhANjASCBYMYCtkxwG4CMA63hIEGkIBAACsGjwfBLu0EpAKXgEACA==",
"QEzeCSAEvSUSGCgM4Bm6ywFwCODB6xLsHwigSOwSaAs+AQAIgHTxFiAXBHXMEhASCACU+xJkIAxgIjChAUAIwHguhaQIgKQqRdwIYE5eBTAIQCPxpdA+AQAIoCXQxZAMQJ3KuAFACIDRKBKsDgigZoXl+Aigcnfp8HoBAAzApQ2zJRgIkEi0AQgMAAEOsgUILgEAABEuDQBqAQAEmKwSFB0IQJ+FhYAMYCizhwFMCMB5lmWACGCoNBJ4CRUBBAyGBRAMQJ0jQgEoCOBDwSVEEQEIIM1QBRAIYP5cpSheAQAIgNKfElghCOCZthL4FAjAf+8FeBEBCIAqcxLYDxEBDEC7qtEBcAhA3mAFCAhg1QGF8D4BAAwgyxF9IVwIQAMcFigRBJcGJdwI4Gb3UtgFCEDteRLQCwjgli4SGAwIwNfxBRAIwL+MMvQZEQEIgBzMEmQjCMC5QlJQABEBCEBTwgUoEQEIQPapyYgItRStAcgIoOXg5SA+AQAIoBF9EhgYCGCgh3JAAQgAZasFIAhAU/JFzAhg/ecSgCgIoCuLBRAIQEs2KQA6AQAIgB+HSaQEhpUSlBQIAKqXBRAI4LYCEgARCMA15BJIHQiAVbkWdA4EzgAFWAjgxZ4SsC4+AQAIYCBwJTgIQBgwBXgIIJ2LEuQaCCCqdxIEDwiAZ5BSRBU+AQAIwEu9EngvDCDSOZkhIAxACWqWAQgyAQAAEjIOAGYBAAjqq2ABPAigBcqF+AyAqXphARAIQIXxJZQIICbQElAcEQEIQPwtBRAMgNMQIQEoDCCEwNVBRBEBCMALGRKQFAiA0jql0F4BAAiAwYAFOAjgZMQSEBUIQGSgBXgRAQhAX9kSiBEVAQTGNBYUCQT1lUUMDMCafKcBgD4BAAhgSmrF/AigXXsSGBEI4EtWEkQTDCCOk85OMAAIIFGvJXQIwP/AEiwpCKCLvwUICCDHmBJoGz4BAAjgSfWpcATKu1LUGBEBCOAsCKWQFQEEnGwSQCEMABdlhQGIDIC7+YIBCD4BAAigLPXFMAhAhi3FMF4BAAhArfESsAoIwGcJEmwICOCk5xJQCwhAiVPF4AiAtV4S9A9CAQAEcyWpkARLpAkIBDq6EpgQCEBJcRIUFAhgYHcS8BEIIMTIEjwICECn7kXMCKAntkW0PgEACMDGnBIQFwhAXs0WOC4EFgES9BkIYO2TEoAYBAA+FhQUfgEACGC7gxaEHwSjkRIQHQzAQHZwQiABABN+RgAJAQwgekrBATwI4AaNElAaCAAuCxaMIgQ6+BYoFAhooNpNtBL0NQig+6gFEAhA//8SVDMMgBzL2TIgAARbABJoJwigxUESjDRKAQAFSAiAuSMFOAjA7g==",
"DxJ0DQjAzDwFeB5UKQxAm+bXDVgJAQT+vhL4JQiAs2wJCARVXRIECEIBAARgzyXcCKB7TxIoCgiA9ycl5AigIOsWICE6AQAEIHOpGAjgBVUW8BAE18ylKAiA6LwS1BI+AQAIQHYXEqQJCEDNCxKMGF4BAAjgmuMyQAAIQJ4LEnAdCIBcKRL8NgigZcESFA0+AQAIQGNYxcAIQDdlxfBeAQAIwNdpCSAEd2YlKAhgQkoSECcIABcSBRAIgKYfJaAxUBEICIAFPRIcNQjAFAAlyAjAS4IlsAjA6D8SUC4IIM/DJbgIoI5UEmguCACyChI8GQjAPDklsBFIEQgI4CLlCWgEDncFUAhgqIVllAigF4sSNBkIgFWbZXx+AQAIIKsREqwQCGD2OBIsEAjAuhnlkI4BAASamQEBALkS2zUAeA7EFjBjbG9zZXN0UG9pbnQUHUIO/DUBBAgCAAAFBAgDAAAFBA6YLQEEDswqAQQOACgBBAgHAAAFBA5oIgEEDpwfAQQICgAABQQOBBoBBAF0AQQObBQBBA6gEQEEDtQOAQQOCAwBBA48CQEQwXAsEgAAABMAAAATAAAA"};
createNode polyNormal -n "wing_L:polyNormal1";
	rename -uid "2F22487E-4246-899A-0460-58A524751AD5";
	setAttr ".ics" -type "componentList" 1 "f[78:83]";
createNode groupId -n "wing_L:groupId3";
	rename -uid "78A1E03E-418A-53B7-AB07-069318B204AD";
	setAttr ".ihi" 0;
createNode groupParts -n "wing_L:groupParts3";
	rename -uid "8393CCFB-4C78-990D-F389-B38C635E818E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:83]";
createNode skinCluster -n "wing_L:skinCluster3";
	rename -uid "F5E9C6BE-4F21-C020-E3E1-3CADD06586D5";
	setAttr -s 112 ".wl";
	setAttr ".wl[0:69].w"
		6 9 0.098191424337944519 10 0.19453652017435938 11 0.19453652017435938 
		12 0.1236624949646179 13 0.19453652017435938 14 0.19453652017435938
		6 9 0.074004501924421845 10 0.19587939186536429 11 0.19587939186536429 
		12 0.14247793061412095 13 0.19587939186536429 14 0.19587939186536429
		6 9 0.093904745760418601 10 0.1947837562923504 11 0.1947837562923504 
		12 0.12696022907017979 13 0.1947837562923504 14 0.1947837562923504
		6 9 0.075076022574340207 10 0.19582323490734257 11 0.19582323490734257 
		12 0.14163103779628944 13 0.19582323490734257 14 0.19582323490734257
		6 9 0.044980685912704078 10 0.19769495912225263 11 0.19769495912225263 
		12 0.16423947759828544 13 0.19769495912225263 14 0.19769495912225263
		6 9 0.016105788605863969 10 0.19916171119777595 11 0.19916171119777595 
		12 0.18724736660303223 13 0.19916171119777595 14 0.19916171119777595
		6 9 0.045247384544682023 10 0.19759417483350172 11 0.19759417483350172 
		12 0.16437591612131103 13 0.19759417483350172 14 0.19759417483350172
		6 9 0.016009939224305467 10 0.19916193255186301 11 0.19916193255186301 
		12 0.18734233056824262 13 0.19916193255186301 14 0.19916193255186301
		6 9 0.19551741348514654 10 0.18129544774832398 11 0.18129544774832398 
		12 0.079300795521557499 13 0.18129544774832398 14 0.18129544774832398
		6 9 0.0044725909495905714 10 0.19957077354512531 11 0.19957077354512531 
		12 0.19724431486990812 13 0.19957077354512531 14 0.19957077354512531
		6 9 0.17098410809749606 10 0.18382974379874192 11 0.18382974379874192 
		12 0.093696916707536201 13 0.18382974379874192 14 0.18382974379874192
		6 9 0.0088904257366968741 10 0.19916771240997475 11 0.19916771240997475 
		12 0.19443872462340411 13 0.19916771240997475 14 0.19916771240997475
		6 9 0.046732262473289106 10 0.19588288956706063 11 0.19588288956706063 
		12 0.16973617925846843 13 0.19588288956706063 14 0.19588288956706063
		6 9 0.007898656095221137 10 0.19930719785826939 11 0.19930719785826939 
		12 0.19487255247170121 13 0.19930719785826939 14 0.19930719785826939
		6 9 0.047404243818939269 10 0.19575556862296412 11 0.19575556862296412 
		12 0.16957348168920422 13 0.19575556862296412 14 0.19575556862296412
		6 9 0.0077101726820316971 10 0.19931352764530308 11 0.19931352764530308 
		12 0.19503571673675602 13 0.19931352764530308 14 0.19931352764530308
		7 8 0.015939746942729517 9 0.48907610526733686 10 0.097185490495645843 
		11 0.11282662932723551 12 0.059318769312581197 13 0.11282662932723551 
		14 0.11282662932723551
		7 8 0.017418026118767173 9 0.30591338040717736 10 0.12990652712357686 
		11 0.14699819168045605 12 0.10576749130911049 13 0.14699819168045605 
		14 0.14699819168045605
		7 8 0.018872418493829139 9 0.45193543406984238 10 0.10182074243385492 
		11 0.12033960850817903 12 0.066352579477936449 13 0.12033960850817903 
		14 0.12033960850817903
		7 8 0.019807010391465173 9 0.32082473462543482 10 0.12527527778443931 
		11 0.14471119149460285 12 0.099959402714852055 13 0.14471119149460285 
		14 0.14471119149460285
		7 8 0.070018852889385474 9 0.25036411202126563 10 0.097812282072675352 
		11 0.16651950392535261 12 0.082246241240615622 13 0.16651950392535261 
		14 0.16651950392535261
		7 8 0.072270638515163063 9 0.20519229084539195 10 0.1043324145223974 
		11 0.17524918514084814 12 0.092457100694503164 13 0.17524918514084814 
		14 0.17524918514084814
		7 8 0.069960647865732986 9 0.25098700710879063 10 0.097735338410287018 
		11 0.16638543559387226 12 0.08216069983357252 13 0.16638543559387226 
		14 0.16638543559387226
		7 8 0.072269898753575521 9 0.20469266351039092 10 0.10441215500688367 
		11 0.17532820080526204 12 0.092640680313363782 13 0.17532820080526204 
		14 0.17532820080526204
		10 5 0.03143332963722309 6 0.038556992613733763 7 0.059071317189198128 
		8 0.44697593578908418 9 0.062811986893455227 10 0.070555095099153392 
		11 0.076628229541522208 12 0.070555095099153392 13 0.070617858813717002 
		14 0.072794159323759725
		10 5 0.03830729989801044 6 0.046988654011361965 7 0.066018832872479907 
		8 0.39276328890738488 9 0.075640488014482976 10 0.073749440237579469 
		11 0.083127535769213556 12 0.073749440237579469 13 0.073892357351256377 
		14 0.075762662700650948
		10 5 0.034700062866164769 6 0.042564016395233509 7 0.062934441920621212 
		8 0.43093632214998817 9 0.0677688129247217 10 0.07039044990109071 11 
		0.077268210610201518 12 0.07039044990109071 13 0.070470983263064085 14 
		0.072576250067823603
		10 5 0.039050811836252974 6 0.047900639293738168 7 0.067183230640054811 
		8 0.38923511137451411 9 0.076875808691174691 10 0.073614464029673587 
		11 0.083114355046238514 12 0.073614464029673587 13 0.07375890107444516 
		14 0.075652213984234329
		10 5 0.094213352499905464 6 0.11556447744519073 7 0.1317291480593818 
		8 0.24708845883228128 9 0.14831244451574985 10 0.048883789031842755 
		11 0.066365349987301051 12 0.048883789031842755 13 0.049197853408394027 
		14 0.049761337188110405
		10 5 0.088614459656717617 6 0.10869624125570956 7 0.12087357494509127 
		8 0.18441934080493974 9 0.1582988857589247 10 0.062257355535676906 
		11 0.088838848800914319 12 0.062257355535676906 13 0.06280651922548261 
		14 0.062937418480866342
		10 5 0.094551981092569112 6 0.11597986930278782 7 0.13216508111083347 
		8 0.24757061486358589 9 0.14848672797313345 10 0.048534639684573361 
		11 0.06592356749116246 12 0.048534639684573361 13 0.048846256543827384 
		14 0.049406622252953718
		10 5 0.088494262534227319 6 0.10854905306942846 7 0.12061160454782616 
		8 0.18460202125193509 9 0.15834120903287371 10 0.062294288040548922 
		11 0.089000678576635198 12 0.062294288040548922 13 0.062847728429751823 
		14 0.062964866476224332
		8 5 0.027675556520737027 6 0.099419266269318449 7 0.57182118089746092 
		8 0.12792148159735181 9 0.12289976715628226 11 0.0034764758964460781 
		13 0.0034764758964460781 14 0.043309795765957337
		8 5 0.016877320080261129 6 0.078940394750197637 7 0.64427771924088639 
		8 0.11053358020947233 9 0.10985574864697042 11 0.0039337194248934429 
		13 0.0039337194248934429 14 0.031647798222425153
		8 5 0.028160708994936733 6 0.10077699542410254 7 0.56713610631478906 
		8 0.12916008937106438 9 0.12375909589788166 11 0.0034598376356647022 
		13 0.0034598376356647022 14 0.044087328725896317
		8 5 0.019667368625986757 6 0.087014744064487115 7 0.619981414915866 
		8 0.11704452099289737 9 0.1130939843187185 11 0.0037788990275686501 
		13 0.0037788990275686501 14 0.035640169026907011
		8 5 0.060489043205652175 6 0.16230273161174086 7 0.32680716978718805 
		8 0.18673250429264696 9 0.17466794089312729 11 0.0023767153780357864 
		13 0.0023767153780357864 14 0.084247179453573059
		8 5 0.050883098654848406 6 0.16850007811537823 7 0.26281129910015832 
		8 0.20542289000984496 9 0.20117529917564947 11 0.0029698388660304794 
		13 0.0029698388660304794 14 0.10526765721205962
		8 5 0.060727404477433709 6 0.16240898787853075 7 0.32691257270428425 
		8 0.18665587798836436 9 0.17447688884653625 11 0.0023639589932143812 
		13 0.0023639589932143812 14 0.084090350118421892
		8 5 0.050847882491726809 6 0.1683517337653879 7 0.26329817448399817 
		8 0.20528496084903736 9 0.20110166860622114 11 0.0029691947984091891 
		13 0.0029691947984091891 14 0.10517719020681024
		7 0 0.061845345487646849 5 0.11602988317310663 6 0.24310096288609229 
		7 0.20266187014577486 8 0.32228530321261517 9 0.050713095383000742 
		14 0.0033635397117634156
		7 0 0.045627254836903337 5 0.092303819724843708 6 0.24001184493395966 
		7 0.20337997477866515 8 0.36166632024568596 9 0.05281788896462198 
		14 0.0041928965153203417
		7 0 0.062043770912339272 5 0.11645488866894378 6 0.24302950223865172 
		7 0.20269129944974076 8 0.3216286256009307 9 0.05080287479311258 14 
		0.0033490383362811274
		7 0 0.047450260256175103 5 0.095610240760754361 6 0.23985915830142568 
		7 0.20347526114229397 8 0.35639536167024405 9 0.053130842289326449 
		14 0.0040788755797803817
		7 0 0.11302758703385904 5 0.19078994273315214 6 0.25285858510947662 
		7 0.20038292536660737 8 0.1982225246543021 9 0.043968186005618221 
		14 0.00075024909698459541
		7 0 0.075680165111473047 5 0.1711708593773531 6 0.21729673700578842 
		7 0.21071338856036753 8 0.24532275382344379 9 0.078429034691773578 
		14 0.0013870614298005107
		7 0 0.11445723506242399 5 0.19180552232286535 6 0.2540367583554467 
		7 0.19999968685438418 8 0.19612417743446689 9 0.042865274587363965 
		14 0.00071134538304900056
		7 0 0.075593159077925437 5 0.17122621941918226 6 0.21718344228899872 
		7 0.21073591841614567 8 0.24529600297636167 9 0.078582622604847607 
		14 0.0013826352165385966
		7 0 0.055144545176860599 1 0.026133455469220267 5 0.18777508977573118 
		6 0.19583649938795059 7 0.45064560040173979 8 0.075633464569173831 
		9 0.0088313452193236972
		7 0 0.027022809998220654 1 0.0079315205856347343 5 0.15037425534610102 
		6 0.19124535581076246 7 0.52892603854504405 8 0.08368326352610872 
		9 0.010816756188128419
		7 0 0.056195348439434904 1 0.026450000565033441 5 0.19082885734552518 
		6 0.1966370472354752 7 0.44489091554876797 8 0.076131274298940968 
		9 0.0088665565668223055
		7 0 0.034929362593183841 1 0.010817596190754916 5 0.16302727815711215 
		6 0.19374252141539791 7 0.50179620606567421 8 0.085267942088210494 
		9 0.010419093489666487
		7 0 0.17200736754744761 1 0.096385413115967197 5 0.2805873109333531 
		6 0.21613663884197762 7 0.18037313351204998 8 0.054199685549178117 
		9 0.00031045050002631298
		7 0 0.15343905961763438 1 0.031477223364962309 5 0.21146493191047444 
		6 0.2221421215658404 7 0.23660909410753125 8 0.14357124151103073 9 
		0.0012963279225264239
		7 0 0.17157250472001626 1 0.097018665599741982 5 0.28327294902179423 
		6 0.21430708254649589 7 0.18006028055735468 8 0.053476068590278286 
		9 0.00029244896431868122
		7 0 0.15338992826084022 1 0.031443032862253188 5 0.21109562773127147 
		6 0.22147754969029898 7 0.23825956498274811 8 0.14316196509679416 
		9 0.0011723313757938181
		7 0 0.23422994514826617 1 0.057873861749022953 2 0.026398766766054405 
		5 0.29256977009714868 6 0.31329559388173228 7 0.059300920381907284 
		8 0.016331141975868182
		7 0 0.075106083104074822 1 0.008115200996607624 2 0.0024686096879552211 
		5 0.29060080069193717 6 0.50998560829201967 7 0.094136678012674835 
		8 0.019587019214730668
		7 0 0.23117789495781466 1 0.058053970093233362 2 0.02692950252073897 
		5 0.29262560931286513 6 0.31197718723886059 7 0.061691288813052886 
		8 0.017544547063434501
		7 0 0.11160787688696212 1 0.018992326131216708 2 0.0064844273105359616 
		5 0.29640473246502208 6 0.44466938555407881 7 0.097938139598874041 
		8 0.023903112053310336
		7 0 0.22112738996433329 1 0.12383805254566257 2 0.095666042068312751 
		5 0.24573545224034296 6 0.21591947850075041 7 0.056578606224940368 
		8 0.041134978455657639
		7 0 0.18772901083605792 1 0.057476490008349937 2 0.045792578313857676 
		5 0.24141469366776089 6 0.24245677662787909 7 0.12790318500490705 
		8 0.097227265541187366
		7 0 0.2213134367448184 1 0.12376018229963025 2 0.0955726291751232 
		5 0.24574869088071802 6 0.21591377698604258 7 0.056547684062810306 
		8 0.041143599850857242
		7 0 0.18747860821823578 1 0.057720402328236477 2 0.046005433105114464 
		5 0.24116849217756253 6 0.24375205559197255 7 0.12708943018244531 
		8 0.09678557839643287
		7 0 0.20810454205634346 1 0.55517683070483603 2 0.15553618311161799 
		3 0.029696796698834654 5 0.0493456253446884 6 0.0018030627801071087 
		7 0.00033695930357233763
		7 0 0.25841001021063204 1 0.22614877973774475 2 0.06159593922843791 
		3 0.011613904538418155 5 0.36925110290179863 6 0.055023501083401295 
		7 0.017956762299567202
		7 0 0.22900137582516103 1 0.47974587067654018 2 0.17250491887569797 
		3 0.039298393308072457 5 0.072695509479419912 6 0.005578648832181874 
		7 0.0011752830029266692
		7 0 0.25554147780418029 1 0.24923146031241061 2 0.075741794238612867 
		3 0.01510450993479105 5 0.33223187275057836 6 0.053631050859691234 
		7 0.018517834099735637
		7 0 0.22267250190886792 1 0.23009213311531038 2 0.14820674703606751 
		3 0.0029397771104235533 5 0.2087511361641137 6 0.15470562055130613 
		7 0.032632084113910706
		1 0 0.22734422208800459;
	setAttr ".wl[69:111].w"
		6 1 0.19931537357962473 2 0.078098900748240191 3 0.0021813958672904587 
		5 0.2534729488422674 6 0.16127866582321088 7 0.078308493051361658
		7 0 0.22226720035551054 1 0.23066148882333473 2 0.14916993527845468 
		3 0.0026061365478750936 5 0.20855565449298225 6 0.15505769869586852 
		7 0.031681885805974239
		7 0 0.22734169031952287 1 0.19872290460229144 2 0.077536173729705893 
		3 0.0020841297054089579 5 0.25419151430507941 6 0.16152174950476195 
		7 0.078601837833229452
		7 0 0.089197989607703435 1 0.17928878232616893 2 0.54463281555175136 
		3 0.14694277074737108 4 0.023960872637312586 5 0.012343648412857207 
		6 0.003633120716835365
		7 0 0.41684283123815807 1 0.29266667706240301 2 0.16717908617526187 
		3 0.035685796431278519 4 0.0057792062571456011 5 0.06176150686088306 
		6 0.020084895974869916
		7 0 0.1572980600707036 1 0.21178869171432299 2 0.44337083636249913 
		3 0.12463860046938105 4 0.020687537601570868 5 0.032770536593944924 
		6 0.0094457371875774493
		7 0 0.4067058498678553 1 0.29333052061440795 2 0.16835116303423855 
		3 0.036340054085917624 4 0.0059280957079054413 5 0.066958247370883975 
		6 0.022386069318791085
		7 0 0.19192715483150835 1 0.20735674259867373 2 0.24406928857014609 
		3 0.10247166023995195 4 0.0049566119445338154 5 0.17213146677854732 
		6 0.077087075036638725
		7 0 0.22889072084833184 1 0.20839611043522221 2 0.17220482517489044 
		3 0.0082945368705213546 4 7.0973380663359137e-05 5 0.21981758245995817 
		6 0.16232525083041255
		7 0 0.19179442176596148 1 0.20681090277357717 2 0.24552863390389051 
		3 0.10245133750345457 4 0.0046547683041840964 5 0.17217677518963151 
		6 0.076583160559300673
		7 0 0.22945780645537028 1 0.20791433103370488 2 0.17188182910936547 
		3 0.0072790555438425565 4 5.7300620998413964e-05 5 0.22003310406522592 
		6 0.16337657317149254
		6 0 0.052283641339338736 1 0.27384387514272407 2 0.17303105288348217 
		3 0.41691795262716441 4 0.064893234871770955 5 0.019030243135519646
		6 0 0.049064401876394888 1 0.49970230266915661 2 0.18039832772722336 
		3 0.22523983638774489 4 0.026401894775477688 5 0.019193236564002573
		6 0 0.057498496034626492 1 0.29187414569054049 2 0.17811532130849717 
		3 0.38651067624400864 4 0.06469369541239553 5 0.021307665309931643
		6 0 0.052110501396640523 1 0.44650982119274885 2 0.19351509176633558 
		3 0.24486079461477273 4 0.041091492500628483 5 0.021912298528873768
		6 0 0.17401592433452606 1 0.20052358508110046 2 0.20690995454788208 
		3 0.23936641216278076 4 0.11211926490068436 5 0.067064858973026276
		6 0 0.21271611642449803 1 0.23224330104447774 2 0.19981576220438399 
		3 0.16290429944277127 4 0.01484948504080561 5 0.17747103584306331
		6 0 0.17395164785666772 1 0.19987220613529907 2 0.2065642737715889 
		3 0.24056059188790666 4 0.11275855389904541 5 0.06629272644949219
		6 0 0.21327557325589092 1 0.23350325803539079 2 0.19777309120961481 
		3 0.16229248902175153 4 0.012802430859113022 5 0.18035315761823895
		5 0 0.00064255202406069203 1 0.0019590802920286471 2 0.0089428217653859422 
		3 0.086780225498176919 4 0.90167532042034781
		5 0 0.038186685504518425 1 0.050042941240604759 2 0.17832995296101406 
		3 0.16420752460980179 4 0.5692328956840611
		5 0 0.0026047591012159331 1 0.0075697774176059452 2 0.030578785064664743 
		3 0.19432088999658184 4 0.76492578841993153
		5 0 0.039509134133512785 1 0.051292152935330959 2 0.16450279322170841 
		3 0.17635549360114314 4 0.56834042610830471
		5 0 0.14562890150590094 1 0.17811034885213298 2 0.20334925060494619 
		3 0.21730943347974768 4 0.25560206555727222
		5 0 0.19059515995282292 1 0.21583279999582766 2 0.225446926895633 
		3 0.20152212413116899 4 0.16660298902454743
		5 0 0.14558729746322777 1 0.17815692988271906 2 0.20338200335773832 
		3 0.21586458706653994 4 0.25700918222977492
		5 0 0.19085647950845713 1 0.21583798120474593 2 0.22644740062325008 
		3 0.20051988369463489 4 0.166338254968912
		6 9 0.17769229376831533 10 0.19910793505695334 11 0.025875966003871421 
		12 0.19910793505695334 13 0.19910793505695334 14 0.19910793505695334
		6 9 0.088872000241160432 10 0.19956949644184799 11 0.11285001399144759 
		12 0.19956949644184799 13 0.19956949644184799 14 0.19956949644184799
		6 9 0.16734237856324544 10 0.1992185159178515 11 0.035783557765348466 
		12 0.1992185159178515 13 0.1992185159178515 14 0.1992185159178515
		6 9 0.097640951248300689 10 0.19957735678992147 11 0.10404962159201341 
		12 0.19957735678992147 13 0.19957735678992147 14 0.19957735678992147
		6 9 0.015353528580656235 10 0.19993231650120405 11 0.18491720541452752 
		12 0.19993231650120405 13 0.19993231650120405 14 0.19993231650120405
		6 9 0.013801788848126717 10 0.19993729516046246 11 0.18644903051002351 
		12 0.19993729516046246 13 0.19993729516046246 14 0.19993729516046246
		6 9 0.015092664928768902 10 0.19992761760249009 11 0.18519686466127067 
		12 0.19992761760249009 13 0.19992761760249009 14 0.19992761760249009
		6 9 0.013602582344691784 10 0.19993709697639875 11 0.18664902974971334 
		12 0.19993709697639875 13 0.19993709697639875 14 0.19993709697639875
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2
		5 10 0.2 11 0.2 12 0.2 13 0.2 14 0.2;
	setAttr -s 15 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.98893635286829762 0 0.14834045293024392 0 0 1 0 0
		 -0.14834045293024392 0 0.98893635286829762 0 -2.3675136649295845 0 -0.39557454114731749 1;
	setAttr ".pm[1]" -type "matrix" 0.98893635286829784 0 0.14834045293024373 0 0 1 0 0
		 -0.14834045293024375 0 0.98893635286829773 0 -1.7608012034041647 0 -0.3955745411473176 1;
	setAttr ".pm[2]" -type "matrix" 0.98893635286829773 0 0.14834045293024473 0 0 1 0 0
		 -0.14834045293024475 0 0.98893635286829762 0 -1.1540887418787436 0 -0.39557454114731927 1;
	setAttr ".pm[3]" -type "matrix" 0.98893635286829717 0 0.14834045293024845 0 0 1 0 0
		 -0.14834045293024847 0 0.98893635286829695 0 -0.54737628035332131 0 -0.39557454114732121 1;
	setAttr ".pm[4]" -type "matrix" 0.98893635286829773 0 0.14834045293024506 0 0 1 0 0
		 -0.14834045293024509 0 0.98893635286829751 0 0.059336181172098025 0 -0.39557454114731905 1;
	setAttr ".pm[5]" -type "matrix" 0.99144304335402078 0 -0.13054000070827959 0 0 1 0 0
		 0.13054000070827959 0 0.99144304335402078 0 -2.9678021300266475 0 0.44119215429253955 1;
	setAttr ".pm[6]" -type "matrix" 0.99144304335402067 0 -0.13054000070827895 0 0 1 0 0
		 0.13054000070827895 0 0.99144304335402067 0 -3.5729806251128755 0 0.44119215429253739 1;
	setAttr ".pm[7]" -type "matrix" 0.99144304335402078 0 -0.13054000070827929 0 0 1 0 0
		 0.13054000070827929 0 0.99144304335402078 0 -4.1781591201991057 0 0.44119215429253866 1;
	setAttr ".pm[8]" -type "matrix" 0.99144304335402111 0 -0.13054000070827892 0 0 1 0 0
		 0.13054000070827892 0 0.99144304335402111 0 -4.7833376152853377 0 0.44119215429253689 1;
	setAttr ".pm[9]" -type "matrix" 0.99144304335402111 0 -0.13054000070827879 0 0 1 0 0
		 0.13054000070827879 0 0.99144304335402111 0 -5.3885161103715653 0 0.44119215429253578 1;
	setAttr ".pm[10]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502382 0 -1.2078969792511753 1;
	setAttr ".pm[11]" -type "matrix" 0.98951663194516137 0 0.14441895687168241 0 0 1 0 0
		 -0.14441895687168241 0 0.98951663194516137 0 -5.8872752515502373 0 -1.2078969792511753 1;
	setAttr ".pm[12]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502382 0 -1.2078969792511753 1;
	setAttr ".pm[13]" -type "matrix" 0.98951663194516148 0 0.14441895687168244 0 0 1 0 0
		 -0.14441895687168244 0 0.98951663194516148 0 -5.8872752515502373 0 -1.2078969792511756 1;
	setAttr ".pm[14]" -type "matrix" 0.98951663194516137 0 0.14441895687168241 0 0 1 0 0
		 -0.14441895687168241 0 0.98951663194516137 0 -5.8872752515502365 0 -1.2078969792511751 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 15 ".ma";
	setAttr -s 15 ".dpf[0:14]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 15 ".lw";
	setAttr -s 15 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 15 ".ifcl";
	setAttr -s 15 ".ifcl";
createNode tweak -n "wing_L:tweak2";
	rename -uid "EB3F0CE4-443C-8048-0BC2-28B8956219BE";
createNode objectSet -n "wing_L:skinCluster3Set";
	rename -uid "F8ECD4E9-4F20-CBDE-65CD-AEA3A178F37C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wing_L:skinCluster3GroupId";
	rename -uid "BC1C4130-4688-702D-3C8D-39BA458EB7EC";
	setAttr ".ihi" 0;
createNode groupParts -n "wing_L:skinCluster3GroupParts";
	rename -uid "C2536451-40F6-180B-1521-018B6FEC661C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "wing_L:tweakSet2";
	rename -uid "2F31CAD0-4A84-79AD-680A-358E6B23A676";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wing_L:groupId5";
	rename -uid "AAA6866A-4241-7F01-0E56-E7B66573F584";
	setAttr ".ihi" 0;
createNode groupParts -n "wing_L:groupParts5";
	rename -uid "B87994CB-4C63-F076-2726-3BBDDFED1135";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode ngst2SkinLayerData -n "wing_L:skinCluster4";
	rename -uid "C370DBB6-4706-3B63-54C9-03B03414E495";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 14 4408 {
"oGtccAAAAAEAAAAMAAAAQmFzZSB3ZWlnaHRzARQJAQTwPwkIBAAAASwADxEN/gEA/gEA/gEA/gEA7gEADQEIMaqvIVwMgHRcpwEICMAyxAUQDOBlS6gFEAhf77wBCAxgxl+zAQgMgBFNvQEICMASWgUQDMDnO6wBEAwA3qubAQgI4KLFBRAM4ELioQEQDEBWBMYBCAwA5KPDAQgMgBb2xQEICABIogkQCD77zQEQCOAmOgVQCCA8lwUQCGBVkgV4DODmTcwBIAwAgQfIAQgIgP9TBRAMgEz/xwUQCCujygEIDODJidABCAjA6k8JQATKWgUQCECIgAUwCGCdGQUYCOA/cwUQBCCIDRAIrdW2ATgMAI2t2gEIDKBXIsQFCAR3BwUQCIARkQl4BEpMBUAIQLiMBRAIYN9eBRAMYOvEqgEwDMD3HqkFCAhwcK0BCAjgOa4FGAhgJ0YlAAzgRzrLARgIAAxEBRAIQJ1MCRAIHg5FARgMYDSNowUICJNWZQEIDCCKOqQBCAzA96PCBQgEa2UFeAjAmqIFEAgA/G0FEP4BAPIBAHmg/gEA/gEA/gEA/gEA/gEA8gEADGC6wppBJAygZj6AAQgIYLUVZYwMIIknhgEQDMC2rLgBCAxAyB2gAQgIIDfWBRAIIE0ZBRAI4KOhRbQIwLOeCUAIP7mtASgMYLlykwEIDKDZs78BCAjgjm0FGAggv64FEAhAh40FEAxAAsThASAIAHHyZVwMACi03gEQDIDQ5s8BCAigqHNpLAgqg8kBEAhAUIYJEATAbwkQBO/yZRQMoAy70gEgCCDkG2UcCCDtxQUQCECqimXkCEC5rAUICKDHeAkIBO+cBQgMIKiG0QE4DOAe+98BCAiAEK4FOAyAnZPcARAIwMGqBWgIwCW6CXgEaZUFEAhgb+MFEAxAfQxgASgIQDqfZcQMoHwBfwEQCID2QmXECOBRzAWgCGBooAWYCKDYzQUQBACUCRD+AQDyAQAAAv5+APJ+AP4BAP4BAP4BAP4BAP4BABUBCKBGCGW0DKAMOWRBfAjAZ5MFEAwgao96BRAEkX1ltAjgH3LlqAiAcncFEAggBo4FEAggnOjlUAhAgInlwAggpBRFpAgg0GPlWAhAcPjJOARK/gUQCMD/FwUwCABp2QkQBKFtZcQIYB9m5aAI4C9gZTwIoIeMBRAIYKk9ZcwIwM4KBVgIgHttBRAIIDkABRAIQOElBQgIgEoX5ZgEIHtpNAjgGcXFqAiABnxlrAjgj5NlfAiAsnAFEAgAoVAFEAxAnVCCAegI4IPTCUgIC1CfARAIAG0OBYAIIFkHBTAIgHHbhWQI4GsIBRAIQDr8BRD+AQDyAQAAA/5+APJ+AA==",
"/gEA/gEA/gEA/gEA/gEA/gEAFQEMYNZonkG0DIAHyYcBCAhA6x4SxAkMgBzvjgEQDMAoFWgBCAzgt95hAQgIgHZZEuwJCIC8EgUQCEAFz2WkDEBoRaIFIAhQ6L8BCAigKZsFEAwAlTu6ARAI4Ln85agIQEA6BRAMYKTQfQEYCCDIrhK0CghAqNRlFAzAlrzYARgIwJhXZawMAI+jzgEQCCAM2hLkCghAsMoJEAQAxgUQCKA6NxIMCwhgwARldAjAgd9lvAig0JJllAigy9DlAAjAectltAhgc6EFEASAoulg/gEA8gEAAAT+fgDyfgD+AQD+AQD+AQD+AQD+AQD+AQD+AQAVAQzgMomYYSQMYO+rdwEIDAAdL5UBCAzADkh4AQgMQGJNdAEIDGDxmhIBCAzg4BBzAQgMIMIKDgEIDIDXnLABCAjAGAnlwAjAw48FEAxg8QmlARgMINmzvAEICOBnaYUUCGC+3QUQDEApOIoBGAxAhtrsAQgMwCc34gEIDKBFeugBCAjg1y8FEAjAyFsS2A4I4D5TZaQIoNZyBRAIQJJKBRD+AQDyAQAABf5+APJ+AP4BABUBCCAHGBIYDQgAA50WlA8ENMQSzBAIAHf+BRAIgF0eEnwJCOBvr6UwCMCONAUQCCCPpwUQDOD6VpwhtAygSUiRAQgIACnWCRAIriOUARAMIGv4rgEICIBZDRJgDAhAqRcStAkI4LsIBRAIACK0EmQRDAA5obcBKAgg/M8JEATpeQVoCKDNa6WYCCDt6CX0CCAVjQUQCKC96gUQCIADCQkQBHY/EuQJBGAUFiwQCOAT3qXoCGAk9RIwDQhASBGlwAjgJCEWMA0ELgUFEAggdrkFEAgANJkFCAhgYLoFCAiAS/gFCAhAQnTFUAggrebFQARAsQkQCOCb3gUQCIDUQxJIDQwAz6HXAcAMQCycsgEIDCBJQ9UBCAhgW7gSvAkIgOY4RbwIIPOxBRAIYKxEBRAMYKBHiQEoCKAznyUYCKBMxyWQDMAsJLEBGAhAZwjFkAiA+yLF6AiA4wkFEAhACyoFEAigqXwSuA4IAGSnBQgIwKzRZcQMIC1wlgFACKApKwVICMBetwk4BI/4ZaQIANAVErwK/gEA/gEA8gEAAAb+vgD+vgDyvgAVAQiAvb1lbAjA5A4WiBQE8sqlQAjAbYYFEAjgoZVlFAxAhNO7IdQIANuwBRAIoN7JBRAMQIpzuQEYDOBvNbQBCAhAhcwFEAgAmUZlpATAVRb0CAggaZFlNAgg0cllHATAjBbwDAhA7h1J5AS1uEnUBJYbBRAIoLOzCRAE1S5FrAQAYRYUCQhAI0IFEAjAqsxlRAiAKxESJAkIQLp6ZYwIAA==",
"ZysFEAgAjswFEAhgXaoFKAgAJ29FtAggam4FEAhgYFkFEAyACA3UBbgIzVHgAQgMwG730wEICIB2dRKYDQjAP6MFMAjA0ggFmATgDwkQCGBEMwUQDACYil0BMAjgCSwSkBUMIKPZdgEQDACHdasBCAjAZM2JHATHpAX4CODt2AUQCIC+rAUQDMA0w20BKAggIpGFtAxASViDARAIYF/sZUQIYPq7EjgOCOASxwUwCED0mgkQBIXpBRD+AQD+AQD+AQDyAQAAB/7+AP7+AP7+AAn+DMCXPq4h9Aigm+alIAhAeBwFCAjg6jKlQAwAgNzAASAMAJLxvgEICODI6gUQCKBm4AUQCMBbTBK0CAwg7J3kASAIgPolCRAI49bjARAIYGjqReQIgObRZTwIgCLsBRAIoODZBRAIoNLwZTQEwFoa7A8EyfEFEAiAeQvJMAQlpgUQCOCn+AUQCMCWmQUQCABl+QUQCIBg12UsCED27GVECKAXeQUQCOC2DgUQCGB3FqXwCMA0SWXUCCA3DAUQCCBKfwUQCACwXCUACEBXGeV4CID/lcWQCEB5EoVMCODe92VcCKAhXwX4CEDR8wUQCGB3RAkQCD0VNgHoDKBBY5IBCAyAfkFTBQgEVvYFEAgAJ7XF2AhgBgyFpAhgmzgFEAjgPx8FEP4BAP4BAP4BAP4BAPIBAAAI/j4B/j4BKT4MQIJSkCH0CMAH1hIMCgiASlMSlAgI4ElIpVgIgMDsZUwIoFOAEiQJCADw6AUQBEBHCRAIQECbRbQMwAcj2QFIDCB1lNsBCAhgOekS3A8I4JegpfAIgA2bRbwIgGSwBRAIwAmhBRAEALtJnAiA7UsWaAwEUYhFnAgAofblMAiA2eYFKAggTEtlNAjAVuQJEATHRgUQCEBSoGWUCGCKJRLMCQjAj5UFEAzgLc/WAYgIoFpfZXQIQLxmBXgIoJgaBRAIANxlBRAI4LZcxRgMIERstQEwCMBWfQUQCKAe1AUQCIAPwMmQBIpgEvwQCCA3YQUQCKAhUwUQCAAcuSVACICeDiUwCEAy9yVICKAOehKoDQjApA8WGAgE4uNlpAgAxhAFEAiA8MYJEP4BAP4BAP4BAP4BAP4BAO4BAAAJKX0IoBIjpTAIYPXxReQIQCQKJZwIYC44RQwIILUHEsQWCAAJfiXsCOCpKgUQCMDoZAUQCAC3BklUCNpRckFECKDO4hK0CQjAJDUSNBYIgErtBTAIoCstEhgTCGBeRRIkCgiAs5QSyBkIwAVNFhgaBBWUFkQJBILsZVQIYGSIRcwIYPYFxXAIAL1DRfQIACsQBRAI4F0zBRAI4HEUxfgIICxdBbAIgEtZaaQEIa4FEAjA5vtFrA==",
"CEAjQxL8CAjAnAESTAkIIIZEBRAIoFt2EsgTCGCBH2WEBOCsFkAbCAC68wUQCKCEWxKIDAjAHMAJ6ARCVQUQCCCzvQUQCMAQ9xJQDQgg8gplHAgA1QISKA4IgPYzBRAMIP+CpiEYCMDsE8U4CMBv8mUECKD9HQUQCAArFiUoBGAYFhAcCAChKAUQDACbVoUBOAygflg0AQgMYDE9VQEIDMB6KjMBCAhAHTXFsP4BAP4BAP4BAP4BAP4BAAignr4l0AiAUMASfAwIYHlrRcAIAP/+ZQgMoKtxjyFwDIAcRIwBCAgA5+gSHBIMgKvbiwUQ7gEAAAoJPQiAkuYSeAwIQJMSRVQIoKzuBRAIALwQBRAIQBFOCQgEIX4FCAigw0oFCARAIwkQCICwNMUYCACJiwUYCKC7hwUQBOBTCSAEwLAJWAjg5YIJIASEDgUIBOAaFvQdCOAl4QXsCMDGoMWACIDsEBK8FgggBQkJEAQ4CoUkCMCGtQUYCKAtBQUQCKDAugkQBOUPhTwIoD3hBQgIQBsFBQgIAGXYBQgIgEsHaSQEMuASpAkIAIjZhQQIIAnlCRD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQAEXnxFkAQAfknACMD9fwUQBOC/DRAEYZcFEARgiwkIBEA6CQgEwIkJCASgmRZcDACAOggAXhgAMigAAAtJff6EA/6EAwigNOLFcAgA1tDFsAiAk84SqA0IYOWFBRAIwIFQhZgIIJBuhbAIIB1MBRAIACdxBRAI4OedxfAI4NdHErwJCODYxwUQCKD6RgUQCKBR/eUoCIAkvoXoCMBd4AUQCGC/yAUQDICyemyB0AygzRxwAQgIAM5XBRAMwOz0bgEQDCBVeGMFCAQ0VBIoGwiglF0FEAhg2lIFEP4BAP4BAP4BAP4BAP4BAP4BAP4BAAhAOn8SqCQIwLzjRYgIwDhSEtgcCKD+oqXkCOBdq8VUCKCP3QUICMCHtAUIBGAdFpQMXmwDXhgAMoQDDlwqFAAAAEBYqBaMCQS3PEX0CKA7QMWACAD3IAUQCGDMBUX0CIC49wV8CMBECgUQCEDV+gUQCKAOTRJUCQhATT+JMASF/BKkFwhAXuPlUAhA6rkFMAhglfEFEAhglbQFEAgA7vYFEAiAB18SVBAIwJMTEqgUCIB7/GkkBPCWxfAI4BUOZUwIIESrBVgIwHoICRAETLcFEP4IB/4IB/4IB/4IB/4IB/4IB/4IB/4IB/4IB/4IB/IIBwANYYIAAP4IB/4IB+4IB+UICKACFBJ0Cghgm+oJCARiCgUIBEDcFpwKCMB1MBKMCgSAFho4DgRgAgUQCMDJFmXs/ggH/ggH/ggH/ggH/ggH/ggH/g==",
"CAf+CAf+jAryjAoADv6EA/6EA/6EA2mECOCiomV0COAtZRKECgjgWpQFEATA8BakEQggUXpldASgqhq0GATSSwUQCAB3HmWECGCzLBY0EQQjNBJ0FwggnZIFEAiAbT8SlAgI4DiR5XgIQNLyEpwICMDxhgUQCIDk7AUQDEDajWsOrAoMAJIscQEICKBwbwUQCGACtRLcCgxAi5VIARgMwMG5VgEIDGAyT0cBCAhAMacFEP4BAP4BAP4BAP4BAP4BAO4BAAUB/hAO7hAOWv0BBJqZAQEEuT8OVzEAeA6wCixjbG9zZXN0UG9pbnQu9DQBIQEEDvwtAQQOgCoBBA4EJwEEDogjAQQODCABBA6QHAEEDhQZAQQOmBUBBA4cEgEEDqAOAQQBdAEQ4agsDQAAAA4AAAAOAAAA"};
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "69F76291-42B1-CA7A-A522-47A6D4F9D246";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "wing_fkik";
	setAttr ".tgi[0].vl" -type "double2" -569.3805262045521 -542.857121285939 ;
	setAttr ".tgi[0].vh" -type "double2" 387.23767629940153 897.61901195087285 ;
	setAttr -s 13 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -454.28570556640625;
	setAttr ".tgi[0].ni[0].y" 140;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 65.425567626953125;
	setAttr ".tgi[0].ni[1].y" 51.960918426513672;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -454.28570556640625;
	setAttr ".tgi[0].ni[2].y" -245.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 60;
	setAttr ".tgi[0].ni[3].y" 123.99085998535156;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 68.489494323730469;
	setAttr ".tgi[0].ni[4].y" 272.53897094726563;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -197.14285278320313;
	setAttr ".tgi[0].ni[5].y" 397.14285278320313;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" -454.28570556640625;
	setAttr ".tgi[0].ni[6].y" 397.14285278320313;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 60;
	setAttr ".tgi[0].ni[7].y" 354.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 79.217063903808594;
	setAttr ".tgi[0].ni[8].y" -197.46583557128906;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 75.858642578125;
	setAttr ".tgi[0].ni[9].y" -127.10645294189453;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -454.28570556640625;
	setAttr ".tgi[0].ni[10].y" 11.428571701049805;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -454.28570556640625;
	setAttr ".tgi[0].ni[11].y" 268.57144165039063;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -454.28570556640625;
	setAttr ".tgi[0].ni[12].y" -117.14286041259766;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "lPropatagiale";
	setAttr ".tgi[1].vl" -type "double2" -319.10707707811798 -490.45528544004702 ;
	setAttr ".tgi[1].vh" -type "double2" 221.63690319559763 535.69337888054201 ;
	setAttr -s 7 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 384.3416748046875;
	setAttr ".tgi[1].ni[0].y" 117.96811676025391;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 347.52700805664063;
	setAttr ".tgi[1].ni[1].y" -166.10891723632813;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 363.38455200195313;
	setAttr ".tgi[1].ni[2].y" -69.661338806152344;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" -239.34262084960938;
	setAttr ".tgi[1].ni[3].y" 187.40371704101563;
	setAttr ".tgi[1].ni[3].nvs" 18306;
	setAttr ".tgi[1].ni[4].x" 397.05935668945313;
	setAttr ".tgi[1].ni[4].y" 216.10032653808594;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 369.13961791992188;
	setAttr ".tgi[1].ni[5].y" 22.568754196166992;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 65.60870361328125;
	setAttr ".tgi[1].ni[6].y" 255.17152404785156;
	setAttr ".tgi[1].ni[6].nvs" 18305;
	setAttr ".tgi[2].tn" -type "string" "subCtrls";
	setAttr ".tgi[2].vl" -type "double2" -226.70954439339832 -842.1021532590778 ;
	setAttr ".tgi[2].vh" -type "double2" 447.48553734579173 437.29143752669518 ;
	setAttr -s 22 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 77.142860412597656;
	setAttr ".tgi[2].ni[0].y" -587.14288330078125;
	setAttr ".tgi[2].ni[0].nvs" 18306;
	setAttr ".tgi[2].ni[1].x" -237.14285278320313;
	setAttr ".tgi[2].ni[1].y" -685.71429443359375;
	setAttr ".tgi[2].ni[1].nvs" 18305;
	setAttr ".tgi[2].ni[2].x" 420;
	setAttr ".tgi[2].ni[2].y" -758.5714111328125;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 420;
	setAttr ".tgi[2].ni[3].y" -844.28570556640625;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 428.57144165039063;
	setAttr ".tgi[2].ni[4].y" 12.857142448425293;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 420;
	setAttr ".tgi[2].ni[5].y" -672.85711669921875;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 85.714286804199219;
	setAttr ".tgi[2].ni[6].y" 184.28572082519531;
	setAttr ".tgi[2].ni[6].nvs" 18306;
	setAttr ".tgi[2].ni[7].x" 420;
	setAttr ".tgi[2].ni[7].y" -930;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 85.714286804199219;
	setAttr ".tgi[2].ni[8].y" -158.57142639160156;
	setAttr ".tgi[2].ni[8].nvs" 18306;
	setAttr ".tgi[2].ni[9].x" 420;
	setAttr ".tgi[2].ni[9].y" -244.28572082519531;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 420;
	setAttr ".tgi[2].ni[10].y" -330;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 420;
	setAttr ".tgi[2].ni[11].y" -158.57142639160156;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" -222.85714721679688;
	setAttr ".tgi[2].ni[12].y" -117.68561553955078;
	setAttr ".tgi[2].ni[12].nvs" 18305;
	setAttr ".tgi[2].ni[13].x" 428.57144165039063;
	setAttr ".tgi[2].ni[13].y" 98.571426391601563;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 420;
	setAttr ".tgi[2].ni[14].y" -501.42855834960938;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 420;
	setAttr ".tgi[2].ni[15].y" -587.14288330078125;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 428.57144165039063;
	setAttr ".tgi[2].ni[16].y" 184.28572082519531;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" -222.85714721679688;
	setAttr ".tgi[2].ni[17].y" -415.71429443359375;
	setAttr ".tgi[2].ni[17].nvs" 18305;
	setAttr ".tgi[2].ni[18].x" 428.57144165039063;
	setAttr ".tgi[2].ni[18].y" -72.857139587402344;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 420;
	setAttr ".tgi[2].ni[19].y" -415.71429443359375;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" -222.85714721679688;
	setAttr ".tgi[2].ni[20].y" 182.31439208984375;
	setAttr ".tgi[2].ni[20].nvs" 18305;
	setAttr ".tgi[2].ni[21].x" 428.57144165039063;
	setAttr ".tgi[2].ni[21].y" 270;
	setAttr ".tgi[2].ni[21].nvs" 18304;
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
	setAttr -s 2 ".dsm";
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
connectAttr "wing_L:skinCluster1GroupId.id" "wing_L:wingMeshShape.iog.og[0].gid"
		;
connectAttr "wing_L:skinCluster1Set.mwc" "wing_L:wingMeshShape.iog.og[0].gco";
connectAttr "wing_L:groupId2.id" "wing_L:wingMeshShape.iog.og[1].gid";
connectAttr "wing_L:tweakSet1.mwc" "wing_L:wingMeshShape.iog.og[1].gco";
connectAttr "wing_L:skinCluster1.og[0]" "wing_L:wingMeshShape.i";
connectAttr "wing_L:tweak1.vl[0].vt[0]" "wing_L:wingMeshShape.twl";
connectAttr "wing_L:groupId3.id" "wing_L:featherMeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "wing_L:featherMeshShape.iog.og[0].gco";
connectAttr "wing_L:skinCluster3GroupId.id" "wing_L:featherMeshShape.iog.og[1].gid"
		;
connectAttr "wing_L:skinCluster3Set.mwc" "wing_L:featherMeshShape.iog.og[1].gco"
		;
connectAttr "wing_L:groupId5.id" "wing_L:featherMeshShape.iog.og[2].gid";
connectAttr "wing_L:tweakSet2.mwc" "wing_L:featherMeshShape.iog.og[2].gco";
connectAttr "wing_L:skinCluster3.og[0]" "wing_L:featherMeshShape.i";
connectAttr "wing_L:tweak2.vl[0].vt[0]" "wing_L:featherMeshShape.twl";
connectAttr "wing_L:polyNormal1.out" "wing_L:featherMeshShapeOrig.i";
connectAttr "wing_L:wing.lv[1]" "wing_L:upVector_IK_CON.tz";
connectAttr "wing_L:wing.lv[2]" "wing_L:upVector_IK_CON.ty";
connectAttr "wing_L:wing.lv[3]" "wing_L:upVector_IK_CON.tx";
connectAttr "ldRigComparaisonNode1.outValue" "wing_L:upVector_IK_CONShape.v";
connectAttr "wing_L:wing.av[1]" "wing_L:hand_IK_CON.rz";
connectAttr "wing_L:wing.av[2]" "wing_L:hand_IK_CON.ry";
connectAttr "wing_L:wing.av[3]" "wing_L:hand_IK_CON.rx";
connectAttr "wing_L:wing.lv[4]" "wing_L:hand_IK_CON.tz";
connectAttr "wing_L:wing.lv[5]" "wing_L:hand_IK_CON.ty";
connectAttr "wing_L:wing.lv[6]" "wing_L:hand_IK_CON.tx";
connectAttr "ldRigComparaisonNode1.outValue" "wing_L:hand_IK_CONShape.v";
connectAttr "wing_L:wing.av[4]" "wing_L:humerus_FK_CON.rz";
connectAttr "wing_L:wing.av[5]" "wing_L:humerus_FK_CON.ry";
connectAttr "wing_L:wing.av[6]" "wing_L:humerus_FK_CON.rx";
connectAttr "ldRigComparaisonNode2.outValue" "wing_L:humerus_FK_CONShape.v";
connectAttr "wing_L:wing.av[10]" "wing_L:radius_FK_CON.rz";
connectAttr "wing_L:wing.av[11]" "wing_L:radius_FK_CON.ry";
connectAttr "wing_L:wing.av[12]" "wing_L:radius_FK_CON.rx";
connectAttr "ldRigComparaisonNode2.outValue" "wing_L:radius_FK_CONShape.v";
connectAttr "wing_L:wing.av[7]" "wing_L:hand_FK_CON.rz";
connectAttr "wing_L:wing.av[8]" "wing_L:hand_FK_CON.ry";
connectAttr "wing_L:wing.av[9]" "wing_L:hand_FK_CON.rx";
connectAttr "ldRigComparaisonNode2.outValue" "wing_L:hand_FK_CONShape.v";
connectAttr "wing_L:ldRigFkIk2Bones1.b1Trans" "wing_L:humerusSubCtrl_FK_BUF.opm"
		;
connectAttr "wing_L:wing.av[13]" "wing_L:humerusSubCtrl_FK_CON.rz";
connectAttr "wing_L:wing.av[14]" "wing_L:humerusSubCtrl_FK_CON.ry";
connectAttr "wing_L:wing.av[15]" "wing_L:humerusSubCtrl_FK_CON.rx";
connectAttr "wing_L:setup.showSecondaryCtrls" "wing_L:humerusSubCtrl_FK_CONShape.v"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.b2Trans" "wing_L:radiusSubCtrl_FK_BUF.opm";
connectAttr "wing_L:wing.av[18]" "wing_L:radiusSubCtrl_FK_CON.rx";
connectAttr "wing_L:wing.av[17]" "wing_L:radiusSubCtrl_FK_CON.ry";
connectAttr "wing_L:wing.av[16]" "wing_L:radiusSubCtrl_FK_CON.rz";
connectAttr "wing_L:setup.showSecondaryCtrls" "wing_L:radiusSubCtrl_FK_CONShape.v"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:handSubCtrl_FK_BUF.opm";
connectAttr "wing_L:wing.av[19]" "wing_L:handSubCtrl_FK_CON.rz";
connectAttr "wing_L:wing.av[20]" "wing_L:handSubCtrl_FK_CON.ry";
connectAttr "wing_L:wing.av[21]" "wing_L:handSubCtrl_FK_CON.rx";
connectAttr "wing_L:setup.showSecondaryCtrls" "wing_L:handSubCtrl_FK_CONShape.v"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.b1Trans" "wing_L:humerus__JNT.opm";
connectAttr "wing_L:ldRigFkIk2Bones1.b2Trans" "wing_L:radius__JNT.opm";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:hand__JNT.opm";
connectAttr "wing_L:ldRigTwistNode1.ts[0]" "wing_L:lPropatagiale01_JNT.opm";
connectAttr "wing_L:ldRigTwistNode1.ts[1]" "wing_L:lPropatagiale02_JNT.opm";
connectAttr "wing_L:ldRigTwistNode1.ts[2]" "wing_L:lPropatagiale03_JNT.opm";
connectAttr "wing_L:ldRigTwistNode1.ts[3]" "wing_L:lPropatagiale04_JNT.opm";
connectAttr "wing_L:ldRigTwistNode1.ts[4]" "wing_L:lPropatagiale05_JNT.opm";
connectAttr "wing_L:ldRigTwistNode2.ts[4]" "wing_L:humerus_05__JNT.opm";
connectAttr "wing_L:ldRigTwistNode2.ts[3]" "wing_L:humerus_04__JNT.opm";
connectAttr "wing_L:ldRigTwistNode2.ts[2]" "wing_L:humerus_03__JNT.opm";
connectAttr "wing_L:ldRigTwistNode2.ts[1]" "wing_L:humerus_02__JNT.opm";
connectAttr "wing_L:ldRigTwistNode2.ts[0]" "wing_L:humerus_01__JNT.opm";
connectAttr "wing_L:ldRigTwistNode3.ts[0]" "wing_L:radius_01__JNT.opm";
connectAttr "wing_L:ldRigTwistNode3.ts[1]" "wing_L:radius_02__JNT.opm";
connectAttr "wing_L:ldRigTwistNode3.ts[2]" "wing_L:radius_03__JNT.opm";
connectAttr "wing_L:ldRigTwistNode3.ts[3]" "wing_L:radius_04__JNT.opm";
connectAttr "wing_L:ldRigTwistNode3.ts[4]" "wing_L:radius_05__JNT.opm";
connectAttr "wing_L:ldRigTwistNode4.ts[0]" "wing_L:hand_01__JNT.opm";
connectAttr "wing_L:ldRigTwistNode4.ts[1]" "wing_L:hand_02__JNT.opm";
connectAttr "wing_L:ldRigTwistNode4.ts[2]" "wing_L:hand_03__JNT.opm";
connectAttr "wing_L:ldRigTwistNode4.ts[3]" "wing_L:hand_04__JNT.opm";
connectAttr "wing_L:ldRigTwistNode4.ts[4]" "wing_L:hand_05__JNT.opm";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "aTools_StoreNode.o" "scene.m";
connectAttr "wing_L:humerusPivot_IK_GRP.wm" "wing_L:ldRigFkIk2Bones1.ikR";
connectAttr "wing_L:upVector_IK_CON.wm" "wing_L:ldRigFkIk2Bones1.ikUpV";
connectAttr "wing_L:hand_IK_CON.wm" "wing_L:ldRigFkIk2Bones1.ikEff";
connectAttr "wing_L:humerus_FK_CON.wm" "wing_L:ldRigFkIk2Bones1.fkB1";
connectAttr "wing_L:radius_FK_CON.wm" "wing_L:ldRigFkIk2Bones1.fkB2";
connectAttr "wing_L:hand_FK_CON.wm" "wing_L:ldRigFkIk2Bones1.fkB3";
connectAttr "wing_L:setup.switchFKIK" "wing_L:ldRigFkIk2Bones1.blend";
connectAttr "wing_L:ldRigFkIk2Bones1.b1Trans" "wing_L:ldRigTwistNode1.matAP";
connectAttr "wing_L:ldRigFkIk2Bones1.b1Trans" "wing_L:ldRigTwistNode1.matAR";
connectAttr "wing_L:ldRigFkIk2Bones1.b1Trans" "wing_L:ldRigTwistNode1.matAS";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode1.matBP";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode1.matBR";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode1.matBS";
connectAttr "wing_L:humerusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matAP";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matBP";
connectAttr "wing_L:humerusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matAR";
connectAttr "wing_L:humerusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matAS";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matBR";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode2.matBS";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matAP";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matBP";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matAR";
connectAttr "wing_L:radiusSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matAS";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matBR";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode3.matBS";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode4.matAP";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode4.matBP";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode4.matAR";
connectAttr "wing_L:handSubCtrl_FK_CON.wm" "wing_L:ldRigTwistNode4.matAS";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode4.matBR";
connectAttr "wing_L:ldRigFkIk2Bones1.b3Trans" "wing_L:ldRigTwistNode4.matBS";
connectAttr "wing_L:ldRigFkIk2Bones1.blend" "ldRigComparaisonNode1.firstTerm";
connectAttr "wing_L:ldRigFkIk2Bones1.blend" "ldRigComparaisonNode2.firstTerm";
connectAttr "wing_L:upVector_IK_CON_translateZ.o" "wing_L:wing.lv[1]";
connectAttr "wing_L:upVector_IK_CON_translateY.o" "wing_L:wing.lv[2]";
connectAttr "wing_L:upVector_IK_CON_translateX.o" "wing_L:wing.lv[3]";
connectAttr "wing_L:hand_IK_CON_translateZ.o" "wing_L:wing.lv[4]";
connectAttr "wing_L:hand_IK_CON_translateY.o" "wing_L:wing.lv[5]";
connectAttr "wing_L:hand_IK_CON_translateX.o" "wing_L:wing.lv[6]";
connectAttr "wing_L:hand_IK_CON_rotateZ.o" "wing_L:wing.av[1]";
connectAttr "wing_L:hand_IK_CON_rotateY.o" "wing_L:wing.av[2]";
connectAttr "wing_L:hand_IK_CON_rotateX.o" "wing_L:wing.av[3]";
connectAttr "wing_L:humerus_FK_CON_rotateZ.o" "wing_L:wing.av[4]";
connectAttr "wing_L:humerus_FK_CON_rotateY.o" "wing_L:wing.av[5]";
connectAttr "wing_L:humerus_FK_CON_rotateX.o" "wing_L:wing.av[6]";
connectAttr "wing_L:hand_FK_CON_rotateZ.o" "wing_L:wing.av[7]";
connectAttr "wing_L:hand_FK_CON_rotateY.o" "wing_L:wing.av[8]";
connectAttr "wing_L:hand_FK_CON_rotateX.o" "wing_L:wing.av[9]";
connectAttr "wing_L:radius_FK_CON_rotateZ.o" "wing_L:wing.av[10]";
connectAttr "wing_L:radius_FK_CON_rotateY.o" "wing_L:wing.av[11]";
connectAttr "wing_L:radius_FK_CON_rotateX.o" "wing_L:wing.av[12]";
connectAttr "wing_L:humerusSubCtrl_FK_CON_rotateZ.o" "wing_L:wing.av[13]";
connectAttr "wing_L:humerusSubCtrl_FK_CON_rotateY.o" "wing_L:wing.av[14]";
connectAttr "wing_L:humerusSubCtrl_FK_CON_rotateX.o" "wing_L:wing.av[15]";
connectAttr "wing_L:radiusSubCtrl_FK_CON_rotateZ.o" "wing_L:wing.av[16]";
connectAttr "wing_L:radiusSubCtrl_FK_CON_rotateY.o" "wing_L:wing.av[17]";
connectAttr "wing_L:radiusSubCtrl_FK_CON_rotateX.o" "wing_L:wing.av[18]";
connectAttr "wing_L:handSubCtrl_FK_CON_rotateZ.o" "wing_L:wing.av[19]";
connectAttr "wing_L:handSubCtrl_FK_CON_rotateY.o" "wing_L:wing.av[20]";
connectAttr "wing_L:handSubCtrl_FK_CON_rotateX.o" "wing_L:wing.av[21]";
connectAttr "wing_L:upVector_IK_CON.tz" "wing_L:wing.dnsm[0]";
connectAttr "wing_L:upVector_IK_CON.ty" "wing_L:wing.dnsm[1]";
connectAttr "wing_L:upVector_IK_CON.tx" "wing_L:wing.dnsm[2]";
connectAttr "wing_L:hand_IK_CON.rz" "wing_L:wing.dnsm[3]";
connectAttr "wing_L:hand_IK_CON.ry" "wing_L:wing.dnsm[4]";
connectAttr "wing_L:hand_IK_CON.rx" "wing_L:wing.dnsm[5]";
connectAttr "wing_L:hand_IK_CON.tz" "wing_L:wing.dnsm[6]";
connectAttr "wing_L:hand_IK_CON.ty" "wing_L:wing.dnsm[7]";
connectAttr "wing_L:hand_IK_CON.tx" "wing_L:wing.dnsm[8]";
connectAttr "wing_L:humerus_FK_CON.rz" "wing_L:wing.dnsm[9]";
connectAttr "wing_L:humerus_FK_CON.ry" "wing_L:wing.dnsm[10]";
connectAttr "wing_L:humerus_FK_CON.rx" "wing_L:wing.dnsm[11]";
connectAttr "wing_L:hand_FK_CON.rz" "wing_L:wing.dnsm[12]";
connectAttr "wing_L:hand_FK_CON.ry" "wing_L:wing.dnsm[13]";
connectAttr "wing_L:hand_FK_CON.rx" "wing_L:wing.dnsm[14]";
connectAttr "wing_L:radius_FK_CON.rz" "wing_L:wing.dnsm[15]";
connectAttr "wing_L:radius_FK_CON.ry" "wing_L:wing.dnsm[16]";
connectAttr "wing_L:radius_FK_CON.rx" "wing_L:wing.dnsm[17]";
connectAttr "wing_L:humerusSubCtrl_FK_CON.rz" "wing_L:wing.dnsm[18]";
connectAttr "wing_L:humerusSubCtrl_FK_CON.ry" "wing_L:wing.dnsm[19]";
connectAttr "wing_L:humerusSubCtrl_FK_CON.rx" "wing_L:wing.dnsm[20]";
connectAttr "wing_L:radiusSubCtrl_FK_CON.rz" "wing_L:wing.dnsm[21]";
connectAttr "wing_L:radiusSubCtrl_FK_CON.ry" "wing_L:wing.dnsm[22]";
connectAttr "wing_L:radiusSubCtrl_FK_CON.rx" "wing_L:wing.dnsm[23]";
connectAttr "wing_L:handSubCtrl_FK_CON.rz" "wing_L:wing.dnsm[24]";
connectAttr "wing_L:handSubCtrl_FK_CON.ry" "wing_L:wing.dnsm[25]";
connectAttr "wing_L:handSubCtrl_FK_CON.rx" "wing_L:wing.dnsm[26]";
connectAttr "wing_L:skinCluster1GroupParts.og" "wing_L:skinCluster1.ip[0].ig";
connectAttr "wing_L:skinCluster1GroupId.id" "wing_L:skinCluster1.ip[0].gi";
connectAttr "wing_L:bindPose1.msg" "wing_L:skinCluster1.bp";
connectAttr "wing_L:lPropatagiale01_JNT.wm" "wing_L:skinCluster1.ma[0]";
connectAttr "wing_L:lPropatagiale02_JNT.wm" "wing_L:skinCluster1.ma[1]";
connectAttr "wing_L:lPropatagiale03_JNT.wm" "wing_L:skinCluster1.ma[2]";
connectAttr "wing_L:lPropatagiale04_JNT.wm" "wing_L:skinCluster1.ma[3]";
connectAttr "wing_L:lPropatagiale05_JNT.wm" "wing_L:skinCluster1.ma[4]";
connectAttr "wing_L:humerus_05__JNT.wm" "wing_L:skinCluster1.ma[5]";
connectAttr "wing_L:humerus_04__JNT.wm" "wing_L:skinCluster1.ma[6]";
connectAttr "wing_L:humerus_03__JNT.wm" "wing_L:skinCluster1.ma[7]";
connectAttr "wing_L:humerus_02__JNT.wm" "wing_L:skinCluster1.ma[8]";
connectAttr "wing_L:humerus_01__JNT.wm" "wing_L:skinCluster1.ma[9]";
connectAttr "wing_L:radius_01__JNT.wm" "wing_L:skinCluster1.ma[10]";
connectAttr "wing_L:radius_02__JNT.wm" "wing_L:skinCluster1.ma[11]";
connectAttr "wing_L:radius_03__JNT.wm" "wing_L:skinCluster1.ma[12]";
connectAttr "wing_L:radius_04__JNT.wm" "wing_L:skinCluster1.ma[13]";
connectAttr "wing_L:radius_05__JNT.wm" "wing_L:skinCluster1.ma[14]";
connectAttr "wing_L:hand_01__JNT.wm" "wing_L:skinCluster1.ma[15]";
connectAttr "wing_L:hand_02__JNT.wm" "wing_L:skinCluster1.ma[16]";
connectAttr "wing_L:hand_03__JNT.wm" "wing_L:skinCluster1.ma[17]";
connectAttr "wing_L:hand_04__JNT.wm" "wing_L:skinCluster1.ma[18]";
connectAttr "wing_L:hand_05__JNT.wm" "wing_L:skinCluster1.ma[19]";
connectAttr "wing_L:lPropatagiale01_JNT.liw" "wing_L:skinCluster1.lw[0]";
connectAttr "wing_L:lPropatagiale02_JNT.liw" "wing_L:skinCluster1.lw[1]";
connectAttr "wing_L:lPropatagiale03_JNT.liw" "wing_L:skinCluster1.lw[2]";
connectAttr "wing_L:lPropatagiale04_JNT.liw" "wing_L:skinCluster1.lw[3]";
connectAttr "wing_L:lPropatagiale05_JNT.liw" "wing_L:skinCluster1.lw[4]";
connectAttr "wing_L:humerus_05__JNT.liw" "wing_L:skinCluster1.lw[5]";
connectAttr "wing_L:humerus_04__JNT.liw" "wing_L:skinCluster1.lw[6]";
connectAttr "wing_L:humerus_03__JNT.liw" "wing_L:skinCluster1.lw[7]";
connectAttr "wing_L:humerus_02__JNT.liw" "wing_L:skinCluster1.lw[8]";
connectAttr "wing_L:humerus_01__JNT.liw" "wing_L:skinCluster1.lw[9]";
connectAttr "wing_L:radius_01__JNT.liw" "wing_L:skinCluster1.lw[10]";
connectAttr "wing_L:radius_02__JNT.liw" "wing_L:skinCluster1.lw[11]";
connectAttr "wing_L:radius_03__JNT.liw" "wing_L:skinCluster1.lw[12]";
connectAttr "wing_L:radius_04__JNT.liw" "wing_L:skinCluster1.lw[13]";
connectAttr "wing_L:radius_05__JNT.liw" "wing_L:skinCluster1.lw[14]";
connectAttr "wing_L:hand_01__JNT.liw" "wing_L:skinCluster1.lw[15]";
connectAttr "wing_L:hand_02__JNT.liw" "wing_L:skinCluster1.lw[16]";
connectAttr "wing_L:hand_03__JNT.liw" "wing_L:skinCluster1.lw[17]";
connectAttr "wing_L:hand_04__JNT.liw" "wing_L:skinCluster1.lw[18]";
connectAttr "wing_L:hand_05__JNT.liw" "wing_L:skinCluster1.lw[19]";
connectAttr "wing_L:lPropatagiale01_JNT.obcc" "wing_L:skinCluster1.ifcl[0]";
connectAttr "wing_L:lPropatagiale02_JNT.obcc" "wing_L:skinCluster1.ifcl[1]";
connectAttr "wing_L:lPropatagiale03_JNT.obcc" "wing_L:skinCluster1.ifcl[2]";
connectAttr "wing_L:lPropatagiale04_JNT.obcc" "wing_L:skinCluster1.ifcl[3]";
connectAttr "wing_L:lPropatagiale05_JNT.obcc" "wing_L:skinCluster1.ifcl[4]";
connectAttr "wing_L:humerus_05__JNT.obcc" "wing_L:skinCluster1.ifcl[5]";
connectAttr "wing_L:humerus_04__JNT.obcc" "wing_L:skinCluster1.ifcl[6]";
connectAttr "wing_L:humerus_03__JNT.obcc" "wing_L:skinCluster1.ifcl[7]";
connectAttr "wing_L:humerus_02__JNT.obcc" "wing_L:skinCluster1.ifcl[8]";
connectAttr "wing_L:humerus_01__JNT.obcc" "wing_L:skinCluster1.ifcl[9]";
connectAttr "wing_L:radius_01__JNT.obcc" "wing_L:skinCluster1.ifcl[10]";
connectAttr "wing_L:radius_02__JNT.obcc" "wing_L:skinCluster1.ifcl[11]";
connectAttr "wing_L:radius_03__JNT.obcc" "wing_L:skinCluster1.ifcl[12]";
connectAttr "wing_L:radius_04__JNT.obcc" "wing_L:skinCluster1.ifcl[13]";
connectAttr "wing_L:radius_05__JNT.obcc" "wing_L:skinCluster1.ifcl[14]";
connectAttr "wing_L:hand_01__JNT.obcc" "wing_L:skinCluster1.ifcl[15]";
connectAttr "wing_L:hand_02__JNT.obcc" "wing_L:skinCluster1.ifcl[16]";
connectAttr "wing_L:hand_03__JNT.obcc" "wing_L:skinCluster1.ifcl[17]";
connectAttr "wing_L:hand_04__JNT.obcc" "wing_L:skinCluster1.ifcl[18]";
connectAttr "wing_L:hand_05__JNT.obcc" "wing_L:skinCluster1.ifcl[19]";
connectAttr "wing_L:groupParts2.og" "wing_L:tweak1.ip[0].ig";
connectAttr "wing_L:groupId2.id" "wing_L:tweak1.ip[0].gi";
connectAttr "wing_L:skinCluster1GroupId.msg" "wing_L:skinCluster1Set.gn" -na;
connectAttr "wing_L:wingMeshShape.iog.og[0]" "wing_L:skinCluster1Set.dsm" -na;
connectAttr "wing_L:skinCluster1.msg" "wing_L:skinCluster1Set.ub[0]";
connectAttr "wing_L:tweak1.og[0]" "wing_L:skinCluster1GroupParts.ig";
connectAttr "wing_L:skinCluster1GroupId.id" "wing_L:skinCluster1GroupParts.gi";
connectAttr "wing_L:groupId2.msg" "wing_L:tweakSet1.gn" -na;
connectAttr "wing_L:wingMeshShape.iog.og[1]" "wing_L:tweakSet1.dsm" -na;
connectAttr "wing_L:tweak1.msg" "wing_L:tweakSet1.ub[0]";
connectAttr "wing_L:wingMeshShapeOrig.w" "wing_L:groupParts2.ig";
connectAttr "wing_L:groupId2.id" "wing_L:groupParts2.gi";
connectAttr "wing_L:module.msg" "wing_L:bindPose1.m[0]";
connectAttr "wing_L:bones_GRP.msg" "wing_L:bindPose1.m[1]";
connectAttr "wing_L:lPropatagiale01_JNT.msg" "wing_L:bindPose1.m[2]";
connectAttr "wing_L:lPropatagiale02_JNT.msg" "wing_L:bindPose1.m[3]";
connectAttr "wing_L:lPropatagiale03_JNT.msg" "wing_L:bindPose1.m[4]";
connectAttr "wing_L:lPropatagiale04_JNT.msg" "wing_L:bindPose1.m[5]";
connectAttr "wing_L:lPropatagiale05_JNT.msg" "wing_L:bindPose1.m[6]";
connectAttr "wing_L:humerus_05__JNT.msg" "wing_L:bindPose1.m[7]";
connectAttr "wing_L:humerus_04__JNT.msg" "wing_L:bindPose1.m[8]";
connectAttr "wing_L:humerus_03__JNT.msg" "wing_L:bindPose1.m[9]";
connectAttr "wing_L:humerus_02__JNT.msg" "wing_L:bindPose1.m[10]";
connectAttr "wing_L:humerus_01__JNT.msg" "wing_L:bindPose1.m[11]";
connectAttr "wing_L:radius_01__JNT.msg" "wing_L:bindPose1.m[12]";
connectAttr "wing_L:radius_02__JNT.msg" "wing_L:bindPose1.m[13]";
connectAttr "wing_L:radius_03__JNT.msg" "wing_L:bindPose1.m[14]";
connectAttr "wing_L:radius_04__JNT.msg" "wing_L:bindPose1.m[15]";
connectAttr "wing_L:radius_05__JNT.msg" "wing_L:bindPose1.m[16]";
connectAttr "wing_L:hand_01__JNT.msg" "wing_L:bindPose1.m[17]";
connectAttr "wing_L:hand_02__JNT.msg" "wing_L:bindPose1.m[18]";
connectAttr "wing_L:hand_03__JNT.msg" "wing_L:bindPose1.m[19]";
connectAttr "wing_L:hand_04__JNT.msg" "wing_L:bindPose1.m[20]";
connectAttr "wing_L:hand_05__JNT.msg" "wing_L:bindPose1.m[21]";
connectAttr "wing_L:bindPose1.w" "wing_L:bindPose1.p[0]";
connectAttr "wing_L:bindPose1.m[0]" "wing_L:bindPose1.p[1]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[2]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[3]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[4]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[5]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[6]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[7]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[8]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[9]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[10]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[11]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[12]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[13]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[14]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[15]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[16]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[17]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[18]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[19]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[20]";
connectAttr "wing_L:bindPose1.m[1]" "wing_L:bindPose1.p[21]";
connectAttr "wing_L:lPropatagiale01_JNT.bps" "wing_L:bindPose1.wm[2]";
connectAttr "wing_L:lPropatagiale02_JNT.bps" "wing_L:bindPose1.wm[3]";
connectAttr "wing_L:lPropatagiale03_JNT.bps" "wing_L:bindPose1.wm[4]";
connectAttr "wing_L:lPropatagiale04_JNT.bps" "wing_L:bindPose1.wm[5]";
connectAttr "wing_L:lPropatagiale05_JNT.bps" "wing_L:bindPose1.wm[6]";
connectAttr "wing_L:humerus_05__JNT.bps" "wing_L:bindPose1.wm[7]";
connectAttr "wing_L:humerus_04__JNT.bps" "wing_L:bindPose1.wm[8]";
connectAttr "wing_L:humerus_03__JNT.bps" "wing_L:bindPose1.wm[9]";
connectAttr "wing_L:humerus_02__JNT.bps" "wing_L:bindPose1.wm[10]";
connectAttr "wing_L:humerus_01__JNT.bps" "wing_L:bindPose1.wm[11]";
connectAttr "wing_L:radius_01__JNT.bps" "wing_L:bindPose1.wm[12]";
connectAttr "wing_L:radius_02__JNT.bps" "wing_L:bindPose1.wm[13]";
connectAttr "wing_L:radius_03__JNT.bps" "wing_L:bindPose1.wm[14]";
connectAttr "wing_L:radius_04__JNT.bps" "wing_L:bindPose1.wm[15]";
connectAttr "wing_L:radius_05__JNT.bps" "wing_L:bindPose1.wm[16]";
connectAttr "wing_L:hand_01__JNT.bps" "wing_L:bindPose1.wm[17]";
connectAttr "wing_L:hand_02__JNT.bps" "wing_L:bindPose1.wm[18]";
connectAttr "wing_L:hand_03__JNT.bps" "wing_L:bindPose1.wm[19]";
connectAttr "wing_L:hand_04__JNT.bps" "wing_L:bindPose1.wm[20]";
connectAttr "wing_L:hand_05__JNT.bps" "wing_L:bindPose1.wm[21]";
connectAttr "wing_L:skinCluster1.msg" "wing_L:skinCluster2.sc";
connectAttr "wing_L:groupParts3.og" "wing_L:polyNormal1.ip";
connectAttr "wing_L:polySurfaceShape1.o" "wing_L:groupParts3.ig";
connectAttr "wing_L:groupId3.id" "wing_L:groupParts3.gi";
connectAttr "wing_L:skinCluster3GroupParts.og" "wing_L:skinCluster3.ip[0].ig";
connectAttr "wing_L:skinCluster3GroupId.id" "wing_L:skinCluster3.ip[0].gi";
connectAttr "wing_L:humerus_05__JNT.wm" "wing_L:skinCluster3.ma[0]";
connectAttr "wing_L:humerus_04__JNT.wm" "wing_L:skinCluster3.ma[1]";
connectAttr "wing_L:humerus_03__JNT.wm" "wing_L:skinCluster3.ma[2]";
connectAttr "wing_L:humerus_02__JNT.wm" "wing_L:skinCluster3.ma[3]";
connectAttr "wing_L:humerus_01__JNT.wm" "wing_L:skinCluster3.ma[4]";
connectAttr "wing_L:radius_01__JNT.wm" "wing_L:skinCluster3.ma[5]";
connectAttr "wing_L:radius_02__JNT.wm" "wing_L:skinCluster3.ma[6]";
connectAttr "wing_L:radius_03__JNT.wm" "wing_L:skinCluster3.ma[7]";
connectAttr "wing_L:radius_04__JNT.wm" "wing_L:skinCluster3.ma[8]";
connectAttr "wing_L:radius_05__JNT.wm" "wing_L:skinCluster3.ma[9]";
connectAttr "wing_L:hand_01__JNT.wm" "wing_L:skinCluster3.ma[10]";
connectAttr "wing_L:hand_02__JNT.wm" "wing_L:skinCluster3.ma[11]";
connectAttr "wing_L:hand_03__JNT.wm" "wing_L:skinCluster3.ma[12]";
connectAttr "wing_L:hand_04__JNT.wm" "wing_L:skinCluster3.ma[13]";
connectAttr "wing_L:hand_05__JNT.wm" "wing_L:skinCluster3.ma[14]";
connectAttr "wing_L:humerus_05__JNT.liw" "wing_L:skinCluster3.lw[0]";
connectAttr "wing_L:humerus_04__JNT.liw" "wing_L:skinCluster3.lw[1]";
connectAttr "wing_L:humerus_03__JNT.liw" "wing_L:skinCluster3.lw[2]";
connectAttr "wing_L:humerus_02__JNT.liw" "wing_L:skinCluster3.lw[3]";
connectAttr "wing_L:humerus_01__JNT.liw" "wing_L:skinCluster3.lw[4]";
connectAttr "wing_L:radius_01__JNT.liw" "wing_L:skinCluster3.lw[5]";
connectAttr "wing_L:radius_02__JNT.liw" "wing_L:skinCluster3.lw[6]";
connectAttr "wing_L:radius_03__JNT.liw" "wing_L:skinCluster3.lw[7]";
connectAttr "wing_L:radius_04__JNT.liw" "wing_L:skinCluster3.lw[8]";
connectAttr "wing_L:radius_05__JNT.liw" "wing_L:skinCluster3.lw[9]";
connectAttr "wing_L:hand_01__JNT.liw" "wing_L:skinCluster3.lw[10]";
connectAttr "wing_L:hand_02__JNT.liw" "wing_L:skinCluster3.lw[11]";
connectAttr "wing_L:hand_03__JNT.liw" "wing_L:skinCluster3.lw[12]";
connectAttr "wing_L:hand_04__JNT.liw" "wing_L:skinCluster3.lw[13]";
connectAttr "wing_L:hand_05__JNT.liw" "wing_L:skinCluster3.lw[14]";
connectAttr "wing_L:humerus_05__JNT.obcc" "wing_L:skinCluster3.ifcl[0]";
connectAttr "wing_L:humerus_04__JNT.obcc" "wing_L:skinCluster3.ifcl[1]";
connectAttr "wing_L:humerus_03__JNT.obcc" "wing_L:skinCluster3.ifcl[2]";
connectAttr "wing_L:humerus_02__JNT.obcc" "wing_L:skinCluster3.ifcl[3]";
connectAttr "wing_L:humerus_01__JNT.obcc" "wing_L:skinCluster3.ifcl[4]";
connectAttr "wing_L:radius_01__JNT.obcc" "wing_L:skinCluster3.ifcl[5]";
connectAttr "wing_L:radius_02__JNT.obcc" "wing_L:skinCluster3.ifcl[6]";
connectAttr "wing_L:radius_03__JNT.obcc" "wing_L:skinCluster3.ifcl[7]";
connectAttr "wing_L:radius_04__JNT.obcc" "wing_L:skinCluster3.ifcl[8]";
connectAttr "wing_L:radius_05__JNT.obcc" "wing_L:skinCluster3.ifcl[9]";
connectAttr "wing_L:hand_01__JNT.obcc" "wing_L:skinCluster3.ifcl[10]";
connectAttr "wing_L:hand_02__JNT.obcc" "wing_L:skinCluster3.ifcl[11]";
connectAttr "wing_L:hand_03__JNT.obcc" "wing_L:skinCluster3.ifcl[12]";
connectAttr "wing_L:hand_04__JNT.obcc" "wing_L:skinCluster3.ifcl[13]";
connectAttr "wing_L:hand_05__JNT.obcc" "wing_L:skinCluster3.ifcl[14]";
connectAttr "wing_L:bindPose1.msg" "wing_L:skinCluster3.bp";
connectAttr "wing_L:groupParts5.og" "wing_L:tweak2.ip[0].ig";
connectAttr "wing_L:groupId5.id" "wing_L:tweak2.ip[0].gi";
connectAttr "wing_L:skinCluster3GroupId.msg" "wing_L:skinCluster3Set.gn" -na;
connectAttr "wing_L:featherMeshShape.iog.og[1]" "wing_L:skinCluster3Set.dsm" -na
		;
connectAttr "wing_L:skinCluster3.msg" "wing_L:skinCluster3Set.ub[0]";
connectAttr "wing_L:tweak2.og[0]" "wing_L:skinCluster3GroupParts.ig";
connectAttr "wing_L:skinCluster3GroupId.id" "wing_L:skinCluster3GroupParts.gi";
connectAttr "wing_L:groupId5.msg" "wing_L:tweakSet2.gn" -na;
connectAttr "wing_L:featherMeshShape.iog.og[2]" "wing_L:tweakSet2.dsm" -na;
connectAttr "wing_L:tweak2.msg" "wing_L:tweakSet2.ub[0]";
connectAttr "wing_L:featherMeshShapeOrig.w" "wing_L:groupParts5.ig";
connectAttr "wing_L:groupId5.id" "wing_L:groupParts5.gi";
connectAttr "wing_L:skinCluster3.msg" "wing_L:skinCluster4.sc";
connectAttr "wing_L:hand_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "wing_L:radiusSubCtrl_FK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "wing_L:hand_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "wing_L:radius__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "wing_L:humerusSubCtrl_FK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "wing_L:humerusPivot_IK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "wing_L:humerus__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "wing_L:handSubCtrl_FK_BUF.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "wing_L:hand__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "wing_L:humerus_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "wing_L:upVector_IK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "wing_L:radius_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "wing_L:lPropatagiale02_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "wing_L:lPropatagiale05_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "wing_L:lPropatagiale04_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "wing_L:lPropatagiale01_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "wing_L:lPropatagiale03_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "wing_L:ldRigTwistNode1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "wing_L:ldRigTwistNode4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "wing_L:ldRigFkIk2Bones1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "wing_L:hand_03__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "wing_L:hand_04__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "wing_L:humerus_04__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "wing_L:hand_02__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "wing_L:ldRigTwistNode2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "wing_L:hand_05__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "wing_L:ldRigTwistNode3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "wing_L:radius_02__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "wing_L:radius_03__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "wing_L:radius_01__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "wing_L:radiusSubCtrl_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "wing_L:humerus_03__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "wing_L:radius_05__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "wing_L:hand_01__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "wing_L:humerus_02__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "wing_L:handSubCtrl_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "wing_L:humerus_05__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "wing_L:radius_04__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "wing_L:humerusSubCtrl_FK_CON.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "wing_L:humerus_01__JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "wing_L:wingMeshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wing_L:featherMeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wing_L:groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "wing_L:wing.pa" ":characterPartition.st" -na;
// End of wingModule_V01.ma

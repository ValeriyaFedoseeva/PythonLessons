//Maya ASCII 2019 scene
//Name: RIG.ma
//Last modified: Thu, Aug 24, 2023 10:01:54 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" "mtoa" "3.1.2";
requires "Mayatomr" "2012.0m - 3.9.1.36 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19045)\n";
createNode transform -s -n "persp";
	rename -uid "90F30306-B54D-DBEA-19BF-B4B2380B1E1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.7654382951174921 1.4651984913237703 3.3544332047504604 ;
	setAttr ".r" -type "double3" -6.9383527416953505 -2850.5999999995056 -4.5633956912791133e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "737233B9-CC4E-9BFE-E3FD-B0976D680E20";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 3.6635166526851077;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.034309910037693001 1.6892121736548129 0.092732321841000956 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "14883065-3E40-F6CC-0E83-4D9A1C6AE30E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CF48331A-7641-A647-39E9-E2BD3DA644D6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "27D75181-1D40-A587-67B4-D280A3D6338C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BC7FCD59-5446-85CD-BAFA-E493FF518369";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "588DB063-6142-FA18-4CDF-25A68CBAF827";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.72041638674655983 0.18032792594443373 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7AFC3CD0-664B-FFE3-8DB1-B399D169C30C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.5102295192266759;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Group";
	rename -uid "CDE56FD7-314E-6273-67AF-F18BC1E67BF0";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "Main" -p "Group";
	rename -uid "AE98F115-A046-89E4-92EA-E2927C5D7B68";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkIkVis" -ln "fkIkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimVis" -ln "aimVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimFKVis" -ln "aimFKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimLRVis" -ln "aimLRVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fingerVis" -ln "fingerVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendVis" -ln "bendVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "arrowVis" -ln "arrowVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "drvSysVis" -ln "drvSysVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "height" -ln "height" -at "double";
	addAttr -ci true -sn "version" -ln "version" -at "double";
	setAttr ".sech" no;
	setAttr -cb on ".fkVis";
	setAttr -cb on ".ikVis";
	setAttr -cb on ".fkIkVis";
	setAttr -cb on ".aimVis";
	setAttr -cb on ".aimFKVis";
	setAttr -cb on ".aimLRVis";
	setAttr -cb on ".fingerVis";
	setAttr -cb on ".bendVis";
	setAttr -cb on ".arrowVis";
	setAttr -cb on ".drvSysVis";
	setAttr -l on ".height" 1.8193203555875237;
	setAttr -l on ".version" 5.64;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "095051D2-FE4B-3DAB-FE08-0EA09D503851";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.51358489474327262 3.1448004871888915e-17 -0.51358489474327196
		-8.2864281738349986e-17 4.4474194999400485e-17 -0.72631872357589444
		-0.51358489474327229 3.144800487188894e-17 -0.51358489474327229
		-0.72631872357589444 1.2887509054317988e-32 -2.1046899503253951e-16
		-0.5135848947432724 -3.1448004871888927e-17 0.51358489474327218
		-2.1885400633558339e-16 -4.4474194999400498e-17 0.72631872357589455
		0.51358489474327196 -3.144800487188894e-17 0.51358489474327229
		0.72631872357589444 -2.388717689152306e-32 3.9010720328758054e-16
		0.51358489474327262 3.1448004871888915e-17 -0.51358489474327196
		-8.2864281738349986e-17 4.4474194999400485e-17 -0.72631872357589444
		-0.51358489474327229 3.144800487188894e-17 -0.51358489474327229
		;
createNode transform -n "FitSkeleton" -p "Main";
	rename -uid "1786A0C7-0946-A9C5-6DC1-6CB2608986E3";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	addAttr -ci true -m -sn "drivingSystem_Fingers_R" -ln "drivingSystem_Fingers_R" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "drivingSystem_Fingers_L" -ln "drivingSystem_Fingers_L" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fitSkeletonTemplate" -ln "fitSkeletonTemplate" -dt "string";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zUpAxis" -ln "zUpAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirTrans" -ln "mirTrans" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "primaryAxis" -ln "primaryAxis" -min 0 -max 5 -en "X:Y:Z:-X:-Y:-Z" 
		-at "enum";
	addAttr -ci true -sn "secondaryAxis" -ln "secondaryAxis" -dv 1 -min 0 -max 5 -en 
		"X:Y:Z:-X:-Y:-Z" -at "enum";
	addAttr -ci true -sn "worldmatch" -ln "worldmatch" -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".visCylinders" yes;
	setAttr ".visGap" 1;
	setAttr ".fitSkeletonTemplate" -type "string" "biped";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "F6BC29B9-BE4D-33FB-3D64-6783EFE75F11";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23508348746736751 1.4394712022965405e-17 -0.23508348746736718
		-3.7929511823487983e-17 2.0357196969332741e-17 -0.33245825626631637
		-0.23508348746736729 1.4394712022965414e-17 -0.23508348746736729
		-0.33245825626631637 5.8990063848563582e-33 -9.6338085217116908e-17
		-0.23508348746736735 -1.4394712022965408e-17 0.23508348746736721
		-1.0017616090771559e-16 -2.0357196969332747e-17 0.33245825626631648
		0.23508348746736718 -1.4394712022965414e-17 0.23508348746736729
		0.33245825626631637 -1.0933890203714376e-32 1.7856397797841757e-16
		0.23508348746736751 1.4394712022965405e-17 -0.23508348746736718
		-3.7929511823487983e-17 2.0357196969332741e-17 -0.33245825626631637
		-0.23508348746736729 1.4394712022965414e-17 -0.23508348746736729
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "BDB62214-D84D-52E3-DC8E-6C993D42B287";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "centerBtwFeet" -ln "centerBtwFeet" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 4.1347210859025734e-14 3.816665617756222e-14 6.3611093629270501e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 -2.0745807453278982 89.999999999999972 ;
	setAttr ".dl" yes;
	setAttr ".typ" 1;
	setAttr ".otp" -type "string" "Mid";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.17000000000000004;
	setAttr -k on ".fatY" 0.64999999999999991;
	setAttr -k on ".fatZ";
createNode joint -n "Hip" -p "Root";
	rename -uid "CAF23D71-D041-EAD9-3A80-3A9F860CCC83";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" -0.039531660959769788 0.0038553267034418907 -0.11855830252170574 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9381958680422193 170.01386265878924 1.4935408115101168 ;
	setAttr ".dl" yes;
	setAttr ".typ" 2;
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.087000000000000008;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Knee" -p "Hip";
	rename -uid "F7E7EAFA-DD44-249A-8877-64B9B25C48A1";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.40379884878861527 2.7755575615628914e-17 2.1094237467877974e-15 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.0077251426738454e-14 2.2934781023365833e-14 -4.1182987996238447 ;
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.06;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Ankle" -p "Knee";
	rename -uid "7D9D59EC-5748-75F7-78CE-C095783465CF";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "worldOrient" -ln "worldOrient" -min 0 -max 5 -en "xUp:yUp:zUp:xDown:yDown:zDown" 
		-at "enum";
	addAttr -ci true -k true -sn "ikLocal" -ln "ikLocal" -min 0 -max 2 -en "addCtrl:nonZero:localOrient" 
		-at "enum";
	setAttr ".t" -type "double3" 0.4302785014825653 -5.6898930012039273e-16 9.4368957093138306e-16 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5428771174068703 10.083291196780616 7.399127258926649 ;
	setAttr ".pa" -type "double3" 3.1147589914174403 -1.2104724556304993 -11.405913270501992 ;
	setAttr ".dl" yes;
	setAttr ".typ" 4;
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.036999999999999991;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
	setAttr -k on ".worldOrient" 3;
createNode joint -n "Heel" -p "Ankle";
	rename -uid "B2574C46-344E-B89F-D9E4-27913FA45983";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.36999999999999988 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.092266479502464929 -0.038604295531719998 -0.0085896544099191008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Heel";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.036999999999999991;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Toes" -p "Ankle";
	rename -uid "DE013441-A84B-10F9-0BAE-9AB501B87A93";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.078391844761742047 0.13237488586033416 2.7755575615628914e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.9748052951221968 -3.5809005336108219 78.83264067127854 ;
	setAttr ".pa" -type "double3" -0.00019030234564052423 0.00053514845282692043 25.864574245063647 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Toes";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.029999999999999995;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "FootSideInner" -p "Toes";
	rename -uid "82147D26-9540-439F-03C1-A4A46C8817EA";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.036843860199202882 -0.0068179327767410557 -0.056628102447642298 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "BigToe";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.029999999999999995;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "FootSideOuter" -p "Toes";
	rename -uid "80F72979-3D45-2C0C-9254-D98AE67D4370";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.010042084444337088 -0.030467218577425258 0.062646765209629862 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "PinkyToe";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.029999999999999995;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "ToesEnd" -p "Toes";
	rename -uid "23D84A54-CE4B-3185-8EAD-3C9A127C28DA";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.29999999999999993 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.11471097458358522 6.5052130349130266e-18 1.6653345369377348e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "ToesEnd";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.029999999999999995;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Spine1" -p "Root";
	rename -uid "03C8A57D-A647-298B-3849-36ABC8E2CA69";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1.477376426915626 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.17841511709494629 1.457167719820518e-16 -1.0993825177756161e-16 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -2.2115480958876383e-15 3.6436359865586457e-14 1.5425690205098054e-13 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.6315537370668215e-15 -9.7853135392730093e-15 -6.946748339428872 ;
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.17;
	setAttr -k on ".fatY" 0.65;
	setAttr -k on ".fatZ";
createNode joint -n "Chest" -p "Spine1";
	rename -uid "956329BC-2E44-3646-AC23-71BF42D95536";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.13171606289209925 2.4980018054066022e-16 -8.3762781628949843e-17 ;
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 3.6141740901372604e-15 -7.5215738890732703e-14 4.4527765540489235e-14 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.8619407555249902e-15 -1.7369420416270395e-14 -5.5019806648965259 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "Chest";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.17000000000000004;
	setAttr -k on ".fatY" 0.64999999999999991;
	setAttr -k on ".fatZ";
createNode joint -n "Scapula" -p "Chest";
	rename -uid "2C47E35C-4248-27D1-B5D7-D4894D46D7B5";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.65 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.18201989689939313 0.01900184843943678 -0.080774985253811132 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 59.10916802524941 108.28093123005922 72.373401588884406 ;
	setAttr ".otp" -type "string" "PropA1";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.065;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Shoulder" -p "Scapula";
	rename -uid "9CBBD8BA-EE46-9108-F751-429FC9608618";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "globalTranslate" -ln "globalTranslate" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" 0.14515227443629886 -8.3266726846886741e-17 -2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5087596151563148e-14 24.618650405502802 7.2427182113153048 ;
	setAttr ".pa" -type "double3" -4.1293130717023516e-07 0 0 ;
	setAttr ".dl" yes;
	setAttr ".typ" 10;
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.065;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Elbow" -p "Shoulder";
	rename -uid "F5EFCDB1-B247-38A6-0B4D-08B81D411BD6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.26399019812439101 1.3877787807814457e-17 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3119788061037007e-14 -8.5477407064332035e-15 33.212314632644109 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "22";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.044999999999999984;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Wrist" -p "Elbow";
	rename -uid "1B12AD1F-8249-722A-B1E0-1CA65D88741A";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "ikLocal" -ln "ikLocal" -min 0 -max 2 -en "addCtrl:nonZero:localOrient" 
		-at "enum";
	setAttr ".t" -type "double3" 0.24507786120544106 -5.748179709996748e-14 8.659739592076221e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.568452228422 14.561510742964446 -21.063934011378937 ;
	setAttr ".dl" yes;
	setAttr ".typ" 12;
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.016999999999999987;
	setAttr -k on ".fatY" 2.3100000000000005;
	setAttr -k on ".fatZ";
createNode joint -n "MiddleFinger1" -p "Wrist";
	rename -uid "B3737876-7444-3F97-EB4C-31AEACC2E45E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.11141129389429322 1.1102230246251565e-16 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.246216775973828 27.117820696219241 -1.9009657553457358 ;
	setAttr ".pa" -type "double3" -2.490303168013669e-17 3.8068719241856406 -4.0949047407001542 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "21";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleFinger2" -p "MiddleFinger1";
	rename -uid "3B568A3A-954D-45AE-ADF9-C3A60D0F4196";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.060064210113244032 -1.3877787807814457e-17 -2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.03755372924489174 12.839118557192835 0.0078480698868389574 ;
	setAttr ".pa" -type "double3" 0 0 2.5199999009299203 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "20";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "MiddleFinger3" -p "MiddleFinger2";
	rename -uid "BAA4155A-2F4D-BD2A-2233-24AC4AFA1A04";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.03462505612348965 6.106226635438361e-16 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 0 2.5199999009299203 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "20";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "ThumbFinger1" -p "Wrist";
	rename -uid "4A83BDDD-324A-570A-2868-CBB5FCCB32F3";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.053405971315593104 0.06731328411164135 -0.032929810746924693 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -57.958392434984134 18.91325131008653 34.041976721745783 ;
	setAttr ".pa" -type "double3" -34.462082586865911 -8.7285733235282201 -1.7903981777634761 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "4";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "ThumbFinger2" -p "ThumbFinger1";
	rename -uid "1901E7B7-D144-596E-25F7-D785ED7265D0";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.038131005213530855 1.5418488708007771e-10 2.0206258888322282e-10 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.2029023774004797e-15 6.7722814342272226 4.8043535661007191e-15 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "3";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "ThumbFinger3" -p "ThumbFinger2";
	rename -uid "6C09C9D4-3D49-4527-7F70-26B64D72A19E";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.034257431326082166 4.4408920985006262e-16 3.3306690738754696e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "2";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "IndexFinger1" -p "Wrist";
	rename -uid "166293E3-0B44-0FC2-4CF9-D0AFE5369885";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.10146401372518787 0.054382652986965083 -0.00065477156966697869 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.4988507312113022 22.878467563851753 8.1109288331726415 ;
	setAttr ".pa" -type "double3" 0.065532877363568762 20.527688987272207 -2.5422327562497964 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "8";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "IndexFinger2" -p "IndexFinger1";
	rename -uid "2DF8C085-814B-CE6F-B847-A19D31105CE7";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.053652847326909892 2.1466994848395871e-12 1.0187739540867824e-11 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.5886279163152973e-15 15.101020298042558 -4.941470937236472e-15 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "7";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "IndexFinger3" -p "IndexFinger2";
	rename -uid "A3BF2679-5F4B-F8AB-0E39-5EA7557D3AB6";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.034625056123488873 2.7755575615628914e-16 5.5511151231257827e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "7";
	setAttr ".radi" 0.010000000000000002;
	setAttr -k on ".fat" 0.011999999999999992;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Neck1" -p "Chest";
	rename -uid "06DB957C-7E44-6A72-7C2B-408733803217";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.26103105660829562 -1.3877787807814457e-16 3.4267172840783059e-16 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.5382928150192045e-15 -6.2402952353266336e-17 19.755480852045384 ;
	setAttr ".pa" -type "double3" -1.7940447748746266e-16 6.8425179703803005e-15 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "37";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.032;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "Head1" -p "Neck1";
	rename -uid "514D99B9-5148-734E-360E-B8A084C1FF5B";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "global" -ln "global" -min 0 -max 10 -at "long";
	setAttr ".t" -type "double3" 0.093853078938296086 7.7715611723760958e-16 -1.0390497621055455e-17 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.5899668175172312e-15 2.6460028970768683e-15 -10.32309941190899 ;
	setAttr ".otp" -type "string" "36";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.032;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode joint -n "HeadEnd" -p "Head1";
	rename -uid "64D00BDB-1849-05FF-56C4-158B044B1888";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.20318140919285654 -3.4694469519536142e-18 3.7740400769797071e-17 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "23";
	setAttr ".radi" 0.05;
	setAttr -k on ".fat" 0.034999999999999996;
	setAttr -k on ".fatY";
	setAttr -k on ".fatZ";
createNode transform -n "MotionSystem" -p "Main";
	rename -uid "28CB179C-E74F-FBDF-12D0-2CA9FF300AB1";
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "84120C30-A54C-55E9-4D83-66840BC1BD95";
createNode parentConstraint -n "FKSystem_parentConstraint1" -p "FKSystem";
	rename -uid "CB7A0075-2C46-75FB-04C0-AF8E46E25A52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootZeroXformW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "FKParentConstraintToRoot_M" -p "FKSystem";
	rename -uid "D6FEC613-124D-3E74-0265-DEB691A04E5C";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode parentConstraint -n "FKParentConstraintToRoot_M_parentConstraint1" -p "FKParentConstraintToRoot_M";
	rename -uid "49A8BC72-4C4A-B0A0-BFEA-F4AF9E919168";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetHip_R" -p "FKParentConstraintToRoot_M";
	rename -uid "DFB2543B-B749-2A88-5178-72A304BD13A8";
	setAttr ".t" -type "double3" -0.11855830252170588 -0.039645314216613881 0.0024217396421591323 ;
	setAttr ".r" -type "double3" -10.083291196780459 -91.336843736909714 -93.280828459302782 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraHip_R" -p "FKOffsetHip_R";
	rename -uid "4397A0AB-4A4D-F1C0-C366-999ACC9E1377";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHip_R" -p "FKExtraHip_R";
	rename -uid "C4267DF5-6F41-F07F-9C24-A9A3ED1D5459";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHip_RShape" -p "FKHip_R";
	rename -uid "C751DDA0-7545-ED3A-35D4-05B3F317DF76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5511151231257827e-16 -0.10226131704830489 -0.10226131704830493
		4.4408920985006262e-16 -1.3877787807814457e-17 -0.14461934147584787
		3.3306690738754696e-16 0.10226131704830477 -0.10226131704830507
		1.1102230246251565e-16 0.14461934147584762 -3.3306690738754696e-16
		0 0.10226131704830485 0.10226131704830449
		1.1102230246251565e-16 1.2490009027033011e-16 0.14461934147584748
		1.1102230246251565e-16 -0.1022613170483047 0.1022613170483046
		5.5511151231257827e-16 -0.1446193414758476 -1.6653345369377348e-16
		5.5511151231257827e-16 -0.10226131704830489 -0.10226131704830493
		4.4408920985006262e-16 -1.3877787807814457e-17 -0.14461934147584787
		3.3306690738754696e-16 0.10226131704830477 -0.10226131704830507
		;
createNode joint -n "FKXHip_R" -p "FKHip_R";
	rename -uid "463579BE-964A-F438-AED1-8597FCC32912";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToHip_R" -p "FKXHip_R";
	rename -uid "D656FAEB-9C43-1233-59A5-DE9841F17494";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".r" -type "double3" -86.247017829515769 -110.54393707192062 -149.41046944281075 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKOffsetKnee_R" -p "FKXHip_R";
	rename -uid "2FDB8588-684E-02D6-872E-28B3AF379CD5";
	setAttr ".t" -type "double3" 0.40379884878861505 -8.3266726846886741e-17 2.2204460492503131e-15 ;
	setAttr ".r" -type "double3" 0 0 -4.1182987996238705 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "FKExtraKnee_R" -p "FKOffsetKnee_R";
	rename -uid "CD5C2289-504D-9B32-A180-1EA5C1AA0C88";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKKnee_R" -p "FKExtraKnee_R";
	rename -uid "880BCB8C-8A46-B123-9E14-718404956361";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKKnee_RShape" -p "FKKnee_R";
	rename -uid "BCAAD920-D046-B1A7-C886-D9B99C968DF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.7755575615628914e-16 -0.070525046240209915 -0.070525046240209555
		2.2204460492503131e-16 3.0531133177191805e-16 -0.099737476879894343
		2.2204460492503131e-16 0.070525046240210471 -0.070525046240209638
		5.5511151231257827e-17 0.099737476879895176 4.9960036108132044e-16
		-1.1102230246251565e-16 0.070525046240210512 0.070525046240210665
		0 3.8857805861880479e-16 0.099737476879895426
		1.6653345369377348e-16 -0.070525046240209777 0.07052504624021072
		2.2204460492503131e-16 -0.09973747687989451 6.6613381477509392e-16
		2.7755575615628914e-16 -0.070525046240209915 -0.070525046240209555
		2.2204460492503131e-16 3.0531133177191805e-16 -0.099737476879894343
		2.2204460492503131e-16 0.070525046240210471 -0.070525046240209638
		;
createNode joint -n "FKXKnee_R" -p "FKKnee_R";
	rename -uid "CE55F93C-7C40-BF16-AFAB-5FA2F930FF3B";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FKOffsetAnkle_R" -p "FKXKnee_R";
	rename -uid "A6AB8E0C-3346-5391-027C-609BE13C6031";
	setAttr ".t" -type "double3" 0.43027850148256519 -9.7144514654701197e-17 1.2212453270876722e-15 ;
	setAttr ".r" -type "double3" -2.8453387249457753 10.166199753686668 7.2842177187294803 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "FKExtraAnkle_R" -p "FKOffsetAnkle_R";
	rename -uid "B4DB8494-5748-135C-26CF-70A9BC7B279B";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKAnkle_R" -p "FKExtraAnkle_R";
	rename -uid "49187BE0-2A4A-FDF2-2B15-E59D43B105B1";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKAnkle_RShape" -p "FKAnkle_R";
	rename -uid "AA0107E2-AC4B-B55C-7CB5-0E8D150F115F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.9960036108132044e-16 -0.043490445181463042 -0.043490445181461779
		5.2735593669694936e-16 -9.7144514654701197e-17 -0.061504777409267436
		4.5796699765787707e-16 0.043490445181462833 -0.04349044518146189
		3.3306690738754696e-16 0.061504777409268428 9.9920072216264089e-16
		2.6367796834847468e-16 0.043490445181462889 0.043490445181463999
		2.4980018054066022e-16 0 0.061504777409269629
		3.0531133177191805e-16 -0.043490445181462944 0.043490445181463999
		4.4408920985006262e-16 -0.061504777409268518 1.1657341758564144e-15
		4.9960036108132044e-16 -0.043490445181463042 -0.043490445181461779
		5.2735593669694936e-16 -9.7144514654701197e-17 -0.061504777409267436
		4.5796699765787707e-16 0.043490445181462833 -0.04349044518146189
		;
createNode joint -n "FKXAnkle_R" -p "FKAnkle_R";
	rename -uid "879A0F67-894A-AC35-029E-E98340A4800C";
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToAnkle_R" -p "FKXAnkle_R";
	rename -uid "5F71C361-094C-855B-1064-A5AFEAFBE152";
	setAttr ".t" -type "double3" -1.3877787807814457e-17 0 0 ;
	setAttr ".r" -type "double3" -89.999999999959314 89.999999999999858 0.20603338049708536 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FKOffsetToes_R" -p "FKXAnkle_R";
	rename -uid "381D3EF1-6043-82BD-6AFC-F792837137AE";
	setAttr ".t" -type "double3" 0.078391844761741963 0.13237488586033436 4.9960036108132044e-16 ;
	setAttr ".r" -type "double3" 1.9592984881134512 -8.5162725450117591 78.728844916977494 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "FKExtraToes_R" -p "FKOffsetToes_R";
	rename -uid "F98DE890-FC41-B5CF-C56A-BABFD3AEBF4A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKToes_R" -p "FKExtraToes_R";
	rename -uid "07FFB49D-F443-83DF-40F6-42B727FE8FEC";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKToes_RShape" -p "FKToes_R";
	rename -uid "E039D734-0B4F-D2A3-581C-7AAB988CBB61";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.264266469291897e-14 -0.035262523120104937 -0.035262523120104972
		2.0261570199409107e-15 4.1806835771041051e-16 -0.049868738439946769
		-9.8671071313560788e-15 0.035262523120105256 -0.035262523120103861
		-1.609823385706477e-14 0.049868738439947047 1.4432899320127035e-15
		-1.2975731600306517e-14 0.035262523120104111 0.035262523120106304
		-2.3869795029440866e-15 -1.2073675392798577e-15 0.049868738439948157
		9.5201624361607173e-15 -0.035262523120106054 0.035262523120105194
		1.5765166949677223e-14 -0.049868738439947852 -1.1102230246251565e-16
		1.264266469291897e-14 -0.035262523120104937 -0.035262523120104972
		2.0261570199409107e-15 4.1806835771041051e-16 -0.049868738439946769
		-9.8671071313560788e-15 0.035262523120105256 -0.035262523120103861
		;
createNode joint -n "FKXToes_R" -p "FKToes_R";
	rename -uid "04A68379-9E4F-1873-E83C-42803CA5CC71";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToToes_R" -p "FKXToes_R";
	rename -uid "076B969A-0D46-ED02-70F4-EDA10CA52F09";
	setAttr ".t" -type "double3" 0 1.5612511283791264e-17 -1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 102.86153082124119 81.262872810832718 114.27858088333794 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999944 ;
createNode transform -n "FKOffsetHip_L" -p "FKParentConstraintToRoot_M";
	rename -uid "0E619877-B74C-9753-8DCB-CFB8A005CE83";
	setAttr ".t" -type "double3" 0.11855830252170568 -0.039645314216614214 0.0024217396421591371 ;
	setAttr ".r" -type "double3" 10.083291196780523 -88.663156263090329 86.719171540697275 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraHip_L" -p "FKOffsetHip_L";
	rename -uid "9310AC11-0F42-E0B6-6D16-9F9AE0CCFACC";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHip_L" -p "FKExtraHip_L";
	rename -uid "D30AC961-E14B-F53E-D162-3B9729B1CA7F";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHip_LShape" -p "FKHip_L";
	rename -uid "9A84D06B-A74F-E4B8-FDCC-5A9D022C48AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.10226131704830488 0.10226131704830471
		0 -1.6499630102030464e-17 0.14461934147584762
		0 -0.10226131704830477 0.10226131704830477
		5.7953641885433174e-17 -0.14461934147584762 4.5076114401242291e-17
		0 -0.1022613170483048 -0.10226131704830475
		0 -4.8698217019081865e-17 -0.14461934147584768
		0 0.10226131704830474 -0.1022613170483048
		-5.7953641885433174e-17 0.14461934147584762 -7.7675037961798452e-17
		0 0.10226131704830488 0.10226131704830471
		0 -1.6499630102030464e-17 0.14461934147584762
		0 -0.10226131704830477 0.10226131704830477
		;
createNode joint -n "FKXHip_L" -p "FKHip_L";
	rename -uid "C9585E7C-A74E-3ECB-F23B-91ADFC4B2303";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToHip_L" -p "FKXHip_L";
	rename -uid "E6AC0289-3F45-14A6-4E8B-BCA60D2A5DA5";
	setAttr ".t" -type "double3" 0 -6.9388939039072284e-18 0 ;
	setAttr ".r" -type "double3" 86.247017829515883 69.456062928079177 -30.589530557189146 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "FKOffsetKnee_L" -p "FKXHip_L";
	rename -uid "EA9D7F3E-AA43-95A0-5D86-3EBAD08109FE";
	setAttr ".t" -type "double3" -0.40379884878861483 3.3306690738754696e-16 -2.55351295663786e-15 ;
	setAttr ".r" -type "double3" 0 0 -4.1182987996238785 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "FKExtraKnee_L" -p "FKOffsetKnee_L";
	rename -uid "B0488CA7-9041-F66B-F900-7A9306EC17EB";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKKnee_L" -p "FKExtraKnee_L";
	rename -uid "F64F1439-C946-4EEF-1523-CCA4E21B0D6E";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKKnee_LShape" -p "FKKnee_L";
	rename -uid "73966A8D-544C-44AD-00A2-C2BA9C0ED9DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.070525046240210248 0.070525046240210137
		0 -1.1379055242779629e-17 0.099737476879894899
		0 -0.070525046240210179 0.070525046240210179
		3.9968028886505634e-17 -0.099737476879894899 3.1086975449132612e-17
		0 -0.070525046240210193 -0.070525046240210165
		0 -3.3584977254539211e-17 -0.099737476879894926
		0 0.070525046240210151 -0.070525046240210193
		-3.9968028886505634e-17 0.099737476879894899 -5.3568991697792034e-17
		0 0.070525046240210248 0.070525046240210137
		0 -1.1379055242779629e-17 0.099737476879894899
		0 -0.070525046240210179 0.070525046240210179
		;
createNode joint -n "FKXKnee_L" -p "FKKnee_L";
	rename -uid "AD558233-164D-2408-5BFE-5F8B3A5D9CA3";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "FKOffsetAnkle_L" -p "FKXKnee_L";
	rename -uid "A9F62A69-BB42-31B2-E453-2D90FCD2CF90";
	setAttr ".t" -type "double3" -0.43027850148256558 8.6042284408449632e-16 -1.2212453270876722e-15 ;
	setAttr ".r" -type "double3" -2.8453387249457642 10.166199753686596 7.2842177187294528 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "FKExtraAnkle_L" -p "FKOffsetAnkle_L";
	rename -uid "C8062D3F-7C4F-3731-DA73-3D9F87018627";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKAnkle_L" -p "FKExtraAnkle_L";
	rename -uid "1B75BA31-D441-81DC-43E2-67ACCC1E571D";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKAnkle_LShape" -p "FKAnkle_L";
	rename -uid "B051C5BE-7F43-AAA0-B5AC-A6AD2DDA6314";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.043490445181462979 0.04349044518146291
		0 -7.0170840663807696e-18 0.061504777409268512
		0 -0.043490445181462938 0.043490445181462938
		2.4646951146678469e-17 -0.061504777409268512 1.9170301526965107e-17
		0 -0.043490445181462944 -0.043490445181462931
		0 -2.0710735973632512e-17 -0.061504777409268532
		0 0.043490445181462917 -0.043490445181462944
		-2.4646951146678469e-17 0.061504777409268512 -3.3034211546971745e-17
		0 0.043490445181462979 0.04349044518146291
		0 -7.0170840663807696e-18 0.061504777409268512
		0 -0.043490445181462938 0.043490445181462938
		;
createNode joint -n "FKXAnkle_L" -p "FKAnkle_L";
	rename -uid "35ED5C09-ED4C-3AA1-E820-7F85A2FBFD8F";
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToAnkle_L" -p "FKXAnkle_L";
	rename -uid "14DD6FF5-5542-47C0-0DD5-47BBE1606222";
	setAttr ".r" -type "double3" 90.000000000001762 89.999999999999972 0.20603338049714892 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "FKOffsetToes_L" -p "FKXAnkle_L";
	rename -uid "DCA6879E-9D40-CB04-872D-1D9458206491";
	setAttr ".t" -type "double3" -0.07839184476174188 -0.13237488586033413 -5.5511151231257827e-17 ;
	setAttr ".r" -type "double3" 1.9592984881161766 -8.5162725450112067 78.728844916996152 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FKExtraToes_L" -p "FKOffsetToes_L";
	rename -uid "1739DC0B-8445-FBE9-B521-72975A81C794";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKToes_L" -p "FKExtraToes_L";
	rename -uid "CD0B1E59-C042-80B0-116E-5DA2E781DE39";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKToes_LShape" -p "FKToes_L";
	rename -uid "8F038D0C-8645-064F-0DC1-D4ABEE9586BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.035262523120105124 0.035262523120105069
		0 -5.6895276213898145e-18 0.049868738439947449
		0 -0.035262523120105083 0.035262523120105083
		1.9984014443252814e-17 -0.049868738439947449 1.5543487724566303e-17
		0 -0.035262523120105096 -0.035262523120105083
		0 -1.6792488627269605e-17 -0.049868738439947463
		0 0.035262523120105076 -0.03526252312010509
		-1.9984014443252814e-17 0.049868738439947449 -2.6784495848896011e-17
		0 0.035262523120105124 0.035262523120105069
		0 -5.6895276213898145e-18 0.049868738439947449
		0 -0.035262523120105083 0.035262523120105083
		;
createNode joint -n "FKXToes_L" -p "FKToes_L";
	rename -uid "E56BC7BC-FE47-FC29-3C93-1B92ED1C04B5";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "AlignIKToToes_L" -p "FKXToes_L";
	rename -uid "DF57D40B-8149-17AC-6233-CFB609B80727";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 -2.1250362580715887e-17 0 ;
	setAttr ".r" -type "double3" -77.138469178740579 81.262872810832619 114.27858088333775 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "FKParentConstraintToWrist_R" -p "FKSystem";
	rename -uid "C712D703-4B4D-D53E-7452-61BFFA8E994B";
createNode pointConstraint -n "FKParentConstraintToWrist_R_pointConstraint1" -p "FKParentConstraintToWrist_R";
	rename -uid "59519D99-1F47-AF30-AE89-AA86793828E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.62303043402476854 1.1638390914367487 0.0026780981610981525 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "FKParentConstraintToWrist_R_orientConstraint1" -p
		 "FKParentConstraintToWrist_R";
	rename -uid "4D8CEC16-B14E-0D26-446B-3B9451ABFDD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 80.730279195028757 -3.8965260472300915 -131.95223509871752 ;
	setAttr ".rsrr" -type "double3" 80.730279195028757 -3.8965260472300649 -131.95223509871758 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetMiddleFinger1_R" -p "FKParentConstraintToWrist_R";
	rename -uid "42109596-A54A-159E-55BC-8FA004CF9D44";
	setAttr ".t" -type "double3" 0.11141129389429305 -2.7755575615628914e-17 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 18.993433003791736 25.346966221398628 -10.152550896856685 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKExtraMiddleFinger1_R" -p "FKOffsetMiddleFinger1_R";
	rename -uid "E5D92D50-FE43-C084-D66B-99B4C36D7190";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMiddleFinger1_R" -p "FKExtraMiddleFinger1_R";
	rename -uid "8A632C72-314E-F8BA-1F0F-0E8AF427CB09";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMiddleFinger1_RShape" -p "FKMiddleFinger1_R";
	rename -uid "4E47E2DC-F541-0C58-6541-C3BC13F6893D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.1078251911130792e-15 -0.014105009248038924 -0.014105009248039702
		-4.1078251911130792e-15 3.1086244689504383e-15 -0.01994749537597662
		-3.8857805861880479e-15 0.014105009248045142 -0.014105009248039591
		-4.3298697960381105e-15 0.019947495375982088 2.4424906541753444e-15
		-4.3298697960381105e-15 0.014105009248045156 0.014105009248044365
		-4.1078251911130792e-15 3.1086244689504383e-15 0.019947495375981283
		-4.4408920985006262e-15 -0.014105009248038924 0.014105009248044365
		-4.3298697960381105e-15 -0.019947495375975871 2.3314683517128287e-15
		-4.1078251911130792e-15 -0.014105009248038924 -0.014105009248039702
		-4.1078251911130792e-15 3.1086244689504383e-15 -0.01994749537597662
		-3.8857805861880479e-15 0.014105009248045142 -0.014105009248039591
		;
createNode joint -n "FKXMiddleFinger1_R" -p "FKMiddleFinger1_R";
	rename -uid "9E3061AB-854C-47C2-D34B-4E9640FD0066";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetMiddleFinger2_R" -p "FKXMiddleFinger1_R";
	rename -uid "F81787C6-1E40-CC4B-E33E-D892613D9C2E";
	setAttr ".t" -type "double3" 0.060064210113244476 -1.1102230246251565e-16 -1.1102230246251565e-15 ;
	setAttr ".r" -type "double3" 0.036728056401192158 12.83912090557911 -0.00050964630663629361 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "FKExtraMiddleFinger2_R" -p "FKOffsetMiddleFinger2_R";
	rename -uid "24DAB817-1B41-BCE6-E77B-65AA7600A234";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMiddleFinger2_R" -p "FKExtraMiddleFinger2_R";
	rename -uid "8A1AA473-D541-2DE1-D172-C39A0BF1BFE5";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMiddleFinger2_RShape" -p "FKMiddleFinger2_R";
	rename -uid "9B2F4A57-B146-03A2-8794-B385ADA7ADA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4408920985006262e-15 -0.014105009248038966 -0.014105009248040035
		-4.3298697960381105e-15 3.1086244689504383e-15 -0.019947495375976954
		-4.4408920985006262e-15 0.014105009248045128 -0.014105009248040035
		-4.4408920985006262e-15 0.019947495375982102 1.8873791418627661e-15
		-4.4408920985006262e-15 0.014105009248045169 0.014105009248044142
		-4.5519144009631418e-15 3.1225022567582528e-15 0.01994749537598095
		-4.3298697960381105e-15 -0.014105009248038911 0.014105009248044031
		-4.4408920985006262e-15 -0.019947495375975857 1.8873791418627661e-15
		-4.4408920985006262e-15 -0.014105009248038966 -0.014105009248040035
		-4.3298697960381105e-15 3.1086244689504383e-15 -0.019947495375976954
		-4.4408920985006262e-15 0.014105009248045128 -0.014105009248040035
		;
createNode joint -n "FKXMiddleFinger2_R" -p "FKMiddleFinger2_R";
	rename -uid "76A5DF77-C140-73B4-5D5D-CF8AA88BF3A9";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetThumbFinger1_R" -p "FKParentConstraintToWrist_R";
	rename -uid "58C2ED0A-1C48-9DEF-8999-5EAA7A7C6585";
	setAttr ".t" -type "double3" 0.053405971315593104 0.067313284111641253 -0.032929810746924693 ;
	setAttr ".r" -type "double3" -57.854153758165893 -19.391818126890577 33.794800205786075 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
createNode transform -n "FKExtraThumbFinger1_R" -p "FKOffsetThumbFinger1_R";
	rename -uid "A07AB224-1746-D366-039C-689B1626BDD1";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKThumbFinger1_R" -p "FKExtraThumbFinger1_R";
	rename -uid "B1B7AB1F-2F41-064B-F7DD-F38DD729B3F4";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKThumbFinger1_RShape" -p "FKThumbFinger1_R";
	rename -uid "8CB78359-C045-24FC-E724-E2A03D9E5DDA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.1094237467877974e-15 -0.014105009248044476 -0.014105009248037037
		-1.8873791418627661e-15 -2.55351295663786e-15 -0.019947495375974067
		-1.8873791418627661e-15 0.014105009248039591 -0.014105009248037148
		-1.9984014443252818e-15 0.019947495375976509 4.8849813083506888e-15
		-2.1094237467877974e-15 0.014105009248039591 0.014105009248047029
		-1.9984014443252818e-15 -2.3314683517128287e-15 0.019947495375983948
		-2.1094237467877974e-15 -0.014105009248044365 0.014105009248047029
		-1.9984014443252818e-15 -0.019947495375981394 5.1070259132757201e-15
		-2.1094237467877974e-15 -0.014105009248044476 -0.014105009248037037
		-1.8873791418627661e-15 -2.55351295663786e-15 -0.019947495375974067
		-1.8873791418627661e-15 0.014105009248039591 -0.014105009248037148
		;
createNode joint -n "FKXThumbFinger1_R" -p "FKThumbFinger1_R";
	rename -uid "CC072F6F-8949-15B2-8A2B-428D2ABBA744";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetThumbFinger2_R" -p "FKXThumbFinger1_R";
	rename -uid "481962BA-144D-82C6-3A32-40877F6E684D";
	setAttr ".t" -type "double3" 0.038131005213530744 1.5418444299086786e-10 2.0206325501703759e-10 ;
	setAttr ".r" -type "double3" 0 6.7722814342272457 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode transform -n "FKExtraThumbFinger2_R" -p "FKOffsetThumbFinger2_R";
	rename -uid "4A563934-FA4E-888A-ABBA-B3B2780800BB";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKThumbFinger2_R" -p "FKExtraThumbFinger2_R";
	rename -uid "4691F1E2-5246-D069-3AC0-629834F8FFCC";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKThumbFinger2_RShape" -p "FKThumbFinger2_R";
	rename -uid "19F067C8-1D41-1B2A-6922-54A1A917CF2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.8817841970012523e-16 -0.01410500924804392 -0.014105009248037814
		-8.8817841970012523e-16 -2.1094237467877974e-15 -0.019947495375974733
		-7.7715611723760958e-16 0.014105009248040035 -0.014105009248037814
		-6.6613381477509392e-16 0.019947495375977065 4.1078251911130792e-15
		-5.5511151231257827e-16 0.014105009248040146 0.014105009248046141
		-5.5511151231257827e-16 -1.8873791418627661e-15 0.01994749537598306
		-6.6613381477509392e-16 -0.01410500924804392 0.014105009248046252
		-8.8817841970012523e-16 -0.019947495375980839 4.2188474935755949e-15
		-8.8817841970012523e-16 -0.01410500924804392 -0.014105009248037814
		-8.8817841970012523e-16 -2.1094237467877974e-15 -0.019947495375974733
		-7.7715611723760958e-16 0.014105009248040035 -0.014105009248037814
		;
createNode joint -n "FKXThumbFinger2_R" -p "FKThumbFinger2_R";
	rename -uid "FCADDA3A-5443-080D-981A-329AE0C4FAEC";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetIndexFinger1_R" -p "FKParentConstraintToWrist_R";
	rename -uid "FBB7F201-FE41-8DA9-C6B2-868304D5436D";
	setAttr ".t" -type "double3" 0.10146401372518776 0.054382652986964916 -0.00065477156966742278 ;
	setAttr ".r" -type "double3" -9.2566702165535677 21.690791058890635 11.001561814853067 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "FKExtraIndexFinger1_R" -p "FKOffsetIndexFinger1_R";
	rename -uid "64E21BD4-CF49-1974-91F1-CAA5ED40F3F8";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKIndexFinger1_R" -p "FKExtraIndexFinger1_R";
	rename -uid "DB07BD96-EB42-B6BF-189C-C0909B4DCB77";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKIndexFinger1_RShape" -p "FKIndexFinger1_R";
	rename -uid "824D9DD0-E846-9E44-B3C9-32BFE85C431F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-3.219646771412954e-15 -0.014105009248039896 -0.014105009248037592
		-3.3306690738754696e-15 2.1649348980190553e-15 -0.019947495375974622
		-3.219646771412954e-15 0.014105009248044198 -0.014105009248037703
		-3.1086244689504383e-15 0.019947495375981172 4.2188474935755949e-15
		-3.219646771412954e-15 0.014105009248044226 0.014105009248046363
		-3.219646771412954e-15 2.1926904736346842e-15 0.019947495375983282
		-3.4416913763379853e-15 -0.01410500924803984 0.014105009248046363
		-3.219646771412954e-15 -0.019947495375976787 4.3298697960381105e-15
		-3.219646771412954e-15 -0.014105009248039896 -0.014105009248037592
		-3.3306690738754696e-15 2.1649348980190553e-15 -0.019947495375974622
		-3.219646771412954e-15 0.014105009248044198 -0.014105009248037703
		;
createNode joint -n "FKXIndexFinger1_R" -p "FKIndexFinger1_R";
	rename -uid "F3E41D92-FE4B-0A99-4EF2-0E9E0B8D5169";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetIndexFinger2_R" -p "FKXIndexFinger1_R";
	rename -uid "B599EACF-4D43-3BF6-2CDB-F382051B63E8";
	setAttr ".t" -type "double3" 0.053652847326910336 2.1466994848395871e-12 1.0188072607775212e-11 ;
	setAttr ".r" -type "double3" 0 15.101020298042521 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "FKExtraIndexFinger2_R" -p "FKOffsetIndexFinger2_R";
	rename -uid "9F9BCD3A-D84B-E089-520F-CC84A103ED76";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKIndexFinger2_R" -p "FKExtraIndexFinger2_R";
	rename -uid "818A9D55-9347-FEFB-B725-C49E21730EC0";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKIndexFinger2_RShape" -p "FKIndexFinger2_R";
	rename -uid "CAA12072-AE4B-C667-3F64-9A937AB4E068";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4408920985006262e-15 -0.014105009248039646 -0.014105009248039146
		-4.1078251911130792e-15 2.3869795029440866e-15 -0.019947495375975954
		-4.2188474935755949e-15 0.01410500924804442 -0.014105009248039146
		-4.1078251911130792e-15 0.019947495375981394 2.7755575615628914e-15
		-4.3298697960381105e-15 0.01410500924804442 0.01410500924804492
		-4.5519144009631418e-15 2.4424906541753444e-15 0.01994749537598195
		-4.5519144009631418e-15 -0.014105009248039618 0.014105009248045031
		-4.3298697960381105e-15 -0.019947495375976593 2.886579864025407e-15
		-4.4408920985006262e-15 -0.014105009248039646 -0.014105009248039146
		-4.1078251911130792e-15 2.3869795029440866e-15 -0.019947495375975954
		-4.2188474935755949e-15 0.01410500924804442 -0.014105009248039146
		;
createNode joint -n "FKXIndexFinger2_R" -p "FKIndexFinger2_R";
	rename -uid "B8D46970-2841-067A-7350-6DA2D5E4B669";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKParentConstraintToScapula_R" -p "FKSystem";
	rename -uid "7C61E56B-4440-FCE2-E7D1-0C87ABB81857";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999956 ;
createNode pointConstraint -n "FKParentConstraintToScapula_R_pointConstraint1" -p
		 "FKParentConstraintToScapula_R";
	rename -uid "D03FA5A2-044C-B12E-199D-038078B318B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.080774985253811396 1.4510045051574707 -0.01881441433691838 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "FKParentConstraintToScapula_R_orientConstraint1" 
		-p "FKParentConstraintToScapula_R";
	rename -uid "59E6CF38-E44A-85CC-D2DA-1EA36FA2E33D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr ".rsrr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetShoulder_R" -p "FKParentConstraintToScapula_R";
	rename -uid "B759F30C-4641-C9AF-CE87-37A8D569097F";
	setAttr ".t" -type "double3" 0.14515227443629886 -7.2164496600635175e-16 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -3.3063208701303686 24.409339013294804 7.9580413714739144 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "FKGlobalStaticShoulder_R" -p "FKOffsetShoulder_R";
	rename -uid "26F701E5-2349-92F9-CD1E-8F905815609F";
	setAttr ".ro" 5;
createNode transform -n "FKGlobalShoulder_R" -p "FKGlobalStaticShoulder_R";
	rename -uid "096C006B-4546-5506-EF8B-7FB36C01B651";
	setAttr ".t" -type "double3" 0 1.3877787807814457e-17 -2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FKExtraShoulder_R" -p "FKGlobalShoulder_R";
	rename -uid "3E142CE1-154E-A1BF-C7B7-2DA3777DCE25";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 1.1102230246251565e-16 -2.7755575615628914e-17 0 ;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKShoulder_R" -p "FKExtraShoulder_R";
	rename -uid "EB2BD7FF-9346-A123-6CC0-4DB17A859851";
	addAttr -ci true -k true -sn "Global" -ln "Global" -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
	setAttr -k on ".Global" 10;
createNode nurbsCurve -n "FKShoulder_RShape" -p "FKShoulder_R";
	rename -uid "DAC416ED-D046-2CB6-8B48-ADAADDCCA453";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.051541395311244687 -0.094779618044294828 -0.09477961804429258
		0.051541395311244798 4.7184478546569153e-16 -0.13403862127478172
		0.051541395311244798 0.094779618044295674 -0.094779618044292802
		0.051541395311244353 0.13403862127478475 2.4424906541753444e-15
		0.05154139531124402 0.094779618044295966 0.094779618044297687
		0.05154139531124402 8.4654505627668186e-16 0.13403862127478661
		0.051541395311244131 -0.094779618044294495 0.094779618044297909
		0.051541395311244353 -0.13403862127478341 2.6645352591003757e-15
		0.051541395311244687 -0.094779618044294828 -0.09477961804429258
		0.051541395311244798 4.7184478546569153e-16 -0.13403862127478172
		0.051541395311244798 0.094779618044295674 -0.094779618044292802
		;
createNode joint -n "FKXShoulder_R" -p "FKShoulder_R";
	rename -uid "BC1C5212-004D-ABCB-F787-809DC7B1A4C8";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToShoulder_R" -p "FKXShoulder_R";
	rename -uid "BDAF2B3F-5847-78DB-0FA0-4FAB829E9501";
	setAttr ".r" -type "double3" -92.259449825202339 -8.6943091944068147 146.06062654888763 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKOffsetElbow_R" -p "FKXShoulder_R";
	rename -uid "207C1A81-3142-BCEA-02BC-95976BCDD185";
	setAttr ".t" -type "double3" 0.26399019812439051 -8.6042284408449632e-16 -1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 0 0 33.212314632644052 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "FKExtraElbow_R" -p "FKOffsetElbow_R";
	rename -uid "FE6D7E2B-2D49-9BC5-1195-84AA4588468A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKElbow_R" -p "FKExtraElbow_R";
	rename -uid "5578FF42-A046-BF08-809D-DFB6C50365AF";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKElbow_RShape" -p "FKElbow_R";
	rename -uid "4D161DFD-7D4A-9A61-A061-0BADFB058338";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.042270801259844559 -0.091989438374203508 -0.091989438374201038
		0.042270801259844781 1.0269562977782698e-15 -0.13009271134388145
		0.042270801259844615 0.091989438374205729 -0.091989438374201926
		0.042270801259844337 0.13009271134388567 2.6645352591003757e-15
		0.042270801259844226 0.091989438374206339 0.091989438374206811
		0.042270801259844115 1.8735013540549517e-15 0.13009271134388678
		0.042270801259844226 -0.091989438374202703 0.091989438374207921
		0.042270801259844448 -0.1300927113438827 3.3306690738754696e-15
		0.042270801259844559 -0.091989438374203508 -0.091989438374201038
		0.042270801259844781 1.0269562977782698e-15 -0.13009271134388145
		0.042270801259844615 0.091989438374205729 -0.091989438374201926
		;
createNode joint -n "FKXElbow_R" -p "FKElbow_R";
	rename -uid "9E12ED0B-F946-18DF-6B48-B9884037D4F5";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetWrist_R" -p "FKXElbow_R";
	rename -uid "7C6C7ED2-4F4C-C6AF-6D1D-A9A4615CAFDD";
	setAttr ".t" -type "double3" 0.24507786120544162 -5.8023030824472244e-14 9.7699626167013776e-15 ;
	setAttr ".r" -type "double3" -4.9452010068942842 17.251030124441378 -18.959314186770296 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKExtraWrist_R" -p "FKOffsetWrist_R";
	rename -uid "51386414-D94D-8F44-0D87-CFA9DF468C46";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWrist_R" -p "FKExtraWrist_R";
	rename -uid "4C2247F6-5343-BEF8-30B9-4BA911EBE34E";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWrist_RShape" -p "FKWrist_R";
	rename -uid "004A0ECD-7A44-A8CB-5B13-E1A499B3325C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.8318679906315083e-15 -0.072780982962052931 -0.072780982962052931
		-1.5543122344752192e-15 2.0539125955565396e-15 -0.1029278531877813
		-1.5543122344752192e-15 0.072780982962057053 -0.072780982962053153
		-1.8873791418627661e-15 0.10292785318778552 1.5543122344752192e-15
		-2.2204460492503131e-15 0.072780982962057289 0.072780982962056706
		-2.4424906541753444e-15 2.3592239273284576e-15 0.10292785318778552
		-2.3869795029440866e-15 -0.072780982962052543 0.07278098296205715
		-2.0539125955565396e-15 -0.10292785318778111 1.9984014443252818e-15
		-1.8318679906315083e-15 -0.072780982962052931 -0.072780982962052931
		-1.5543122344752192e-15 2.0539125955565396e-15 -0.1029278531877813
		-1.5543122344752192e-15 0.072780982962057053 -0.072780982962053153
		;
createNode joint -n "FKXWrist_R" -p "FKWrist_R";
	rename -uid "3F40F9E0-CD45-B79D-028F-6EA23C18B1BF";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToWrist_R" -p "FKXWrist_R";
	rename -uid "3F64A60C-2A45-33EE-F013-CC8E2FB865C5";
	setAttr ".t" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -80.730279195028757 3.8965260472300614 131.95223509871752 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
createNode orientConstraint -n "FKGlobalShoulder_R_orientConstraint1" -p "FKGlobalShoulder_R";
	rename -uid "145A96C3-7E4D-D22C-6B9D-57B6A64816F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "GlobalShoulder_RW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKGlobalStaticShoulder_RW1" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "FKParentConstraintToChest_M" -p "FKSystem";
	rename -uid "A25B58F7-0245-76D3-22A3-9FA4775C63FD";
createNode pointConstraint -n "FKParentConstraintToChest_M_pointConstraint1" -p "FKParentConstraintToChest_M";
	rename -uid "E3726ACF-8245-5756-A3F3-2892815DEF96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.484402508420011e-17 1.2685383558273318 -0.00472834107243854 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "FKParentConstraintToChest_M_orientConstraint1" -p
		 "FKParentConstraintToChest_M";
	rename -uid "B2E23477-2243-DFA0-D480-BD888076CC7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Chest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.999999999999943 10.374148258997481 89.999999999999943 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 10.37414825899749 89.999999999999972 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetScapula_R" -p "FKParentConstraintToChest_M";
	rename -uid "2430C251-D242-5449-F4F2-E292AFBFB60D";
	setAttr ".t" -type "double3" 0.18201989689939246 0.019001848439436503 -0.080774985253811341 ;
	setAttr ".r" -type "double3" -11.814700752642787 99.469832444343055 -17.783419530062059 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKExtraScapula_R" -p "FKOffsetScapula_R";
	rename -uid "8AD44E23-7645-4397-8B75-8D9F648D8F23";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKScapula_R" -p "FKExtraScapula_R";
	rename -uid "FF54560F-0349-15E7-7211-389CDB5B5DF3";
	setAttr ".sech" no;
	setAttr ".ro" 2;
createNode nurbsCurve -n "FKScapula_RShape" -p "FKScapula_R";
	rename -uid "E3CCEAF7-8F4A-F442-0E52-16BB2F097E55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 18 0 no 3
		23 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 18 18
		21
		0.062260638684703995 -0.13893844770987993 -0.021612123220563939
		0.062260638684703842 -0.13893844770987998 0.014088990142763658
		0.062260638684703662 -0.10865765192580301 0.088469858855168004
		0.062260638684703662 0.00099880986625028312 0.13325277210576592
		0.062260638684703967 0.11065527165830361 0.088469858855168004
		0.0622606386847043 0.14093606744238071 0.01408899014276388
		0.062260638684704425 0.14093606744238077 -0.021612123220563717
		0.062260638684704425 0.14093606744238077 -0.021612123220563717
		0.062260638684704425 0.14093606744238077 -0.021612123220563717
		0.081760638684704443 0.14093606744238074 -0.021612123220563717
		0.081760638684704443 0.14093606744238074 -0.021612123220563717
		0.081760638684704443 0.14093606744238074 -0.021612123220563717
		0.08176063868470429 0.14093606744238069 0.01408899014276388
		0.081760638684703985 0.11065527165830358 0.088469858855168226
		0.081760638684703651 0.00099880986625022761 0.13325277210576569
		0.081760638684703651 -0.10865765192580304 0.088469858855167782
		0.081760638684703874 -0.13893844770988001 0.014088990142763658
		0.081760638684704012 -0.13893844770987995 -0.021612123220563495
		0.081760638684704012 -0.13893844770987995 -0.021612123220563495
		0.081760638684704012 -0.13893844770987995 -0.021612123220563495
		0.062260638684703995 -0.13893844770987993 -0.021612123220563939
		;
createNode joint -n "FKXScapula_R" -p "FKScapula_R";
	rename -uid "780668D6-E344-48F7-6794-7791F7F3B0A2";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetNeck1_M" -p "FKParentConstraintToChest_M";
	rename -uid "3611B717-D442-989D-ABC2-E88DE30099FC";
	setAttr ".t" -type "double3" 0.26103105660829518 -3.0531133177191805e-16 1.178372220486532e-16 ;
	setAttr ".r" -type "double3" 0 0 19.75548085204537 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "FKExtraNeck1_M" -p "FKOffsetNeck1_M";
	rename -uid "F069AE0C-DE4F-E593-1613-E398477C3522";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKNeck1_M" -p "FKExtraNeck1_M";
	rename -uid "50BE8F23-694C-52D5-75E4-63A59CC29D02";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKNeck1_MShape" -p "FKNeck1_M";
	rename -uid "2BF0E13F-9A48-4ADA-D8A0-46A6D17282B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.025076934233988307 -0.10966854027448424 -0.10966854027448419
		0.025076934233988307 1.0026894077644038e-16 -0.15509473702183571
		0.025076934233988307 0.10966854027448435 -0.10966854027448426
		0.025076934233988244 0.15509473702183579 -4.9095687549831837e-17
		0.025076934233988307 0.10966854027448435 0.10966854027448424
		0.025076934233988307 1.3479980863555596e-16 0.15509473702183571
		0.025076934233988307 -0.10966854027448415 0.10966854027448426
		0.025076934233988376 -0.15509473702183565 8.2546854177911834e-17
		0.025076934233988307 -0.10966854027448424 -0.10966854027448419
		0.025076934233988307 1.0026894077644038e-16 -0.15509473702183571
		0.025076934233988307 0.10966854027448435 -0.10966854027448426
		;
createNode joint -n "FKXNeck1_M" -p "FKNeck1_M";
	rename -uid "893E64C3-5344-1D21-511F-759BF8D394E6";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetHead1_M" -p "FKXNeck1_M";
	rename -uid "4FC6CC5D-2541-0E93-63F4-96B0294C9D68";
	setAttr ".t" -type "double3" 0.093853078938296308 8.8817841970012523e-16 -2.0511120684543719e-16 ;
	setAttr ".r" -type "double3" 0 0 -10.323099411908965 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "FKGlobalStaticHead1_M" -p "FKOffsetHead1_M";
	rename -uid "B7258D3A-4140-612E-CA6A-4FB3B8CBAF97";
	setAttr ".ro" 5;
createNode transform -n "FKGlobalHead1_M" -p "FKGlobalStaticHead1_M";
	rename -uid "8A55F7C5-C748-4AC3-DE1E-188896723151";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 1.7347234759768071e-18 -1.2325951644078309e-32 ;
	setAttr ".ro" 5;
createNode transform -n "FKExtraHead1_M" -p "FKGlobalHead1_M";
	rename -uid "4BF575E1-7342-BF38-6FAF-53B97D4BC406";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 -1.7347234759768071e-18 -1.2325951644078309e-32 ;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHead1_M" -p "FKExtraHead1_M";
	rename -uid "F9A2075B-BF41-DFAF-8C12-DBB5F4B99073";
	addAttr -ci true -k true -sn "Global" -ln "Global" -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
	setAttr -k on ".Global" 10;
createNode nurbsCurve -n "FKHead1_MShape" -p "FKHead1_M";
	rename -uid "776A9282-D24C-0D83-976D-049BA6D24814";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.2328499513077025 -0.075226715989557935 -0.075226715989556811
		0.2328499513077025 -3.1502034662186935e-16 -0.10638664200522056
		0.2328499513077025 0.075226715989557214 -0.075226715989556853
		0.23284995130770245 0.10638664200522091 6.5166605254212943e-16
		0.2328499513077025 0.075226715989557214 0.075226715989558199
		0.2328499513077025 -2.9133402980932582e-16 0.10638664200522194
		0.2328499513077025 -0.075226715989557824 0.075226715989558227
		0.23284995130770256 -0.10638664200522158 7.4196575083218237e-16
		0.2328499513077025 -0.075226715989557935 -0.075226715989556811
		0.2328499513077025 -3.1502034662186935e-16 -0.10638664200522056
		0.2328499513077025 0.075226715989557214 -0.075226715989556853
		;
createNode joint -n "FKXHead1_M" -p "FKHead1_M";
	rename -uid "93878D75-C745-C5CC-EF12-00986B54FE33";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode orientConstraint -n "FKGlobalHead1_M_orientConstraint1" -p "FKGlobalHead1_M";
	rename -uid "A12D807F-854C-DB09-5F53-60AA1FFA278E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "GlobalHead1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKGlobalStaticHead1_MW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "FKOffsetScapula_L" -p "FKParentConstraintToChest_M";
	rename -uid "E99ED8C8-5C48-9BC7-DB78-C1850E84DF20";
	setAttr ".t" -type "double3" 0.18201989689939291 0.019001848439436531 0.080774985253811063 ;
	setAttr ".r" -type "double3" 11.814700752642795 -99.469832444342813 162.21658046993778 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "FKExtraScapula_L" -p "FKOffsetScapula_L";
	rename -uid "82C18093-BC4B-8B8B-1BAA-85BBE45EE301";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKScapula_L" -p "FKExtraScapula_L";
	rename -uid "1C9659DF-7A43-B6D7-2583-17835AF8809B";
	setAttr ".sech" no;
	setAttr ".ro" 2;
createNode nurbsCurve -n "FKScapula_LShape" -p "FKScapula_L";
	rename -uid "5A63AC33-2044-5B54-9C7D-5D9B7C247BB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 18 0 no 3
		23 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 18 18
		21
		-0.062260638684704668 0.13893844770987976 0.021612123220564213
		-0.062260638684704654 0.13893844770987976 -0.014088990142763248
		-0.062260638684704647 0.10865765192580278 -0.088469858855167463
		-0.06226063868470464 -0.00099880986625051514 -0.13325277210576528
		-0.062260638684704654 -0.11065527165830379 -0.088469858855167408
		-0.062260638684704668 -0.14093606744238082 -0.014088990142763214
		-0.062260638684704675 -0.14093606744238088 0.021612123220564248
		-0.062260638684704675 -0.14093606744238088 0.021612123220564248
		-0.062260638684704675 -0.14093606744238088 0.021612123220564248
		-0.081760638684704678 -0.14093606744238088 0.021612123220564241
		-0.081760638684704678 -0.14093606744238088 0.021612123220564241
		-0.081760638684704678 -0.14093606744238088 0.021612123220564241
		-0.081760638684704678 -0.14093606744238082 -0.014088990142763214
		-0.081760638684704678 -0.11065527165830379 -0.088469858855167408
		-0.081760638684704651 -0.00099880986625051514 -0.13325277210576528
		-0.081760638684704651 0.10865765192580278 -0.088469858855167463
		-0.081760638684704678 0.13893844770987976 -0.014088990142763248
		-0.081760638684704678 0.13893844770987976 0.021612123220564213
		-0.081760638684704678 0.13893844770987976 0.021612123220564213
		-0.081760638684704678 0.13893844770987976 0.021612123220564213
		-0.062260638684704668 0.13893844770987976 0.021612123220564213
		;
createNode joint -n "FKXScapula_L" -p "FKScapula_L";
	rename -uid "E2685AF5-0848-5273-331A-ACBBCA786F96";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "EBCB6435-1B4F-9349-7245-E8B995C75BAF";
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "FF7EB440-9244-9993-C89C-848FCEE67A47";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "A89928E6-C342-0E04-9A19-2792EB2CAE5D";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "E91E3F92-2045-5A72-7AB6-A9B52EB757A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.045420095370548481 -0.17164803708249324 -0.1838049998711275
		0.045420095370548481 2.4659252926652415e-17 -0.25993952364973372
		0.045420095370548481 0.17164803708249299 -0.18380499987112761
		0.045420095370548412 0.24274698199678166 -9.2762037175417467e-17
		0.045420095370548481 0.1716480370824931 0.18380499987112756
		0.045420095370548481 7.8705341913861829e-17 0.25993952364973377
		0.045420095370548481 -0.17164803708249293 0.18380499987112764
		0.045420095370548551 -0.24274698199678166 1.2787149459898579e-16
		0.045420095370548481 -0.17164803708249324 -0.1838049998711275
		0.045420095370548481 2.4659252926652415e-17 -0.25993952364973372
		0.045420095370548481 0.17164803708249299 -0.18380499987112761
		;
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "8503E30D-3C4C-31C3-4537-23902543FD06";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToRoot_M" -p "FKXRoot_M";
	rename -uid "0E604E07-FA41-AD24-D087-38B6B76E8546";
	setAttr ".t" -type "double3" 0 0 4.9303806576313238e-32 ;
	setAttr ".r" -type "double3" -92.074580745327879 -89.999999999999929 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "FKOffsetSpine1_M" -p "FKXRoot_M";
	rename -uid "EF899C1A-5F4D-9997-2C1A-E3BEE0012382";
	setAttr ".t" -type "double3" 0.1784151170949454 1.8041124150158794e-16 -1.0993825177756142e-16 ;
	setAttr ".r" -type "double3" 0 0 -6.9467483394288614 ;
createNode transform -n "HipSwingerStabilizer" -p "FKOffsetSpine1_M";
	rename -uid "591847D0-164A-9915-DB7F-01B162CFC3DA";
createNode transform -n "FKExtraSpine1_M" -p "HipSwingerStabilizer";
	rename -uid "81C5515E-C749-0E54-FE43-869765BB3DDA";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 0 -1.9721522630525295e-31 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKSpine1_M" -p "FKExtraSpine1_M";
	rename -uid "64DAF1C8-AB4A-F75A-A9C9-58823937C726";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKSpine1_MShape" -p "FKSpine1_M";
	rename -uid "5B6D5223-D846-8E00-C24C-D6B17006014F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -0.159409444028666 -0.15940944402866578
		0 2.5720349954038847e-17 -0.22543899771569401
		0 0.15940944402866586 -0.15940944402866586
		-7.3607786532647882e-17 0.22543899771569423 -7.5921193049400887e-17
		0 0.15940944402866591 0.15940944402866583
		0 7.5912925085173707e-17 0.22543899771569403
		0 -0.15940944402866578 0.15940944402866589
		7.3607786532647882e-17 -0.22543899771569423 1.1542870852508466e-16
		0 -0.159409444028666 -0.15940944402866578
		0 2.5720349954038847e-17 -0.22543899771569401
		0 0.15940944402866586 -0.15940944402866586
		;
createNode joint -n "FKXSpine1_M" -p "FKSpine1_M";
	rename -uid "1EDEA39C-5344-6414-5583-F98C4EFC9FDE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetChest_M" -p "FKXSpine1_M";
	rename -uid "F65F58B2-ED4E-FB9B-4B6C-A587A036AFAD";
	setAttr ".t" -type "double3" 0.13171606289209969 3.3306690738754696e-16 -2.0083484839462316e-16 ;
	setAttr ".r" -type "double3" 0 0 -5.5019806648965011 ;
createNode transform -n "FKExtraChest_M" -p "FKOffsetChest_M";
	rename -uid "83FFCFB0-9340-C9FA-23E3-9EAF34224403";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKChest_M" -p "FKExtraChest_M";
	rename -uid "6F2A3736-9C4F-D57B-07A0-B49EA5A79B14";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKChest_MShape" -p "FKChest_M";
	rename -uid "260E5F0B-CC48-B09A-96DD-AB9FC1C6EAF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -0.15340829001059239 -0.15340829001059211
		0 2.4752077450402346e-17 -0.21695208431344473
		0 0.1534082900105922 -0.1534082900105922
		-8.6939708563805559e-17 0.21695208431344473 -7.0287061741070071e-17
		0 0.15340829001059231 0.15340829001059217
		0 7.3055094683879011e-17 0.21695208431344479
		0 -0.15340829001059214 0.15340829001059228
		8.6939708563805559e-17 -0.21695208431344473 1.1385925012335283e-16
		0 -0.15340829001059239 -0.15340829001059211
		0 2.4752077450402346e-17 -0.21695208431344473
		0 0.1534082900105922 -0.1534082900105922
		;
createNode joint -n "FKXChest_M" -p "FKChest_M";
	rename -uid "D6F9720F-0A44-EAF4-9324-76B22B9CA77F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToChest_M" -p "FKXChest_M";
	rename -uid "54E5ECE9-CE49-4251-6271-E69CE8083CA9";
	setAttr ".t" -type "double3" 0 2.7755575615628914e-17 9.8607613152626476e-32 ;
	setAttr ".r" -type "double3" -79.625851741002535 -89.999999999999929 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode orientConstraint -n "HipSwingerStabilizer_orientConstraint1" -p "HipSwingerStabilizer";
	rename -uid "99184366-D047-EC82-FFE5-BBBB9540D75C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HipSwingerStabilizerTargetW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.033680271475643e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.033680271475643e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "FKXRoot_M_parentConstraint1" -p "FKXRoot_M";
	rename -uid "4A3DC1E4-644F-0D1B-220A-019E8F7D7B12";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HipSwingReverseRootW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "HipSwingerOffset_M" -p "FKRoot_M";
	rename -uid "579CF21F-5547-067A-F2BE-D685E1E40588";
	setAttr ".t" -type "double3" 0.089207558547472643 3.0531133177191805e-16 -0.2380000000000001 ;
createNode transform -n "HipSwinger_M" -p "HipSwingerOffset_M";
	rename -uid "B074A37E-2246-68EF-AB6E-30BF559CC945";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.089207558549753596 6.292914106476033e-11 0.23800000000000002 ;
	setAttr ".sp" -type "double3" 0.089207558549753596 6.292914106476033e-11 0.23800000000000002 ;
createNode nurbsCurve -n "HipSwinger_MShape" -p "HipSwinger_M";
	rename -uid "C6061C3B-BE4E-9CE2-BA62-3CB604C0AF85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.039157515822072178 2.8818221500542409e-16 0.0032521529999017182
		0.041095981857111608 3.0178332475175498e-16 -0.21887082573650674
		0.12134947953629566 2.8818221500542409e-16 0.0032521529999017182
		-0.10077349920011275 2.9309632445808366e-16 -0.077001344679282296
		0.12134947953629566 2.9801043391074323e-16 -0.15725484235846632
		0.04109598185711158 2.8440932416441234e-16 0.064868136377942268
		-0.039157515822072234 2.9801043391074323e-16 -0.15725484235846626
		0.1829654629143363 2.9309632445808366e-16 -0.077001344679282172
		-0.039157515822072178 2.8818221500542409e-16 0.0032521529999017182
		0.041095981857111608 3.0178332475175498e-16 -0.21887082573650674
		0.12134947953629566 2.8818221500542409e-16 0.0032521529999017182
		;
createNode transform -n "HipSwingerStabilizerTarget" -p "FKRoot_M";
	rename -uid "A7D74467-8E44-9D6A-1351-C98F39A6260A";
	setAttr ".t" -type "double3" 0.17841511709494517 1.9428902930940239e-16 -1.0993825177756122e-16 ;
	setAttr ".r" -type "double3" 0 0 -6.9467483394288738 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "HipSwingReverse" -p "FKRoot_M";
	rename -uid "04C3E0E7-5746-420F-58A9-66A655C3ECAD";
	setAttr ".t" -type "double3" 0.17841511709494495 1.8735013540549517e-16 -1.0993825177756122e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "HipSwingReverseRoot" -p "HipSwingReverse";
	rename -uid "1F456B77-964D-74BF-4BE9-4DAEA5D7D900";
	setAttr ".t" -type "double3" -0.17841511709494484 -1.8735013540549517e-16 1.0993825177756117e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode orientConstraint -n "HipSwingReverse_orientConstraint1" -p "HipSwingReverse";
	rename -uid "44433C04-F441-CFB9-FEC9-A396E122D69A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "HipSwinger_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "FKParentConstraintToWrist_L" -p "FKSystem";
	rename -uid "D736DF28-1F45-EAFE-6758-18A230EE8604";
createNode pointConstraint -n "FKParentConstraintToWrist_L_pointConstraint1" -p "FKParentConstraintToWrist_L";
	rename -uid "901428B3-EB45-79AA-3EE4-CC9EBEC53002";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.62303043402476876 1.1638390914367513 0.0026780981611006088 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "FKParentConstraintToWrist_L_orientConstraint1" -p
		 "FKParentConstraintToWrist_L";
	rename -uid "C2775712-B04A-34C0-882C-8EBEA274EE61";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -99.2697208049713 3.8965260472300431 131.95223509871775 ;
	setAttr ".rsrr" -type "double3" -99.269720804971271 3.8965260472300502 131.95223509871775 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetMiddleFinger1_L" -p "FKParentConstraintToWrist_L";
	rename -uid "F7D92DD8-F943-0D35-FFCF-4EBE56B3086A";
	setAttr ".t" -type "double3" -0.11141129389429288 -3.8857805861880479e-16 -2.4424906541753444e-15 ;
	setAttr ".r" -type "double3" 18.993433003791754 25.346966221398649 -10.152550896856686 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "FKExtraMiddleFinger1_L" -p "FKOffsetMiddleFinger1_L";
	rename -uid "F65EA602-414A-9D7E-93FC-24873F2CF1B5";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMiddleFinger1_L" -p "FKExtraMiddleFinger1_L";
	rename -uid "B31EE30A-4944-1D35-BC72-BCB0ABCA7408";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMiddleFinger1_LShape" -p "FKMiddleFinger1_L";
	rename -uid "94F6F2A7-C549-A74E-69A6-56962631F8F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXMiddleFinger1_L" -p "FKMiddleFinger1_L";
	rename -uid "8275E7B0-1747-3A2E-C53B-B9975D4FA288";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetMiddleFinger2_L" -p "FKXMiddleFinger1_L";
	rename -uid "8C0C38C3-AD44-3E23-E62E-AD9E30537FBC";
	setAttr ".t" -type "double3" -0.06006421011324492 5.5511151231257827e-17 7.7715611723760958e-16 ;
	setAttr ".r" -type "double3" 0.03672805640114022 12.839120905579097 -0.0005096463067282127 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "FKExtraMiddleFinger2_L" -p "FKOffsetMiddleFinger2_L";
	rename -uid "8C29C1C1-664F-A38A-8F83-F2B95648680E";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKMiddleFinger2_L" -p "FKExtraMiddleFinger2_L";
	rename -uid "D9B78740-5F4E-D74F-EEEC-F0844D4761F8";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKMiddleFinger2_LShape" -p "FKMiddleFinger2_L";
	rename -uid "4A742B08-B246-68DD-2FCE-39832D033D89";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXMiddleFinger2_L" -p "FKMiddleFinger2_L";
	rename -uid "26F5B64E-E74E-93AB-56F0-FBBD02B1C589";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetThumbFinger1_L" -p "FKParentConstraintToWrist_L";
	rename -uid "F1F85628-594A-DC6E-F634-84805E9EE642";
	setAttr ".t" -type "double3" -0.053405971315592993 -0.067313284111641447 0.032929810746921806 ;
	setAttr ".r" -type "double3" -57.854153758165829 -19.391818126890634 33.794800205786117 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "FKExtraThumbFinger1_L" -p "FKOffsetThumbFinger1_L";
	rename -uid "FC140259-C24A-4D46-E388-4F869CD2915A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKThumbFinger1_L" -p "FKExtraThumbFinger1_L";
	rename -uid "6109947A-8346-2337-561E-F2BFF0B52546";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKThumbFinger1_LShape" -p "FKThumbFinger1_L";
	rename -uid "9FDA4767-D24C-8ED9-7385-0FAD1398028A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXThumbFinger1_L" -p "FKThumbFinger1_L";
	rename -uid "614756EF-864E-EFF1-6A40-9087B63E4CF7";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetThumbFinger2_L" -p "FKXThumbFinger1_L";
	rename -uid "AC540967-8640-BAF9-4B93-FB923DF6AEF6";
	setAttr ".t" -type "double3" -0.038131005213532521 -1.5418510912468264e-10 -2.0206225581631543e-10 ;
	setAttr ".r" -type "double3" 0 6.7722814342273292 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "FKExtraThumbFinger2_L" -p "FKOffsetThumbFinger2_L";
	rename -uid "2E3E3A75-5545-DF18-9237-62A29071F9B4";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKThumbFinger2_L" -p "FKExtraThumbFinger2_L";
	rename -uid "CC4879D5-A84B-8581-9A44-039681775B6B";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKThumbFinger2_LShape" -p "FKThumbFinger2_L";
	rename -uid "C904D9E5-0F43-D9CB-A0E6-B1988B74E0C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXThumbFinger2_L" -p "FKThumbFinger2_L";
	rename -uid "6B115C91-8C46-D6CB-C278-6D980F6BB5A3";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetIndexFinger1_L" -p "FKParentConstraintToWrist_L";
	rename -uid "BD62B2C0-8D43-0347-9BCF-A9AECEDC1539";
	setAttr ".t" -type "double3" -0.10146401372518804 -0.054382652986965277 0.00065477156966498029 ;
	setAttr ".r" -type "double3" -9.2566702165535393 21.690791058890639 11.001561814853128 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "FKExtraIndexFinger1_L" -p "FKOffsetIndexFinger1_L";
	rename -uid "9C30E543-6442-72CF-DC38-15A61BE24D46";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKIndexFinger1_L" -p "FKExtraIndexFinger1_L";
	rename -uid "79C9ECCF-C145-D62F-C467-658825052703";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKIndexFinger1_LShape" -p "FKIndexFinger1_L";
	rename -uid "D6C6887E-2F47-3EDC-BD40-CFAAF11A0BE0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXIndexFinger1_L" -p "FKIndexFinger1_L";
	rename -uid "E6FBF516-4942-5570-742C-678555BC7E4A";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetIndexFinger2_L" -p "FKXIndexFinger1_L";
	rename -uid "E087DD30-B142-5755-961C-D49AC9340FCF";
	setAttr ".t" -type "double3" -0.053652847326910003 -2.1469215294445121e-12 -1.0187628518565361e-11 ;
	setAttr ".r" -type "double3" 0 15.101020298042517 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "FKExtraIndexFinger2_L" -p "FKOffsetIndexFinger2_L";
	rename -uid "33DC2777-874A-8333-4169-19B561483BC5";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKIndexFinger2_L" -p "FKExtraIndexFinger2_L";
	rename -uid "2F229887-5A40-9FC1-23FD-72B324AB8DB2";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKIndexFinger2_LShape" -p "FKIndexFinger2_L";
	rename -uid "F77D819A-8940-9DB0-768A-3F9A5BA17498";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		7.9936057773011219e-18 -0.019947495375978966 6.2173950898265173e-18
		0 -0.014105009248042033 -0.014105009248042024
		0 -6.7169954509078381e-18 -0.019947495375978973
		0 0.014105009248042023 -0.01410500924804203
		-7.9936057773011219e-18 0.019947495375978966 -1.0713798339558401e-17
		0 0.01410500924804204 0.014105009248042019
		0 -2.2758110485559243e-18 0.019947495375978966
		0 -0.014105009248042026 0.014105009248042026
		;
createNode joint -n "FKXIndexFinger2_L" -p "FKIndexFinger2_L";
	rename -uid "7F501E17-2545-249E-0BA0-4B97620A16F5";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKParentConstraintToScapula_L" -p "FKSystem";
	rename -uid "E1D1DB44-E541-F1EC-F0F1-EFB677D93DB0";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
createNode pointConstraint -n "FKParentConstraintToScapula_L_pointConstraint1" -p
		 "FKParentConstraintToScapula_L";
	rename -uid "14A7FDB0-0B4F-5C07-B0AD-8DACD041BAAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.080774985253811035 1.4510045051574711 -0.018814414336918293 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "FKParentConstraintToScapula_L_orientConstraint1" 
		-p "FKParentConstraintToScapula_L";
	rename -uid "198552FC-3C48-C530-5E10-229DB3EA0EF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -91.642493042054156 -16.078729485954032 171.18404348451037 ;
	setAttr ".rsrr" -type "double3" -91.64249304205417 -16.078729485954032 171.18404348451037 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetShoulder_L" -p "FKParentConstraintToScapula_L";
	rename -uid "69670533-2C46-B101-EE56-DDAA7E0361C8";
	setAttr ".t" -type "double3" -0.14515227443629883 -4.163336342344337e-17 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -3.3063208701303939 24.409339013294815 7.9580413714739704 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "FKGlobalStaticShoulder_L" -p "FKOffsetShoulder_L";
	rename -uid "9561C596-FA40-CE37-78C4-DFB18EC93890";
	setAttr ".ro" 5;
createNode transform -n "FKGlobalShoulder_L" -p "FKGlobalStaticShoulder_L";
	rename -uid "F064AADF-544D-DE22-78DD-289445D594D6";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "FKExtraShoulder_L" -p "FKGlobalShoulder_L";
	rename -uid "71F8C4E0-DE43-CBB6-A043-82A68FAC8EF8";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 1.3877787807814457e-17 2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKShoulder_L" -p "FKExtraShoulder_L";
	rename -uid "AAA09DBB-0849-37FD-BA79-E2A5289603EF";
	addAttr -ci true -k true -sn "Global" -ln "Global" -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
	setAttr -k on ".Global" 10;
createNode nurbsCurve -n "FKShoulder_LShape" -p "FKShoulder_L";
	rename -uid "4EFB1387-C94B-DF2D-93DE-059322AD80F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.051541395311246282 0.094779618044295355 0.094779618044295272
		-0.051541395311246282 -1.6895862960119042e-17 0.13403862127478416
		-0.051541395311246282 -0.094779618044295161 0.0947796180442953
		-0.051541395311246234 -0.13403862127478411 8.3982254868782922e-17
		-0.051541395311246282 -0.094779618044295216 -0.094779618044295133
		-0.051541395311246282 -4.6738719063005147e-17 -0.13403862127478397
		-0.051541395311246282 0.094779618044295216 -0.094779618044295175
		-0.051541395311246331 0.134038621274784 -2.9788109832958932e-17
		-0.051541395311246282 0.094779618044295355 0.094779618044295272
		-0.051541395311246282 -1.6895862960119042e-17 0.13403862127478416
		-0.051541395311246282 -0.094779618044295161 0.0947796180442953
		;
createNode joint -n "FKXShoulder_L" -p "FKShoulder_L";
	rename -uid "68F9D317-1F43-EBBB-0B4F-298175368DA1";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToShoulder_L" -p "FKXShoulder_L";
	rename -uid "0DA45F39-D44A-6FA7-CC3E-9E8A7531C6FF";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -1.3877787807814457e-17 0 ;
	setAttr ".r" -type "double3" 87.740550174797775 8.6943091944068698 -146.06062654888783 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKOffsetElbow_L" -p "FKXShoulder_L";
	rename -uid "2B353437-5549-05AA-FB84-FBA619982F9A";
	setAttr ".t" -type "double3" -0.26399019812439206 -3.6082248300317588e-16 1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 0 0 33.212314632644095 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "FKExtraElbow_L" -p "FKOffsetElbow_L";
	rename -uid "A010D53E-8B44-F2DA-A43D-7C86FE39843B";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKElbow_L" -p "FKExtraElbow_L";
	rename -uid "E36D59AA-504C-46B6-4682-E19A971FAD38";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKElbow_LShape" -p "FKElbow_L";
	rename -uid "15BBE7E8-EA4A-7B6C-80DE-EEA3883D6F22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.042270801259843539 0.091989438374204896 0.09198943837420441
		-0.042270801259843539 1.5485905362342526e-16 0.13009271134388425
		-0.042270801259843539 -0.091989438374204396 0.091989438374204494
		-0.042270801259843505 -0.13009271134388403 -5.94962785048143e-17
		-0.042270801259843539 -0.091989438374204452 -0.091989438374204632
		-0.042270801259843539 1.2589472955214956e-16 -0.13009271134388406
		-0.042270801259843539 0.091989438374204646 -0.09198943837420466
		-0.042270801259843574 0.13009271134388431 -1.6991740246049984e-16
		-0.042270801259843539 0.091989438374204896 0.09198943837420441
		-0.042270801259843539 1.5485905362342526e-16 0.13009271134388425
		-0.042270801259843539 -0.091989438374204396 0.091989438374204494
		;
createNode joint -n "FKXElbow_L" -p "FKElbow_L";
	rename -uid "605DCAE7-F941-CE32-BEAB-52A4C1A3DFEA";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "FKOffsetWrist_L" -p "FKXElbow_L";
	rename -uid "B02BBFBC-ED40-BE32-D588-12B06FFD4492";
	setAttr ".t" -type "double3" -0.24507786120544039 5.6857296648615829e-14 -8.4376949871511897e-15 ;
	setAttr ".r" -type "double3" -4.9452010068942727 17.251030124441314 -18.959314186770357 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "FKExtraWrist_L" -p "FKOffsetWrist_L";
	rename -uid "8A9C37A3-1A45-5507-9FEF-189AB9C0E439";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKWrist_L" -p "FKExtraWrist_L";
	rename -uid "F3EF8528-F542-667A-891B-BFBD69C1D6D3";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKWrist_LShape" -p "FKWrist_L";
	rename -uid "C82805E4-B54D-3F05-5157-B19D00A4FFF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.072780982962054985 0.072780982962055041
		0 -1.1743045483844523e-17 0.10292785318778329
		0 -0.072780982962054916 0.072780982962055082
		2.6159074906217926e-17 -0.10292785318778327 1.6014725328545983e-16
		0 -0.072780982962054958 -0.072780982962054791
		0 -3.4659284717348615e-17 -0.10292785318778334
		0 0.072780982962054833 -0.072780982962054819
		-2.6159074906217926e-17 0.10292785318778327 7.2783333216965257e-17
		0 0.072780982962054985 0.072780982962055041
		0 -1.1743045483844523e-17 0.10292785318778329
		0 -0.072780982962054916 0.072780982962055082
		;
createNode joint -n "FKXWrist_L" -p "FKWrist_L";
	rename -uid "69204777-7D4A-6268-8EAD-6AA93275573D";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "AlignIKToWrist_L" -p "FKXWrist_L";
	rename -uid "EF45E787-1D43-A194-A6C0-CE823D9927DB";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 2.7755575615628914e-17 0 ;
	setAttr ".r" -type "double3" 99.269720804971243 -3.8965260472300574 -131.95223509871778 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999978 ;
createNode orientConstraint -n "FKGlobalShoulder_L_orientConstraint1" -p "FKGlobalShoulder_L";
	rename -uid "49F58259-6A4D-B6C8-32D3-CE8F331C62AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "GlobalShoulder_LW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKGlobalStaticShoulder_LW1" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "FFD73775-9542-52AE-D4A2-AB9E0E3E9D9B";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "9A7C1B79-F844-2133-14F7-F8951C75AF02";
createNode transform -n "IKParentConstraintHip_R" -p "IKJoints";
	rename -uid "86388CAF-FB47-7B68-9B60-BB85658A1217";
	setAttr ".ro" 2;
createNode parentConstraint -n "IKParentConstraintHip_R_parentConstraint1" -p "IKParentConstraintHip_R";
	rename -uid "635E4979-E044-4F6A-711A-7EA3CF10A3E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "IKXOffsetHip_R" -p "IKParentConstraintHip_R";
	rename -uid "8AA02CC8-3848-B857-C764-8A8845616AE8";
	setAttr ".t" -type "double3" -0.11855830252170585 -0.039645314216613881 0.0024217396421591319 ;
	setAttr ".r" -type "double3" -10.083291196780465 -91.336843736909728 -93.280828459302782 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode joint -n "IKXHip_R" -p "IKXOffsetHip_R";
	rename -uid "D7D20CAE-EF49-42BC-2037-A48BAB845DCA";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".r" -type "double3" 8.5318676222655758e-07 -3.1651031501442714e-08 -2.3565321854806537e-16 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Hip_R" -p "IKXHip_R";
	rename -uid "A4BE56CF-4245-E62A-B54B-D088C4361248";
	setAttr ".rp" -type "double3" 0 0 -5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 0 0 -5.5511151231257827e-17 ;
createNode joint -n "IKXKnee_R" -p "IKXHip_R";
	rename -uid "8328E1BB-4A4E-0392-E848-949428CA2BD8";
	setAttr ".t" -type "double3" 0.40379884839057922 -9.0205620750793969e-17 2.1649348980190553e-15 ;
	setAttr ".r" -type "double3" 7.8183150097424185e-21 1.4275925108829564e-19 -3.3667438957509735e-06 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1182987996237905 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Knee_R" -p "IKXKnee_R";
	rename -uid "CD2665FC-AE49-C10A-1E3B-949F2C701ECC";
	setAttr ".rp" -type "double3" 5.5511151231257827e-17 2.7755575615628914e-17 -5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 5.5511151231257827e-17 2.7755575615628914e-17 -5.5511151231257827e-17 ;
createNode joint -n "IKXAnkle_R" -p "IKXKnee_R";
	rename -uid "2DC9FC22-414F-7D1E-D42B-8D8A82D0660C";
	setAttr ".t" -type "double3" 0.43027850985527039 -1.8041124150158794e-16 9.9920072216264089e-16 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5428771174068481 10.08329119678063 7.3991272589266668 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Ankle_R" -p "IKXAnkle_R";
	rename -uid "E7240696-DE4C-C95A-2301-ABA183C3E5E9";
	setAttr ".rp" -type "double3" -1.3877787807814457e-16 -1.3877787807814457e-17 1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" -1.3877787807814457e-16 -1.3877787807814457e-17 1.1102230246251565e-16 ;
createNode joint -n "IKXToes_R" -p "IKXAnkle_R";
	rename -uid "CEBBB8C0-4E4F-D2D7-6F2A-EA8F46099030";
	setAttr ".t" -type "double3" 0.078857190798342303 0.13473210220142626 0.00015036161281474622 ;
	setAttr ".r" -type "double3" 0.0012187671976091445 -0.21302785178414821 0.65581128687449808 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.9748052951220547 -3.5809005336107798 78.832640671216723 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Toes_R" -p "IKXToes_R";
	rename -uid "7EAB2205-954F-3E64-7677-90A6B54BA63A";
	setAttr ".rp" -type "double3" 1.3877787807814457e-17 -4.90059381963448e-17 -1.6653345369377348e-16 ;
	setAttr ".sp" -type "double3" 1.3877787807814457e-17 -4.90059381963448e-17 -1.6653345369377348e-16 ;
createNode joint -n "IKXToesEnd_R" -p "IKXToes_R";
	rename -uid "BFDA2576-CC4C-6749-9F68-1FBF0FF48843";
	setAttr ".t" -type "double3" 0.11471097458358522 3.4256451841851998e-15 3.8857805861880479e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2ToesEnd_R" -p "IKXToesEnd_R";
	rename -uid "9AF3640F-3B48-60D0-2D1E-43888F8C4A50";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 2.7321894746634712e-17 0 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 2.7321894746634712e-17 0 ;
createNode ikEffector -n "IKToesEffector_R" -p "IKXToes_R";
	rename -uid "A2EB4992-B147-A058-DF9B-0A80A7BDA6B4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "IKXAnkle_R_orientConstraint1" -p "IKXAnkle_R";
	rename -uid "6458D4CB-BF42-A2C4-1BF5-D898243DB204";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFKAlignedLeg_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.8944816229945074e-07 -8.9249491196238146e-08 3.3135402884350058e-06 ;
	setAttr ".rsrr" -type "double3" 4.7509535554361272e-14 -2.1443896016429767e-14 -9.5466336610803399e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "IKAnkleEffector_R" -p "IKXAnkle_R";
	rename -uid "5631AF09-B040-A11E-4574-249E489B23F6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "IKLegEffector_R" -p "IKXKnee_R";
	rename -uid "B3FF3A3B-EE4F-15C7-5195-C385828A263C";
	setAttr -l on ".v" no;
	setAttr ".ro" 3;
	setAttr ".hd" yes;
createNode transform -n "PoleAnnotationLeg_R" -p "IKXKnee_R";
	rename -uid "265A227F-8E47-264B-ABA3-3DB99E21BF4A";
createNode annotationShape -n "PoleAnnotationLeg_RShape" -p "PoleAnnotationLeg_R";
	rename -uid "CD53D699-CD4D-D451-1EEA-A2B95798087C";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "IKMessureFromHip_R" -p "IKParentConstraintHip_R";
	rename -uid "E6CD676E-004A-BFB1-F3B6-10A3DD1308B3";
	setAttr ".t" -type "double3" -0.11855830252170584 -0.03964531421661377 0.0024217396421591388 ;
	setAttr ".r" -type "double3" -10.083291196780465 -91.336843736909728 -93.280828459302782 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "IKParentConstraintShoulder_R" -p "IKJoints";
	rename -uid "A3AFA782-614A-CD30-560B-11B36B7AE539";
	setAttr ".ro" 5;
createNode parentConstraint -n "IKParentConstraintShoulder_R_parentConstraint1" -p
		 "IKParentConstraintShoulder_R";
	rename -uid "B1E674F3-6C4E-012A-74E4-B3BCD7E28EE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -88.40089680950976 -9.267425208633469 164.17259241179008 ;
	setAttr ".rst" -type "double3" -0.080774985253811396 1.4510045051574707 -0.01881441433691838 ;
	setAttr ".rsrr" -type "double3" -88.40089680950976 -9.2674252086334707 164.17259241179008 ;
	setAttr -k on ".w0";
createNode transform -n "IKXOffsetShoulder_R" -p "IKParentConstraintShoulder_R";
	rename -uid "73524A0A-E346-D3CF-5593-6488CE792DDA";
	setAttr ".t" -type "double3" 0.14515227443629866 -7.2164496600635175e-16 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -3.3063208701303646 24.409339013294819 7.9580413714739002 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999922 ;
createNode joint -n "IKXShoulder_R" -p "IKXOffsetShoulder_R";
	rename -uid "A2607D20-8F44-4290-60DF-D4A25CDA0E69";
	setAttr ".t" -type "double3" 0 1.3877787807814457e-17 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -1.3491718764495528e-14 -3.8613938287025868e-15 -2.3677715116469901e-28 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "IKX2Shoulder_R" -p "IKXShoulder_R";
	rename -uid "499A64E4-6F48-27A9-E21F-9CB68548425E";
createNode joint -n "IKXElbow_R" -p "IKXShoulder_R";
	rename -uid "7B781A66-8345-5EEB-DBB9-9EA21AC080A4";
	setAttr ".t" -type "double3" 0.26399019360542297 -8.0491169285323849e-16 -1.5543122344752192e-15 ;
	setAttr ".r" -type "double3" 1.4928636713561905e-19 2.6083666109128257e-19 -3.5416572044566156e-06 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 33.212314632644095 ;
createNode transform -n "IKX2Elbow_R" -p "IKXElbow_R";
	rename -uid "5C9A7517-2547-C2DC-1839-5BABB60EAB80";
	setAttr ".rp" -type "double3" -2.7755575615628914e-16 5.5511151231257827e-17 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" -2.7755575615628914e-16 5.5511151231257827e-17 2.2204460492503131e-16 ;
createNode joint -n "IKXWrist_R" -p "IKXElbow_R";
	rename -uid "19DDC740-3A45-08B0-1569-298A35FCBECB";
	setAttr ".t" -type "double3" 0.24507786333560944 -5.7995275248856615e-14 9.7699626167013776e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.56845222842202 14.561510742964455 -21.063934011378972 ;
createNode transform -n "IKX2Wrist_R" -p "IKXWrist_R";
	rename -uid "C6213B99-EF4B-DE47-432C-76AFD58A2000";
	setAttr ".rp" -type "double3" -1.6653345369377348e-16 5.5511151231257827e-17 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" -1.6653345369377348e-16 5.5511151231257827e-17 -2.2204460492503131e-16 ;
createNode orientConstraint -n "IKXWrist_R_orientConstraint1" -p "IKXWrist_R";
	rename -uid "0EE300FE-3D4C-0EC6-1E27-9183E2D83AFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFKAlignedArm_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -8.9044075776451237e-07 -6.2871026078830462e-07 3.3697439349133734e-06 ;
	setAttr ".rsrr" -type "double3" -5.9237830942257983e-14 3.3793393490549887e-14 -4.0552072188659822e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "IKArmEffector_R" -p "IKXElbow_R";
	rename -uid "33515FAF-9F43-0A83-9D8F-4281A6AD6616";
	setAttr -l on ".v" no;
	setAttr ".ro" 5;
	setAttr ".hd" yes;
createNode transform -n "PoleAnnotationArm_R" -p "IKXElbow_R";
	rename -uid "2715B3E1-C54A-2E21-83D2-23A4187639D8";
createNode annotationShape -n "PoleAnnotationArm_RShape" -p "PoleAnnotationArm_R";
	rename -uid "F6763576-6940-207B-18AF-9A954CDF7B5A";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "IKMessureFromShoulder_R" -p "IKParentConstraintShoulder_R";
	rename -uid "D7BEF85A-BD42-D8FA-CA53-9EABFCC1B51E";
	setAttr ".t" -type "double3" 0.14515227443629855 -7.3552275381416621e-16 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -3.3063208701303677 24.409339013294822 7.9580413714739082 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
createNode transform -n "IKParentConstraintRoot_M" -p "IKJoints";
	rename -uid "D85B7DB0-D346-42FB-039E-C28A3AB8C15B";
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "IKXOffsetRoot_M" -p "IKParentConstraintRoot_M";
	rename -uid "6C3C3750-DD47-EF21-6A35-969DB7FD9D8F";
	setAttr ".t" -type "double3" 0 0 4.9303806576313238e-32 ;
createNode joint -n "IKXRoot_M" -p "IKXOffsetRoot_M";
	rename -uid "9E1B6CA6-B144-7971-2819-C98C0CA9121B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "IKX2Root_M" -p "IKXRoot_M";
	rename -uid "9358E171-4043-7CCE-E379-13AEDB8DEFB5";
createNode joint -n "IKXSpine1_M" -p "IKXRoot_M";
	rename -uid "1D4C1263-C447-449B-2D2A-A0BC0050236A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.9467483394288525 ;
createNode transform -n "IKX2Spine1_M" -p "IKXSpine1_M";
	rename -uid "36F47671-B347-892B-ECD7-EFA63FF98D60";
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 1.3877787807814457e-17 0 ;
	setAttr ".sp" -type "double3" 2.2204460492503131e-16 1.3877787807814457e-17 0 ;
createNode joint -n "IKXChest_M" -p "IKXSpine1_M";
	rename -uid "4A9020B3-604C-B31A-9575-68ACD911C925";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -5.5019806648964957 ;
createNode transform -n "IKX2Chest_M" -p "IKXChest_M";
	rename -uid "39529B86-0C40-8ADE-508D-3FB689C5FB7F";
	setAttr ".rp" -type "double3" 0 0 9.8607613152626476e-32 ;
	setAttr ".sp" -type "double3" 0 0 9.8607613152626476e-32 ;
createNode pointConstraint -n "IKXChest_M_pointConstraint1" -p "IKXChest_M";
	rename -uid "3AC9666E-A049-AD41-F498-8DA1E7A779B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpChestFollowOffset_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine3LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0.13171606289210014 3.7470027081099033e-16 -2.0083484839462365e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "IKXChest_M_orientConstraint1" -p "IKXChest_M";
	rename -uid "F7E2F2B3-0940-378B-5260-28A443A87F94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine3LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.033680271475643e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.4312496066585827e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IKXSpine1_M_parentConstraint1" -p "IKXSpine1_M";
	rename -uid "1D1BF6EE-B842-8B6C-864C-C793DDA7F845";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcSpine1FollowOffset_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpSpine1FollowOffset_MW1" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.9756933518293944e-15 ;
	setAttr ".rst" -type "double3" 0.17841511709494495 1.9428902930940239e-16 -1.0993825177756127e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.9756933518293944e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXRoot_M_parentConstraint1" -p "IKXRoot_M";
	rename -uid "7EE0F780-3A4E-2C92-E386-91B1D387BFBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcRootFollowOffset_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpRootFollowOffset_MW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 0 0 9.8607613152626476e-32 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "IKfake0Spine_M" -p "IKParentConstraintRoot_M";
	rename -uid "B6B656BF-F947-D79D-178C-8E9E54DAAD71";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 0 0 1.9721522630525295e-31 ;
	setAttr ".r" -type "double3" -3.1351112570932921e-15 1.6959327662061356e-14 -2.9497320396510691 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.409900865894135e-14 5.3473893887043409e-14 -2.9497320168432606 ;
createNode joint -n "IKSpSpine1_M" -p "IKfake0Spine_M";
	rename -uid "54140153-EB46-2037-3E20-86AC09263BF9";
	setAttr ".t" -type "double3" 0.17817872762680054 0.0091812056655353538 -1.0993825177756156e-16 ;
	setAttr ".r" -type "double3" 6.4022517801988686e-15 5.7211851957763664e-15 6.9467483622363755 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4099008658941356e-14 5.3473893887043409e-14 0 ;
createNode joint -n "IKSpChest_M" -p "IKSpSpine1_M";
	rename -uid "7329AF6A-0740-0ED0-34FC-988B99E983A1";
	setAttr ".t" -type "double3" 0.13139568747231678 -0.0091812056655352983 -1.0632303060583474e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4099008658941356e-14 -5.3473893887043409e-14 8.9453100416161419e-16 ;
createNode joint -n "IKfake1Spine_M" -p "IKSpChest_M";
	rename -uid "E3D0023F-EC48-CF9C-D209-0180B22DAFCC";
	setAttr -l on ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "IKSpineEffector_M" -p "IKSpChest_M";
	rename -uid "79B106F6-B643-543F-3442-36B326202B29";
	setAttr -l on ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IKFixedOrientRoot_M" -p "IKfake0Spine_M";
	rename -uid "1B7379F8-4E43-4631-7DBF-EB8652302B93";
createNode orientConstraint -n "IKFixedOrientRoot_M_orientConstraint1" -p "IKFixedOrientRoot_M";
	rename -uid "5B653836-9F44-4AA0-42AC-768ED137F671";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKfake0Spine_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine1LocalOrient3_MW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.975693351829396e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKAcRootFollowOffset_M" -p "IKFixedOrientRoot_M";
	rename -uid "F3366774-EC4D-3E57-1E5C-1783C6A56439";
	setAttr ".t" -type "double3" 0 0 -1.4791141972893971e-31 ;
	setAttr ".r" -type "double3" 0 0 5.8994640564943301 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "IKSpRootFollowOffset_M" -p "IKFixedOrientRoot_M";
	rename -uid "73C24808-D64B-400E-28EF-36B4C7558EF5";
	setAttr ".t" -type "double3" 0 0 -2.4651903288156619e-31 ;
	setAttr ".r" -type "double3" 0 0 5.8994640564943301 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "IKParentConstraintHip_L" -p "IKJoints";
	rename -uid "8372D1C8-FC49-2ADC-DC82-ADB20574C256";
	setAttr ".ro" 2;
createNode parentConstraint -n "IKParentConstraintHip_L_parentConstraint1" -p "IKParentConstraintHip_L";
	rename -uid "71529DDF-4745-C654-FD02-7B86C538DD4D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "IKXOffsetHip_L" -p "IKParentConstraintHip_L";
	rename -uid "35EE4DE3-1342-FDC7-4839-27BB2CFE2832";
	setAttr ".t" -type "double3" 0.11855830252170566 -0.039645314216614214 0.0024217396421591366 ;
	setAttr ".r" -type "double3" 10.08329119678052 -88.663156263090329 86.719171540697246 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
createNode joint -n "IKXHip_L" -p "IKXOffsetHip_L";
	rename -uid "CD7AF196-DC45-7992-07AF-31B7AF9CA0DC";
	setAttr ".t" -type "double3" 0 -6.9388939039072284e-18 0 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Hip_L" -p "IKXHip_L";
	rename -uid "07CC55CB-6347-5DE7-6C4F-4EBAA2E19377";
createNode joint -n "IKXKnee_L" -p "IKXHip_L";
	rename -uid "856FE0B5-8445-5256-7659-80853AA82AB8";
	setAttr ".t" -type "double3" -0.40379884839057922 -2.0816681711721685e-17 -2.7755575615628914e-15 ;
	setAttr ".r" -type "double3" 1.1293121287749145e-20 1.6539124249464813e-19 -3.3667437785914226e-06 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1182987996238545 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Knee_L" -p "IKXKnee_L";
	rename -uid "46779DAC-AD4C-B49E-FB27-0CB063027F91";
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 0 0 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-16 0 0 ;
createNode joint -n "IKXAnkle_L" -p "IKXKnee_L";
	rename -uid "DD1344B3-8C43-E7A7-C95E-DBAE8F35AA41";
	setAttr ".t" -type "double3" -0.43027850985527039 7.4940054162198066e-16 -1.4432899320127035e-15 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5428771174068299 10.083291196780536 7.3991272589265762 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Ankle_L" -p "IKXAnkle_L";
	rename -uid "CD0A1AAF-C143-610B-B84D-DA860C689B8D";
	setAttr ".rp" -type "double3" 1.2490009027033011e-16 1.3877787807814457e-17 0 ;
	setAttr ".sp" -type "double3" 1.2490009027033011e-16 1.3877787807814457e-17 0 ;
createNode joint -n "IKXToes_L" -p "IKXAnkle_L";
	rename -uid "292A4F19-3B4E-D90D-293F-2B828F915099";
	setAttr ".t" -type "double3" -0.078391844761741658 -0.13237488586033422 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 5.6290474530039392e-09 2.6927356043652572e-22 3.2688231143655286e-23 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.9748052951222901 -3.5809005336107953 78.832640671274135 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2Toes_L" -p "IKXToes_L";
	rename -uid "77B7A33B-3948-F16D-4D83-51B1D6A2E68E";
	setAttr ".rp" -type "double3" -2.7755575615628914e-17 1.3444106938820255e-17 2.7755575615628914e-16 ;
	setAttr ".sp" -type "double3" -2.7755575615628914e-17 1.3444106938820255e-17 2.7755575615628914e-16 ;
createNode joint -n "IKXToesEnd_L" -p "IKXToes_L";
	rename -uid "A005D680-0443-7E38-656A-DC911296AD25";
	setAttr ".t" -type "double3" -0.11471097458358544 -5.487364035383635e-15 -6.6613381477509392e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode transform -n "IKX2ToesEnd_L" -p "IKXToesEnd_L";
	rename -uid "152EF1BE-DA4C-5ED7-4383-9EBC8FDE2863";
	setAttr ".rp" -type "double3" -8.3266726846886741e-17 -7.3725747729014302e-18 -1.1102230246251565e-16 ;
	setAttr ".sp" -type "double3" -8.3266726846886741e-17 -7.3725747729014302e-18 -1.1102230246251565e-16 ;
createNode ikEffector -n "IKToesEffector_L" -p "IKXToes_L";
	rename -uid "DAA846D9-8E44-67B2-04A7-22AD4D7B21BD";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "IKXAnkle_L_orientConstraint1" -p "IKXAnkle_L";
	rename -uid "A0F84F93-0742-301C-18B0-9F850A15ECB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFKAlignedLeg_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.8944819062626453e-07 -8.9249536543989473e-08 3.3135403221787037e-06 ;
	setAttr ".rsrr" -type "double3" -7.5538173684758314e-15 -4.7211358552974086e-14 
		5.481487208834781e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "IKAnkleEffector_L" -p "IKXAnkle_L";
	rename -uid "BAFFF51A-9C4F-CB3F-974A-3CB53CE599FE";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "IKLegEffector_L" -p "IKXKnee_L";
	rename -uid "EAD890A3-BB46-6F8F-4037-B9A56ED64A74";
	setAttr -l on ".v" no;
	setAttr ".ro" 3;
	setAttr ".hd" yes;
createNode transform -n "PoleAnnotationLeg_L" -p "IKXKnee_L";
	rename -uid "F07BB5CD-F147-1718-A931-D69230FBCD7E";
createNode annotationShape -n "PoleAnnotationLeg_LShape" -p "PoleAnnotationLeg_L";
	rename -uid "15038464-C541-B92F-FB84-4E9598131B7F";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "IKMessureFromHip_L" -p "IKParentConstraintHip_L";
	rename -uid "896BE54F-2F4B-A5B9-92D5-88837B32B895";
	setAttr ".t" -type "double3" 0.11855830252170566 -0.039645314216614214 0.0024217396421591436 ;
	setAttr ".r" -type "double3" 10.083291196780523 -88.663156263090357 86.719171540697246 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999978 ;
createNode transform -n "IKParentConstraintShoulder_L" -p "IKJoints";
	rename -uid "73A25046-4E40-F9D7-95D8-309BDEED4CC9";
	setAttr ".ro" 5;
createNode parentConstraint -n "IKParentConstraintShoulder_L_parentConstraint1" -p
		 "IKParentConstraintShoulder_L";
	rename -uid "C9597082-C24D-4E26-FF26-868C8A0FB340";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 91.599103190490339 -9.2674252086332878 164.17259241179008 ;
	setAttr ".rst" -type "double3" 0.080774985253811035 1.4510045051574711 -0.018814414336918293 ;
	setAttr ".rsrr" -type "double3" 91.599103190490354 -9.2674252086332842 164.17259241179008 ;
	setAttr -k on ".w0";
createNode transform -n "IKXOffsetShoulder_L" -p "IKParentConstraintShoulder_L";
	rename -uid "1C963493-8143-DEA9-EACC-7BA2AA7FE448";
	setAttr ".t" -type "double3" -0.14515227443629883 -1.3877787807814457e-17 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -3.3063208701303872 24.409339013294815 7.9580413714739553 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999956 1 1 ;
createNode joint -n "IKXShoulder_L" -p "IKXOffsetShoulder_L";
	rename -uid "095E08E3-E94A-2E1C-368A-188D7801AE4D";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode transform -n "IKX2Shoulder_L" -p "IKXShoulder_L";
	rename -uid "DCB97FD0-3241-EBCE-5A2C-95917B72A6E9";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 1.3877787807814457e-17 0 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 1.3877787807814457e-17 0 ;
createNode joint -n "IKXElbow_L" -p "IKXShoulder_L";
	rename -uid "E043C14C-D447-89C7-B824-519052B1D2ED";
	setAttr ".t" -type "double3" -0.26399019360542297 -3.3306690738754696e-16 1.5543122344752192e-15 ;
	setAttr ".r" -type "double3" 1.276218661268119e-19 2.2847656778284929e-19 -3.5416575969548702e-06 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 33.212314632644151 ;
createNode transform -n "IKX2Elbow_L" -p "IKXElbow_L";
	rename -uid "6396550F-4143-5E5D-6C61-09BB3BA7A828";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 -1.2490009027033011e-16 0 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 -1.2490009027033011e-16 0 ;
createNode joint -n "IKXWrist_L" -p "IKXElbow_L";
	rename -uid "E366AB83-E748-0BB6-05A0-66929FFCC3A7";
	setAttr ".t" -type "double3" -0.24507786333560944 5.6926685587654902e-14 -8.4376949871511897e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.568452228422009 14.561510742964421 -21.063934011379001 ;
createNode transform -n "IKX2Wrist_L" -p "IKXWrist_L";
	rename -uid "C59A690B-5141-6CA1-324E-CAA7225E21F5";
	setAttr ".rp" -type "double3" 3.8857805861880479e-16 -5.5511151231257827e-17 0 ;
	setAttr ".sp" -type "double3" 3.8857805861880479e-16 -5.5511151231257827e-17 0 ;
createNode orientConstraint -n "IKXWrist_L_orientConstraint1" -p "IKXWrist_L";
	rename -uid "AAEBFA24-0045-3446-F8A2-EB808AB4BE1F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFKAlignedArm_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -8.9044075140339944e-07 -6.2871031883343051e-07 3.3697443116103186e-06 ;
	setAttr ".rsrr" -type "double3" 7.0767341662563243e-14 -4.3732626870123746e-15 -6.3014739626495925e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "IKArmEffector_L" -p "IKXElbow_L";
	rename -uid "78130999-9C46-652E-D050-B9B57B662BB9";
	setAttr -l on ".v" no;
	setAttr ".ro" 5;
	setAttr ".hd" yes;
createNode transform -n "PoleAnnotationArm_L" -p "IKXElbow_L";
	rename -uid "A4737485-AD4E-4378-28EC-3F986F4D3D5F";
createNode annotationShape -n "PoleAnnotationArm_LShape" -p "PoleAnnotationArm_L";
	rename -uid "FFD26BAE-5B4F-65EF-4932-66B69720F5E6";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "IKMessureFromShoulder_L" -p "IKParentConstraintShoulder_L";
	rename -uid "097FDB95-A345-CD2D-BDE0-10A13249EE1F";
	setAttr ".t" -type "double3" -0.14515227443629874 0 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -3.3063208701303917 24.409339013294829 7.9580413714739624 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "IKSpSpineOffset_M" -p "IKJoints";
	rename -uid "BBACA025-9542-689F-9AE8-06A631A17690";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999929 0.87515127151537431 90.000000000000057 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode joint -n "IKSpRoot_M" -p "IKSpSpineOffset_M";
	rename -uid "F10FB532-564C-5B6A-581B-7F8B4648E790";
	setAttr ".t" -type "double3" 0 0 9.8607613152626476e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.409900865894135e-14 -5.3473893887043396e-14 -1.9878466759146975e-16 ;
createNode transform -n "IKSpSpine1FollowOffset_M" -p "IKSpSpineOffset_M";
	rename -uid "5A902EBC-964C-DB5E-4443-9F8C22B1CB01";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode pointConstraint -n "IKSpSpine1FollowOffset_M_pointConstraint1" -p "IKSpSpine1FollowOffset_M";
	rename -uid "4EE87C4D-B94A-BB67-1157-2E8CC7325A39";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpSpine1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.00023638670968528785 0.0091812056655351856 2.0386384711150673e-18 ;
	setAttr ".rst" -type "double3" 0.17817872900694454 0.0091812056655353504 5.8614413498917973e-17 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpSpine1FollowOffset_M_orientConstraint1" -p "IKSpSpine1FollowOffset_M";
	rename -uid "505784EE-EF48-CEF4-2654-60B2F36A750D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpSpine1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.9970163225852966 ;
	setAttr ".o" -type "double3" 0 0 -7.9940326451710098 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.9970163225855968 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpChestFollowOffset_M" -p "IKSpSpineOffset_M";
	rename -uid "162002E3-ED4E-CC4F-83A0-48BD20BE1C81";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode pointConstraint -n "IKSpChestFollowOffset_M_pointConstraint1" -p "IKSpChestFollowOffset_M";
	rename -uid "20FB424F-AC40-BDDC-7218-958F79D1A50B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpChest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.00055676212946820236 -8.8470897274817162e-17 -9.5031441385579231e-17 ;
	setAttr ".rst" -type "double3" 0.30957441647926154 2.7755575615628914e-17 -2.1848686582949828e-17 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpChestFollowOffset_M_orientConstraint1" -p "IKSpChestFollowOffset_M";
	rename -uid "43036D73-5041-8027-8E3F-B68B2D3F603E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpChest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.9970163225854107 ;
	setAttr ".o" -type "double3" 0 0 -13.496013310067525 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.4989969874821174 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcSpineOffset_M" -p "IKJoints";
	rename -uid "013CD90B-3449-BD73-046E-AC9FB4C36163";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode joint -n "IKAcRoot_M" -p "IKAcSpineOffset_M";
	rename -uid "652A6512-1F44-8658-2834-D1922562B4FD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcRoot_M_pointConstraint1" -p "IKAcRoot_M";
	rename -uid "17A7383D-7A43-BDAA-4EB6-AEBACEBDA110";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformRoot_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 1.4791141972893971e-31 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcRoot_M_aimConstraint1" -p "IKAcRoot_M";
	rename -uid "7B419177-5D4A-16DF-FDB0-B3A0737895D7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcSpine1_MW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode joint -n "IKAcSpine1_M" -p "IKAcSpineOffset_M";
	rename -uid "41988677-4C41-54E1-C645-29B1B4834786";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcSpine1_M_pointConstraint1" -p "IKAcSpine1_M";
	rename -uid "8C6F804B-5B4E-2646-651D-45B282AC030A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformSpine1_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.17817868201858345 -0.0091812032443156846 -1.24636500273842e-16 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcSpine1_M_aimConstraint1" -p "IKAcSpine1_M";
	rename -uid "C20D389F-664D-9942-2088-F5A5A88D75DA";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcChest_MW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -1.5545706764594852e-12 -4.0025461062236743e-14 
		177.0502679831568 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcChest_M" -p "IKAcSpineOffset_M";
	rename -uid "D1AFF48E-4C41-E8D5-D9A5-C89A6D3CA476";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcChest_M_pointConstraint1" -p "IKAcChest_M";
	rename -uid "E578B6D8-814F-32E9-9F89-A094BF3B6576";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformChest_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.30916425109867574 -0.015930636555710635 -2.1626128238339601e-16 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcSpineOffset3_M" -p "IKJoints";
	rename -uid "1DC60D2B-AF41-E242-BC78-759F067D9990";
	setAttr ".it" no;
createNode transform -n "IKAcPociXformRoot_M" -p "IKAcSpineOffset3_M";
	rename -uid "3F4638C6-4B47-D9EC-248E-CAB4C5EACE9D";
createNode transform -n "IKAcPociXformSpine1_M" -p "IKAcSpineOffset3_M";
	rename -uid "5BBBBE29-6A47-6B23-6341-6BA515C811F7";
createNode transform -n "IKAcPociXformChest_M" -p "IKAcSpineOffset3_M";
	rename -uid "AD827262-AA4A-8005-003B-CDB367198EA3";
createNode transform -n "IKAcSpineOffset2_M" -p "IKJoints";
	rename -uid "5E8AB898-0A44-DC51-A45A-68991B36A6EC";
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999943 0.87515127151537142 90.000000000000028 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "IKAcSpine1FollowOffset_M" -p "IKAcSpineOffset2_M";
	rename -uid "54B17CC0-724D-431A-C2D6-3E93B8F352BB";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1 ;
createNode pointConstraint -n "IKAcSpine1FollowOffset_M_pointConstraint1" -p "IKAcSpine1FollowOffset_M";
	rename -uid "C67C138B-A748-AD15-3D64-21812C5F2867";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcSpine1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.00023634103730074685 0.0091812056655353313 1.4136154860048158e-17 ;
	setAttr ".rst" -type "double3" 0.17817872900694431 0.00918120566553534 9.5629742506384927e-17 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcSpine1FollowOffset_M_orientConstraint1" -p "IKAcSpine1FollowOffset_M";
	rename -uid "69F73877-D540-0CE5-A902-B1BC321C6595";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcSpine1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 5.6454845595977422e-14 ;
	setAttr ".o" -type "double3" 0 0 -3.9970163225855995 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.9970163225855995 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcChestFollowOffset_M" -p "IKAcSpineOffset2_M";
	rename -uid "15B5B6EF-374D-7729-2C43-3892E23277D3";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 1 ;
createNode pointConstraint -n "IKAcChestFollowOffset_M_pointConstraint1" -p "IKAcChestFollowOffset_M";
	rename -uid "6C222417-3B49-5AA1-65E3-CBB999885676";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcChest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 -2.7755575615628914e-17 -9.4511817788788862e-17 ;
	setAttr ".rst" -type "double3" 0.30957441647926132 1.0408340855860843e-17 4.6890642419084606e-17 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcChestFollowOffset_M_orientConstraint1" -p "IKAcChestFollowOffset_M";
	rename -uid "2E4ECE5E-EC42-F045-4200-30A7FF49C3A8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcChest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.9497320168432566 ;
	setAttr ".o" -type "double3" 0 0 -12.448729004325362 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.4989969874821067 ;
	setAttr -k on ".w0";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "0D09966A-9442-F717-C314-198F53271B47";
createNode transform -n "IKRootConstraint" -p "IKHandle";
	rename -uid "8380AE97-384D-CF8C-FDA6-D187CB46DB02";
createNode parentConstraint -n "IKRootConstraint_parentConstraint1" -p "IKRootConstraint";
	rename -uid "1F14563D-8D42-AD92-CE36-3FBEEAF8C86D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootZeroXformW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetLeg_R" -p "IKHandle";
	rename -uid "D6FDF80F-3447-31BC-22BB-ECAD32993D4A";
	setAttr ".t" -type "double3" -0.26197363065022405 0.10233944317437549 -0.079467333839740001 ;
createNode transform -n "IKExtraLeg_R" -p "IKOffsetLeg_R";
	rename -uid "B748E595-EF48-0047-8CD4-DF9D2B65C34A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLeg_R" -p "IKExtraLeg_R";
	rename -uid "AF06B72D-0248-8998-DD63-C79399BDB9BE";
	addAttr -ci true -k true -sn "swivel" -ln "swivel" -at "double";
	addAttr -ci true -k true -sn "roll" -ln "roll" -min -5 -max 10 -at "double";
	addAttr -ci true -k true -sn "rollAngle" -ln "rollAngle" -dv 25 -at "double";
	addAttr -ci true -k true -sn "rock" -ln "rock" -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "antiPop" -ln "antiPop" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "Lenght1" -ln "Lenght1" -dv 1 -at "double";
	addAttr -ci true -k true -sn "Lenght2" -ln "Lenght2" -dv 1 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".swivel";
	setAttr -k on ".roll";
	setAttr -k on ".rollAngle";
	setAttr -k on ".rock";
	setAttr -k on ".stretchy";
	setAttr -k on ".antiPop";
	setAttr -k on ".Lenght1";
	setAttr -k on ".Lenght2";
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKLeg_RShape" -p "IKLeg_R";
	rename -uid "97C4EAD9-B145-A996-35B3-A796FBB23783";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.055699218981738741 0.055499999999999661 -0.05530006333472362
		0.055300063334722427 0.055499999999999661 -0.05569921898173763
		0.055300063334722427 -0.10233944317437549 -0.05569921898173763
		0.056379647542909472 -0.10233944317437549 0.24451718332996972
		0.055699218981736409 0.055499999999999661 0.055300063334723551
		-0.055300063334724758 0.055499999999999661 0.055699218981737547
		-0.054619634773551751 -0.10233944317437549 0.2449163389769837
		-0.055699218981738741 -0.10233944317437549 -0.05530006333472362
		-0.055699218981738741 0.055499999999999661 -0.05530006333472362
		-0.055300063334724758 0.055499999999999661 0.055699218981737547
		-0.054619634773551751 -0.10233944317437549 0.2449163389769837
		0.056379647542909472 -0.10233944317437549 0.24451718332996972
		0.055469135150933158 0.055499999999999661 0.055071628346795139
		0.055071628346793994 0.055499999999999661 -0.055469135150934379
		0.055300063334722427 -0.10233944317437549 -0.05569921898173763
		-0.055699218981738741 -0.10233944317437549 -0.05530006333472362
		;
createNode transform -n "IKFKAlignedOffsetLeg_R" -p "IKLeg_R";
	rename -uid "2EAE5A8C-1540-AA5A-29EE-8099043F40E7";
	setAttr ".t" -type "double3" 0 0 -1.3877787807814457e-17 ;
	setAttr ".r" -type "double3" 89.793966619502882 0 -89.999999999999872 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "IKLegFootRockInnerPivot_R" -p "IKLeg_R";
	rename -uid "4AEAABD4-B246-D4AD-DFFB-AB90F98F8B5C";
	setAttr ".t" -type "double3" 0.053333099944771867 -0.10233944317437549 0.16880895236310159 ;
	setAttr ".r" -type "double3" 0 0.20603588497529796 0 ;
	setAttr ".ro" 5;
createNode transform -n "IKLegFootRockOuterPivot_R" -p "IKLegFootRockInnerPivot_R";
	rename -uid "50687A00-1C4F-D35B-D7D0-6D946D82DB4C";
	setAttr ".t" -type "double3" -0.11949141914477715 0 -0.03501299770387388 ;
	setAttr ".ro" 5;
createNode transform -n "IKFKAlignedLeg_R" -p "IKLegFootRockOuterPivot_R";
	rename -uid "6B572F1D-044D-7604-F529-6AB02CC95888";
	setAttr ".t" -type "double3" 0.066765700487303903 0.1023394431743755 -0.13398664886291606 ;
	setAttr ".r" -type "double3" 90.000002504478203 0 -89.999999999999815 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000002 ;
createNode transform -n "IKLocalOffsetLeg_R" -p "IKLegFootRockOuterPivot_R";
	rename -uid "3A9191C9-684C-9079-6C8B-72AEC6D2E32B";
	setAttr ".t" -type "double3" 0.066765700487303903 0.10233944317437549 -0.13398664886291606 ;
	setAttr ".r" -type "double3" 90.000002504478203 0 -89.999999999999815 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "IKLocalExtraLeg_R" -p "IKLocalOffsetLeg_R";
	rename -uid "3A6FF1D6-AF4F-A3A3-99F8-6CBAEAC6EC30";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLocalLeg_R" -p "IKLocalExtraLeg_R";
	rename -uid "AACBB322-894E-47EA-100A-2C8F2B99DF6A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKLocalLeg_RShape" -p "IKLocalLeg_R";
	rename -uid "F4F13B41-FB4B-8545-9DF6-3B9640D9EC78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5511151231257827e-16 -0.069983003042944539 -0.069983003042943054
		5.2735593669694936e-16 -8.3266726846886741e-17 -0.061504777409267325
		5.5511151231257827e-16 0.069983003042944358 -0.069983003042943276
		3.1918911957973251e-16 0.06150477740926856 1.0547118733938987e-15
		1.5265566588595902e-16 0.069983003042944553 0.069983003042945524
		1.8041124150158794e-16 9.7144514654701197e-17 0.06150477740926974
		1.5265566588595902e-16 -0.069983003042944372 0.069983003042945691
		3.7470027081099033e-16 -0.06150477740926856 1.3322676295501878e-15
		5.5511151231257827e-16 -0.069983003042944539 -0.069983003042943054
		5.2735593669694936e-16 -8.3266726846886741e-17 -0.061504777409267325
		5.5511151231257827e-16 0.069983003042944358 -0.069983003042943276
		;
createNode transform -n "RollOffsetOffsetHeel_R" -p "IKLocalLeg_R";
	rename -uid "3599CBE9-D54F-5989-DB9F-00B4110B697B";
	setAttr ".t" -type "double3" 0.092266479502465068 -0.03860429553171997 -0.0085896544099187677 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999997495521797 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
createNode transform -n "RollOffsetHeel_R" -p "RollOffsetOffsetHeel_R";
	rename -uid "908E9FE7-244A-4791-080A-B298D3716439";
createNode transform -n "RollRollerHeel_R" -p "RollOffsetHeel_R";
	rename -uid "F39CB882-2842-5CE0-977A-519FEA8AD6CE";
createNode transform -n "RollExtraHeel_R" -p "RollRollerHeel_R";
	rename -uid "E198C61C-534C-2AE0-0706-AABBE0932597";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 1.7347234759768071e-18 -1.3877787807814457e-17 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollHeel_R" -p "RollExtraHeel_R";
	rename -uid "BB988C0A-B14C-9507-D945-629612208093";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollHeel_RShape" -p "RollHeel_R";
	rename -uid "2405AE82-7C42-528C-1A5A-958C09BE9CAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-7.2164496600635175e-16 0.054915934883420753 0.037000679667009678
		-7.2164496600635175e-16 0.0036663797231413185 0.065518656790228946
		-8.3266726846886741e-16 -0.043490445181463097 0.043490445181462903
		-9.4368957093138306e-16 -0.061504777409268699 0
		-9.9920072216264089e-16 -0.043490445181463167 -0.043490445181462931
		-9.4368957093138306e-16 0.0058577942030366165 -0.063685438440374317
		-8.3266726846886741e-16 0.051358768195245187 -0.035222834822351265
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-7.7715611723760958e-16 0.059710868541165557 -0.0062493144996729338
		-7.7715611723760958e-16 0.059710868541165557 -0.0062493144996729338
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-8.3266726846886741e-16 0.055411096405755755 -6.7815609232219076e-06
		-7.7715611723760958e-16 0.051076917233902688 -0.0066195081274978557
		;
createNode transform -n "RollOffsetToesEnd_R" -p "RollHeel_R";
	rename -uid "CB2588A7-A741-5831-1ED0-ABA4CDF7D4AD";
	setAttr ".t" -type "double3" -0.015754264799256623 -0.0082986927695567828 0.28329845675365672 ;
createNode transform -n "RollRollerToesEnd_R" -p "RollOffsetToesEnd_R";
	rename -uid "81621CA6-E445-FA05-4186-A7BAF6B2B370";
createNode transform -n "RollExtraToesEnd_R" -p "RollRollerToesEnd_R";
	rename -uid "9E25F76A-074E-193C-E186-37890057DE8C";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollToesEnd_R" -p "RollExtraToesEnd_R";
	rename -uid "882DB36F-B74B-E021-2CAB-CCACFD52255F";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollToesEnd_RShape" -p "RollToesEnd_R";
	rename -uid "33890531-2144-D411-0BEF-D0843E042204";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-2.2204460492503131e-16 0.044526433689295056 0.030000551081366095
		-2.2204460492503131e-16 0.0029727403160955193 0.053123235235327637
		-3.3306690738754696e-16 -0.035262523120070215 0.035262523120111938
		-4.4408920985006262e-16 -0.049868738439912616 6.8833827526759706e-15
		-4.4408920985006262e-16 -0.035262523120070284 -0.035262523120098255
		-3.8857805861880479e-16 0.0047495628673619762 -0.051636841978675005
		-3.3306690738754696e-16 0.041642244482666242 -0.028559055261359018
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-3.3306690738754696e-16 0.048414217736115185 -0.0050670117564846906
		-3.3306690738754696e-16 0.048414217736115185 -0.0050670117564846906
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-2.7755575615628914e-16 0.044927916004701814 -5.4985629038273309e-06
		-3.3306690738754696e-16 0.041413716676172309 -0.0053671687520183975
		;
createNode transform -n "RollOffsetToes_R" -p "RollToesEnd_R";
	rename -uid "A62EA4E4-E64E-95D6-0277-73B61E97E372";
	setAttr ".t" -type "double3" 0.0071646029155995605 0.022173327510279735 -0.11231927573706832 ;
createNode transform -n "RollRollerToes_R" -p "RollOffsetToes_R";
	rename -uid "8DFCFACE-3C42-C74A-E25C-56B88F956167";
createNode transform -n "RollExtraToes_R" -p "RollRollerToes_R";
	rename -uid "B837B9FE-AF45-0490-6C12-5C98C75211BA";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 5.5511151231257827e-17 3.4694469519536142e-18 1.3877787807814457e-17 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollToes_R" -p "RollExtraToes_R";
	rename -uid "5A625437-7543-035E-49EC-93A60CCBD059";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollToes_RShape" -p "RollToes_R";
	rename -uid "17757540-C94E-6E57-D739-97A05F3666C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.3306690738754696e-16 0.044526433689260236 0.030000551081358996
		-3.3306690738754696e-16 0.0029727403160606826 0.053123235235320566
		-4.4408920985006262e-16 -0.035262523120105041 0.035262523120104854
		-4.9960036108132044e-16 -0.049868738439947449 -2.0122792321330962e-16
		-5.5511151231257827e-16 -0.035262523120105124 -0.035262523120105305
		-4.9960036108132044e-16 0.0047495628673271395 -0.051636841978682083
		-4.4408920985006262e-16 0.041642244482631416 -0.028559055261366099
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.8857805861880479e-16 0.048414217736080345 -0.0050670117564917752
		-3.8857805861880479e-16 0.048414217736080345 -0.0050670117564917752
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.8857805861880479e-16 0.044927916004667001 -5.4985629109119416e-06
		-3.8857805861880479e-16 0.041413716676137483 -0.005367168752025496
		;
createNode ikHandle -n "IKAnkleHandle_R" -p "RollToes_R";
	rename -uid "9B494B68-9848-F790-C820-66A1D8A62F7E";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 6.8672583730666759e-09 -3.7546531508891867e-10 3.7546656755926833e-10 ;
	setAttr ".r" -type "double3" 89.999999999999943 -3.1805546814635168e-15 -89.999997495521811 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.0035959531088378244 -1.5718382225273401e-10 0.99999353453971851 ;
	setAttr ".roc" yes;
createNode ikHandle -n "IKLegHandle_R" -p "RollToes_R";
	rename -uid "3299D040-F14B-8EAD-4E2C-798F802DC264";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 3.4406423821131682e-09 0.078391844386276069 -0.13237488548486798 ;
	setAttr ".r" -type "double3" 7.4053538156357545e-25 -0.20603338049709571 2.5044780210170856e-06 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IKLegHandle_R_poleVectorConstraint1" -p "IKLegHandle_R";
	rename -uid "66C0A521-E24A-31D2-758D-92BA002CF893";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleLeg_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.10239251395082347 -0.47196338478084759 0.79026969409288628 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureConstrainToLeg_R" -p "RollToes_R";
	rename -uid "8F39C734-F34B-AA6C-5738-7D8AC32B918E";
	setAttr ".t" -type "double3" 3.4406423821131682e-09 0.078391844386276069 -0.13237488548486798 ;
	setAttr ".r" -type "double3" 7.4053538156357545e-25 -0.20603338049709571 2.5044780210170856e-06 ;
createNode transform -n "IKOffsetToes_R" -p "RollToesEnd_R";
	rename -uid "2A323EE6-9043-95E1-D710-7C92F66CA921";
	setAttr ".t" -type "double3" 0.0071646097828578781 0.022173327134814069 -0.11231927536160241 ;
createNode transform -n "IKExtraToes_R" -p "IKOffsetToes_R";
	rename -uid "F091917E-F34F-5566-9AD0-C084FD9C670C";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKToes_R" -p "IKExtraToes_R";
	rename -uid "EABFE513-7D41-1755-13E2-05B407F65F8E";
	setAttr ".sech" no;
createNode nurbsCurve -n "IKToes_RShape" -p "IKToes_R";
	rename -uid "3E414A75-8740-4CE4-151D-6DBDDA8E72C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.035262523120104527 0.035262523120104916 -2.4286128663675299e-16
		0.049868738439946853 -2.2898349882893854e-16 -2.2898349882893854e-16
		0.035262523120104416 -0.035262523120105284 -1.8735013540549517e-16
		-6.6613381477509392e-16 -0.049868738439947602 -1.2490009027033011e-16
		-0.035262523120105749 -0.035262523120105187 -1.2490009027033011e-16
		-0.049868738439948102 -8.6736173798840355e-17 -1.2490009027033011e-16
		-0.035262523120105638 0.035262523120104985 -1.6653345369377348e-16
		-5.5511151231257827e-16 0.04986873843994731 -2.3592239273284576e-16
		0.035262523120104527 0.035262523120104916 -2.4286128663675299e-16
		0.049868738439946853 -2.2898349882893854e-16 -2.2898349882893854e-16
		0.035262523120104416 -0.035262523120105284 -1.8735013540549517e-16
		;
createNode ikHandle -n "IKToesHandle_R" -p "IKToes_R";
	rename -uid "D8E93D83-404F-2456-2586-8AB5D2DA6078";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -0.0071645970367406053 -0.022173327823536884 0.11231927605022729 ;
	setAttr ".r" -type "double3" 99.58157221534637 -78.279507972443895 -107.90656850651956 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" -0.0035959531088378244 -1.5718382225273401e-10 0.99999353453971851 ;
	setAttr ".roc" yes;
createNode transform -n "IKLegFootRoll_R" -p "IKLocalLeg_R";
	rename -uid "8D6C1136-1843-8B96-9ACD-C8A1C134270F";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 1.3877787807814457e-17 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999997495521797 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
createNode transform -n "PoleOffsetLeg_R" -p "IKHandle";
	rename -uid "9820CB24-5A4C-F7E9-E411-99B11C0B9F4C";
createNode transform -n "PoleExtraLeg_R" -p "PoleOffsetLeg_R";
	rename -uid "B51A28FD-0B47-443F-2F13-F3983E44F8CB";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "PoleLeg_R" -p "PoleExtraLeg_R";
	rename -uid "5D1293AD-0A41-E7E8-C71B-1C9180D49995";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
	setAttr -k on ".follow" 10;
	setAttr -k on ".lock";
createNode nurbsCurve -n "PoleLeg_RShape" -p "PoleLeg_R";
	rename -uid "2D1727F6-2E43-90F4-51AC-5FB56141F1DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.055500000000000632 3.3306690738754696e-16 1.1102230246251565e-16
		0.055499999999999328 3.3306690738754696e-16 1.1102230246251565e-16
		-6.6613381477509392e-16 3.3306690738754696e-16 1.1102230246251565e-16
		-6.6613381477509392e-16 -0.055499999999999661 1.1102230246251565e-16
		-6.6613381477509392e-16 0.055500000000000327 1.1102230246251565e-16
		-6.6613381477509392e-16 3.3306690738754696e-16 1.1102230246251565e-16
		-6.6613381477509392e-16 3.3306690738754696e-16 0.055500000000000105
		-6.6613381477509392e-16 3.3306690738754696e-16 -0.055499999999999883
		;
createNode parentConstraint -n "PoleOffsetLeg_R_parentConstraint1" -p "PoleOffsetLeg_R";
	rename -uid "DEF2AC32-4E47-227D-0A8A-AA891F65BD9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetLeg_RStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "PoleOffsetLeg_RFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.22095081647252929 0.44739135202411451 0.79269143237695427 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "PoleAimLeg_R" -p "IKHandle";
	rename -uid "3DEA4AEC-4947-4EA2-7442-5DB940C235B5";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode aimConstraint -n "PoleAimLeg_R_aimConstraint1" -p "PoleAimLeg_R";
	rename -uid "C96149C9-9542-F98B-9C01-A8B62405A34A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKLeg_RW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 88.803930879726096 5.6379808115514027 -99.956022503605098 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "PoleAimLeg_R_pointConstraint1" -p "PoleAimLeg_R";
	rename -uid "D1B0DB04-C644-431A-9888-D99280E6F68A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_R" -p "IKHandle";
	rename -uid "57150E12-7D4B-733C-2B32-5FBE9D9B799D";
createNode transform -n "IKExtraArm_R" -p "IKOffsetArm_R";
	rename -uid "62DFBDF2-F746-5D05-4A67-F2B5DA62F3F9";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKArm_R_PH" -p "IKExtraArm_R";
	rename -uid "6129F850-4E40-DCD4-84DD-3E9CE7E33D5A";
createNode transform -n "IKArm_R_SN" -p "IKArm_R_PH";
	rename -uid "EE9AEEB2-4DB5-6A79-345D-F5B57034E140";
createNode transform -n "IKArm_R" -p "IKArm_R_SN";
	rename -uid "719F0A8B-6145-0FD5-1763-5AB8D595E98B";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "antiPop" -ln "antiPop" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "Lenght1" -ln "Lenght1" -dv 1 -at "double";
	addAttr -ci true -k true -sn "Lenght2" -ln "Lenght2" -dv 1 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".follow";
	setAttr -k on ".stretchy";
	setAttr -k on ".antiPop";
	setAttr -k on ".Lenght1";
	setAttr -k on ".Lenght2";
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKArm_RShape" -p "IKArm_R";
	rename -uid "D32B4D42-B246-23CD-A5E2-A4892DC2463E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.058904999999999874 0.05890500000000265 -0.058904999999997612
		0.058905000000000096 0.05890500000000265 -0.058904999999997612
		0.058905000000000096 -0.058904999999997321 -0.058904999999997612
		0.058905000000000096 -0.058904999999997321 0.05890500000000233
		0.058905000000000096 0.05890500000000265 0.05890500000000233
		-0.058904999999999874 0.05890500000000265 0.05890500000000233
		-0.058904999999999874 -0.058904999999997321 0.05890500000000233
		-0.058904999999999874 -0.058904999999997321 -0.058904999999997612
		-0.058904999999999874 0.05890500000000265 -0.058904999999997612
		-0.058904999999999874 0.05890500000000265 0.05890500000000233
		-0.058904999999999874 -0.058904999999997321 0.05890500000000233
		0.058905000000000096 -0.058904999999997321 0.05890500000000233
		0.058661673642804502 0.05890500000000265 0.058661673642806743
		0.058661673642804502 0.05890500000000265 -0.058661673642802024
		0.058905000000000096 -0.058904999999997321 -0.058904999999997612
		-0.058904999999999874 -0.058904999999997321 -0.058904999999997612
		;
createNode ikHandle -n "IKArmHandle_R" -p "IKArm_R";
	rename -uid "3185299D-D243-13D4-99C0-91B57FFB3A48";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 2.2204460492503131e-16 2.2204460492503131e-16 -6.9388939039072284e-17 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IKArmHandle_R_poleVectorConstraint1" -p "IKArmHandle_R";
	rename -uid "936BA8CB-334D-5867-9B17-A897F52E9982";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleArm_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.25717108549162343 -0.19294270230593336 -0.4718545588320428 ;
	setAttr -k on ".w0";
createNode transform -n "IKFKAlignedOffsetArm_R" -p "IKArm_R";
	rename -uid "8A96790A-2946-6552-1196-328049B65AF3";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 0 -4.3368086899420177e-17 ;
	setAttr ".r" -type "double3" 80.730279195028757 -3.8965260472300609 -131.95223509871752 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "IKLocalOffsetArm_R" -p "IKArm_R";
	rename -uid "B1418633-7142-F2E6-B551-F0BF844A221D";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 0 -4.3368086899420177e-17 ;
	setAttr ".r" -type "double3" -76.471118061005413 -46.608170073416751 -166.13438667556599 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode transform -n "IKLocalExtraArm_R" -p "IKLocalOffsetArm_R";
	rename -uid "65B05E8B-444D-7336-2C1F-3C8074A41F63";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLocalArm_R" -p "IKLocalExtraArm_R";
	rename -uid "8B230BB2-4D40-09F5-C410-81BF63BBE302";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKLocalArm_RShape" -p "IKLocalArm_R";
	rename -uid "4BFB8821-264A-FA58-4E1B-7CA6CD805052";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.3877787807814457e-15 -0.074276554851252508 -0.07427655485125273
		-1.4432899320127035e-15 2.248201624865942e-15 -0.065278178617889093
		-1.27675647831893e-15 0.074276554851257073 -0.07427655485125273
		-1.609823385706477e-15 0.065278178617893395 2.2204460492503131e-15
		-1.8873791418627661e-15 0.074276554851256948 0.074276554851256726
		-1.8873791418627661e-15 2.1649348980190553e-15 0.06527817861789309
		-2.0539125955565396e-15 -0.074276554851252619 0.074276554851256726
		-1.609823385706477e-15 -0.06527817861788901 1.7763568394002505e-15
		-1.3877787807814457e-15 -0.074276554851252508 -0.07427655485125273
		-1.4432899320127035e-15 2.248201624865942e-15 -0.065278178617889093
		-1.27675647831893e-15 0.074276554851257073 -0.07427655485125273
		;
createNode transform -n "IKFKAlignedArm_R" -p "IKLocalArm_R";
	rename -uid "135493DD-1543-E3E8-7D52-4786013B16A4";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 -2.7755575615628914e-17 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "IKmessureConstrainToArm_R" -p "IKArm_R";
	rename -uid "EDC0EFB3-2B45-E9BB-AAC5-689886FB4905";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 2.2204460492503131e-16 -6.9388939039072284e-17 ;
createNode parentConstraint -n "IKOffsetArm_R_parentConstraint1" -p "IKOffsetArm_R";
	rename -uid "FE6FD5C6-8D4A-D7C9-6DA7-33912EE9B15D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetArm_RStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKOffsetArm_RFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.62303043402476876 1.1638390914367478 0.0026780981610982496 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "PoleOffsetArm_R" -p "IKHandle";
	rename -uid "DA27A189-874B-EAF5-B96F-BD8D62F805A4";
createNode transform -n "PoleExtraArm_R" -p "PoleOffsetArm_R";
	rename -uid "39946050-4B4D-172F-96A1-4489DDFB979A";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "PoleArm_R" -p "PoleExtraArm_R";
	rename -uid "B4584019-BB44-33D8-1931-F1AD200EC728";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
	setAttr -k on ".follow";
	setAttr -k on ".lock";
createNode nurbsCurve -n "PoleArm_RShape" -p "PoleArm_R";
	rename -uid "F1A43D24-9C4C-82DC-B5ED-F7AECD66D8E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.058904999999999985 0 0
		0.058904999999999985 0 0
		0 0 0
		0 -0.058904999999999985 0
		0 0.058904999999999985 0
		0 0 0
		0 0 0.058904999999999985
		0 0 -0.058904999999999985
		;
createNode parentConstraint -n "PoleOffsetArm_R_parentConstraint1" -p "PoleOffsetArm_R";
	rename -uid "F2BAA210-C043-13B3-31E9-0FB216578220";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetArm_RStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "PoleOffsetArm_RFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode ikHandle -n "IKSpineHandle_M" -p "IKHandle";
	rename -uid "4C22A8BE-FC4E-6071-7820-C189D9FB6CEB";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 2.2166206255557171e-17 1.2690950530108251 -0.0047368448774951629 ;
	setAttr ".r" -type "double3" 89.999999999999943 -3.1218650510699275 89.999999999999957 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtvt" 2;
	setAttr ".dtrm" 3.333;
createNode transform -n "IKOffsetcvSpine1_M" -p "IKHandle";
	rename -uid "5B1EF48D-6F49-C512-CB0E-9B9C652B4650";
createNode transform -n "IKExtracvSpine1_M" -p "IKOffsetcvSpine1_M";
	rename -uid "91EB75E5-E84B-41AF-B16B-BCBAC97F0D54";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpine1_M" -p "IKExtracvSpine1_M";
	rename -uid "F416068A-414F-D872-5AC6-A0ABD63C1FAC";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpine1_MShape" -p "IKcvSpine1_M";
	rename -uid "D1CC9A73-A34A-EF34-9900-1E8435BACBB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.1041167979897183e-18 -0.0016573066536003966 2.5316120000038656e-05
		-1.1041167979897183e-18 0.0016573066536003966 -2.5316120000038656e-05
		0 0 0
		-1.2881362643213386e-16 0.0025316120000038462 0.16573066536003964
		1.2881362643213386e-16 -0.0025316120000038462 -0.16573066536003964
		0 0 0
		-0.16575000000000001 -9.2009733165809884e-17 -1.1041167979897182e-16
		0.16575000000000001 9.2009733165809884e-17 1.1041167979897182e-16
		;
createNode transform -n "IKSpineLocator1_M" -p "IKcvSpine1_M";
	rename -uid "E1E63E10-FF46-72B0-8630-D09C9F27D664";
	setAttr -l on ".v" no;
createNode locator -n "IKSpineLocator1_MShape" -p "IKSpineLocator1_M";
	rename -uid "22810BD7-FF44-3903-2DD1-C18BC6DECC9D";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpine1_M_parentConstraint1" -p "IKOffsetcvSpine1_M";
	rename -uid "2FA214B8-B84C-5402-A1E0-89BAD3991ED4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine2_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.2407763399115324e-17 0.15476915240287781 
		-0.0023641698571737054 ;
	setAttr ".tg[1].tot" -type "double3" 4.7255908894394332e-17 0 1.2576745200831851e-17 ;
	setAttr ".rst" -type "double3" -1.2698281275758347e-17 1.1137692034244537 -0.0023641712152647895 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetSpine2_M" -p "IKHandle";
	rename -uid "305651E0-4F44-CB34-0667-E7AEC477D201";
createNode transform -n "IKExtraSpine2_M" -p "IKOffsetSpine2_M";
	rename -uid "DA39593C-EC4E-DB33-6C07-0B9EEFEE277E";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpine2_M" -p "IKExtraSpine2_M";
	rename -uid "E0DCA99C-BE45-382D-45FB-10AD82F2AE04";
	addAttr -ci true -k true -sn "followEnd" -ln "followEnd" -dv 5 -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".followEnd";
createNode nurbsCurve -n "IKSpine2_MShape" -p "IKSpine2_M";
	rename -uid "1E81F87D-5E4F-1638-395B-E995586757C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.12988362682572066 -0.0019838005929170635 -0.12986847597708426
		1.2179445680741591e-16 -0.0028055177035472014 -0.18366176005151727
		-0.12988362682572033 -0.0019838005929172071 -0.12986847597708451
		-0.18368318658713981 -1.0165301640189323e-16 -1.755953438411981e-16
		-0.12988362682572058 0.0019838005929170639 0.12986847597708429
		-1.980978409914059e-16 0.0028055177035472018 0.1836617600515173
		0.12988362682572024 0.0019838005929172071 0.12986847597708451
		0.18368318658713981 1.0234689659131168e-16 2.2101985023171016e-16
		0.12988362682572066 -0.0019838005929170635 -0.12986847597708426
		1.2179445680741591e-16 -0.0028055177035472014 -0.18366176005151727
		-0.12988362682572033 -0.0019838005929172071 -0.12986847597708451
		;
createNode transform -n "IKSpine2LocalOrient1_M" -p "IKSpine2_M";
	rename -uid "D9F2F589-8D43-8D85-440F-F4B68C2A0EDF";
	setAttr ".t" -type "double3" -7.3955709864469857e-32 -2.2204460492503131e-16 -8.2399365108898337e-18 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "IKSpine2LocalOrient2_M" -p "IKSpine2LocalOrient1_M";
	rename -uid "29856F85-A246-D3CA-C95E-2591F0C0BB8B";
createNode transform -n "IKSpine2LocalOrient3_M" -p "IKOffsetSpine2_M";
	rename -uid "9AF56AFF-9A46-5CA9-5D31-C2B4CEF317F5";
	setAttr ".t" -type "double3" -7.3955709864469857e-32 -2.2204460492503131e-16 -8.2399365108898337e-18 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode parentConstraint -n "IKOffsetSpine2_M_parentConstraint1" -p "IKOffsetSpine2_M";
	rename -uid "BC083012-0948-B50E-AB2A-E5B301D1BC34";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine3_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -7.9663672293509656e-17 0.15476915240287781 
		-0.002364169857173718 ;
	setAttr ".tg[1].tot" -type "double3" 7.9663672293509656e-17 -0.15476915240287781 
		0.002364169857173718 ;
	setAttr ".rst" -type "double3" -5.9954190170152678e-17 1.1137692034244537 -0.0023641712152648021 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetSpine3_M" -p "IKHandle";
	rename -uid "58DAACED-724E-41BA-EACF-25BB13968770";
createNode transform -n "IKExtraSpine3_M" -p "IKOffsetSpine3_M";
	rename -uid "0C1ECD7F-3645-14F9-9344-4D888BFFF146";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpine3_M" -p "IKExtraSpine3_M";
	rename -uid "FE04AD37-B74E-D1B0-8CC7-6687DD946683";
	addAttr -ci true -sn "ikCvVis" -ln "ikCvVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "stiff" -ln "stiff" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoTwist" -ln "autoTwist" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "extraTwist" -ln "extraTwist" -at "double";
	addAttr -ci true -sn "flipAxis" -ln "flipAxis" -min 0 -max 1 -en "bend:side" -at "enum";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -cb on ".ikCvVis";
	setAttr -k on ".stiff";
	setAttr -k on ".stretchy";
	setAttr ".flipAxis" 1;
	setAttr -k on ".follow" 10;
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKSpine3_MShape" -p "IKSpine3_M";
	rename -uid "6A50979D-5E4E-6834-5AAA-068AE9A0921B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.16575000000000015 -0.019104678536007721 -0.16547750416003915
		0.16575000000000012 0.014041454536000213 -0.1659838265600399
		0.16574999999999987 0.019104678536007908 0.16547750416003937
		-0.16575000000000015 0.019104678536007721 0.16547750416003915
		-0.1657499999999999 0.014041454536000029 -0.16598382656004013
		-0.16574999999999987 -0.019104678536007908 -0.16547750416003937
		-0.16575000000000012 -0.014041454536000213 0.1659838265600399
		0.1657499999999999 -0.014041454536000029 0.16598382656004013
		0.16575000000000015 -0.019104678536007721 -0.16547750416003915
		-0.16574999999999987 -0.019104678536007908 -0.16547750416003937
		-0.16575000000000012 -0.014041454536000213 0.1659838265600399
		-0.16575000000000015 0.019104678536007721 0.16547750416003915
		-0.16506531544512057 0.013972994067317128 -0.16598278079495093
		0.16506531544512079 0.013972994067317312 -0.16598278079495071
		0.16574999999999987 0.019104678536007908 0.16547750416003937
		0.1657499999999999 -0.014041454536000029 0.16598382656004013
		;
createNode transform -n "IKSpineLocator2_M" -p "IKSpine3_M";
	rename -uid "EF76BD52-A74C-A5AE-CB12-84AA955DEEC3";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 9.4511817788788566e-17 0 2.5153490401663703e-17 ;
createNode locator -n "IKSpineLocator2_MShape" -p "IKSpineLocator2_M";
	rename -uid "B6984C2A-7B42-CB98-FCA1-019A6915A32E";
	setAttr -k off ".v";
createNode transform -n "IKSpine3LocalOrient1_M" -p "IKSpine3_M";
	rename -uid "8E98C1F2-4E4C-FFA7-A274-329FF59BCDDB";
	setAttr ".t" -type "double3" -9.8607613152626476e-32 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999943 10.374148258997476 89.999999999999957 ;
createNode transform -n "IKSpine3LocalOrient2_M" -p "IKSpine3LocalOrient1_M";
	rename -uid "0078C47E-9E48-F72B-09C7-16B7B26EB517";
createNode parentConstraint -n "IKOffsetSpine3_M_parentConstraint1" -p "IKOffsetSpine3_M";
	rename -uid "0E5413A7-0441-060E-F72B-89B2A19C5A4F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetSpine3_MStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKOffsetSpine3_MFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -1.3961786246366233e-16 1.2685383558273315 -0.0047283410724385201 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetConstrainedSpine1_M" -p "IKHandle";
	rename -uid "8D381D8A-9F49-96E6-4BCE-12AA7A222FD3";
createNode pointConstraint -n "IKOffsetConstrainedSpine1_M_pointConstraint1" -p "IKOffsetConstrainedSpine1_M";
	rename -uid "A4D8880F-0844-EA28-A319-E29BC7951B93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKOffsetConstrainedSpine1_M_orientConstraint1" -p
		 "IKOffsetConstrainedSpine1_M";
	rename -uid "A1FAE5EB-D140-CB24-E270-DEB0269BF0C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetSpine1_M" -p "IKOffsetConstrainedSpine1_M";
	rename -uid "EE5F1AB0-CA4E-3557-B383-438C55988A0F";
createNode transform -n "IKExtraSpine1_M" -p "IKOffsetSpine1_M";
	rename -uid "CA6A9E33-EC4D-2DF2-7FD6-4999BF72A729";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpine1_M" -p "IKExtraSpine1_M";
	rename -uid "06193FD3-0349-FA8D-8640-96A48F9E81CC";
	addAttr -ci true -k true -sn "FixedOrient" -ln "FixedOrient" -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".FixedOrient";
createNode nurbsCurve -n "IKSpine1_MShape" -p "IKSpine1_M";
	rename -uid "039ECB8F-7745-A56C-EA54-6C8A21C2CFB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.16575000000000015 -0.019104678536007721 -0.16547750416003915
		0.16575000000000012 0.014041454536000213 -0.1659838265600399
		0.16574999999999987 0.019104678536007908 0.16547750416003937
		-0.16575000000000015 0.019104678536007721 0.16547750416003915
		-0.1657499999999999 0.014041454536000029 -0.16598382656004013
		-0.16574999999999987 -0.019104678536007908 -0.16547750416003937
		-0.16575000000000012 -0.014041454536000213 0.1659838265600399
		0.1657499999999999 -0.014041454536000029 0.16598382656004013
		0.16575000000000015 -0.019104678536007721 -0.16547750416003915
		-0.16574999999999987 -0.019104678536007908 -0.16547750416003937
		-0.16575000000000012 -0.014041454536000213 0.1659838265600399
		-0.16575000000000015 0.019104678536007721 0.16547750416003915
		-0.16506531544512057 0.013972994067317128 -0.16598278079495093
		0.16506531544512079 0.013972994067317312 -0.16598278079495071
		0.16574999999999987 0.019104678536007908 0.16547750416003937
		0.1657499999999999 -0.014041454536000029 0.16598382656004013
		;
createNode transform -n "IKSpineLocator0_M" -p "IKSpine1_M";
	rename -uid "436A3214-CD4A-476D-074E-A090E2126480";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 9.8607613152626476e-32 0 0 ;
createNode locator -n "IKSpineLocator0_MShape" -p "IKSpineLocator0_M";
	rename -uid "0B7791BC-A64C-85E4-A84A-F6B3CC38D263";
	setAttr -k off ".v";
createNode transform -n "IKSpine1LocalOrient1_M" -p "IKSpine1_M";
	rename -uid "C956D907-DF49-5388-807D-53877B370FA6";
	setAttr ".t" -type "double3" 4.9303806576313238e-32 0 0 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "IKSpine1LocalOrient2_M" -p "IKSpine1LocalOrient1_M";
	rename -uid "3A148E8B-3F42-BCE5-621D-A2B6D3D3EC79";
createNode transform -n "IKSpine1LocalOrient3_M" -p "IKSpine1LocalOrient2_M";
	rename -uid "6B275A76-8444-751A-A0B7-EEAB0A70EF3D";
	setAttr ".t" -type "double3" 0 0 1.4791141972893971e-31 ;
	setAttr ".r" -type "double3" 0 0 -5.8994640564943293 ;
createNode transform -n "IKOffsetLeg_L" -p "IKHandle";
	rename -uid "09360159-1142-AF27-E182-81AAA834E643";
	setAttr ".t" -type "double3" 0.26197363065022522 0.10233944317437516 -0.079467333839740043 ;
createNode transform -n "IKExtraLeg_L" -p "IKOffsetLeg_L";
	rename -uid "1F6AE644-3E4D-BAE0-A90D-F8AC2C1A3EAA";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLeg_L" -p "IKExtraLeg_L";
	rename -uid "00ADDDA6-3E42-F014-EDB9-61AE3E5B40CE";
	addAttr -ci true -k true -sn "swivel" -ln "swivel" -at "double";
	addAttr -ci true -k true -sn "roll" -ln "roll" -min -5 -max 10 -at "double";
	addAttr -ci true -k true -sn "rollAngle" -ln "rollAngle" -dv 25 -at "double";
	addAttr -ci true -k true -sn "rock" -ln "rock" -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "antiPop" -ln "antiPop" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "Lenght1" -ln "Lenght1" -dv 1 -at "double";
	addAttr -ci true -k true -sn "Lenght2" -ln "Lenght2" -dv 1 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".swivel";
	setAttr -k on ".roll";
	setAttr -k on ".rollAngle";
	setAttr -k on ".rock";
	setAttr -k on ".stretchy";
	setAttr -k on ".antiPop";
	setAttr -k on ".Lenght1";
	setAttr -k on ".Lenght2";
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKLeg_LShape" -p "IKLeg_L";
	rename -uid "968ABBB9-0646-2ACB-95B6-9086E4EC99F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.055699218981737589 0.055499999999999987 -0.055300063334723593
		-0.055300063334723593 0.055499999999999987 -0.055699218981737589
		-0.0553000633347236 -0.10233944317437516 -0.055699218981737582
		-0.056379647542910624 -0.10233944317437516 0.24451718332996977
		-0.055699218981737589 0.055499999999999987 0.055300063334723593
		0.055300063334723593 0.055499999999999987 0.055699218981737589
		0.054619634773550571 -0.10233944317437516 0.24491633897698376
		0.055699218981737596 -0.10233944317437516 -0.055300063334723586
		0.055699218981737589 0.055499999999999987 -0.055300063334723593
		0.055300063334723593 0.055499999999999987 0.055699218981737589
		0.054619634773550571 -0.10233944317437516 0.24491633897698376
		-0.056379647542910624 -0.10233944317437516 0.24451718332996977
		-0.055469135150934316 0.055499999999999987 0.05507162834679518
		-0.055071628346795153 0.055499999999999987 -0.055469135150934344
		-0.0553000633347236 -0.10233944317437516 -0.055699218981737582
		0.055699218981737596 -0.10233944317437516 -0.055300063334723586
		;
createNode transform -n "IKFKAlignedOffsetLeg_L" -p "IKLeg_L";
	rename -uid "BF4B48F5-1C42-06CB-106A-5A80AB9C8975";
	setAttr ".r" -type "double3" -90.206033380497161 -3.1805546814635168e-15 90.000000000000028 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
createNode transform -n "IKLegFootRockInnerPivot_L" -p "IKLeg_L";
	rename -uid "68A63175-764A-FC61-C216-3E88C95ADEAE";
	setAttr ".t" -type "double3" -0.053333099944773033 -0.10233944317437516 0.16880895236310162 ;
	setAttr ".r" -type "double3" 0 -0.20603588497529796 0 ;
	setAttr ".ro" 5;
createNode transform -n "IKLegFootRockOuterPivot_L" -p "IKLegFootRockInnerPivot_L";
	rename -uid "83AA3CDF-B34A-E767-63E0-DC9AC17E657C";
	setAttr ".t" -type "double3" 0.11949141914477715 0 -0.03501299770387388 ;
	setAttr ".ro" 5;
createNode transform -n "IKFKAlignedLeg_L" -p "IKLegFootRockOuterPivot_L";
	rename -uid "C45D5B03-884B-577B-ED92-0E9A6B4269C0";
	setAttr ".t" -type "double3" -0.066765700487302737 0.10233944317437517 -0.13398664886291606 ;
	setAttr ".r" -type "double3" -89.999997495521853 -3.180554681463516e-15 89.999999999999986 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode transform -n "IKLocalOffsetLeg_L" -p "IKLegFootRockOuterPivot_L";
	rename -uid "32AF46FC-6840-AADF-A95E-4AB8BF4715FC";
	setAttr ".t" -type "double3" -0.066765700487302737 0.10233944317437516 -0.13398664886291606 ;
	setAttr ".r" -type "double3" -89.999997495521868 0 89.999999999999986 ;
	setAttr ".ro" 3;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000004 ;
createNode transform -n "IKLocalExtraLeg_L" -p "IKLocalOffsetLeg_L";
	rename -uid "77D5085B-8740-0D24-35DA-98AA1BE3AEB1";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLocalLeg_L" -p "IKLocalExtraLeg_L";
	rename -uid "E51D83E6-1440-F22B-DDAE-23BB014DB402";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKLocalLeg_LShape" -p "IKLocalLeg_L";
	rename -uid "5AF2EF6C-B040-37FE-6ABD-B98BFE716133";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.069983003042944386 0.069983003042944358
		0 -7.0170840663807696e-18 0.061504777409268512
		0 -0.0699830030429444 0.069983003042944386
		2.4646951146678469e-17 -0.061504777409268512 1.9170301526965107e-17
		0 -0.0699830030429444 -0.069983003042944386
		0 -2.0710735973632512e-17 -0.061504777409268532
		0 0.069983003042944386 -0.069983003042944386
		-2.4646951146678469e-17 0.061504777409268512 -3.3034211546971745e-17
		0 0.069983003042944386 0.069983003042944358
		0 -7.0170840663807696e-18 0.061504777409268512
		0 -0.0699830030429444 0.069983003042944386
		;
createNode transform -n "RollOffsetOffsetHeel_L" -p "IKLocalLeg_L";
	rename -uid "4C713BC7-F64A-E2F2-0C2C-2786B6C26A00";
	setAttr ".t" -type "double3" -0.092266479502464901 0.03860429553171997 0.0085896544099193783 ;
	setAttr ".r" -type "double3" 89.999999999999972 89.999997495521868 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "RollOffsetHeel_L" -p "RollOffsetOffsetHeel_L";
	rename -uid "41FF2691-9542-FC44-7F90-02A5B9324BE6";
createNode transform -n "RollRollerHeel_L" -p "RollOffsetHeel_L";
	rename -uid "BC34A85E-6E48-1CB4-6E76-80B09621533D";
createNode transform -n "RollExtraHeel_L" -p "RollRollerHeel_L";
	rename -uid "F3F101A5-094C-C010-D6A7-B6AB6D61D81D";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 1.7347234759768071e-18 -1.3877787807814457e-17 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollHeel_L" -p "RollExtraHeel_L";
	rename -uid "B975AE98-ED4E-647D-607D-0DB7CFEC8F26";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollHeel_LShape" -p "RollHeel_L";
	rename -uid "A828DC9A-CC47-D582-9E8C-CDB1FC08DA47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		1.3502607819450899e-17 0.054915934883420892 0.037000679667009782
		-3.641445973330006e-18 0.0036663797231414469 0.06551865679022903
		-1.7645620043299164e-17 -0.043490445181462938 0.043490445181462938
		-2.1188718121425143e-17 -0.061504777409268512 1.9170301526965107e-17
		-1.2319752493320839e-17 -0.043490445181462944 -0.043490445181462931
		3.7659570602910544e-18 0.0058577942030368438 -0.063685438440374262
		1.8081408847662864e-17 0.051358768195245402 -0.035222834822351175
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		2.118261838076084e-17 0.059710868541165737 -0.0062493144996728428
		2.118261838076084e-17 0.059710868541165737 -0.0062493144996728428
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		2.0535034914879598e-17 0.055411096405755922 -6.7815609231100925e-06
		1.9530049146005771e-17 0.051076917233902869 -0.0066195081274977637
		;
createNode transform -n "RollOffsetToesEnd_L" -p "RollHeel_L";
	rename -uid "11816DD5-664E-3F81-279F-928F90955103";
	setAttr ".t" -type "double3" 0.015754264799256512 -0.0082986927695220015 0.28329845675366361 ;
createNode transform -n "RollRollerToesEnd_L" -p "RollOffsetToesEnd_L";
	rename -uid "C5CB8D38-D24B-CAE1-782C-3F81EF6F9E88";
createNode transform -n "RollExtraToesEnd_L" -p "RollRollerToesEnd_L";
	rename -uid "6FC7FD1C-A742-8D1B-FFB6-BCBD21DC4ADE";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 2.1684043449710089e-19 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollToesEnd_L" -p "RollExtraToesEnd_L";
	rename -uid "32699DB0-444F-F494-7AAF-4A8B53B94D5B";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollToesEnd_LShape" -p "RollToesEnd_L";
	rename -uid "E402F5A8-D144-9091-83A9-CDB884CFBF2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.094806039414938e-17 0.044526433689260188 0.030000551081359288
		-2.9525237621594649e-18 0.0029727403160606327 0.053123235235320837
		-1.4307259494566891e-17 -0.035262523120105083 0.035262523120105083
		-1.718004172007444e-17 -0.049868738439947449 1.5543487724566303e-17
		-9.9889885080979777e-18 -0.035262523120105096 -0.035262523120105083
		3.0534786975332875e-18 0.0047495628673271707 -0.051636841978681833
		1.4660601768375295e-17 0.041642244482631416 -0.028559055261365818
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.7175095984400682e-17 0.048414217736080331 -0.0050670117564914942
		1.7175095984400682e-17 0.048414217736080331 -0.0050670117564914942
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.5835174983247924e-17 0.041413716676137469 -0.0053671687520252141
		;
createNode transform -n "RollOffsetToes_L" -p "RollToesEnd_L";
	rename -uid "1FBF719C-8149-5214-64EE-5DA1B8C76B5F";
	setAttr ".t" -type "double3" -0.0071646029155996716 0.022173327510244995 -0.11231927573707537 ;
createNode transform -n "RollRollerToes_L" -p "RollOffsetToes_L";
	rename -uid "AEBA0197-684E-B039-B852-36842436906D";
createNode transform -n "RollExtraToes_L" -p "RollRollerToes_L";
	rename -uid "6A089785-174B-D313-093E-378898C92363";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 3.4694469519536142e-18 -6.9388939039072284e-18 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RollToes_L" -p "RollExtraToes_L";
	rename -uid "0294C711-6343-4555-0CF6-C38FD1C1C551";
	setAttr ".sech" no;
createNode nurbsCurve -n "RollToes_LShape" -p "RollToes_L";
	rename -uid "21594C3D-2241-F828-1DA8-9EAF1FEAB4FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 13 0 no 3
		18 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 13 13
		16
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.094806039414938e-17 0.044526433689260188 0.030000551081359288
		-2.9525237621594649e-18 0.0029727403160606327 0.053123235235320837
		-1.4307259494566891e-17 -0.035262523120105083 0.035262523120105083
		-1.718004172007444e-17 -0.049868738439947449 1.5543487724566303e-17
		-9.9889885080979777e-18 -0.035262523120105096 -0.035262523120105083
		3.0534786975332875e-18 0.0047495628673271707 -0.051636841978681833
		1.4660601768375295e-17 0.041642244482631416 -0.028559055261365818
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.7175095984400682e-17 0.048414217736080331 -0.0050670117564914942
		1.7175095984400682e-17 0.048414217736080331 -0.0050670117564914942
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.6650028309361839e-17 0.044927916004666973 -5.4985629106298051e-06
		1.5835174983247924e-17 0.041413716676137469 -0.0053671687520252141
		;
createNode ikHandle -n "IKAnkleHandle_L" -p "RollToes_L";
	rename -uid "58000738-694C-6890-95D3-CBB434DD3CE6";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -6.8672573738659537e-09 -3.7546587713932489e-10 3.7546551978628884e-10 ;
	setAttr ".r" -type "double3" -89.999999999999972 3.1805546814635176e-15 89.999997495521882 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.0035959531088392126 -1.5718460479350561e-10 0.99999353453971862 ;
	setAttr ".roc" yes;
createNode ikHandle -n "IKLegHandle_L" -p "RollToes_L";
	rename -uid "E8FDE05B-2448-E0AC-D16F-1F8EF2C99FF0";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -3.4406412163789923e-09 0.078391844386275888 -0.13237488548486862 ;
	setAttr ".r" -type "double3" -7.4053538156357545e-25 0.2060333804971721 -2.5044781067319401e-06 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IKLegHandle_L_poleVectorConstraint1" -p "IKLegHandle_L";
	rename -uid "FF01F269-E64C-7830-1C49-7489C4647B9A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleLeg_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.1023925139508236 -0.47196338478084715 0.79026969409288617 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureConstrainToLeg_L" -p "RollToes_L";
	rename -uid "502C329F-4F40-D375-2579-13809F5C252E";
	setAttr ".t" -type "double3" -3.4406412163789923e-09 0.078391844386275888 -0.13237488548486864 ;
	setAttr ".r" -type "double3" -7.4053538156357545e-25 0.2060333804971721 -2.5044781067319401e-06 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "IKOffsetToes_L" -p "RollToesEnd_L";
	rename -uid "74811393-904E-4DEE-CC1C-F980955213E3";
	setAttr ".t" -type "double3" -0.0071646097828576005 0.02217332713477917 -0.11231927536160947 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "IKExtraToes_L" -p "IKOffsetToes_L";
	rename -uid "6DE14C02-8947-4C50-DCF8-EB81E27E4FC0";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKToes_L" -p "IKExtraToes_L";
	rename -uid "BEEEC5C5-9A49-8E18-1BBA-D9858F7DB255";
	setAttr ".sech" no;
createNode nurbsCurve -n "IKToes_LShape" -p "IKToes_L";
	rename -uid "42CE4970-B64F-9148-1692-AC982652BC1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.035262523120105131 0.035262523120105124 6.3341004246121355e-17
		-0.049868738439947519 -5.6895276213898145e-18 6.658423555626569e-17
		-0.035262523120105145 -0.035262523120105083 6.3341004246121355e-17
		-7.1054638955824121e-17 -0.049868738439947449 7.5495165674510662e-17
		0.035262523120105034 -0.035262523120105096 4.7681298216394324e-17
		0.049868738439947422 -1.6792488627269605e-17 4.4438066906249983e-17
		0.035262523120105041 0.035262523120105076 4.7681298216394324e-17
		-2.8726655382361804e-17 0.049868738439947449 3.5527136788005016e-17
		-0.035262523120105131 0.035262523120105124 6.3341004246121355e-17
		-0.049868738439947519 -5.6895276213898145e-18 6.658423555626569e-17
		-0.035262523120105145 -0.035262523120105083 6.3341004246121355e-17
		;
createNode ikHandle -n "IKToesHandle_L" -p "IKToes_L";
	rename -uid "1EF08B92-A24F-7CD8-6CB1-2E920866F0CA";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 0.007164597036741549 -0.022173327823423128 0.11231927605024901 ;
	setAttr ".r" -type "double3" -80.41842778456683 78.279507972498322 107.90656850660484 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".pv" -type "double3" 0.0035959531088392126 -1.5718460479350561e-10 0.9999935345397184 ;
	setAttr ".roc" yes;
createNode transform -n "IKLegFootRoll_L" -p "IKLocalLeg_L";
	rename -uid "255A0B5B-1143-DC23-D397-599B9FE9BEF1";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 -1.3877787807814457e-17 0 ;
	setAttr ".r" -type "double3" 89.999999999999972 89.999997495521868 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999911 ;
createNode transform -n "PoleOffsetLeg_L" -p "IKHandle";
	rename -uid "6D5B18DA-FD4D-F38C-933E-D1A35B6B3846";
createNode transform -n "PoleExtraLeg_L" -p "PoleOffsetLeg_L";
	rename -uid "88E0864C-1E4F-C348-F98D-C7B66FF763E0";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "PoleLeg_L" -p "PoleExtraLeg_L";
	rename -uid "39FE605B-6749-34FA-8B36-BA95A2316387";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
	setAttr -k on ".follow" 10;
	setAttr -k on ".lock";
createNode nurbsCurve -n "PoleLeg_LShape" -p "PoleLeg_L";
	rename -uid "54B1C77D-B549-DCE1-CB6F-C5A2AF20D954";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.055499999999999987 0 0
		-0.055499999999999987 0 0
		0 0 0
		0 -0.055499999999999987 0
		0 0.055499999999999987 0
		0 0 0
		0 0 0.055499999999999987
		0 0 -0.055499999999999987
		;
createNode parentConstraint -n "PoleOffsetLeg_L_parentConstraint1" -p "PoleOffsetLeg_L";
	rename -uid "D34BD0A6-ED48-1DFB-FC5C-779BBF47A03B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetLeg_LStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "PoleOffsetLeg_LFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0.22095081647252934 0.44739135202411451 0.79269143237695427 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "PoleAimLeg_L" -p "IKHandle";
	rename -uid "8B1E72FE-254D-9CAE-03A4-B38F41AA0339";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode aimConstraint -n "PoleAimLeg_L_aimConstraint1" -p "PoleAimLeg_L";
	rename -uid "E38FB16E-C74E-16BC-3155-D499B1B238D4";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKLeg_LW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 91.196069120273933 5.6379808115514232 -80.043977496394845 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "PoleAimLeg_L_pointConstraint1" -p "PoleAimLeg_L";
	rename -uid "4CC6A841-9841-B7C0-0EA3-C29B20E5D491";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_L" -p "IKHandle";
	rename -uid "C82C5F60-B448-AA3C-9688-7B9645FA2FAF";
createNode transform -n "IKExtraArm_L" -p "IKOffsetArm_L";
	rename -uid "BC699525-0F4C-EA75-F8D6-CCA7FB15B1DF";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKArm_L_PH" -p "IKExtraArm_L";
	rename -uid "E17A5F0C-44E2-72EA-CD70-73961708DEB7";
createNode transform -n "IKArm_L_SN" -p "IKArm_L_PH";
	rename -uid "8852A346-46D6-9973-3AD6-5FAAB502206C";
createNode transform -n "IKArm_L" -p "IKArm_L_SN";
	rename -uid "C134710C-8348-C1AC-B6DE-2A97C1D5C5E3";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "antiPop" -ln "antiPop" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "Lenght1" -ln "Lenght1" -dv 1 -at "double";
	addAttr -ci true -k true -sn "Lenght2" -ln "Lenght2" -dv 1 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".follow";
	setAttr -k on ".stretchy";
	setAttr -k on ".antiPop";
	setAttr -k on ".Lenght1";
	setAttr -k on ".Lenght2";
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKArm_LShape" -p "IKArm_L";
	rename -uid "2EFD2998-244D-6217-B23A-A091D687BE27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.058904999999999971 0.058904999999999971 -0.058904999999999971
		-0.058904999999999971 0.058904999999999971 -0.058904999999999971
		-0.058904999999999971 -0.058904999999999971 -0.058904999999999971
		-0.058904999999999971 -0.058904999999999971 0.058904999999999971
		-0.058904999999999971 0.058904999999999971 0.058904999999999971
		0.058904999999999971 0.058904999999999971 0.058904999999999971
		0.058904999999999971 -0.058904999999999971 0.058904999999999971
		0.058904999999999971 -0.058904999999999971 -0.058904999999999971
		0.058904999999999971 0.058904999999999971 -0.058904999999999971
		0.058904999999999971 0.058904999999999971 0.058904999999999971
		0.058904999999999971 -0.058904999999999971 0.058904999999999971
		-0.058904999999999971 -0.058904999999999971 0.058904999999999971
		-0.058661673642804363 0.058904999999999971 0.058661673642804384
		-0.058661673642804363 0.058904999999999971 -0.058661673642804384
		-0.058904999999999971 -0.058904999999999971 -0.058904999999999971
		0.058904999999999971 -0.058904999999999971 -0.058904999999999971
		;
createNode ikHandle -n "IKArmHandle_L" -p "IKArm_L";
	rename -uid "C062B23C-9641-D3E4-1EDB-AE974CD7D100";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 3.3306690738754696e-16 4.4408920985006262e-16 1.3877787807814457e-17 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IKArmHandle_L_poleVectorConstraint1" -p "IKArmHandle_L";
	rename -uid "EF96F873-A04A-ED5F-AFCE-8E942D392915";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleArm_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.25717108549162315 -0.19294270230593646 -0.47185455883204375 ;
	setAttr -k on ".w0";
createNode transform -n "IKFKAlignedOffsetArm_L" -p "IKArm_L";
	rename -uid "B80CE084-F249-6CD3-DF08-8F94FC50C8B7";
	setAttr ".t" -type "double3" 0 0 2.3418766925686896e-17 ;
	setAttr ".r" -type "double3" -99.269720804971243 3.8965260472300471 131.95223509871775 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "IKLocalOffsetArm_L" -p "IKArm_L";
	rename -uid "472348ED-4347-9EDC-E185-AE8C1514A385";
	setAttr ".t" -type "double3" 0 0 2.3418766925686896e-17 ;
	setAttr ".r" -type "double3" 103.52888193899449 -46.608170073416552 -166.13438667556611 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
createNode transform -n "IKLocalExtraArm_L" -p "IKLocalOffsetArm_L";
	rename -uid "4213EF6F-014D-679C-F586-DE96DAB490FC";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKLocalArm_L" -p "IKLocalExtraArm_L";
	rename -uid "8D4FF4B9-AC4B-9F19-40B0-2EBB6FF04AD9";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKLocalArm_LShape" -p "IKLocalArm_L";
	rename -uid "F0D511F3-EB41-FB28-54A1-9794C8B2063A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 0.074276554851254728 0.074276554851254714
		0 -7.4475916563992648e-18 0.065278178617891175
		0 -0.074276554851254756 0.074276554851254728
		2.6159074906217926e-17 -0.065278178617891175 2.0346425431457285e-17
		0 -0.074276554851254756 -0.074276554851254728
		0 -2.1981367613095902e-17 -0.065278178617891203
		0 0.074276554851254728 -0.074276554851254728
		-2.6159074906217926e-17 0.065278178617891175 -3.5060905066204868e-17
		0 0.074276554851254728 0.074276554851254714
		0 -7.4475916563992648e-18 0.065278178617891175
		0 -0.074276554851254756 0.074276554851254728
		;
createNode transform -n "IKFKAlignedArm_L" -p "IKLocalArm_L";
	rename -uid "72AF2004-2C43-C4A9-71C0-A39E53AD4F05";
	setAttr ".t" -type "double3" -1.6653345369377348e-16 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "IKmessureConstrainToArm_L" -p "IKArm_L";
	rename -uid "F5A63532-394C-FCF0-6DB7-089B8B76FA01";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 4.4408920985006262e-16 1.3877787807814457e-17 ;
createNode parentConstraint -n "IKOffsetArm_L_parentConstraint1" -p "IKOffsetArm_L";
	rename -uid "7DD98C75-1749-B153-8338-91B51A20ECCA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetArm_LStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKOffsetArm_LFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0.62303043402476843 1.1638390914367505 0.0026780981611006539 ;
	setAttr ".rsrr" -type "double3" 1.6230573375121506e-14 -3.508354649267438e-15 -3.508354649267438e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "PoleOffsetArm_L" -p "IKHandle";
	rename -uid "BC8A3394-954B-4B06-CFEC-D79BA5B31A2F";
createNode transform -n "PoleExtraArm_L" -p "PoleOffsetArm_L";
	rename -uid "7DF0659F-3C40-1C11-6344-54A0089FFFAE";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "PoleArm_L" -p "PoleExtraArm_L";
	rename -uid "FBC4CAAF-0D40-54B3-A5B6-5B916C9B55F2";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
	setAttr -k on ".follow";
	setAttr -k on ".lock";
createNode nurbsCurve -n "PoleArm_LShape" -p "PoleArm_L";
	rename -uid "4DAFD31B-B041-1B05-62D7-0FA9D4763F87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.058904999999999971 0 0
		-0.058904999999999971 0 0
		0 0 0
		0 -0.058904999999999971 0
		0 0.058904999999999971 0
		0 0 0
		0 0 0.058904999999999971
		0 0 -0.058904999999999971
		;
createNode parentConstraint -n "PoleOffsetArm_L_parentConstraint1" -p "PoleOffsetArm_L";
	rename -uid "FE69BADD-2240-3BAA-B703-F9829419E915";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetArm_LStaticW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "PoleOffsetArm_LFollowW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKScalerRoot_M" -p "IKHandle";
	rename -uid "5BB1761E-DC4E-AEE3-230A-34837B942423";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.5 -at "double";
createNode scaleConstraint -n "IKScalerRoot_M_scaleConstraint1" -p "IKScalerRoot_M";
	rename -uid "04A6D33D-274C-ECA3-4F1B-AD8932E8A8B1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine1LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpine3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerSpine1_M" -p "IKHandle";
	rename -uid "FD229D51-F443-7875-809E-67AFEA24C619";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 1 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerSpine1_M_scaleConstraint1" -p "IKScalerSpine1_M";
	rename -uid "B26A8DAF-F744-5D0D-1765-8A92C86FD7D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine1LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpine3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerChest_M" -p "IKHandle";
	rename -uid "3E816CFE-7E44-9801-5BE0-0BB0012C3D00";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.5 -at "double";
createNode scaleConstraint -n "IKScalerChest_M_scaleConstraint1" -p "IKScalerChest_M";
	rename -uid "88BE3B0D-3A41-0C11-535F-7C97F83915A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine1LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpine2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpine3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1" 0;
	setAttr -k on ".w2";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "B4AF8AA5-8A4B-D327-50C4-CF97A19359C4";
createNode transform -n "PoleOffsetLeg_RFollowNoScale" -p "IKFollow";
	rename -uid "34CA3F5F-384C-FE50-6116-E69C441BFD10";
createNode pointConstraint -n "PoleOffsetLeg_RFollowNoScale_pointConstraint1" -p
		 "PoleOffsetLeg_RFollowNoScale";
	rename -uid "EF919021-7245-B5A2-F5DD-6E871059EE8F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleAimLeg_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "PoleOffsetLeg_RFollowNoScale_orientConstraint1" -p
		 "PoleOffsetLeg_RFollowNoScale";
	rename -uid "293108EC-2F44-1677-D6B4-078C17F7D6F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleAimLeg_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 88.237713540745332 5.0693710064978079 -107.00404902118322 ;
	setAttr ".rsrr" -type "double3" 88.237713540745318 5.0693710064977795 -107.00404902118325 ;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetLeg_RFollow" -p "IKFollow";
	rename -uid "4F672B24-EE4F-2CB7-2360-649CE9B595A7";
createNode parentConstraint -n "PoleOffsetLeg_RFollow_parentConstraint1" -p "PoleOffsetLeg_RFollow";
	rename -uid "CE0501ED-B74A-91C1-1E9A-BA9FC15673E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetLeg_RFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.48164785171959107 0.83623731528408818 0.087435306181412875 ;
	setAttr ".tg[0].tor" -type "double3" 83.964085169758675 73.06315711286571 179.29583178364788 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-14 -6.3611093629270391e-15 2.2263882770244614e-14 ;
	setAttr ".rst" -type "double3" -0.22095081647252926 0.44739135202411451 0.79269143237695427 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 1.7655625192200639e-31 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_RFollowNoScale" -p "IKFollow";
	rename -uid "33A75D03-9E49-8764-1144-AB9C3AA1FF94";
createNode pointConstraint -n "IKOffsetArm_RFollowNoScale_pointConstraint1" -p "IKOffsetArm_RFollowNoScale";
	rename -uid "2801A1FD-F643-0C70-2F10-CC9F6F03A353";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.080774985253811424 1.4510045051574703 -0.01881441433691838 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKOffsetArm_RFollowNoScale_orientConstraint1" -p "IKOffsetArm_RFollowNoScale";
	rename -uid "979AB4E8-C945-DBBF-9BE6-6585E7725406";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr ".rsrr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_RFollow" -p "IKFollow";
	rename -uid "EEA2C4A1-784A-B64B-DBA7-9FBF46769B8B";
createNode parentConstraint -n "IKOffsetArm_RFollow_parentConstraint1" -p "IKOffsetArm_RFollow";
	rename -uid "5F8E0DE0-0944-EE6E-ABD3-2182A6BD8446";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetArm_RFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.55122489411119635 0.18692593259665488 -0.1953885526013095 ;
	setAttr ".tg[0].tor" -type "double3" 88.400896809509774 9.2674252086334814 -164.17259241179008 ;
	setAttr ".lr" -type "double3" 180.00000000000006 180 -180 ;
	setAttr ".rst" -type "double3" -0.62303043402476876 1.1638390914367478 0.0026780981610982496 ;
	setAttr ".rsrr" -type "double3" 180 180 -180 ;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetArm_RFollowNoScale" -p "IKFollow";
	rename -uid "DF22BDC9-2A45-B752-B2B9-A3B5A2A3155C";
createNode pointConstraint -n "PoleOffsetArm_RFollowNoScale_pointConstraint1" -p
		 "PoleOffsetArm_RFollowNoScale";
	rename -uid "EECB7691-9744-8BC8-3E7F-188DB18FF1CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKArm_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.62303043402476865 1.1638390914367478 0.0026780981610982496 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "PoleOffsetArm_RFollowNoScale_orientConstraint1" -p
		 "PoleOffsetArm_RFollowNoScale";
	rename -uid "B11E78F5-0345-2DD7-D6E5-85863703F4F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKArm_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetArm_RFollow" -p "IKFollow";
	rename -uid "E73EF157-CD4D-FFD4-B9EA-938FDCB0E3EB";
createNode parentConstraint -n "PoleOffsetArm_RFollow_parentConstraint1" -p "PoleOffsetArm_RFollow";
	rename -uid "B1EC6CF8-4D48-4116-281C-F48B4142128C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetArm_RFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.14725793490799899 0.0728467476226351 -0.53354814828563846 ;
	setAttr ".rst" -type "double3" -0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetSpine3_MFollowNoScale" -p "IKFollow";
	rename -uid "F727F82B-4F4F-BCFA-E21A-25B92A989E18";
createNode pointConstraint -n "IKOffsetSpine3_MFollowNoScale_pointConstraint1" -p
		 "IKOffsetSpine3_MFollowNoScale";
	rename -uid "7321384D-7B46-20A2-432D-989592072F3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKOffsetSpine3_MFollowNoScale_orientConstraint1" 
		-p "IKOffsetSpine3_MFollowNoScale";
	rename -uid "B062E5CE-544E-4F91-F31A-27BD9F198143";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetSpine3_MFollow" -p "IKFollow";
	rename -uid "A48A8917-A94C-9C14-4D63-2E9729732906";
createNode parentConstraint -n "IKOffsetSpine3_MFollow_parentConstraint1" -p "IKOffsetSpine3_MFollow";
	rename -uid "3A0E6203-C543-4A77-75F1-C992A5111FCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetSpine3_MFollowNoScaleW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5932734458701931e-16 0.30953830480575562 
		-0.004728339714347436 ;
	setAttr ".rst" -type "double3" -1.3961786246366233e-16 1.2685383558273315 -0.0047283410724385201 ;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetLeg_LFollowNoScale" -p "IKFollow";
	rename -uid "555A7660-3140-C156-B056-C6856AB299AB";
createNode pointConstraint -n "PoleOffsetLeg_LFollowNoScale_pointConstraint1" -p
		 "PoleOffsetLeg_LFollowNoScale";
	rename -uid "AE31D283-AF47-2BDF-FB01-4CB32E871DD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleAimLeg_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "PoleOffsetLeg_LFollowNoScale_orientConstraint1" -p
		 "PoleOffsetLeg_LFollowNoScale";
	rename -uid "6416B7B1-CE47-28CC-BA33-6B95D606E3D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleAimLeg_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 91.762286459254724 5.0693710064978026 -72.995950978816708 ;
	setAttr ".rsrr" -type "double3" 91.762286459254724 5.0693710064978079 -72.995950978816694 ;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetLeg_LFollow" -p "IKFollow";
	rename -uid "5266F882-4543-24E6-CABC-2092191092D2";
createNode parentConstraint -n "PoleOffsetLeg_LFollow_parentConstraint1" -p "PoleOffsetLeg_LFollow";
	rename -uid "C0A1D03F-C340-852E-3532-7EBA705CFCB7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetLeg_LFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.48164785171959085 0.83623731528408829 -0.087435306181412986 ;
	setAttr ".tg[0].tor" -type "double3" -96.035914830241467 73.063157112865653 -0.70416821635223703 ;
	setAttr ".lr" -type "double3" -3.1805546814635176e-15 -5.296687557660193e-31 -1.9083328088781104e-14 ;
	setAttr ".rst" -type "double3" 0.2209508164725294 0.44739135202411451 0.79269143237695439 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270304e-15 1.2722218725854067e-14 -2.2263882770244617e-14 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_LFollowNoScale" -p "IKFollow";
	rename -uid "292CF633-3F46-B208-81DD-2F8CAFCEB1AD";
createNode pointConstraint -n "IKOffsetArm_LFollowNoScale_pointConstraint1" -p "IKOffsetArm_LFollowNoScale";
	rename -uid "16C7FDD2-8641-5F7E-8100-15937A110208";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.080774985253811007 1.4510045051574707 -0.018814414336918207 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKOffsetArm_LFollowNoScale_orientConstraint1" -p "IKOffsetArm_LFollowNoScale";
	rename -uid "C26DA7B5-1C4A-7E31-81D1-03A54A7FF711";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -91.642493042054156 -16.078729485954032 171.18404348451037 ;
	setAttr ".rsrr" -type "double3" -91.64249304205417 -16.078729485954032 171.18404348451037 ;
	setAttr -k on ".w0";
createNode transform -n "IKOffsetArm_LFollow" -p "IKFollow";
	rename -uid "BC38CAA5-C245-C598-1DCC-EB9F584ACC59";
createNode parentConstraint -n "IKOffsetArm_LFollow_parentConstraint1" -p "IKOffsetArm_LFollow";
	rename -uid "C9EB6736-2C41-8DEE-8DED-09924E67C73E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKOffsetArm_LFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.55122489411119435 -0.18692593259665746 0.19538855260130927 ;
	setAttr ".tg[0].tor" -type "double3" -91.599103190490339 9.2674252086332771 -164.17259241179008 ;
	setAttr ".lr" -type "double3" -180 -180.00000000000003 180 ;
	setAttr ".rst" -type "double3" 0.62303043402476832 1.1638390914367505 0.002678098161100699 ;
	setAttr ".rsrr" -type "double3" -179.99999999999997 -180 180 ;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetArm_LFollowNoScale" -p "IKFollow";
	rename -uid "B9D8C0D7-7742-C073-67F5-0B99B23DC86E";
createNode pointConstraint -n "PoleOffsetArm_LFollowNoScale_pointConstraint1" -p
		 "PoleOffsetArm_LFollowNoScale";
	rename -uid "9DA2D665-9746-EB20-62EA-4394AD0463C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKArm_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.62303043402476854 1.1638390914367505 0.0026780981611006088 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "PoleOffsetArm_LFollowNoScale_orientConstraint1" -p
		 "PoleOffsetArm_LFollowNoScale";
	rename -uid "AAF47D56-D040-6208-8B2D-9FAC25D28333";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKArm_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "PoleOffsetArm_LFollow" -p "IKFollow";
	rename -uid "6BD2DFC0-A148-233E-33F6-B29081B0D882";
createNode parentConstraint -n "PoleOffsetArm_LFollow_parentConstraint1" -p "PoleOffsetArm_LFollow";
	rename -uid "11F7705D-2646-26F5-1E14-72BFF5E2BB1F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PoleOffsetArm_LFollowNoScaleW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.14725793490799888 0.072846747622632435 -0.5335481482856409 ;
	setAttr ".rst" -type "double3" 0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
	setAttr -k on ".w0";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "B30EE7BF-F541-8427-F817-58A0FECD6B7B";
createNode transform -n "PoleOffsetLeg_RStatic" -p "IKStatic";
	rename -uid "F1678214-AA43-DFE1-3D32-A19C4D6FAB28";
	setAttr ".t" -type "double3" -0.22095081647252929 0.44739135202411456 0.79269143237695427 ;
createNode transform -n "IKOffsetArm_RStatic" -p "IKStatic";
	rename -uid "3129A3E5-1C41-247A-AC31-91B9EE57F3A6";
	setAttr ".t" -type "double3" -0.62303043402476865 1.1638390914367478 0.0026780981610982496 ;
createNode transform -n "PoleOffsetArm_RStatic" -p "IKStatic";
	rename -uid "F9C29648-D94D-603E-0467-D1B384C8DBEB";
	setAttr ".t" -type "double3" -0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
createNode transform -n "IKOffsetSpine3_MStatic" -p "IKStatic";
	rename -uid "775A67BB-1242-C26E-6EBD-73B8B19A17C0";
	setAttr ".t" -type "double3" -1.3961786246366233e-16 1.2685383558273315 -0.0047283410724385201 ;
createNode transform -n "PoleOffsetLeg_LStatic" -p "IKStatic";
	rename -uid "385C87C7-914A-8BD3-95FE-44A097F1A4F4";
	setAttr ".t" -type "double3" 0.22095081647252929 0.44739135202411456 0.79269143237695427 ;
createNode transform -n "IKOffsetArm_LStatic" -p "IKStatic";
	rename -uid "3571DEAF-0549-0F82-92A1-76B20425323C";
	setAttr ".t" -type "double3" 0.62303043402476854 1.1638390914367505 0.0026780981611006088 ;
createNode transform -n "PoleOffsetArm_LStatic" -p "IKStatic";
	rename -uid "CB02370B-2B49-C0D2-47CA-219BA648C0EA";
	setAttr ".t" -type "double3" 0.47577249911676966 1.2366858390593829 -0.53087005012454025 ;
createNode transform -n "IKCurve" -p "IKSystem";
	rename -uid "68E0929E-3E47-9EB3-9AF8-53847608FCA0";
	setAttr ".it" no;
createNode transform -n "IKSpineCurve_M" -p "IKCurve";
	rename -uid "83793582-0845-65C8-D6FD-1881DFC34042";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode nurbsCurve -n "IKSpineCurve_MShape" -p "IKSpineCurve_M";
	rename -uid "05B894F1-3B45-14B4-9822-B9828AC29FD4";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 3 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		1.9709482123357068e-17 0.95900005102157593 -1.3580910840360612e-09
		-1.2698281275758356e-17 1.1137692034244537 -0.0023641712152647895
		-4.5106044674873768e-17 1.2685383558273315 -0.0047283410724384949
		;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "DE6AEE42-AA48-FD39-1C35-98A860E642FD";
createNode transform -n "IKmessureLoc1Leg_R" -p "IKMessure";
	rename -uid "2EC62E93-004D-9070-5185-BFB382F4CCA6";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc1Leg_RShape" -p "IKmessureLoc1Leg_R";
	rename -uid "CE92C299-8447-2BC3-274E-0EAE31F038C5";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc1Leg_R_pointConstraint1" -p "IKmessureLoc1Leg_R";
	rename -uid "8ED98C07-D24A-CB46-5EFF-8FB54327D8CC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKXHip_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.11855830252170582 0.91935473680496216 0.0024217382840680548 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureLoc2Leg_R" -p "IKmessureLoc1Leg_R";
	rename -uid "885C5EF1-4947-A509-F779-C489F6E52B91";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc2Leg_RShape" -p "IKmessureLoc2Leg_R";
	rename -uid "E09ACDA5-5C4F-EF1C-E9B6-2B87A4D0404D";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc2Leg_R_pointConstraint1" -p "IKmessureLoc2Leg_R";
	rename -uid "026D6F8D-CB43-B36E-E7A4-35949D8BE712";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKmessureConstrainToLeg_RW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.14341532812851801 -0.81701529363058689 -0.081889072123807555 ;
	setAttr -k on ".w0";
createNode transform -n "IKdistanceLeg_R" -p "IKMessure";
	rename -uid "3ED0FCF7-9A40-417F-4430-3C91C1A6715F";
	setAttr -l on ".v" no;
createNode distanceDimShape -n "IKdistanceLeg_RShape" -p "IKdistanceLeg_R";
	rename -uid "D2A5A55A-604E-3E8F-9BA7-DD8F41B95D2F";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr -k off ".v";
createNode transform -n "IKmessureLoc1Arm_R" -p "IKMessure";
	rename -uid "4049BE8D-3F47-5285-F628-18B94E3FACC3";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc1Arm_RShape" -p "IKmessureLoc1Arm_R";
	rename -uid "59AD4F54-8B49-470E-6BF8-798A7BC4918D";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc1Arm_R_pointConstraint1" -p "IKmessureLoc1Arm_R";
	rename -uid "E190453D-D64D-1403-CA0A-20A1996DD912";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKXShoulder_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.21860141362514623 1.4296285413653163 -0.059015491292497384 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureLoc2Arm_R" -p "IKmessureLoc1Arm_R";
	rename -uid "4FF2BB4E-9D4B-CFD0-4CE0-72B0F235E5B1";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc2Arm_RShape" -p "IKmessureLoc2Arm_R";
	rename -uid "339070D5-DD4B-9539-A6EA-35868A745A58";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc2Arm_R_pointConstraint1" -p "IKmessureLoc2Arm_R";
	rename -uid "D341AFEE-1245-2AF1-A6F0-2EAD1D9728DD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKmessureConstrainToArm_RW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.4044290203996222 -0.26578944992856823 0.061693589453595564 ;
	setAttr -k on ".w0";
createNode transform -n "IKdistanceArm_R" -p "IKMessure";
	rename -uid "6D6F38D2-3F48-1BE8-4A2D-258A9E634409";
	setAttr -l on ".v" no;
createNode distanceDimShape -n "IKdistanceArm_RShape" -p "IKdistanceArm_R";
	rename -uid "9910363A-4343-EC2F-DA55-4183288E9518";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr -k off ".v";
createNode transform -n "IKmessureLoc1Leg_L" -p "IKMessure";
	rename -uid "29CD94F3-6E44-0ECA-EC3B-2BA7D33ACD52";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc1Leg_LShape" -p "IKmessureLoc1Leg_L";
	rename -uid "884153A4-284E-4798-DFA7-09AFE8659E0F";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc1Leg_L_pointConstraint1" -p "IKmessureLoc1Leg_L";
	rename -uid "15155468-3F40-1B0A-E682-F79943F80F6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKXHip_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.11855830252170567 0.91935473680496171 0.0024217382840680595 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureLoc2Leg_L" -p "IKmessureLoc1Leg_L";
	rename -uid "42C6F77A-EA4B-3688-8D35-B2B46F5F592F";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc2Leg_LShape" -p "IKmessureLoc2Leg_L";
	rename -uid "68F6D957-A240-B182-2D21-C4A24D9589AF";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc2Leg_L_pointConstraint1" -p "IKmessureLoc2Leg_L";
	rename -uid "26568EA8-8B45-E607-C81D-16A96939D9C2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKmessureConstrainToLeg_LW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.14341532812851981 -0.81701529363058678 -0.081889072123808526 ;
	setAttr -k on ".w0";
createNode transform -n "IKdistanceLeg_L" -p "IKMessure";
	rename -uid "B217B7FC-5445-FAFB-06A7-0D9E986C2BDE";
	setAttr -l on ".v" no;
createNode distanceDimShape -n "IKdistanceLeg_LShape" -p "IKdistanceLeg_L";
	rename -uid "66300FE4-DC4F-8BF2-9058-289E1E3E0E2A";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr -k off ".v";
createNode transform -n "IKmessureLoc1Arm_L" -p "IKMessure";
	rename -uid "E9EB1709-BD47-7F0A-9118-88AFBA9E8FCB";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc1Arm_LShape" -p "IKmessureLoc1Arm_L";
	rename -uid "676CD1AE-3240-08DA-0582-B3883564414E";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc1Arm_L_pointConstraint1" -p "IKmessureLoc1Arm_L";
	rename -uid "C9C79AC0-894C-1A56-8231-2DB0B5FD67A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKXShoulder_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.21860141362514648 1.4296285413653194 -0.059015491292496516 ;
	setAttr -k on ".w0";
createNode transform -n "IKmessureLoc2Arm_L" -p "IKmessureLoc1Arm_L";
	rename -uid "35AD2E2E-5347-2D30-921E-2CA47D2580AE";
	setAttr -l on ".v" no;
createNode locator -n "IKmessureLoc2Arm_LShape" -p "IKmessureLoc2Arm_L";
	rename -uid "87A742E4-5741-28B3-57A0-F7B41C99F44F";
	setAttr -k off ".v";
createNode pointConstraint -n "IKmessureLoc2Arm_L_pointConstraint1" -p "IKmessureLoc2Arm_L";
	rename -uid "CBD9DA76-114B-B08F-1B31-4BA031BF57F4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKmessureConstrainToArm_LW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.40442902039962236 -0.26578944992856846 0.061693589453597139 ;
	setAttr -k on ".w0";
createNode transform -n "IKdistanceArm_L" -p "IKMessure";
	rename -uid "6E43C53F-7446-DEAA-837A-8BAC0F30D50B";
	setAttr -l on ".v" no;
createNode distanceDimShape -n "IKdistanceArm_LShape" -p "IKdistanceArm_L";
	rename -uid "FB3E4B4F-F243-2337-9FD5-13A6869024D3";
	addAttr -ci true -sn "antiPop" -ln "antiPop" -at "double";
	setAttr -k off ".v";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "55C2E746-F846-E9E7-28AC-5DA8B8DDBE97";
createNode transform -n "FKIKParentConstraintLeg_R" -p "FKIKSystem";
	rename -uid "B425967B-2C4D-185E-29FA-679FDBB2C6CC";
createNode parentConstraint -n "FKIKParentConstraintLeg_R_parentConstraint1" -p "FKIKParentConstraintLeg_R";
	rename -uid "6086020B-394E-81EB-1DB0-F1AE47D5B2E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKLeg_R" -p "FKIKParentConstraintLeg_R";
	rename -uid "48E70EEE-B242-23BE-46B7-589560E1EC70";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" -0.24629337115929525 -0.13219955381743675 -0.0070684073443780908 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend" 10;
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Hip";
	setAttr -l on ".middleJoint" -type "string" "Knee";
	setAttr -l on ".endJoint" -type "string" "Ankle";
createNode nurbsCurve -n "FKIKLeg_RShape" -p "FKIKLeg_R";
	rename -uid "E896DB5E-BE47-2CDB-F20E-C6A782DB8EA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-0.080337290818103479 -0.080827430328911487 1.2576745200831851e-16
		-0.12362987128103708 -0.080827430328911487 1.3010426069826053e-16
		-0.12362987128103708 -0.037534849865977993 1.3444106938820255e-16
		-0.13805938339300983 -0.037534849865977993 1.3617579286417936e-16
		-0.13805938339300983 -0.080827430328911487 1.3183898417423734e-16
		-0.18135196385594332 -0.080827430328911487 1.3617579286417936e-16
		-0.18135196385594332 -0.095256942440884118 1.3444106938820255e-16
		-0.13805938339300983 -0.095256942440884118 1.3010426069826053e-16
		-0.13805938339300983 -0.13854952290381772 1.2576745200831851e-16
		-0.12362987128103708 -0.13854952290381772 1.2403272853234171e-16
		-0.12362987128103708 -0.095256942440884118 1.2836953722228372e-16
		-0.080337290818103479 -0.095256942440884118 1.2403272853234171e-16
		-0.080337290818103479 -0.080827430328911487 1.2576745200831851e-16
		;
createNode transform -n "FKIKParentConstraintArm_R" -p "FKIKSystem";
	rename -uid "1932561B-BD4A-E40B-0C9C-529E02692824";
createNode parentConstraint -n "FKIKParentConstraintArm_R_parentConstraint1" -p "FKIKParentConstraintArm_R";
	rename -uid "F19EB29B-E645-F4D0-BF8B-8A8155BBA0F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr ".rst" -type "double3" -0.080774985253811424 1.4510045051574703 -0.01881441433691838 ;
	setAttr ".rsrr" -type "double3" 88.35750695794593 16.078729485953996 -171.18404348451014 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKArm_R" -p "FKIKParentConstraintArm_R";
	rename -uid "5B8AD291-CE41-8267-817F-CEB77480BB6A";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0.28395846835949101 0.017640451949362812 0.032397942924951462 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 88.400896809509746 9.2674252086334903 -164.17259241179008 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend";
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Shoulder";
	setAttr -l on ".middleJoint" -type "string" "Elbow";
	setAttr -l on ".endJoint" -type "string" "Wrist";
createNode nurbsCurve -n "FKIKArm_RShape" -p "FKIKArm_R";
	rename -uid "3936AF69-904C-4ECC-A4CC-88AE1BC6D179";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0.045017971098891219 0.17529885987046923 8.3266726846886741e-16
		0.0064306237865516258 0.17529885987046923 8.0491169285323849e-16
		0.0064306237865516258 0.21388620718280871 8.0491169285323849e-16
		-0.0064306237865520144 0.21388620718280871 8.0491169285323849e-16
		-0.0064306237865520144 0.17529885987046923 8.0491169285323849e-16
		-0.045017971098891718 0.17529885987046923 7.9103390504542404e-16
		-0.045017971098891718 0.16243761229736542 7.9103390504542404e-16
		-0.0064306237865520144 0.16243761229736542 8.0491169285323849e-16
		-0.0064306237865520144 0.12385026498502594 7.9103390504542404e-16
		0.0064306237865516813 0.12385026498502594 8.0491169285323849e-16
		0.0064306237865516258 0.16243761229736542 8.0491169285323849e-16
		0.045017971098891219 0.16243761229736542 8.3266726846886741e-16
		0.045017971098891219 0.17529885987046923 8.3266726846886741e-16
		;
createNode transform -n "FKIKParentConstraintSpine_M" -p "FKIKSystem";
	rename -uid "E230B051-514B-12B1-A839-9F8DF65364D8";
createNode parentConstraint -n "FKIKParentConstraintSpine_M_parentConstraint1" -p
		 "FKIKParentConstraintSpine_M";
	rename -uid "F3406AD1-D54D-DDCA-8924-448CA8925B8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.999999999999943 -2.0745807453278831 89.999999999999957 ;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKSpine_M" -p "FKIKParentConstraintSpine_M";
	rename -uid "8BE8D6BB-AD44-B9BA-EA2C-C89F439AD14F";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0.11370752006769169 0 0.19274150444484411 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -92.07458074532785 -89.999999999999901 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend";
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Root";
	setAttr -l on ".middleJoint" -type "string" "Spine1";
	setAttr -l on ".endJoint" -type "string" "Chest";
createNode nurbsCurve -n "FKIKSpine_MShape" -p "FKIKSpine_M";
	rename -uid "21C4B748-A44E-BADC-D5DF-559D611CFF42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0.055031142535753468 0.0073848187924723556 -2.593587173071616e-18
		0.099344194743807041 0.0073848187924723556 1.7347234759768071e-18
		0.099344194743807041 0.051697871000525933 6.0634384492267537e-18
		0.11411383232875175 0.051697871000525933 7.5060738908423869e-18
		0.11411383232875175 0.0073848187924723556 3.1773589175924403e-18
		0.15842688453680537 0.0073848187924723556 7.5056695666408634e-18
		0.15842688453680537 -0.0073848187924723556 6.0630341250252302e-18
		0.11411383232875175 -0.0073848187924723556 1.7347234759768071e-18
		0.11411383232875175 -0.051697871000525933 -2.5939914972731379e-18
		0.099344194743807041 -0.051697871000525933 -4.0366269388887711e-18
		0.099344194743807041 -0.0073848187924723556 2.9208803436117389e-19
		0.055031142535753468 -0.0073848187924723556 -4.0362226146872492e-18
		0.055031142535753468 0.0073848187924723556 -2.593587173071616e-18
		;
createNode transform -n "FKIKParentConstraintLeg_L" -p "FKIKSystem";
	rename -uid "87CC2842-794F-E167-4D47-D5B9C0DC8AC7";
createNode parentConstraint -n "FKIKParentConstraintLeg_L_parentConstraint1" -p "FKIKParentConstraintLeg_L";
	rename -uid "D7C145E7-3945-7133-1A5A-5A9E051B9D39";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKLeg_L" -p "FKIKParentConstraintLeg_L";
	rename -uid "7C72CC52-F043-EAF3-C8A3-2F8B2D360033";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0.24629337115929509 -0.13219955381743698 -0.0070684073443779607 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend" 10;
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Hip";
	setAttr -l on ".middleJoint" -type "string" "Knee";
	setAttr -l on ".endJoint" -type "string" "Ankle";
createNode nurbsCurve -n "FKIKLeg_LShape" -p "FKIKLeg_L";
	rename -uid "4A32B4FE-844E-0D87-9462-44A60A1FBC46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0.080337290818103604 -0.080827430328911307 -4.3283106490484231e-18
		0.12362987128103721 -0.080827430328911307 0
		0.12362987128103721 -0.037534849865977785 4.3287149732499458e-18
		0.13805938339300997 -0.037534849865977785 5.771350414865579e-18
		0.13805938339300997 -0.080827430328911307 1.4426354416156336e-18
		0.18135196385594352 -0.080827430328911307 5.7709460906640563e-18
		0.18135196385594352 -0.095256942440883952 4.3283106490484231e-18
		0.13805938339300997 -0.095256942440883952 0
		0.13805938339300997 -0.1385495229038175 -4.328714973249945e-18
		0.12362987128103721 -0.1385495229038175 -5.7713504148655782e-18
		0.12362987128103721 -0.095256942440883952 -1.4426354416156336e-18
		0.080337290818103604 -0.095256942440883952 -5.7709460906640563e-18
		0.080337290818103604 -0.080827430328911307 -4.3283106490484231e-18
		;
createNode transform -n "FKIKParentConstraintArm_L" -p "FKIKSystem";
	rename -uid "AA2D305A-BE48-FB73-9E63-B4AEF3F7BB9E";
createNode parentConstraint -n "FKIKParentConstraintArm_L_parentConstraint1" -p "FKIKParentConstraintArm_L";
	rename -uid "D24D12E8-B94D-666C-688D-D88200602E36";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Scapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -91.642493042054156 -16.078729485954032 171.18404348451037 ;
	setAttr ".rst" -type "double3" 0.080774985253811007 1.4510045051574707 -0.018814414336918207 ;
	setAttr ".rsrr" -type "double3" -91.64249304205417 -16.078729485954032 171.18404348451037 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKArm_L" -p "FKIKParentConstraintArm_L";
	rename -uid "69998BD8-1044-33AF-35D9-18BDE4D0353F";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" -0.28395846835949079 -0.017640451949363575 -0.03239794292495457 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -91.599103190490368 9.2674252086332949 -164.17259241179008 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend";
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Shoulder";
	setAttr -l on ".middleJoint" -type "string" "Elbow";
	setAttr -l on ".endJoint" -type "string" "Wrist";
createNode nurbsCurve -n "FKIKArm_LShape" -p "FKIKArm_L";
	rename -uid "A2B0A7DA-2C47-9DD4-2E8E-2DB4BBAF1B5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-0.045017971098891392 0.17529885987046473 -3.2083886264677335e-17
		-0.0064306237865518348 0.17529885987046473 -2.7755575615628914e-17
		-0.0064306237865518348 0.21388620718280427 -2.3426860642378967e-17
		0.0064306237865518479 0.21388620718280427 -2.1984225200763331e-17
		0.0064306237865518479 0.17529885987046473 -2.6312940174013277e-17
		0.045017971098891468 0.17529885987046473 -2.1984629524964856e-17
		0.045017971098891468 0.16243761229736103 -2.3427264966580492e-17
		0.0064306237865518479 0.16243761229736103 -2.7755575615628914e-17
		0.0064306237865518479 0.1238502649850215 -3.208429058887886e-17
		-0.0064306237865518348 0.1238502649850215 -3.352692603049449e-17
		-0.0064306237865518348 0.16243761229736103 -2.919821105724455e-17
		-0.045017971098891392 0.16243761229736103 -3.3526521706292971e-17
		-0.045017971098891392 0.17529885987046473 -3.2083886264677335e-17
		;
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "148CE6D4-8F4B-FC53-C38E-DBA1434602BB";
	setAttr ".it" no;
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "7555ADF0-604B-E3EC-CB68-A1AA33F6E377";
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "D3D7000E-CE49-6D5B-F1F3-02A7DFB39156";
createNode pointConstraint -n "LegLockConstrained_pointConstraint1" -p "LegLockConstrained";
	rename -uid "55321AD9-5D4F-41CD-4215-F5874A6F22AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "LegLockConstrained_orientConstraint1" -p "LegLockConstrained";
	rename -uid "86875499-1441-3175-F4CB-57ABD352FB63";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "RootSpineAlignedW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RootCenterBtwLegsBlended_M" -p "RootSystem";
	rename -uid "CAEA5867-2041-46AA-1033-10B0502F60E5";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RootOffsetX_M" -p "RootCenterBtwLegsBlended_M";
	rename -uid "ACB3F7CC-0648-EA0A-A939-6FA807A2A124";
	setAttr ".t" -type "double3" -5.2385294487332815e-32 -1.1102230246251565e-16 -4.0190464304491596e-18 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "0FC6AD69-8646-76E6-5DDC-918DB74D1402";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "E5AB86F8-D742-8701-9574-DEB4B3AEE9BB";
	addAttr -ci true -k true -sn "legLock" -ln "legLock" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "CenterBtwFeet" -ln "CenterBtwFeet" -min 0 -max 10 
		-at "double";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".legLock";
	setAttr -k on ".CenterBtwFeet";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "85E9B026-EE4B-A089-4240-3DAF8861FB73";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.26072733555864908 0 -0.025326358063257618
		-0.29745197946149804 0 -0.025326358063257642
		-0.29745197946149804 0 -0.07067820675713718
		-0.36813018621863519 0 1.6153626601413655e-25
		-0.29745197946149815 0 0.070678206757137138
		-0.29745197946149804 0 0.025326358063257531
		-0.26072733555864908 0 0.025326358063257611
		-0.26072733555864908 0 -0.025326358063257618
		;
createNode nurbsCurve -n "RootX_MShape1" -p "RootX_M";
	rename -uid "F032A7D8-F144-06D9-CFA0-6AA89E016A31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		-0.025326358063257681 0 0.26072733555864896
		-0.025326358063257705 0 0.29745197946149787
		-0.070678206757137305 0 0.29745197946149787
		-7.4043375026223635e-17 0 0.36813018621863502
		0.070678206757137096 0 0.29745197946149787
		0.025326358063257479 0 0.29745197946149787
		0.025326358063257556 0 0.26072733555864896
		-0.025326358063257681 0 0.26072733555864896
		;
createNode nurbsCurve -n "RootX_MShape2" -p "RootX_M";
	rename -uid "DE24CD39-8B47-AB3C-44C5-F696693FF638";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.26072733555864908 0 0.025326358063257726
		0.29745197946149804 0 0.025326358063257764
		0.29745197946149804 0 0.070678206757137332
		0.36813018621863519 0 1.6348264368132634e-16
		0.29745197946149815 0 -0.070678206757136985
		0.29745197946149804 0 -0.025326358063257406
		0.26072733555864908 0 -0.0253263580632575
		0.26072733555864908 0 0.025326358063257726
		;
createNode nurbsCurve -n "RootX_MShape3" -p "RootX_M";
	rename -uid "0CD9CE45-B340-969D-36DA-AD841B6E5DD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.025326358063257778 0 -0.26072733555864896
		0.025326358063257844 0 -0.29745197946149787
		0.070678206757137471 0 -0.29745197946149787
		2.5292191201335676e-16 0 -0.36813018621863502
		-0.070678206757136972 0 -0.29745197946149787
		-0.025326358063257351 0 -0.29745197946149787
		-0.025326358063257455 0 -0.26072733555864896
		0.025326358063257778 0 -0.26072733555864896
		;
createNode transform -n "RootZeroXform" -p "RootX_M";
	rename -uid "C6E1A2BB-1040-66A1-D0CD-CC9EC9EC5E1D";
	setAttr ".t" -type "double3" -1.9709482123356976e-17 -0.95900005102157593 1.3580910840360616e-09 ;
createNode transform -n "RootSpineAligned" -p "RootX_M";
	rename -uid "55D1F37C-4541-BE96-E6AD-1584ED129CB8";
createNode orientConstraint -n "RootSpineAligned_orientConstraint1" -p "RootSpineAligned";
	rename -uid "A65D0F37-2049-23B3-5433-4EAA42C0B4BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.999999999999943 -2.0745807453278831 89.999999999999957 ;
	setAttr ".o" -type "double3" -92.074580745327879 -89.999999999999929 0 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781075e-14 -6.3611093629270323e-14 3.8166656177562182e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RootCenterBtwLegsBlended_M_parentConstraint1" -p "RootCenterBtwLegsBlended_M";
	rename -uid "E3D2FACE-4F4C-57BB-3FFB-27BF65C7CC46";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootCenter_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "RootCenterBtwLegsOffset_MW1" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 1.9709482123356988e-17 0.95900005102157604 -1.3580910750876443e-09 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RootCenter_M" -p "RootSystem";
	rename -uid "E26383F3-1141-B9E0-24BF-719A17D32157";
	setAttr ".t" -type "double3" 1.9709482123357022e-17 0.95900005102157604 -1.3580910800170148e-09 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "RootCenterBtwLegs_M" -p "RootSystem";
	rename -uid "302441A0-4A49-B8FD-5C4E-538E5881CD11";
	setAttr ".t" -type "double3" 5.8286708792820718e-16 0.95900005102157604 -0.079467333839740029 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode pointConstraint -n "RootCenterBtwLegs_M_pointConstraint1" -p "RootCenterBtwLegs_M";
	rename -uid "1F087CA8-BA44-D6E3-209C-12B87F099BC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKLeg_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKLeg_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 5.8286708792820718e-16 0.10233944317437532 -0.079467333839740029 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "RootCenterBtwLegs_M_orientConstraint1" -p "RootCenterBtwLegs_M";
	rename -uid "57231556-604F-E5B8-088E-5D9DE851832C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKLeg_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKLeg_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RootCenterBtwLegsOffset_M" -p "RootCenterBtwLegs_M";
	rename -uid "73B1C35A-FD46-5804-8894-40A6CDE85891";
	setAttr ".t" -type "double3" -5.6315760580485033e-16 0 0.079467332481648972 ;
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "98C0D65B-544B-632D-AD58-4AB36E4EAA67";
createNode transform -n "TwistFollowOffsetChest_M" -p "TwistSystem";
	rename -uid "79ACE3F6-284B-5185-9E36-4EAEEF240EEF";
	setAttr ".t" -type "double3" -1.3961786246366243e-16 1.2685383558273315 -0.0047283410724385201 ;
	setAttr ".r" -type "double3" 89.999999999999943 10.374148258997476 89.999999999999957 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "TwistFollowChest_M" -p "TwistFollowOffsetChest_M";
	rename -uid "6A8678E0-2147-A1FB-28C3-938B9A316B03";
	setAttr -l on ".v" no;
createNode parentConstraint -n "TwistFollowChest_M_parentConstraint1" -p "TwistFollowChest_M";
	rename -uid "7CF7192C-674F-3D31-B435-5C8F21B93315";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine3LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.3961786246366243e-16 1.2685383558273315 -0.0047283410724385201 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 10.374148258997476 89.999999999999957 ;
	setAttr -k on ".w0";
createNode ikHandle -n "UnTwistIKChest_M" -p "TwistFollowChest_M";
	rename -uid "BF633CDC-EA4B-1CDA-E8C2-829DFC7BC405";
	setAttr ".t" -type "double3" 0.10602217025579974 -2.7755575615628914e-17 -1.266837274585456e-16 ;
	setAttr ".r" -type "double3" -79.625851741002535 -89.999999999999929 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "UnTwistIKChest_M_poleVectorConstraint1" -p "UnTwistIKChest_M";
	rename -uid "2EE76D16-2B4D-AC61-6868-D58FF6A11B86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UnTwistChest_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "TwistFollowParentOffsetChest_M" -p "TwistSystem";
	rename -uid "9275C868-5A4C-5255-E61A-7C90130CA458";
	setAttr ".t" -type "double3" 1.9709482123357074e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".r" -type "double3" 89.999999999999957 0.87515127151537464 90.000000000000057 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "TwistFollowParentChest_M" -p "TwistFollowParentOffsetChest_M";
	rename -uid "E8908AA1-1646-A66B-B4F2-948DAD2B06B7";
	setAttr -l on ".v" no;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode parentConstraint -n "TwistFollowParentChest_M_parentConstraint1" -p "TwistFollowParentChest_M";
	rename -uid "5AD3DA7E-BD48-DC62-4000-32BB2BABAC6B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123357074e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 0.87515127151537142 90.000000000000028 ;
	setAttr -k on ".w0";
createNode joint -n "UnTwistChest_M" -p "TwistFollowParentChest_M";
	rename -uid "3858AF78-D64D-7581-66BD-E1BB435304F0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.145334563063508e-15 -6.5586139908188874e-14 -9.4989969874821067 ;
createNode joint -n "UnTwistEndChest_M" -p "UnTwistChest_M";
	rename -uid "7B35884F-8C4E-B95C-C604-CF90A97153BD";
	setAttr ".t" -type "double3" 0.1060221702558001 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "UnTwistChest_M_pointConstraint1" -p "UnTwistChest_M";
	rename -uid "1018FC7D-FB4C-65DC-6378-398321051F43";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine3LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.30957441647926132 1.0408340855860843e-17 4.6890642419084507e-17 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "UnTwistChest_M";
	rename -uid "0C95B2E6-5744-C23D-6656-9F946DD5289A";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "TwistBalancerChest_M" -p "UnTwistChest_M";
	rename -uid "1F27F726-2B43-A7C4-BBBD-E1BC09AFD1FE";
	addAttr -ci true -sn "twist" -ln "twist" -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "TwistBalancerChest_M_parentConstraint1" -p "TwistBalancerChest_M";
	rename -uid "63C6504B-B546-6B4F-1881-4588B45F7D26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine3LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "UnTwistChest_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 0 -9.8607613152626476e-32 ;
	setAttr ".rsrr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "TwistFollowOffsetSpine2_M" -p "TwistSystem";
	rename -uid "EA9A704D-CB4E-C27C-048E-6195194A63DC";
	setAttr ".t" -type "double3" -5.9954190170152752e-17 1.1137692034244535 -0.0023641712152648103 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "TwistFollowSpine2_M" -p "TwistFollowOffsetSpine2_M";
	rename -uid "E36755AE-6845-4E05-9FC9-9B9B508FB503";
	setAttr -l on ".v" no;
createNode parentConstraint -n "TwistFollowSpine2_M_parentConstraint1" -p "TwistFollowSpine2_M";
	rename -uid "AD967FEC-C646-A1A5-DE0F-AEAD48F44DE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine2LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -5.9954190170152752e-17 1.1137692034244535 -0.0023641712152648103 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
	setAttr -k on ".w0";
createNode ikHandle -n "UnTwistIKSpine2_M" -p "TwistFollowSpine2_M";
	rename -uid "4BF81293-D442-88D5-4DD0-50964BE33275";
	setAttr ".t" -type "double3" 0.15161002963229375 0 0 ;
	setAttr ".r" -type "double3" -92.074580745327879 -89.999999999999929 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "UnTwistIKSpine2_M_poleVectorConstraint1" -p "UnTwistIKSpine2_M";
	rename -uid "88C8729A-514A-7129-1261-CB8FF4225B67";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UnTwistSpine2_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "TwistFollowParentOffsetSpine2_M" -p "TwistSystem";
	rename -uid "F7D1FEA8-434B-874B-C7B7-6AACDA957DC0";
	setAttr ".t" -type "double3" -5.9954190170152752e-17 1.1137692034244535 -0.0023641712152648103 ;
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
createNode transform -n "TwistFollowParentSpine2_M" -p "TwistFollowParentOffsetSpine2_M";
	rename -uid "0253603C-9148-8AD3-1F34-ABB9DDC6EA5D";
	setAttr -l on ".v" no;
createNode parentConstraint -n "TwistFollowParentSpine2_M_parentConstraint1" -p "TwistFollowParentSpine2_M";
	rename -uid "69A98D31-9D4F-2193-5787-AEBA1C85C7B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine2LocalOrient3_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.1347210859025721e-14 1.9083328088781101e-14 3.1805546814635097e-15 ;
	setAttr ".rst" -type "double3" -5.9954190170152752e-17 1.1137692034244535 -0.0023641712152648103 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
	setAttr -k on ".w0";
createNode joint -n "UnTwistSpine2_M" -p "TwistFollowParentSpine2_M";
	rename -uid "81495AF8-FA46-CE85-0CB5-558E2D735B6A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "UnTwistEndSpine2_M" -p "UnTwistSpine2_M";
	rename -uid "2D69B010-7F4A-3C93-BE54-42BF7999AE47";
	setAttr ".t" -type "double3" 0.15161002963229364 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "TwistBalancerSpine2_M" -p "UnTwistSpine2_M";
	rename -uid "E1852DE5-2E46-2AA8-CD06-6A9620B372F0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "TwistBalancerSpine2_M_parentConstraint1" -p "TwistBalancerSpine2_M";
	rename -uid "7857AEDA-474E-4820-2569-14925DAC4F7C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine2LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode pointConstraint -n "UnTwistSpine2_M_pointConstraint1" -p "UnTwistSpine2_M";
	rename -uid "25DEABCB-4D4C-6BD2-AE84-82AD3826A3F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpine2LocalOrient2_MW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "UnTwistSpine2_M";
	rename -uid "817A8BAE-964D-0B6D-921B-549EFE0D962D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "9A0A9BC0-E449-0EDC-BF25-F4B97ADA650D";
createNode transform -n "GlobalOffsetShoulder_R" -p "GlobalSystem";
	rename -uid "AE069EE5-3A4F-7F50-BAD7-D0B348CF2D90";
	setAttr ".t" -type "double3" -0.2186014136251464 1.4296285413653169 -0.059015491292497405 ;
	setAttr ".r" -type "double3" -92.680821782952094 -33.568744418433177 169.81595245434355 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "GlobalShoulder_R" -p "GlobalOffsetShoulder_R";
	rename -uid "3CA239B4-A044-7A59-4618-F0B6FD312992";
	setAttr ".t" -type "double3" 0 1.3877787807814457e-17 -2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "GlobalOffsetHead1_M" -p "GlobalSystem";
	rename -uid "9804EF7B-F247-7F35-8AB4-2195D4B75734";
	setAttr ".t" -type "double3" -6.6196934205479713e-17 1.617900115154185 -0.036435121556374732 ;
	setAttr ".r" -type "double3" 0 89.999999999999943 89.058233181138917 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "GlobalHead1_M" -p "GlobalOffsetHead1_M";
	rename -uid "9933BAFF-664A-650E-557E-E19C4E8718EA";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 1.7347234759768071e-18 -1.2325951644078309e-32 ;
	setAttr ".ro" 5;
createNode transform -n "GlobalOffsetShoulder_L" -p "GlobalSystem";
	rename -uid "1548828A-3A43-5177-0C14-05BA3E5E3D65";
	setAttr ".t" -type "double3" 0.21860141362514662 1.4296285413653198 -0.059015491292496614 ;
	setAttr ".r" -type "double3" 87.319178217047948 -33.568744418432978 169.81595245434355 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
createNode transform -n "GlobalShoulder_L" -p "GlobalOffsetShoulder_L";
	rename -uid "F0C7E249-3D4A-EFBC-1940-0F9581436E22";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".ro" 5;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "GlobalST_group" -p "GlobalSystem";
	rename -uid "26D1E3BD-4AB0-2E64-3B5A-97BCAD3E66D9";
	setAttr ".v" no;
createNode transform -n "world_Loc" -p "GlobalST_group";
	rename -uid "2E6942CA-4F3C-6D9C-AEFA-C6B0CC380A09";
createNode locator -n "world_LocShape" -p "world_Loc";
	rename -uid "8FC116F3-44E5-79E4-CC4E-9286B34F3C07";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "world" -p "world_Loc";
	rename -uid "756C4962-4F1C-D87D-8D1E-95A7B32E76AF";
createNode locator -n "worldShape" -p "|Group|Main|MotionSystem|GlobalSystem|GlobalST_group|world_Loc|world";
	rename -uid "09871BB6-4FFB-6FB5-EC0B-84895C9D1D80";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode pointConstraint -n "world_Loc_pointConstraint1" -p "world_Loc";
	rename -uid "A7A5128D-4F13-5E75-57FD-24AABE272FF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.9709482123357241e-17 0.95900005102157604 -1.3580910800170146e-09 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "world_Loc_orientConstraint1" -p "world_Loc";
	rename -uid "FFCA1003-410F-5E89-5880-1394C6C7B5E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.999999999999943 -2.0745807453278831 89.999999999999957 ;
	setAttr ".rsrr" -type "double3" 89.999999999999943 -2.0745807453278831 89.999999999999957 ;
	setAttr -k on ".w0";
createNode transform -n "Hip_R_Loc" -p "GlobalST_group";
	rename -uid "8EB06D57-4227-092D-2609-498CDC0B98C9";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode locator -n "Hip_R_LocShape" -p "Hip_R_Loc";
	rename -uid "8F93F429-4B99-259C-3277-CDB8AB4A7BF8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Hip_R" -p "Hip_R_Loc";
	rename -uid "E857475A-4694-F904-554B-E0843E7DBAAE";
	setAttr ".t" -type "double3" 0 1.3877787807814457e-17 -5.5511151231257827e-17 ;
createNode locator -n "Hip_RShape" -p "|Group|Main|MotionSystem|GlobalSystem|GlobalST_group|Hip_R_Loc|Hip_R";
	rename -uid "1694DA98-48D9-5B0F-C734-6594F1A6569D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode pointConstraint -n "Hip_R_Loc_pointConstraint1" -p "Hip_R_Loc";
	rename -uid "E42053E7-47D9-5FCC-5529-15A7B3E3B5B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -5.5511151231257827e-17 0 1.2576745200831851e-17 ;
	setAttr ".rst" -type "double3" -0.11855830252170588 0.91935473680496216 0.0024217382840680695 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Hip_R_Loc_orientConstraint1" -p "Hip_R_Loc";
	rename -uid "87BE9EEA-45FB-A9AF-EF9C-638AC8EF56EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 91.31867128783469 3.5139951755190735 -100.00514144808517 ;
	setAttr ".o" -type "double3" 180 179.99999999999997 -180 ;
	setAttr ".rsrr" -type "double3" 271.31867128783466 176.48600482448094 -280.00514144808511 ;
	setAttr -k on ".w0";
createNode transform -n "Hip_L_Loc" -p "GlobalST_group";
	rename -uid "3B71845E-4E6B-F1A0-4CC9-91855BBA2469";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
createNode locator -n "Hip_L_LocShape" -p "Hip_L_Loc";
	rename -uid "648F0705-4935-BE4B-78C8-4B8E95B183C1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "Hip_L" -p "Hip_L_Loc";
	rename -uid "C9C741E0-413E-2890-9F48-75B5DB6AA31D";
	setAttr ".t" -type "double3" 0 6.9388939039072284e-18 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode locator -n "Hip_LShape" -p "|Group|Main|MotionSystem|GlobalSystem|GlobalST_group|Hip_L_Loc|Hip_L";
	rename -uid "ED586B58-4586-EB04-596E-78BCF2F7B3E8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode pointConstraint -n "Hip_L_Loc_pointConstraint1" -p "Hip_L_Loc";
	rename -uid "C3E6EEE5-40BE-1867-F464-939E471690BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -5.5511151231257827e-17 0 1.3010426069826053e-18 ;
	setAttr ".rst" -type "double3" 0.11855830252170561 0.91935473680496183 0.0024217382840680595 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Hip_L_Loc_orientConstraint1" -p "Hip_L_Loc";
	rename -uid "FA86449D-4C5E-6F06-79C7-B3856F3AFCB9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Hip_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -88.681328712165367 -3.5139951755190606 100.0051414480852 ;
	setAttr ".rsrr" -type "double3" -88.681328712165367 -3.5139951755190606 100.0051414480852 ;
	setAttr -k on ".w0";
createNode transform -n "ConstraintSystem" -p "MotionSystem";
	rename -uid "884BD3AB-414D-CBF0-C761-1ABE25E7DCCC";
createNode parentConstraint -n "Toes_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "B6D04E18-A746-4769-7F95-91BF27F1F058";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXToes_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXToes_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.26149761676788275 0.023947598412633414 0.052906696156027555 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 98.61136541923635 -78.341230717256565 -106.95648572417996 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.001218767195007622 -0.21302785177848022 0.65581128683432433 ;
	setAttr ".rst" -type "double3" 0.078391844761742005 0.13237488586033433 2.7755575615628914e-16 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611646e-15 1.9480897423964037e-14 5.2677936911739498e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ankle_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "108376FD-C247-8A70-539A-CBBE4D0A2674";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXAnkle_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXAnkle_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.26197363065022405 0.10233944317437549 -0.079467333839740001 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.793966619502882 0 -89.999999999999872 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.047412590099744814 0.027998014664036973 -0.29387805733585731 ;
	setAttr ".rst" -type "double3" 0.43027850148256502 -1.8041124150158794e-16 1.1102230246251565e-15 ;
	setAttr ".rsrr" -type "double3" -1.6797304411479193e-14 4.7683472138503822e-14 -1.2076168556181799e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Knee_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "CF515D80-5E45-0BEB-D752-01932394E672";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXKnee_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXKnee_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.18858102022648113 0.5224444474703076 -0.022328039665018593 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 91.327954827516436 7.6311965642490884 -99.909601913269 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.3667438181832058e-06 ;
	setAttr ".rst" -type "double3" 0.40379884878861494 -1.1796119636642288e-16 2.1649348980190553e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.5659706925611551e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Hip_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "1D0C3D85-2940-9AA5-4101-5EBB2A58EA0A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHip_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHip_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.11855830252170586 0.91935473680496205 0.0024217382840680478 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 91.31867128783469 3.5139951755190744 -100.00514144808513 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -2.5046868116525188e-14 2.6705477686741514e-14 -7.9513867036588481e-16 ;
	setAttr ".rst" -type "double3" -0.039531660959769788 0.0038553267034418873 -0.11855830252170585 ;
	setAttr ".rsrr" -type "double3" -5.0888874903416268e-14 9.3490913976613134e-16 -4.1518306116034302e-31 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "MiddleFinger2_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "7CFEE420-F84E-27EF-470D-8883FE00C064";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMiddleFinger2_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.71337192519516235 1.0233439096612431 0.0077337639280797947 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 97.472498099321925 0.76328774734066374 -92.756974936218185 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.2475334136625433e-14 5.4103002706419665e-14 1.1222015687624694e-13 ;
	setAttr ".rst" -type "double3" 0.060064210113244587 -9.7144514654701197e-17 -9.9920072216264089e-16 ;
	setAttr ".rsrr" -type "double3" 8.3754541903321965e-15 3.2595289398527394e-17 1.0609510430608477e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "MiddleFinger1_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "A22E0744-9A4A-DB95-DF12-09B9DA6DB4D5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMiddleFinger1_RW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.69733792543412121 1.0811737775802723 0.010249030247688862 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 97.082699818286187 2.4000365241911692 -105.49664928436697 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -7.9513867036588097e-16 1.4908850069360237e-14 1.272221872585407e-14 ;
	setAttr ".rst" -type "double3" 0.11141129389429294 -2.7755575615628914e-17 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -9.1440947092076135e-15 -1.6200950408704795e-14 
		7.9513867036587801e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ThumbFinger2_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "8AAAB6DD-6D40-03DA-88DD-EFB91B5F0B94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXThumbFinger2_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.6312692926812753 1.0667261836109447 0.087224221175389277 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.3983593545658906 -24.796466484571674 -102.55379763586035 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 3.1010408144269288e-14 0 ;
	setAttr ".rst" -type "double3" 0.038131005213530966 1.5418455401317033e-10 2.0206303297243267e-10 ;
	setAttr ".rsrr" -type "double3" 0 2.8624992133171654e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ThumbFinger1_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "269EAE1F-5F41-4CFA-5F3B-2487A751FD3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXThumbFinger1_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.6236392259597866 1.0983270406723105 0.067295812473059852 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.8807064076722337 -31.50883483437709 -103.57432993228657 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.4660369234870887e-14 2.8624992133171654e-14 2.8600144049722703e-14 ;
	setAttr ".rst" -type "double3" 0.053405971315593048 0.067313284111641239 -0.032929810746924693 ;
	setAttr ".rsrr" -type "double3" 8.3738041222906593e-15 2.2263882770244611e-14 1.2747066809302995e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IndexFinger2_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "10FD5B2E-FA46-38C6-9BC8-DEBFD374EEE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXIndexFinger2_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.69760825660986703 1.0343272231587677 0.069856909771461348 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 69.993629152792323 -2.2817436601663958 -93.585789659735312 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 6.3611093629270335e-15 0 ;
	setAttr ".rst" -type "double3" 0.053652847326910669 2.1465884625371245e-12 1.0187739540867824e-11 ;
	setAttr ".rsrr" -type "double3" 0 3.1805546814635168e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IndexFinger1_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "4501D267-414D-6133-D72B-7B8CB4AE4A2C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXIndexFinger1_RW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.68127447366715332 1.0849734544754133 0.063016236231089179 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 71.197520620617397 -7.3250812066198847 -107.87489392782619 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.1744780194208675e-15 2.3059021440610497e-14 -9.5416640443905519e-15 ;
	setAttr ".rst" -type "double3" 0.10146401372518765 0.054382652986964902 -0.00065477156966742278 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734347e-16 2.4450514113750784e-14 -2.5643222119299604e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Wrist_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "A95E478D-5F47-9157-F83E-40B20338B5BD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWrist_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXWrist_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.62303043402476865 1.1638390914367482 0.0026780981610982357 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 80.730279195028757 -3.8965260472300609 -131.95223509871752 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 2.6239576122074014e-14 8.1501713712502603e-15 -5.7647553601526259e-15 ;
	setAttr ".rst" -type "double3" 0.24507786120544178 -5.8189564278166017e-14 9.5479180117763462e-15 ;
	setAttr ".rsrr" -type "double3" 6.1225677618172695e-14 5.9635400277441718e-16 1.4511280734177294e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Elbow_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "5FA807CD-B644-24CA-A9D4-D9B4F890B969";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXElbow_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXElbow_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.4350985781287186 1.2839324291084746 -0.098920946319471084 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 92.454433605910907 -24.491499238009403 -147.42036542437444 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-14 ;
	setAttr ".rst" -type "double3" 0.26399019812439051 -7.7715611723760958e-16 -2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Shoulder_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "C0B17D48-5E41-5738-174E-92A6C057427B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXShoulder_RW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXShoulder_RW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.21860141362514635 1.4296285413653163 -0.059015491292497432 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 92.259449825202339 8.6943091944068396 -146.06062654888763 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -4.9696166897867436e-15 -1.2784338934476401e-14 1.2125864723079657e-14 ;
	setAttr ".rst" -type "double3" 0.1451522744362988 -7.0776717819853729e-16 -6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" -1.3318572728628477e-14 -3.2054027649124541e-15 
		2.9569219304231133e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Scapula_R_parentConstraint1" -p "ConstraintSystem";
	rename -uid "5B441279-BA41-30CD-AB22-AFADB565AEEE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXScapula_RW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.080774985253811382 1.4510045051574705 -0.018814414336918401 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 88.35750695794593 16.07872948595401 -171.18404348451014 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.2479152244147971e-14 -4.4130196205306364e-14 1.5266662471024883e-13 ;
	setAttr ".rst" -type "double3" 0.18201989689939246 0.019001848439436447 -0.080774985253811382 ;
	setAttr ".rsrr" -type "double3" -1.0336802714756402e-14 -1.9679682091555523e-14 
		1.6856939811756638e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head1_M_parentConstraint1" -p "ConstraintSystem";
	rename -uid "EAC3F9BF-4541-5284-9235-2C97CDC54D54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHead1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.6907514814618452e-17 1.6179001151541845 -0.03643512155637469 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999943 0.94176681886108582 89.999999999999972 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 1.1131941385122309e-14 ;
	setAttr ".rst" -type "double3" 0.093853078938295864 9.4368957093138306e-16 -2.2656083954515387e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 7.9513867036587919e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck1_M_parentConstraint1" -p "ConstraintSystem";
	rename -uid "04C19BD6-1D44-99F5-EDFE-06A714E3D8FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXNeck1_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.3891427263995797e-16 1.5253022909164429 -0.051733597710369429 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999943 -9.3813325930478957 89.999999999999986 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 0.26103105660829518 -3.3306690738754696e-16 7.0585348097564679e-17 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Chest_M_parentConstraint1" -p "ConstraintSystem";
	rename -uid "D0BB0F4E-6244-4BC3-61EA-D79BB4B609AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXChest_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXChest_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.3961786246366231e-16 1.2685383558273315 -0.0047283410724385209 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999943 10.374148258997476 89.999999999999957 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 0.13171606289209947 3.1918911957973251e-16 -2.0083484839462316e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Spine1_M_parentConstraint1" -p "ConstraintSystem";
	rename -uid "61589C0E-1A4E-6E64-E7D4-0998B4A30F03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXSpine1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXSpine1_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0996541278203901e-17 1.1372982263565048 0.0064586889300363498 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999943 4.8721675941009801 89.999999999999957 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".rst" -type "double3" 0.17841511709494517 1.8735013540549517e-16 -1.0993825177756132e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.5659706925611528e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Root_M_parentConstraint1" -p "ConstraintSystem";
	rename -uid "1CB33B39-274C-2227-CD22-A3BAC5CEA6A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXRoot_MW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -6.3611093629270335e-15 -1.9083328088781101e-14 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 1.9709482123356976e-17 0.95900005102157593 -1.3580910840360616e-09 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Toes_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "FE35F976-224C-26C5-3C6C-98A5955D0860";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXToes_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXToes_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.26149761676788347 0.023947598412633261 0.052906696156027277 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -81.388634580737289 78.3412307172743 106.95648572420596 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.7652078482122164e-13 2.4450514113751049e-13 -1.6601501513901601e-12 ;
	setAttr ".rst" -type "double3" -0.078391844761742144 -0.13237488586033427 2.7755575615628914e-16 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611536e-15 1.7493050748049341e-14 -5.0193128566846119e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ankle_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "20930F24-7947-65BD-F65E-62A0B26BF3B2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXAnkle_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXAnkle_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.26197363065022516 0.1023394431743751 -0.079467333839740043 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.206033380497161 -3.1805546814635168e-15 90.000000000000028 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 3.3892785824345609e-14 8.3738041222906956e-15 -1.0110685155371134e-13 ;
	setAttr ".rst" -type "double3" -0.43027850148256552 5.5511151231257827e-16 -9.4368957093138306e-16 ;
	setAttr ".rsrr" -type "double3" -8.9453100416159289e-16 4.7658624055054884e-14 -5.0764634486171601e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Knee_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "34066D24-2D45-70E3-B88B-138FD0A4F26F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXKnee_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXKnee_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.18858102022648165 0.5224444474703076 -0.022328039665018312 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -88.672045172483621 -7.6311965642490485 99.909601913269086 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.3667437871727968e-06 ;
	setAttr ".rst" -type "double3" -0.40379884878861488 -5.5511151231257827e-17 -2.3314683517128287e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Hip_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "E114D686-0047-FD28-FA69-A89E390B40BF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHip_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHip_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.11855830252170564 0.9193547368049616 0.0024217382840680522 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -88.681328712165367 -3.5139951755190575 100.00514144808521 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -4.7385295137116618e-14 2.3854160110976368e-14 1.9679682091555501e-14 ;
	setAttr ".rst" -type "double3" -0.039531660959770121 0.003855326703441693 0.11855830252170566 ;
	setAttr ".rsrr" -type "double3" -1.5455507905236789e-14 2.3854160110976368e-14 5.4864568255245662e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "MiddleFinger2_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "64558E5F-724F-364B-764E-298CBB078282";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMiddleFinger2_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.71337192519516468 1.0233439096612469 0.0077337639280829762 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -82.527501900678104 -0.76328774734066662 92.75697493621837 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.7920030119501918e-14 1.113313324837795e-14 -1.8636062586698553e-17 ;
	setAttr ".rst" -type "double3" -0.06006421011324492 5.5511151231257827e-17 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 3.3751171161251886e-15 1.7489340938593378e-14 -1.1155236463355684e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "MiddleFinger1_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "D854B96A-974E-84BD-07D0-FFA864D20CA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXMiddleFinger1_LW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.6973379254341231 1.0811737775802763 0.010249030247691988 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -82.917300181713841 -2.400036524191175 105.49664928436717 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.1684013573782151e-15 1.1927080055488186e-15 8.7465253740246735e-15 ;
	setAttr ".rst" -type "double3" -0.11141129389429288 -3.3306690738754696e-16 -2.4424906541753444e-15 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635183e-15 1.8785151087393896e-14 -5.5659706925611559e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ThumbFinger2_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "D37E4286-BD4D-DB02-31C4-C99AF3CA379B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXThumbFinger2_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.63126929268127752 1.066726183610947 0.087224221175392719 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -172.60164064543414 24.796466484571656 102.55379763586055 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 2.6239576122074014e-14 0 ;
	setAttr ".rst" -type "double3" -0.038131005213532632 -1.5418510912468264e-10 -2.0206236683861789e-10 ;
	setAttr ".rsrr" -type "double3" 0 3.1010408144269288e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ThumbFinger1_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "157323FC-8944-C950-54D6-7F9C61ACD75B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXThumbFinger1_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.62363922595978916 1.0983270406723147 0.067295812473062946 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -172.11929359232778 31.508834834377129 103.57432993228677 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.1616479012376516e-14 3.1805546814635187e-15 2.0623909262614993e-14 ;
	setAttr ".rst" -type "double3" -0.053405971315592993 -0.067313284111641419 0.032929810746921806 ;
	setAttr ".rsrr" -type "double3" 1.797758837530355e-14 3.2316642337694968e-30 2.0599061179166061e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IndexFinger2_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "8CBAF326-8248-2A48-6999-649AC0A63348";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXIndexFinger2_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.6976082566098688 1.0343272231587723 0.069856909771464679 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -110.00637084720768 2.2817436601664083 93.585789659735511 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -1.9083328088781101e-14 0 ;
	setAttr ".rst" -type "double3" -0.053652847326909892 -2.1469770405957433e-12 -1.0187517496262899e-11 ;
	setAttr ".rsrr" -type "double3" 0 9.5416640443905503e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "IndexFinger1_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "55BF2092-EF48-573D-B70B-64A31EE03C4B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXIndexFinger1_LW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.68127447366715577 1.084973454475417 0.063016236231092343 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -108.80247937938258 7.3250812066198829 107.87489392782641 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.3732626870123399e-15 2.0971782430900062e-14 2.3257806108201967e-14 ;
	setAttr ".rst" -type "double3" -0.10146401372518793 -0.054382652986965221 0.00065477156966498029 ;
	setAttr ".rsrr" -type "double3" 6.9574633657014356e-15 3.0314661807699136e-14 1.9480897423964034e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Wrist_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "D21A5871-2E49-EED0-AE54-A89AB5153868";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXWrist_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXWrist_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.62303043402476854 1.1638390914367507 0.0026780981611005672 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -99.269720804971243 3.8965260472300471 131.95223509871775 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 3.9359364183111027e-14 -2.8624992133171654e-14 -1.0336802714756421e-14 ;
	setAttr ".rst" -type "double3" -0.24507786120544039 5.6898930012039273e-14 -8.2156503822261584e-15 ;
	setAttr ".rsrr" -type "double3" 2.4649298781342248e-14 -3.0612838809086354e-14 -2.8823776800763118e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Elbow_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "14888ABB-384A-7ED2-83F0-9D8C0CB64BD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXElbow_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXElbow_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.43509857812872055 1.283932429108477 -0.098920946319469405 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -87.545566394089164 24.491499238009411 147.42036542437467 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" -0.26399019812439206 -3.3306690738754696e-16 2.4424906541753444e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Shoulder_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "C52F66A9-4B40-8020-EA06-65BEFCBEE58C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXShoulder_LW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXShoulder_LW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.21860141362514651 1.4296285413653198 -0.059015491292496627 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -87.740550174797718 -8.6943091944068449 146.06062654888783 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -7.1562480332929135e-15 1.2771914892751935e-14 1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" -0.14515227443629866 4.163336342344337e-17 -1.9984014443252818e-15 ;
	setAttr ".rsrr" -type "double3" -5.9635400277440969e-16 1.2771914892751935e-14 1.5405811738338911e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Scapula_L_parentConstraint1" -p "ConstraintSystem";
	rename -uid "FE26C383-1341-A55D-A54C-F9A4AD2E64E9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXScapula_LW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.080774985253811007 1.4510045051574707 -0.018814414336918207 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -91.642493042054141 -16.078729485954021 171.18404348451037 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.8166656177562163e-14 4.4527765540489254e-14 8.9055531080978457e-14 ;
	setAttr ".rst" -type "double3" 0.18201989689939291 0.019001848439436558 0.080774985253811049 ;
	setAttr ".rsrr" -type "double3" 4.9298597562684496e-14 1.27222187258541e-14 8.2694421718051417e-14 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "E01C840D-934B-0F79-1F84-9496C66BAA98";
createNode transform -n "DeformationSystem" -p "Main";
	rename -uid "CFC20872-B147-CC1D-B829-90A9F646BC06";
createNode joint -n "Root_M" -p "DeformationSystem";
	rename -uid "218B1AAE-A74A-2704-EFA6-96B5F35ED8EA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.17000000000000004 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999943 -2.0745807453278857 89.999999999999972 ;
	setAttr ".radi" 0.05;
createNode joint -n "Hip_R" -p "Root_M";
	rename -uid "A5525DED-E94A-BA2C-76AE-15822848FD09";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.087000000000000008 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9381958680422193 170.01386265878932 1.4935408115101168 ;
	setAttr ".radi" 0.05;
createNode joint -n "Knee_R" -p "|Group|Main|DeformationSystem|Root_M|Hip_R";
	rename -uid "00E5FF15-6F40-55CC-F777-C693169D8F33";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.06 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1182987996238687 ;
	setAttr ".radi" 0.05;
createNode joint -n "Ankle_R" -p "Knee_R";
	rename -uid "E48AA1F5-E448-6801-7BC8-4D93FFCEB944";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.036999999999999991 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5428771174068514 10.083291196780593 7.3991272589266393 ;
	setAttr ".radi" 0.05;
createNode joint -n "Toes_R" -p "Ankle_R";
	rename -uid "C782872D-034C-4FB9-444C-8E874F068B6B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.029999999999999995 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.9748052951221409 -3.5809005336108206 78.83264067125738 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ToesEnd_R" -p "Toes_R";
	rename -uid "FF67B1E9-9B44-A982-EE30-EE9CB7BE87CC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.029999999999999995 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" 0.11471097458358516 6.9991755446974224e-15 8.8817841970012523e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "Spine1_M" -p "Root_M";
	rename -uid "0286E214-1940-570F-0D1E-9ABF151CEE4B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.17 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 0.65 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.9467483394288596 ;
	setAttr ".radi" 0.05;
createNode joint -n "Chest_M" -p "Spine1_M";
	rename -uid "C4006423-FD41-D01E-5732-FDBB20C094D8";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.17000000000000004 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 0.64999999999999991 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -5.5019806648965037 ;
	setAttr ".radi" 0.05;
createNode joint -n "Scapula_R" -p "Chest_M";
	rename -uid "40D0EC69-F24B-48DE-AB7D-7E851A574B6B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.065 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 59.109168025249232 108.28093123005915 72.373401588884192 ;
	setAttr ".radi" 0.05;
createNode joint -n "Shoulder_R" -p "Scapula_R";
	rename -uid "59311EB4-2244-2D04-DBE1-B881A7738990";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.065 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1866081379077017e-16 24.618650405502787 7.2427182113152462 ;
	setAttr ".radi" 0.05;
createNode joint -n "Elbow_R" -p "Shoulder_R";
	rename -uid "4E1E6980-4D41-0221-3AA4-6D981DC5D32D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.044999999999999984 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 33.212314632644102 ;
	setAttr ".radi" 0.05;
createNode joint -n "Wrist_R" -p "Elbow_R";
	rename -uid "04282B18-BD43-B00A-14FD-1AA36A7CE3A3";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.016999999999999987 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 2.3100000000000005 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.568452228422053 14.561510742964446 -21.063934011379001 ;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger1_R" -p "Wrist_R";
	rename -uid "5787EF75-5043-6852-7517-CA9E0615D67A";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.246216775973814 27.117820696219216 -1.9009657553457127 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger2_R" -p "MiddleFinger1_R";
	rename -uid "523C90E9-1C4F-8BC4-B87B-9686F4CE2A90";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.037553729244914652 12.839118557192826 0.0078480698868907042 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger3_R" -p "MiddleFinger2_R";
	rename -uid "C1901C50-834E-173A-1BF7-91B90057BD65";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" 0.03462505612348965 6.6613381477509392e-16 -2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger1_R" -p "Wrist_R";
	rename -uid "9D032DD8-5444-08F4-01CD-7E929484C00D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -57.958392434984169 18.913251310086508 34.041976721745797 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger2_R" -p "ThumbFinger1_R";
	rename -uid "498931FE-5C43-04EA-B80D-3CB49DB60218";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.7722814342272439 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger3_R" -p "ThumbFinger2_R";
	rename -uid "3F51731C-2649-3890-7B31-9C9BB58533A2";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" 0.034257431326083165 7.7715611723760958e-16 3.3306690738754696e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger1_R" -p "Wrist_R";
	rename -uid "7E9DF051-FC4D-DF98-3FC2-E1BFCB017454";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.4988507312113128 22.878467563851782 8.1109288331726646 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger2_R" -p "IndexFinger1_R";
	rename -uid "940B3097-C549-979B-CED3-E29D158728F3";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 15.101020298042542 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger3_R" -p "IndexFinger2_R";
	rename -uid "7CCF12DB-9A4E-A5CC-D936-03A1CF06A637";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" 0.034625056123487652 3.8857805861880479e-16 2.2204460492503131e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "Neck1_M" -p "Chest_M";
	rename -uid "291F7501-9549-33DE-2226-EE88235BD949";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.032 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 19.755480852045377 ;
	setAttr ".radi" 0.05;
createNode joint -n "Head1_M" -p "Neck1_M";
	rename -uid "BF37487D-CA44-CF28-FE11-84A4CFFBE8E0";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.032 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -10.323099411908983 ;
	setAttr ".radi" 0.05;
createNode joint -n "HeadEnd_M" -p "Head1_M";
	rename -uid "BD479220-1A41-B4AE-D8DB-81B669BB6236";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.034999999999999996 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" 0.20318140919285632 -1.5959455978986625e-16 -5.1201503135553785e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.05;
createNode joint -n "Scapula_L" -p "Chest_M";
	rename -uid "AC8066E4-E846-F0E7-952F-EBA40DA63094";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.065 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -120.89083197474987 71.719068769940876 72.373401588885145 ;
	setAttr ".radi" 0.05;
createNode joint -n "Shoulder_L" -p "Scapula_L";
	rename -uid "910240D3-4B43-5A21-695B-9FB559C8BBB4";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.065 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.1866081379077019e-16 24.618650405502795 7.2427182113152861 ;
	setAttr ".radi" 0.05;
createNode joint -n "Elbow_L" -p "Shoulder_L";
	rename -uid "FED8BE5B-6F45-0722-F343-01948752DE15";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.044999999999999984 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 33.212314632644102 ;
	setAttr ".radi" 0.05;
createNode joint -n "Wrist_L" -p "Elbow_L";
	rename -uid "CE2C3C54-3A4F-B11D-9AB5-B0A61F3E209B";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.016999999999999987 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 2.3100000000000005 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.568452228422018 14.561510742964439 -21.063934011379001 ;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger1_L" -p "Wrist_L";
	rename -uid "9C8FBC1D-2141-6AD3-EB56-67A8EC222479";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.246216775973821 27.117820696219226 -1.9009657553457 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger2_L" -p "MiddleFinger1_L";
	rename -uid "6719A394-C94D-6C0D-14DA-79893ECFC1BB";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.037553729244889283 12.83911855719283 0.0078480698868971799 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "MiddleFinger3_L" -p "MiddleFinger2_L";
	rename -uid "F40003C1-7149-49C7-4E7E-D0B376981506";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" -0.03462505612348965 -4.5796699765787707e-16 0 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger1_L" -p "Wrist_L";
	rename -uid "38681CB0-6D4C-0939-0D37-6CA09AD43051";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -57.958392434984148 18.913251310086498 34.041976721745854 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger2_L" -p "ThumbFinger1_L";
	rename -uid "46BE82C0-1146-A342-418B-C6A7200F623F";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 6.7722814342273017 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ThumbFinger3_L" -p "ThumbFinger2_L";
	rename -uid "4FCF0AF7-E245-F8C4-98B3-0D87DF687AEC";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" -0.034257431326080612 -1.3322676295501878e-15 -2.7755575615628914e-15 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger1_L" -p "Wrist_L";
	rename -uid "F59CDD0F-EB4F-9F7D-D42C-26AD5A4A3EF6";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.4988507312112782 22.878467563851782 8.1109288331726894 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger2_L" -p "IndexFinger1_L";
	rename -uid "C4B476D1-7846-8B4F-FFE8-F6A42D8A4A85";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 15.101020298042537 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "IndexFinger3_L" -p "IndexFinger2_L";
	rename -uid "99B11275-7049-D7FD-4CEF-5F804E21CFCF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.011999999999999992 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" -0.034625056123488873 4.163336342344337e-16 -3.3306690738754696e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "Hip_L" -p "Root_M";
	rename -uid "84BC093D-414A-4C6B-3B3C-B2A01625DD19";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.087000000000000008 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -178.06180413195773 9.9861373412108083 1.4935408115101214 ;
	setAttr ".radi" 0.05;
createNode joint -n "Knee_L" -p "|Group|Main|DeformationSystem|Root_M|Hip_L";
	rename -uid "60E7C50C-2140-4688-A583-10A94F2DAE95";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.06 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1182987996238456 ;
	setAttr ".radi" 0.05;
createNode joint -n "Ankle_L" -p "Knee_L";
	rename -uid "C36F5C1D-1B48-09CA-E75A-F59EBD4F3855";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.036999999999999991 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5428771174068454 10.083291196780531 7.3991272589266792 ;
	setAttr ".radi" 0.05;
createNode joint -n "Toes_L" -p "Ankle_L";
	rename -uid "451C51DC-284F-E077-1E12-3696FFB04336";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.029999999999999995 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.974805295122219 -3.5809005336108064 78.832640671275826 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode joint -n "ToesEnd_L" -p "Toes_L";
	rename -uid "3B84F0F9-DC43-0E21-C4B9-B689A85761CF";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.029999999999999995 -at "double";
	addAttr -ci true -sn "fatY" -ln "fatY" -dv 1 -at "double";
	addAttr -ci true -sn "fatZ" -ln "fatZ" -dv 1 -at "double";
	setAttr ".t" -type "double3" -0.11471097458358538 -5.4110362024406555e-15 -8.8817841970012523e-16 ;
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.05;
createNode transform -n "Geometry" -p "Group";
	rename -uid "7001E559-CA4F-8257-F632-82A84C91DA1F";
	setAttr -l on ".it" no;
createNode transform -n "R_Weapon_ctrl_grp" -p "Group";
	rename -uid "9BE5DA51-444C-8DDB-91D4-F6B81DD65B80";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "R_Weapon_ctrl" -p "R_Weapon_ctrl_grp";
	rename -uid "7AA8239E-4C16-1FCD-17B8-8D8BEB39CCA2";
	addAttr -ci true -sn "Parent" -ln "Parent" -min 0 -max 2 -en "Word:Main:Arm R" 
		-at "enum";
	setAttr ".t" -type "double3" 0 -2.7755575615628914e-17 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k on ".Parent" 2;
createNode nurbsCurve -n "R_Weapon_ctrlShape" -p "R_Weapon_ctrl";
	rename -uid "C808DB77-4562-2AD6-02F5-62A0E43DF2AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.04941666819472286 -0.71372590252295665 
		0.73419495669650159 2.7221003218356214e-18 -1.0093608511649412 -4.0442878909570929e-17 
		0.049416668194723117 -0.71372590252295642 -0.73419495669650159 0.069885722368268607 
		-3.9685335412120596e-17 -1.0383084651861201 0.049416668194723117 0.71372590252295642 
		-0.73419495669650159 1.4001867238719108e-17 1.0093608511649401 -2.0802900491982879e-16 
		-0.04941666819472286 0.71372590252295642 0.73419495669650159 -0.069885722368268469 
		1.5028629224246642e-16 1.0383084651861201 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "R_Weapon_ctrl_grp_parentConstraint1" -p "R_Weapon_ctrl_grp";
	rename -uid "D572C285-4A97-4FDB-8D36-3A9983B15507";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "R_HandW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -0.6593478911414743 1.0736108186681248 0.019639027795582905 ;
	setAttr ".tg[0].tor" -type "double3" 83.496531194224247 11.626659188252839 -14.065725660477591 ;
	setAttr ".tg[1].tot" -type "double3" 0.085500000000000048 -2.7755575615628914e-17 
		0.046799999999999953 ;
	setAttr ".tg[1].tor" -type "double3" 1.1730341617007097e-13 -50.418366258698079 
		-178.539377230703 ;
	setAttr ".lr" -type "double3" 1.5598858533254131e-16 -50.418366258698079 -178.539377230703 ;
	setAttr ".rst" -type "double3" -0.65934789114147418 1.0736108186681248 0.019639027795582919 ;
	setAttr ".rsrr" -type "double3" 83.496531194224161 11.62665918825285 -14.065725660477598 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "L_Weapon_ctrl_grp" -p "Group";
	rename -uid "01DE4D01-463C-02E0-ADC8-DD87738A7C67";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "L_Weapon_ctrl" -p "L_Weapon_ctrl_grp";
	rename -uid "20142145-4FE3-6CD5-03DA-4B8C08BC1F76";
	addAttr -ci true -sn "Parent" -ln "Parent" -min 0 -max 2 -en "Word:Main:Arm L" 
		-at "enum";
	setAttr ".t" -type "double3" 0 -2.0816681711721685e-17 -2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k on ".Parent" 2;
createNode nurbsCurve -n "L_Weapon_ctrlShape" -p "L_Weapon_ctrl";
	rename -uid "FA948696-4CC4-49CA-D9C2-EE877ABB12A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.049416668194722915 -0.71372590252295665 
		0.73419495669650159 -9.9741669520240018e-17 -1.0093608511649412 7.0579423552944651e-17 
		-0.049416668194723026 -0.71372590252295642 -0.73419495669650159 -0.069885722368268524 
		-2.7045226060081059e-17 -1.0383084651861201 -0.049416668194723026 0.71372590252295642 
		-0.73419495669650159 -1.1102143643712353e-16 1.0093608511649417 -9.7006702457313097e-17 
		0.049416668194722915 0.71372590252295642 0.73419495669650159 0.069885722368268358 
		1.6292640159450593e-16 1.0383084651861201 0 0 0 0 0 0 0 0 0;
createNode parentConstraint -n "L_Weapon_ctrl_grp_parentConstraint1" -p "L_Weapon_ctrl_grp";
	rename -uid "120B7135-49A9-E64F-2303-BF8A1F8CD64A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_HandW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "MainW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -0.085490000000000038 4.8572257327350599e-17 
		-0.046789999999999665 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-14 229.582 1.4609999999999701 ;
	setAttr ".tg[1].tot" -type "double3" 0.65935050700343556 1.0736274900716778 0.019637491466003014 ;
	setAttr ".tg[1].tor" -type "double3" 83.668542537947204 -11.719902143227358 13.217019272486866 ;
	setAttr ".lr" -type "double3" 0 -130.418 1.4609999999999701 ;
	setAttr ".rst" -type "double3" 0.65935050700343556 1.0736274900716778 0.019637491466003014 ;
	setAttr ".rsrr" -type "double3" 83.668542537947175 -11.719902143227355 13.217019272486864 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E9ACB097-41DD-D2A7-5AF0-688288EC85E5";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "7D783A11-4953-AC6D-C06F-0B8103718FBE";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  2 1 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "42160318-4240-2304-F6D7-21A9863F8A9E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9828DBE0-4AA9-4DD5-9A46-53A9AD481709";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8190905D-BC4B-357C-3D76-E287E8318B8E";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9306B98B-43E3-5E9B-C985-ED813E2D51DE";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DEC11D1E-4B50-3B59-68FC-FBB65FF349DF";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "06A9A697-0A47-1549-18E0-A5987F82FC06";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "242D8994-3541-6D73-A70B-BE9FCA554369";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "67C9DF5D-0442-1908-AB49-289A223D8159";
createNode multiplyDivide -n "HeelFat";
	rename -uid "EBA286DD-2747-6913-A80C-149E2BAB8B79";
createNode multiplyDivide -n "FootSideInnerFat";
	rename -uid "1088141C-4049-F2DC-60CA-92BF1CC433EE";
createNode multiplyDivide -n "FootSideOuterFat";
	rename -uid "C78B9D39-E34E-385B-D317-ECBA40C7315E";
createNode multiplyDivide -n "ToesEndFat";
	rename -uid "A9B9CDFB-D44A-EEE9-C9A6-4F82144ADC85";
createNode multiplyDivide -n "ToesFat";
	rename -uid "31F49724-F244-4326-049E-12BB66E3BC20";
createNode multiplyDivide -n "AnkleFat";
	rename -uid "92C30343-464B-0B6F-5701-788CE3D9F3D9";
createNode multiplyDivide -n "KneeFat";
	rename -uid "F523645D-2B48-996B-795F-01BA06DB22A9";
createNode multiplyDivide -n "HipFat";
	rename -uid "EA5CC9BF-8D48-EAE4-4179-C99C6D5E2D18";
createNode multiplyDivide -n "MiddleFinger3Fat";
	rename -uid "D5A2CA1C-2948-B5F7-860F-D0A12F77BE0D";
createNode multiplyDivide -n "MiddleFinger2Fat";
	rename -uid "52189E01-2C45-F71F-9AD8-B98631F032A6";
createNode multiplyDivide -n "MiddleFinger1Fat";
	rename -uid "5A488960-4F43-559D-3CBB-60882B9CCA2C";
createNode multiplyDivide -n "ThumbFinger3Fat";
	rename -uid "014D0155-9D49-6CE1-195B-FABE63EDF7D4";
createNode multiplyDivide -n "ThumbFinger2Fat";
	rename -uid "6CE29ED3-2940-0BBE-0760-98B8BC4DBF7E";
createNode multiplyDivide -n "ThumbFinger1Fat";
	rename -uid "0AC9413D-8041-56A0-3CB3-EEA0C9232B99";
createNode multiplyDivide -n "IndexFinger3Fat";
	rename -uid "033D164B-D04B-4948-E297-41BC8260183C";
createNode multiplyDivide -n "IndexFinger2Fat";
	rename -uid "9B8DCE72-FE44-A074-D005-3F999039A8CC";
createNode multiplyDivide -n "IndexFinger1Fat";
	rename -uid "EDB86C8D-4641-A290-7F78-C5A20F9AA15B";
createNode multiplyDivide -n "WristFat";
	rename -uid "F6CECC68-8F4F-582A-DE4A-AAAC009C1368";
createNode multiplyDivide -n "ElbowFat";
	rename -uid "3FCF34B0-5F41-D374-AB58-C28CCFA7B0B4";
createNode multiplyDivide -n "ShoulderFat";
	rename -uid "5077D160-9843-D13E-CFB6-CFA52204F106";
createNode multiplyDivide -n "ScapulaFat";
	rename -uid "0E9DB2C6-BD4D-253C-831D-3E8E9CBEB9F3";
createNode multiplyDivide -n "HeadEndFat";
	rename -uid "642B3484-E942-C2C8-CCBB-8F8A2F3CBB1D";
createNode multiplyDivide -n "Head1Fat";
	rename -uid "6738D1FD-DE40-3200-3C2B-488680572467";
createNode multiplyDivide -n "Neck1Fat";
	rename -uid "4FF93D9E-214F-93E0-E756-EB83928A9F50";
createNode multiplyDivide -n "ChestFat";
	rename -uid "1161C02F-2D41-D902-19B5-FEA469B8042E";
createNode multiplyDivide -n "Spine1Fat";
	rename -uid "7FA26438-E943-0B88-9FA1-C99832956CA2";
createNode multiplyDivide -n "RootFat";
	rename -uid "F1E61088-9645-CD7F-8EC4-B6AF77DA5C40";
createNode objectSet -n "ControlSet";
	rename -uid "2CD90CAA-8441-FDD5-83BD-77AB87863C93";
	setAttr ".ihi" 0;
	setAttr -s 123 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "22AED319-D048-E203-0058-F69ED9021810";
	setAttr ".ihi" 0;
	setAttr -s 33 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "5B14C44D-B04A-94B2-3501-5C81ECB27B04";
	setAttr ".ihi" 0;
	setAttr -s 751 ".dsm";
	setAttr -s 229 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "FE45D4F0-8D44-CAD1-F674-65A2574E4CE0";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode displayLayer -n "jointLayer";
	rename -uid "2498375A-2543-8AC4-FE16-70A09757B117";
createNode unitConversion -n "LegLockUnitConversion";
	rename -uid "B345E2B6-D841-209D-DF82-4C8DB4386DB8";
	setAttr ".cf" 0.1;
createNode reverse -n "LegLockReverse";
	rename -uid "72117D7D-C045-262E-8B1D-6489B42AEAAE";
createNode reverse -n "globalReverseShoulder_R";
	rename -uid "20AC8D86-544D-6F9D-547B-2D818BC878D5";
createNode unitConversion -n "globalUnitConversionShoulder_R";
	rename -uid "52EEBC3A-1A4A-845A-279D-51A95909E7D6";
	setAttr ".cf" 0.1;
createNode reverse -n "globalReverseHead1_M";
	rename -uid "4FD39AFB-5044-B61A-8075-9DAE990EC5BA";
createNode unitConversion -n "globalUnitConversionHead1_M";
	rename -uid "D4F60B05-BC4C-CBE6-4DC3-0BB8E8EA6D00";
	setAttr ".cf" 0.1;
createNode reverse -n "globalReverseShoulder_L";
	rename -uid "2624CE3F-D942-7EBD-9A31-E2B36232E18E";
createNode unitConversion -n "globalUnitConversionShoulder_L";
	rename -uid "00CF97C6-3441-F7E8-D85E-9DA688D8D835";
	setAttr ".cf" 0.1;
createNode setRange -n "PoleLeg_RSetRangeFollow";
	rename -uid "2AC844AB-184D-26DB-A592-3BB846D2B980";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKArm_RSetRangeFollow";
	rename -uid "88ABFDEA-1447-D5AC-1354-A6B881A5D010";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "PoleArm_RSetRangeFollow";
	rename -uid "2324F210-D641-6281-FDE3-FD90AC528874";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKStiffSpine3SetRange_M";
	rename -uid "5E3AA777-CB4E-A388-CCCB-0A95AA4BBDED";
	setAttr ".n" -type "float3" 3.1592323e-16 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode curveInfo -n "IKCurveInfoSpine_M";
	rename -uid "A12F7453-7146-645F-C66E-1BA2A7D1C0F9";
createNode multiplyDivide -n "IKCurveInfoNormalizeSpine_M";
	rename -uid "4D307D68-964C-9359-6240-EB8733A05F6C";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.30957443 1 1 ;
createNode multiplyDivide -n "IKCurveInfoAllMultiplySpine_M";
	rename -uid "C7864EAB-BD47-1475-6898-7F8643744D5C";
	setAttr ".op" 2;
createNode unitConversion -n "stretchySpineUnitConversion_M";
	rename -uid "7F97EB98-B04D-F401-B914-BDABED859AC6";
	setAttr ".cf" 0.1;
createNode reverse -n "stretchySpineReverse_M";
	rename -uid "E00E25D5-8141-1648-DB0F-EFBFC8C119A9";
createNode multiplyDivide -n "stretchySpineMultiplyDivide0_M";
	rename -uid "AFBE5778-3045-A446-34EE-AB881E2EF16B";
createNode blendTwoAttr -n "stretchySpineBlendTwo0_M";
	rename -uid "61078CB9-B440-321F-0AF6-FC953504B0F3";
createNode multiplyDivide -n "stretchySpineMultiplyDivide1_M";
	rename -uid "295746DE-C044-5E28-D85F-C4810B958A69";
	setAttr ".i1" -type "float3" 0.17817873 0 0 ;
createNode blendTwoAttr -n "stretchySpineBlendTwo1_M";
	rename -uid "4B6178C6-DE49-74C0-9E0C-7586D5E51C56";
	setAttr -s 2 ".i[0:1]"  0.17817872900694465 0.17817872762680054;
createNode setRange -n "MainTwistFlipSetRange";
	rename -uid "4EE5416A-5A4B-BE9E-63C9-CAABAA196D9F";
	setAttr ".n" -type "float3" 1 1 0 ;
	setAttr ".m" -type "float3" 0 2 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode unitConversion -n "IKSpine3_MAutoTwistUnitConversion";
	rename -uid "1EB8A42E-6C48-CD65-B6FD-318E7D63E3A1";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKSpine3_M360TwistDivideMultiplyDivide";
	rename -uid "38D3780C-0D4E-E676-9FDF-D1A5E4D4172C";
createNode unitConversion -n "unitConversion1";
	rename -uid "DE04CC54-5240-F2A0-1660-53A539E1D9D7";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "IKSpine3_MAutoTwistMultiplyDivide";
	rename -uid "44D6B06E-4742-869A-7348-94B9229CE0CC";
createNode plusMinusAverage -n "IKSpine3_MExtraTwistPlusMinusAverage";
	rename -uid "763CC187-E440-22D5-FB59-D8A6E02AB860";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode ramp -n "IKSpineRamp_M";
	rename -uid "1E06455F-9149-F87F-EE48-E0943744D426";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.28880605101585388;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[3].ep" 1;
	setAttr ".cel[3].ec" -type "float3" 0 0 0 ;
createNode unitConversion -n "unitConversion2";
	rename -uid "681E1DC6-5A4F-F3AD-77DA-B0AE3E6788FA";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "IKSpineFlipAxisSetRange_M";
	rename -uid "861C4DB9-734C-41AC-3A0E-9AAAC7562376";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 3 0 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "03BB8FF2-5F4C-2BC5-5291-7A8D79DC46AD";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "IKSpine3_MSetRangeFollow";
	rename -uid "3388BA4C-C742-912A-E240-52A314F422D8";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode unitConversion -n "IKFollowEndSpine2_MUnitConversion";
	rename -uid "8BD1AC91-F940-754A-F4EA-D1AFC30F57F4";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFollowEndSpine2_MReverse";
	rename -uid "7FC3FDF6-B242-FF62-C10B-58AFD8AE956B";
createNode pointOnCurveInfo -n "IKAcPociRoot_M";
	rename -uid "A35EFFDB-2244-DD42-EDF7-84898FDA2ACA";
createNode pointOnCurveInfo -n "IKAcPociSpine1_M";
	rename -uid "663C3B70-7648-6662-9776-1990530C8F49";
	setAttr ".pr" 1.1526473800602162;
createNode pointOnCurveInfo -n "IKAcPociChest_M";
	rename -uid "FD15CA5D-B549-D8F8-8D58-E7BAC0069D20";
	setAttr ".pr" 2;
createNode unitConversion -n "IKFixedOrientSpine1_MUnitConversion";
	rename -uid "3C8045C3-0743-8779-343E-4BB6E3EC44F8";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFixedOrientSpine1_MReverse";
	rename -uid "295FE6A0-7D4F-CCC6-70C8-B0A5B9BE5CF8";
createNode setRange -n "PoleLeg_LSetRangeFollow";
	rename -uid "1917EED8-0742-68EE-8ABA-9DB133D8B805";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKArm_LSetRangeFollow";
	rename -uid "C6319C1E-6F43-E2AA-0756-81AAA983981C";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "PoleArm_LSetRangeFollow";
	rename -uid "E8E07851-3E43-2B1A-17BA-2CB8EA1EB05C";
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode unitConversion -n "FKIKBlendLegUnitConversion_R";
	rename -uid "F666E704-3A4B-1CF8-A0A6-8EAFC7776AB0";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendLegReverse_R";
	rename -uid "7F753AEB-F745-E792-57D8-939AA66C588A";
createNode condition -n "FKIKBlendLegCondition_R";
	rename -uid "EEEDF2AA-D34A-CA9B-4755-5098BAC5F327";
createNode setRange -n "FKIKBlendLegsetRange_R";
	rename -uid "F0B749A0-674E-E06A-D505-68B7F02DE72A";
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "FKIKBlendArmUnitConversion_R";
	rename -uid "01D1856A-F542-A445-E09F-3F9562E19A10";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendArmReverse_R";
	rename -uid "D35A1CD0-544E-DD22-9199-258C05CF5BFC";
createNode condition -n "FKIKBlendArmCondition_R";
	rename -uid "0AD206C9-D94D-12CD-5854-FF9645119C02";
createNode setRange -n "FKIKBlendArmsetRange_R";
	rename -uid "F4118633-9D4A-85D5-3B7C-36AFD6034DE4";
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "FKIKBlendSpineUnitConversion_M";
	rename -uid "2F7445A0-D146-4C9D-CAEC-1484B3741F3E";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendSpineReverse_M";
	rename -uid "D0A7DDCD-E94A-C5CA-75F9-B9B5DD87D6DA";
createNode condition -n "FKIKBlendSpineCondition_M";
	rename -uid "472DEA82-2247-D493-C20C-FEA4A30FA62F";
createNode setRange -n "FKIKBlendSpinesetRange_M";
	rename -uid "052B587B-9C44-5674-ACD0-3D821723DFE4";
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "FKIKBlendLegUnitConversion_L";
	rename -uid "1B7DBD45-3E4C-1EE9-493D-A09B443EFD85";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendLegReverse_L";
	rename -uid "A5F56D1C-4146-2819-662E-5989420F4C55";
createNode condition -n "FKIKBlendLegCondition_L";
	rename -uid "72FFDDB4-A34F-BA45-FF54-AF9A59D9AC07";
createNode setRange -n "FKIKBlendLegsetRange_L";
	rename -uid "42138603-F14A-AA88-6EDC-7B94356EEB8F";
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "FKIKBlendArmUnitConversion_L";
	rename -uid "656AB9FF-7B41-8E3E-D41E-ADA853DE0FAA";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendArmReverse_L";
	rename -uid "9034F619-F249-608B-5F64-BE82B22F5D8E";
createNode condition -n "FKIKBlendArmCondition_L";
	rename -uid "BB80E3CB-7748-2369-E79B-228161DA68D0";
createNode setRange -n "FKIKBlendArmsetRange_L";
	rename -uid "B2F5A201-5144-83D9-3064-D3A719F91BB3";
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode unitConversion -n "unitConversion4";
	rename -uid "65C6CB3A-0749-9AC0-2BE7-8AB47BEBA584";
	setAttr ".cf" 0.1;
createNode clamp -n "IKLegFootRockInnerPivotClamp_R";
	rename -uid "1E3B1353-A449-9A93-9B88-DCAA2412B8A5";
	setAttr ".mn" -type "float3" -200 0 0 ;
createNode unitConversion -n "unitConversion5";
	rename -uid "9252E688-C449-792E-4C92-A894414BE434";
	setAttr ".cf" 0.017453292519943295;
createNode clamp -n "IKLegFootRockOuterPivotClamp_R";
	rename -uid "869A2E50-6F48-2E97-7D33-BEBF1F19389F";
	setAttr ".mx" -type "float3" 200 0 0 ;
createNode unitConversion -n "unitConversion6";
	rename -uid "6659C190-984F-93A3-14A4-228E8272B3D9";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "Leg_RAngleReverse";
	rename -uid "A1A66800-7E4B-FE95-7552-D58F209AD0BD";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode setRange -n "IKRollAngleLeg_R";
	rename -uid "F7D80864-8B49-C933-4A65-BCA70CFA6319";
	setAttr ".on" -type "float3" -5 0 5 ;
	setAttr ".om" -type "float3" 0 5 10 ;
createNode unitConversion -n "unitConversion7";
	rename -uid "24DF1DB5-AD45-8C92-8C54-D69BDB9C2637";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "58C6D2ED-8447-5C1B-293C-9A95C834DFA1";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	rename -uid "F3BA96B0-0643-A9BD-E515-8B8B332A5288";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	rename -uid "9520E6F8-BF40-EB71-F839-47905646804D";
	setAttr ".cf" 0.1;
createNode clamp -n "IKLegFootRockInnerPivotClamp_L";
	rename -uid "E1DE9BBE-B04D-7952-0500-AEB75371BBC6";
	setAttr ".mn" -type "float3" -200 0 0 ;
createNode unitConversion -n "unitConversion11";
	rename -uid "1C4C27DE-0F4B-5EA5-D881-34BEC0A03BCF";
	setAttr ".cf" -0.017453292519943295;
createNode clamp -n "IKLegFootRockOuterPivotClamp_L";
	rename -uid "8A92D8CC-274E-973F-4689-0C8EA92256E8";
	setAttr ".mx" -type "float3" 200 0 0 ;
createNode unitConversion -n "unitConversion12";
	rename -uid "3424435D-3F40-57F9-7CBD-0EAA96EC8645";
	setAttr ".cf" -0.017453292519943295;
createNode multiplyDivide -n "Leg_LAngleReverse";
	rename -uid "3189A50F-A34C-7C4C-027F-BC9A18163CA4";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode setRange -n "IKRollAngleLeg_L";
	rename -uid "DFCAC4FB-9142-B688-BE10-05A00FD69628";
	setAttr ".on" -type "float3" -5 0 5 ;
	setAttr ".om" -type "float3" 0 5 10 ;
createNode unitConversion -n "unitConversion13";
	rename -uid "BFEF922D-5045-654D-1C56-568B2D7DF125";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "554045B4-BB40-3C2B-48E2-B69F58565265";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	rename -uid "6294A175-6A47-1A55-8716-3088EA0BE16F";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "ScaleBlendToesEnd_R";
	rename -uid "5392CC70-B445-8D04-6157-778970AE8224";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendToes_R";
	rename -uid "E9559A33-764A-166E-7F17-D1967AD3CE7D";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendAnkle_R";
	rename -uid "30779087-CB43-8005-47D4-BF92812CF6E6";
createNode blendColors -n "ScaleBlendKnee_R";
	rename -uid "42C022F7-DB48-0C67-F68A-0B91118D5D35";
createNode blendColors -n "ScaleBlendHip_R";
	rename -uid "100DB9A3-354C-0E30-65C1-DCA193A149CE";
createNode blendColors -n "ScaleBlendWrist_R";
	rename -uid "7A61F1F4-6D4F-5C5F-3F0E-09BAE3CB06CC";
createNode blendColors -n "ScaleBlendElbow_R";
	rename -uid "6EA94290-6E43-6560-77FB-958CE90B0400";
createNode blendColors -n "ScaleBlendShoulder_R";
	rename -uid "F72F940B-1D4F-9CF6-CCEC-CA994B85D96A";
createNode blendColors -n "ScaleBlendChest_M";
	rename -uid "5162699F-AE43-4CEA-D190-F2AC5855F5A9";
createNode blendColors -n "ScaleBlendSpine1_M";
	rename -uid "F96579D5-A24C-A929-0B18-4B8B49270B0C";
createNode blendColors -n "ScaleBlendRoot_M";
	rename -uid "8723FF4C-DC45-C63C-03A0-458F6337B35D";
createNode blendColors -n "ScaleBlendToesEnd_L";
	rename -uid "EDCE2D73-CF45-389D-49F6-7A9F3377793D";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendToes_L";
	rename -uid "C3C9E793-F44A-12F8-4976-CEAC0DE20670";
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendAnkle_L";
	rename -uid "AA4A4FC2-3D43-1DC1-20EC-D6A1A4DD1EFE";
createNode blendColors -n "ScaleBlendKnee_L";
	rename -uid "A807754F-E640-946D-51CB-5780F1414222";
createNode blendColors -n "ScaleBlendHip_L";
	rename -uid "26CD18DA-4947-5FF4-90E7-EEB232270E8D";
createNode blendColors -n "ScaleBlendWrist_L";
	rename -uid "C2687C59-0A4C-780C-6660-198D9F289EA0";
createNode blendColors -n "ScaleBlendElbow_L";
	rename -uid "8D9958A6-B04E-169F-4BC1-0C8B17DCCFDD";
createNode blendColors -n "ScaleBlendShoulder_L";
	rename -uid "074395EE-8647-FDDE-BBC8-169AE77F9EAC";
createNode multiplyDivide -n "IKScaleRootMultiplyDivide_M";
	rename -uid "1D26910D-2947-2F3C-6EDC-07B0C159B0E1";
createNode multiplyDivide -n "IKScaleSpine1MultiplyDivide_M";
	rename -uid "8B5C56C1-414E-4487-06AB-16B71CA11181";
createNode multiplyDivide -n "IKScaleChestMultiplyDivide_M";
	rename -uid "FAD420C3-DF4F-5DA3-F36B-36A4AF9EDB4D";
createNode setRange -n "IKSetRangeStretchLeg_R";
	rename -uid "FA8F5A1D-E84B-6A43-E53A-A5A32EFD0F0B";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopLeg_R";
	rename -uid "29BBAFDF-7848-1F0A-2A1D-5FA179269108";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivLeg_R";
	rename -uid "7BE7CFCD-394C-73C1-9B3B-D991E87EF660";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.83407736 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopLeg_R";
	rename -uid "505BA679-2348-EBC1-F5B6-2C90FFAEDA12";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "IKdistanceLeg_RShape_antiPop";
	rename -uid "6A5C441B-9B40-96EC-EFCA-C7ABFFEBE582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.08340773731470108 0.83407735027118057 
		0.58385413885116577 0.83407735027118057 0.7089657187461853 0.7506696152440625 0.83407735824584961 
		0.83407735027118057 1.0008928775787354 1.0008928203254166;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode animCurveUU -n "IKdistanceLeg_RShape_normal";
	rename -uid "BDEBA4C5-484F-F170-0103-76A02D8C2DC9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.83407735824584961 0.83407735027118057 
		1.0008928775787354 1.0008928203254166;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode clamp -n "IKdistanceClampLeg_R";
	rename -uid "7EEB40A4-DD4B-53A1-4FE4-04A5284F2713";
	setAttr ".mx" -type "float3" 0.83407736 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchLeg_R";
	rename -uid "D4E537B6-BD4D-4EF0-7075-8A9A3DB29EEB";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleLegUnitConversion_R";
	rename -uid "C5BC3A62-1448-DD76-0E7A-CB8C754E4FF3";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKXKnee_R_IKmessureDiv_R";
	rename -uid "1275F116-C243-7E69-DE42-038B1EA277F1";
createNode multiplyDivide -n "IKXKnee_R_IKLenght_R";
	rename -uid "415A226E-7847-0FFD-19BF-D1909600A0EB";
	setAttr ".i2" -type "float3" 0.40379885 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXKnee_R";
	rename -uid "2D7EFB4F-2645-FB85-4653-91AE61086AB1";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXKnee_RDistance";
	rename -uid "4075C13B-0749-5E4B-E4A9-78B1ADD6A775";
createNode unitConversion -n "PoleDistanceSideReverseIKXKnee_RUnitConversion_R";
	rename -uid "DD51C28F-A040-9DE6-F59B-0C931E805DDE";
createNode multiplyDivide -n "PoleLockMainScalerIKXKnee_R";
	rename -uid "817D5892-B649-7369-7B30-BA983F6CD16A";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXKnee_R";
	rename -uid "5AEE9894-2848-313D-6128-D58C42181892";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.40379885 1 1 ;
createNode multiplyDivide -n "IKXAnkle_R_IKmessureDiv_R";
	rename -uid "D0CF512F-344D-2D28-BCB6-5CA63A68791F";
createNode multiplyDivide -n "IKXAnkle_R_IKLenght_R";
	rename -uid "326F8055-3341-3726-A9D5-C79E91E91755";
	setAttr ".i2" -type "float3" 0.43027851 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXAnkle_R";
	rename -uid "FBD4A32D-5144-9E9C-4EEB-AFAC83C99E66";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXAnkle_RDistance";
	rename -uid "C1312FBA-114A-661C-9A90-6E978B733146";
createNode unitConversion -n "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R";
	rename -uid "DA999717-D04F-77DC-6928-6E9874C19786";
createNode multiplyDivide -n "PoleLockMainScalerIKXAnkle_R";
	rename -uid "2BA584C0-5C4C-AC54-8F6E-3B83828473E5";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXAnkle_R";
	rename -uid "0381F8CB-EB45-EDA6-31C4-CBB1B2BA0223";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.43027851 1 1 ;
createNode setRange -n "IKSetRangeStretchArm_R";
	rename -uid "E3133ACF-BF4F-ABEC-697B-DA93D38145A2";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopArm_R";
	rename -uid "1AFBD5B0-E545-0A9B-B622-67B8D0E54E24";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivArm_R";
	rename -uid "7B0EAF83-E244-A709-9487-4382909E5C99";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.50906807 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopArm_R";
	rename -uid "4068A5ED-DB48-A888-B7EF-4EB4257D14D3";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "IKdistanceArm_RShape_antiPop";
	rename -uid "3E00A392-9B4D-94EF-74D0-2C8C97A23D0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.05090680718421936 0.50906805932983201 
		0.35634765028953552 0.50906805932983201 0.43270784616470337 0.45816125339684882 0.5090680718421936 
		0.50906805932983201 0.61088168621063232 0.61088167119579839;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode animCurveUU -n "IKdistanceArm_RShape_normal";
	rename -uid "C9B049D8-524B-B74B-8506-66B4E177A9B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.5090680718421936 0.50906805932983201 
		0.61088168621063232 0.61088167119579839;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode clamp -n "IKdistanceClampArm_R";
	rename -uid "376A70A4-8D4F-A701-1DC5-2AA895C0BCC3";
	setAttr ".mx" -type "float3" 0.50906807 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchArm_R";
	rename -uid "8152EAAE-874B-FC4F-4E6D-B0BED5F96C8E";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleArmUnitConversion_R";
	rename -uid "EC83B128-274C-FF7B-55B5-6798923813A5";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKXElbow_R_IKmessureDiv_R";
	rename -uid "19754742-4C4F-6444-CD45-268039CFB208";
createNode multiplyDivide -n "IKXElbow_R_IKLenght_R";
	rename -uid "5F58275B-1D40-D456-1885-29B1EED3FDAF";
	setAttr ".i2" -type "float3" 0.26399019 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXElbow_R";
	rename -uid "799B81D7-AF44-E95B-3CCA-C3BE69C40664";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXElbow_RDistance";
	rename -uid "714E9ED2-B34F-D74E-F68B-749027B7E620";
createNode unitConversion -n "PoleDistanceSideReverseIKXElbow_RUnitConversion_R";
	rename -uid "2BB31FD1-584E-9EC9-69EF-CA991B124139";
createNode multiplyDivide -n "PoleLockMainScalerIKXElbow_R";
	rename -uid "DF453273-5040-EA70-5264-46A978C0BDAE";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXElbow_R";
	rename -uid "E8A540EC-E746-6DF1-39D1-A9A24E40527E";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.26399019 1 1 ;
createNode multiplyDivide -n "IKXWrist_R_IKmessureDiv_R";
	rename -uid "E1CD43E8-2E46-B20D-3C7C-F2ACBB25ED6F";
createNode multiplyDivide -n "IKXWrist_R_IKLenght_R";
	rename -uid "88D3C980-AD4A-90F6-A58B-6B8985854CD1";
	setAttr ".i2" -type "float3" 0.24507786 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXWrist_R";
	rename -uid "8E6C1CFD-5C43-1571-96F5-99AA412BA7C9";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXWrist_RDistance";
	rename -uid "12523CFF-8548-293E-6905-FA80B91BFC71";
createNode unitConversion -n "PoleDistanceSideReverseIKXWrist_RUnitConversion_R";
	rename -uid "BCC626D6-CC4A-F915-522B-F9AFB9BB8854";
createNode multiplyDivide -n "PoleLockMainScalerIKXWrist_R";
	rename -uid "D0C3CED4-DF4A-4F3C-8BEF-D4BD241205A6";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXWrist_R";
	rename -uid "8B44F881-3F4C-67F2-B701-D8B9447719F8";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.24507786 1 1 ;
createNode setRange -n "IKSetRangeStretchLeg_L";
	rename -uid "0AEA4A89-164E-09EF-28BF-4C81D44D18E8";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopLeg_L";
	rename -uid "514458ED-B442-CD89-4F66-89B1E44BD795";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivLeg_L";
	rename -uid "44BCA600-DA47-A13F-62CA-A1ABA9090F04";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.83407736 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopLeg_L";
	rename -uid "2C4988A3-2444-DCA8-9677-58B42A8BDDA1";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "IKdistanceLeg_LShape_antiPop";
	rename -uid "286E4C47-C54F-F961-1D88-D1941521F537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.08340773731470108 0.83407735027118057 
		0.58385413885116577 0.83407735027118057 0.7089657187461853 0.7506696152440625 0.83407735824584961 
		0.83407735027118057 1.0008928775787354 1.0008928203254166;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode animCurveUU -n "IKdistanceLeg_LShape_normal";
	rename -uid "E894EA3B-8E4F-E27B-41CD-E7A477384EB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.83407735824584961 0.83407735027118057 
		1.0008928775787354 1.0008928203254166;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode clamp -n "IKdistanceClampLeg_L";
	rename -uid "5E48FC38-2844-FF26-C5DB-2CB0280ED5C5";
	setAttr ".mx" -type "float3" 0.83407736 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchLeg_L";
	rename -uid "35F12E22-124A-38F6-7172-2585BADF01AF";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleLegUnitConversion_L";
	rename -uid "0CD060F6-9C45-FA55-2606-30BC4B29F88E";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKXKnee_L_IKmessureDiv_L";
	rename -uid "06518194-5D41-32C1-DE1D-E7A03AD3A52E";
createNode multiplyDivide -n "IKXKnee_L_IKLenght_L";
	rename -uid "C527D8D8-2544-4BA8-BBE4-1D8721299F6B";
	setAttr ".i2" -type "float3" -0.40379885 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXKnee_L";
	rename -uid "E656743C-3E42-4B9D-CA99-FA991DD3F9CA";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXKnee_LDistance";
	rename -uid "34732EFC-144E-3335-31E1-C1AB6A6EC59B";
createNode unitConversion -n "PoleDistanceSideReverseIKXKnee_LUnitConversion_L";
	rename -uid "3565EA08-5346-70ED-0E11-57854174615E";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXKnee_L";
	rename -uid "214F301C-DC45-90B5-2382-34AEE557EF0A";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXKnee_L";
	rename -uid "0D6EFE12-5A43-341A-70FD-68849174CFE5";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -0.40379885 1 1 ;
createNode multiplyDivide -n "IKXAnkle_L_IKmessureDiv_L";
	rename -uid "E3375D68-BA41-6ED9-ED44-E1BDB09D4B1D";
createNode multiplyDivide -n "IKXAnkle_L_IKLenght_L";
	rename -uid "2C4E113E-6540-EAA3-72CB-F1B296D0479B";
	setAttr ".i2" -type "float3" -0.43027851 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXAnkle_L";
	rename -uid "6CA0991C-F74E-71F6-C478-5DBC8C4B2301";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXAnkle_LDistance";
	rename -uid "43D0A8EE-EC4D-4A91-C040-6EA6BACF2546";
createNode unitConversion -n "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L";
	rename -uid "8D5D1247-BC4E-0C34-A1AE-94922264E098";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXAnkle_L";
	rename -uid "6F34FEBA-7F46-C960-B639-09ACE50B8BF1";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXAnkle_L";
	rename -uid "89FE1166-D643-ED4E-910F-F5B30A71693A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -0.43027851 1 1 ;
createNode setRange -n "IKSetRangeStretchArm_L";
	rename -uid "F6CA70D2-B448-FBCF-913B-5F956FD6FEBC";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopArm_L";
	rename -uid "D916DB95-4C48-E2C3-5497-8F884275DB5A";
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivArm_L";
	rename -uid "B38F97AF-4646-FD6B-CAA7-75AD26521A4C";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.50906807 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopArm_L";
	rename -uid "64B4103D-1E47-A573-FC66-C28E3C8CB7FC";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode animCurveUU -n "IKdistanceArm_LShape_antiPop";
	rename -uid "C1754C7F-1840-1673-CE1B-2EAF4C9D7BE8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.05090680718421936 0.50906805932983201 
		0.35634765028953552 0.50906805932983201 0.43270784616470337 0.45816125339684882 0.5090680718421936 
		0.50906805932983201 0.61088168621063232 0.61088167119579839;
	setAttr -s 5 ".kit[1:4]"  2 9 9 9;
	setAttr -s 5 ".kot[3:4]"  2 9;
	setAttr ".pst" 1;
createNode animCurveUU -n "IKdistanceArm_LShape_normal";
	rename -uid "A618FFE1-2349-8420-92FB-308C88C93B13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.5090680718421936 0.50906805932983201 
		0.61088168621063232 0.61088167119579839;
	setAttr -s 2 ".kot[0:1]"  2 9;
	setAttr ".pst" 1;
createNode clamp -n "IKdistanceClampArm_L";
	rename -uid "586EF9E6-B64C-9780-62BA-DF9A2B263A83";
	setAttr ".mx" -type "float3" 0.50906807 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchArm_L";
	rename -uid "CCBE5F73-4E4C-0DFA-2C63-96B15471DE13";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleArmUnitConversion_L";
	rename -uid "C460577C-9E4F-3FAB-D053-AEBCA21B8DDA";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "IKXElbow_L_IKmessureDiv_L";
	rename -uid "1A6EF923-C143-75E4-5B70-40B14D4A3761";
createNode multiplyDivide -n "IKXElbow_L_IKLenght_L";
	rename -uid "980C60B2-DD4A-20E8-9E45-EDBD0C74864B";
	setAttr ".i2" -type "float3" -0.26399019 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXElbow_L";
	rename -uid "35826EDF-B148-78FD-049E-698D11C89CB9";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXElbow_LDistance";
	rename -uid "DF4B7CD9-FF42-8005-19E7-6389C9663A8C";
createNode unitConversion -n "PoleDistanceSideReverseIKXElbow_LUnitConversion_L";
	rename -uid "9741A6EE-BE49-3B5D-7A5A-E6AE989EC244";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXElbow_L";
	rename -uid "19FE37AD-4849-0016-CE14-C2BA5BF2F40A";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXElbow_L";
	rename -uid "BD273F32-7147-CB8B-6D32-9C9A5F5F5F8A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -0.26399019 1 1 ;
createNode multiplyDivide -n "IKXWrist_L_IKmessureDiv_L";
	rename -uid "7F187924-6746-F4E0-C38F-6DAE536D3442";
createNode multiplyDivide -n "IKXWrist_L_IKLenght_L";
	rename -uid "717BA134-F94A-D5FF-D414-1B9B9F87357E";
	setAttr ".i2" -type "float3" -0.24507786 1 1 ;
createNode blendTwoAttr -n "PoleLockBlenderIKXWrist_L";
	rename -uid "F1CF8118-7640-68ED-D8DC-0C9C1D6ADDE4";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode distanceBetween -n "IKXWrist_LDistance";
	rename -uid "C1A3A28F-5744-998A-0AC6-D6BDC9E06760";
createNode unitConversion -n "PoleDistanceSideReverseIKXWrist_LUnitConversion_L";
	rename -uid "A8CEC20A-A143-E120-58D2-78811C0EA02D";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXWrist_L";
	rename -uid "AE338AD7-7C4C-BA6F-5285-A2A397530792";
	setAttr ".op" 2;
createNode multiplyDivide -n "PoleLockBlenderNormalizeIKXWrist_L";
	rename -uid "06AB892D-694B-CC77-DC98-E28EB0A83068";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -0.24507786 1 1 ;
createNode unitConversion -n "CenterBtwLegsUnitConversion";
	rename -uid "801BD0B6-B142-0109-E027-A790094F8A20";
	setAttr ".cf" 0.1;
createNode reverse -n "CenterBtwLegsUnitReverse";
	rename -uid "212A9D3D-9448-855C-DAC0-31B28F29B81F";
createNode setRange -n "CenterBtwLegsNodeStateSetRange";
	rename -uid "57E2C185-FF4A-2AC7-A087-DEAB45D32DFD";
	setAttr ".n" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 0.1 0 0 ;
createNode unitConversion -n "volumeLegUnitConversion_R";
	rename -uid "EBFE0C37-A34D-0643-2136-A2B5EB7537F0";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchyLeg_R";
	rename -uid "542DA7BA-7C40-B2FC-1347-79AFD069A866";
createNode multiplyDivide -n "volume1OverLeg_R";
	rename -uid "E071C91A-D64B-804E-99CE-86A10302CBCE";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowLeg_R";
	rename -uid "8CC42D11-3443-FBDA-82B4-6AAB3F221349";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendLegBlendTwo_R";
	rename -uid "362EDDB4-EB4D-897E-C967-5091F342CC3E";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode unitConversion -n "volumeArmUnitConversion_R";
	rename -uid "41FAADF9-C640-ED41-1CDD-E89082F2B1D4";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchyArm_R";
	rename -uid "FAF7FFD8-8841-4BC8-EEB1-FB805D8D4DC1";
createNode multiplyDivide -n "volume1OverArm_R";
	rename -uid "063381BC-814F-3EA8-1BAD-4FA60F31C3CE";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowArm_R";
	rename -uid "13848411-AC47-549C-F39F-058C448FA886";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendArmBlendTwo_R";
	rename -uid "F23D18E9-DB4C-C132-9E79-CD8799EA5528";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode unitConversion -n "volumeSpineUnitConversion_M";
	rename -uid "57EE00B2-DA49-3471-D287-629BED84483E";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchySpine_M";
	rename -uid "6EFF3816-BC48-8D92-96EC-32815EB5F1B7";
createNode multiplyDivide -n "volume1OverSpine_M";
	rename -uid "A5DC1C2B-084F-7B83-DCA6-3993B13681A2";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowSpine_M";
	rename -uid "0FD8DCA2-DC42-590E-CA57-EFBACDA11FAF";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendSpineBlendTwo_M";
	rename -uid "7376CECC-5842-56B9-4771-3F8877CC514F";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode unitConversion -n "volumeLegUnitConversion_L";
	rename -uid "A3B1595D-E346-971F-950E-D8B83747DF64";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchyLeg_L";
	rename -uid "E4E1A33C-5D4F-3F75-A9D2-92AF81CC2650";
createNode multiplyDivide -n "volume1OverLeg_L";
	rename -uid "892C046A-4541-004F-E0E6-F18C296E1DCB";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowLeg_L";
	rename -uid "5EEBBB20-A247-40C9-AF15-FE9B185535B4";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendLegBlendTwo_L";
	rename -uid "6FED6883-5543-A992-C0C5-429ACF3B9424";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode unitConversion -n "volumeArmUnitConversion_L";
	rename -uid "C261BBB3-9F42-34EB-CF64-57B6EA692E7B";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchyArm_L";
	rename -uid "049CF00F-AD47-8542-4898-9CAA055AEF99";
createNode multiplyDivide -n "volume1OverArm_L";
	rename -uid "F8E9D391-F544-D1C8-A990-A6A08D56919C";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowArm_L";
	rename -uid "188E4C72-7E47-87C2-920B-65A8356AB0FB";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendArmBlendTwo_L";
	rename -uid "7A681676-E149-229B-29B7-24BD28CDE8DC";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerASpine1_M";
	rename -uid "5BD1DCC1-C64C-EE47-0FC3-B39F3AC65780";
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBSpine1_M";
	rename -uid "CC030364-234F-E46D-BACE-24B99B40353A";
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerSpine1_M";
	rename -uid "94CDA27F-FB48-EF35-CE85-11ABC4175080";
createNode dagPose -n "buildPose";
	rename -uid "4C1A5634-474B-10F6-ECD1-DEB845557265";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr ".udAttr" -type "string" (
		"xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 AimEye_M;setAttr AimEye_M.follow 10;xform -os -t 0 0 0 AimEye_R;xform -os -t 0 0 0 AimEye_L;setAttr FKIKArm_R.FKIKBlend 0;setAttr FKIKArm_R.FKVis 1;setAttr FKIKArm_R.IKVis 1;setAttr FKIKSpine_M.FKIKBlend 0;setAttr FKIKSpine_M.FKVis 1;setAttr FKIKSpine_M.IKVis 1;setAttr FKIKLeg_L.FKIKBlend 10;setAttr FKIKLeg_L.FKVis 1;setAttr FKIKLeg_L.IKVis 1;xform -os -t 0 0 0 -ro 0 0 0 IKExtraLeg_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKLeg_R;setAttr IKLeg_R.swivel 0;setAttr IKLeg_R.roll 0;setAttr IKLeg_R.rollAngle 25;setAttr IKLeg_R.rock 0;setAttr IKLeg_R.stretchy 0;setAttr IKLeg_R.antiPop 0;setAttr IKLeg_R.Lenght1 1;setAttr IKLeg_R.Lenght2 1;setAttr IKLeg_R.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraLeg_R;xform -os -t 0 0 0 PoleLeg_R;setAttr PoleLeg_R.follow 10;setAttr PoleLeg_R.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKLocalExtraLeg_R;xform -os -ro 0 0 0 IKLocalLeg_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtraArm_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKArm_R;setAttr IKArm_R.follow 0;setAttr IKArm_R.stretchy 0;setAttr IKArm_R.antiPop 0;setAttr IKArm_R.Lenght1 1;setAttr IKArm_R.Lenght2 1;setAttr IKArm_R.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraArm_R;xform -os -t 0 0 0 PoleArm_R;setAttr PoleArm_R.follow 0;setAttr PoleArm_R.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKLocalExtraArm_R;xform -os -ro 0 0 0 IKLocalArm_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpine1_M;xform -os -t 0 0 0 IKcvSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine1_M;setAttr IKSpine1_M.FixedOrient 0;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine2_M;setAttr IKSpine2_M.followEnd 5;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine3_M;setAttr IKSpine3_M.stiff 5;setAttr IKSpine3_M.stretchy 10;setAttr IKSpine3_M.follow 10;setAttr IKSpine3_M.volume 10;setAttr FKIKArm_L.FKIKBlend 0;setAttr FKIKArm_L.FKVis 1;setAttr FKIKArm_L.IKVis 1;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToes_R;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToesEnd_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToesEnd_R;xform -os -t 0 0 -0 -ro 0 0 0 RollExtraHeel_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollHeel_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtraToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtraLeg_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKLeg_L;setAttr IKLeg_L.swivel 0;setAttr IKLeg_L.roll 0;setAttr IKLeg_L.rollAngle 25;setAttr IKLeg_L.rock 0;setAttr IKLeg_L.stretchy 0;setAttr IKLeg_L.antiPop 0;setAttr IKLeg_L.Lenght1 1;setAttr IKLeg_L.Lenght2 1;setAttr IKLeg_L.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraLeg_L;xform -os -t 0 0 0 PoleLeg_L;setAttr PoleLeg_L.follow 10;setAttr PoleLeg_L.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKLocalExtraLeg_L;xform -os -ro 0 0 0 IKLocalLeg_L;xform -os -t 0 0 0 -ro 0 0 0 IKExtraArm_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKArm_L;setAttr IKArm_L.follow 0;setAttr IKArm_L.stretchy 0;setAttr IKArm_L.antiPop 0;setAttr IKArm_L.Lenght1 1;setAttr IKArm_L.Lenght2 1;setAttr IKArm_L.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraArm_L;xform -os -t 0 0 0 PoleArm_L;setAttr PoleArm_L.follow 0;setAttr PoleArm_L.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKLocalExtraArm_L;xform -os -ro 0 0 0 IKLocalArm_L;setAttr FKIKLeg_R.FKIKBlend 10;setAttr FKIKLeg_R.FKVis 1;setAttr FKIKLeg_R.IKVis 1;xform -os -t 0 0 -0 -ro 0 0 0 RollExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToes_L;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToesEnd_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToesEnd_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraAnkle_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKAnkle_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraKnee_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKKnee_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHip_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHip_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWrist_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWrist_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKElbow_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraChest_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKChest_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;setAttr RootX_M.legLock 0;setAttr RootX_M.CenterBtwFeet 0;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWrist_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWrist_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraElbow_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraScapula_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKScapula_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHip_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHip_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraElbow_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKElbow_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraEye_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKEye_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraKnee_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger1_L;xform -os -t 0 0 -0 -ro 0 0 0 FKExtraSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKToes_L;xform -os -t 0 0 0 -ro 0 0 0 IKExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKToes_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraToes_R;xform -os -ro 0 0 0 HipSwinger_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHead1_M;setAttr FKHead1_M.Global 0;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKSpine1_M;xform -os -t 0 0 -0 -ro 0 0 0 RollExtraHeel_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKShoulder_R;setAttr FKShoulder_R.Global 0;xform -os -t 0 -0 0 -ro 0 0 0 FKExtraShoulder_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollHeel_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraScapula_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKScapula_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKToes_R;xform -os -t -0 0 0 -ro 0 0 0 FKExtraShoulder_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKShoulder_L;setAttr FKShoulder_L.Global 0;xform -os -t 0 0 0 -ro 0 0 0 FKExtraEye_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKEye_R;xform -os -t 0 -0 -0 -ro 0 0 0 FKExtraHead1_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraJaw_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKJaw_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraNeck1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKKnee_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKNeck1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKAnkle_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraAnkle_R;");
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "57E49997-3745-2E4A-38BA-3BA0BE3C5294";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 150 -ast 0 -aet 150 ";
	setAttr ".st" 6;
createNode unitConversion -n "unitConversion16";
	rename -uid "6DEFE97B-B944-3421-C08C-CBA1D72EFFEE";
	setAttr ".cf" 0.5;
createNode unitConversion -n "unitConversion17";
	rename -uid "31FBDBB2-734D-0181-0331-0EAB06BACED5";
	setAttr ".cf" 0.5;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9A06F817-4CFE-268B-E561-6A98D7737D39";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "EE89D3C1-4D12-3087-9516-2FBB00184539";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode animCurveUU -n "R_Weapon_ctrl_grp_parentConstraint1_MainW0";
	rename -uid "4AA30B98-42E9-6938-5A84-148C6ED7A7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 1 2 0;
createNode animCurveUU -n "R_Weapon_ctrl_grp_parentConstraint1_R_HandW1";
	rename -uid "9F79DE4A-41A5-5397-559D-25A40F009FD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 2 1;
createNode animCurveUU -n "L_Weapon_ctrl_grp_parentConstraint1_L_HandW0";
	rename -uid "E5DE3447-45FA-E830-3FCD-1AA479D763EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 2 1;
createNode animCurveUU -n "L_Weapon_ctrl_grp_parentConstraint1_MainW1";
	rename -uid "1E50C72A-49F9-C1B3-006B-88A21407446B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 1 2 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "7099C5DD-471C-1753-BC51-58865A17C550";
	setAttr ".version" -type "string" "3.1.2";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FA060863-421A-C1E4-B78E-94B9B19DCD1E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -680.21562480516388 -111.9047574580664 ;
	setAttr ".tgi[0].vh" -type "double2" 867.12037928299787 338.09522466054091 ;
createNode reverse -n "reverse1";
	rename -uid "0C5F5793-4E0F-C175-11D2-37B7914A5722";
createNode reverse -n "reverse2";
	rename -uid "81AA2C13-4389-8184-D8CC-BEAC17E41C86";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "D653C3AF-43C2-BBA8-14A9-4BBD04823D0F";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "60069B65-49ED-E30D-168F-9885BEECB69F";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode reverse -n "reverse3";
	rename -uid "94521FF5-4F6F-FFC5-BD96-F6B70AADB61E";
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "5BEAD180-46EF-1E63-E35F-DB961E376C92";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode reverse -n "reverse4";
	rename -uid "5857ADE4-4703-8116-4F88-D887ADCD9ADD";
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "29CBC25A-4B9C-FA78-8B7F-B7BC88257F91";
	setAttr ".i2" -type "float3" 0.1 0.1 0.1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3F3CEB6F-4577-ACDB-20DD-68A07850E602";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2294.1671727777316 -53.374700887776989 ;
	setAttr ".tgi[0].vh" -type "double2" -70.984287267197686 1064.7046296656724 ;
	setAttr -s 17 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -841.00286865234375;
	setAttr ".tgi[0].ni[0].y" 1289.2244873046875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -2035.7142333984375;
	setAttr ".tgi[0].ni[1].y" 535.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1559.4561767578125;
	setAttr ".tgi[0].ni[2].y" 2479.606689453125;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" -338.69393920898438;
	setAttr ".tgi[0].ni[3].y" 2789.257568359375;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" -1271.8115234375;
	setAttr ".tgi[0].ni[4].y" 2195.88720703125;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" -381.0579833984375;
	setAttr ".tgi[0].ni[5].y" 461.32064819335938;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" -784.93231201171875;
	setAttr ".tgi[0].ni[6].y" 0.32958200573921204;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" -1233.75830078125;
	setAttr ".tgi[0].ni[7].y" 1349.758544921875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -1537.016357421875;
	setAttr ".tgi[0].ni[8].y" 1822.1126708984375;
	setAttr ".tgi[0].ni[8].nvs" 18306;
	setAttr ".tgi[0].ni[9].x" -373.01034545898438;
	setAttr ".tgi[0].ni[9].y" 1902.2288818359375;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" -799.12017822265625;
	setAttr ".tgi[0].ni[10].y" 664.479248046875;
	setAttr ".tgi[0].ni[10].nvs" 18306;
	setAttr ".tgi[0].ni[11].x" -1588.0726318359375;
	setAttr ".tgi[0].ni[11].y" 1009.5004272460938;
	setAttr ".tgi[0].ni[11].nvs" 18306;
	setAttr ".tgi[0].ni[12].x" -1092.41650390625;
	setAttr ".tgi[0].ni[12].y" 171.53781127929688;
	setAttr ".tgi[0].ni[12].nvs" 18306;
	setAttr ".tgi[0].ni[13].x" -853.448486328125;
	setAttr ".tgi[0].ni[13].y" 2083.95947265625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -351.4398193359375;
	setAttr ".tgi[0].ni[14].y" 1161.1341552734375;
	setAttr ".tgi[0].ni[14].nvs" 18306;
	setAttr ".tgi[0].ni[15].x" -1226.630859375;
	setAttr ".tgi[0].ni[15].y" 763.946533203125;
	setAttr ".tgi[0].ni[15].nvs" 18306;
	setAttr ".tgi[0].ni[16].x" -1543.4874267578125;
	setAttr ".tgi[0].ni[16].y" 278.7696533203125;
	setAttr ".tgi[0].ni[16].nvs" 18306;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta" 3;
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
lockNode -l 0 -lu 1;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
lockNode -l 0 -lu 1;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 4 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 5 ".hyp";
	setAttr ".hyp[2].isc" yes;
	setAttr ".hyp[3].isc" yes;
	setAttr ".hyp[5].isc" yes;
	setAttr ".hyp[6].isc" yes;
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "RootFat.oy" "Root.fatYabs";
connectAttr "RootFat.oz" "Root.fatZabs";
connectAttr "Root.s" "Hip.is";
connectAttr "HipFat.oy" "Hip.fatYabs";
connectAttr "HipFat.oz" "Hip.fatZabs";
connectAttr "Hip.s" "Knee.is";
connectAttr "KneeFat.oy" "Knee.fatYabs";
connectAttr "KneeFat.oz" "Knee.fatZabs";
connectAttr "Knee.s" "Ankle.is";
connectAttr "AnkleFat.oy" "Ankle.fatYabs";
connectAttr "AnkleFat.oz" "Ankle.fatZabs";
connectAttr "Ankle.s" "Heel.is";
connectAttr "HeelFat.oy" "Heel.fatYabs";
connectAttr "HeelFat.oz" "Heel.fatZabs";
connectAttr "Ankle.s" "Toes.is";
connectAttr "ToesFat.oy" "Toes.fatYabs";
connectAttr "ToesFat.oz" "Toes.fatZabs";
connectAttr "Toes.s" "FootSideInner.is";
connectAttr "FootSideInnerFat.oy" "FootSideInner.fatYabs";
connectAttr "FootSideInnerFat.oz" "FootSideInner.fatZabs";
connectAttr "Toes.s" "FootSideOuter.is";
connectAttr "FootSideOuterFat.oy" "FootSideOuter.fatYabs";
connectAttr "FootSideOuterFat.oz" "FootSideOuter.fatZabs";
connectAttr "Toes.s" "ToesEnd.is";
connectAttr "ToesEndFat.oy" "ToesEnd.fatYabs";
connectAttr "ToesEndFat.oz" "ToesEnd.fatZabs";
connectAttr "Root.s" "Spine1.is";
connectAttr "Spine1Fat.oy" "Spine1.fatYabs";
connectAttr "Spine1Fat.oz" "Spine1.fatZabs";
connectAttr "Spine1.s" "Chest.is";
connectAttr "ChestFat.oy" "Chest.fatYabs";
connectAttr "ChestFat.oz" "Chest.fatZabs";
connectAttr "Chest.s" "Scapula.is";
connectAttr "ScapulaFat.oy" "Scapula.fatYabs";
connectAttr "ScapulaFat.oz" "Scapula.fatZabs";
connectAttr "Scapula.s" "Shoulder.is";
connectAttr "ShoulderFat.oy" "Shoulder.fatYabs";
connectAttr "ShoulderFat.oz" "Shoulder.fatZabs";
connectAttr "Shoulder.s" "Elbow.is";
connectAttr "ElbowFat.oy" "Elbow.fatYabs";
connectAttr "ElbowFat.oz" "Elbow.fatZabs";
connectAttr "Elbow.s" "Wrist.is";
connectAttr "WristFat.oy" "Wrist.fatYabs";
connectAttr "WristFat.oz" "Wrist.fatZabs";
connectAttr "Wrist.s" "MiddleFinger1.is";
connectAttr "MiddleFinger1Fat.oy" "MiddleFinger1.fatYabs";
connectAttr "MiddleFinger1Fat.oz" "MiddleFinger1.fatZabs";
connectAttr "MiddleFinger1.s" "MiddleFinger2.is";
connectAttr "MiddleFinger2Fat.oy" "MiddleFinger2.fatYabs";
connectAttr "MiddleFinger2Fat.oz" "MiddleFinger2.fatZabs";
connectAttr "MiddleFinger2.s" "MiddleFinger3.is";
connectAttr "MiddleFinger3Fat.oy" "MiddleFinger3.fatYabs";
connectAttr "MiddleFinger3Fat.oz" "MiddleFinger3.fatZabs";
connectAttr "Wrist.s" "ThumbFinger1.is";
connectAttr "ThumbFinger1Fat.oy" "ThumbFinger1.fatYabs";
connectAttr "ThumbFinger1Fat.oz" "ThumbFinger1.fatZabs";
connectAttr "ThumbFinger1.s" "ThumbFinger2.is";
connectAttr "ThumbFinger2Fat.oy" "ThumbFinger2.fatYabs";
connectAttr "ThumbFinger2Fat.oz" "ThumbFinger2.fatZabs";
connectAttr "ThumbFinger2.s" "ThumbFinger3.is";
connectAttr "ThumbFinger3Fat.oy" "ThumbFinger3.fatYabs";
connectAttr "ThumbFinger3Fat.oz" "ThumbFinger3.fatZabs";
connectAttr "Wrist.s" "IndexFinger1.is";
connectAttr "IndexFinger1Fat.oy" "IndexFinger1.fatYabs";
connectAttr "IndexFinger1Fat.oz" "IndexFinger1.fatZabs";
connectAttr "IndexFinger1.s" "IndexFinger2.is";
connectAttr "IndexFinger2Fat.oy" "IndexFinger2.fatYabs";
connectAttr "IndexFinger2Fat.oz" "IndexFinger2.fatZabs";
connectAttr "IndexFinger2.s" "IndexFinger3.is";
connectAttr "IndexFinger3Fat.oy" "IndexFinger3.fatYabs";
connectAttr "IndexFinger3Fat.oz" "IndexFinger3.fatZabs";
connectAttr "Chest.s" "Neck1.is";
connectAttr "Neck1Fat.oy" "Neck1.fatYabs";
connectAttr "Neck1Fat.oz" "Neck1.fatZabs";
connectAttr "Neck1.s" "Head1.is";
connectAttr "Head1Fat.oy" "Head1.fatYabs";
connectAttr "Head1Fat.oz" "Head1.fatZabs";
connectAttr "Head1.s" "HeadEnd.is";
connectAttr "HeadEndFat.oy" "HeadEnd.fatYabs";
connectAttr "HeadEndFat.oz" "HeadEnd.fatZabs";
connectAttr "Main.fkVis" "FKSystem.v";
connectAttr "FKSystem_parentConstraint1.ctx" "FKSystem.tx";
connectAttr "FKSystem_parentConstraint1.cty" "FKSystem.ty";
connectAttr "FKSystem_parentConstraint1.ctz" "FKSystem.tz";
connectAttr "FKSystem_parentConstraint1.crx" "FKSystem.rx";
connectAttr "FKSystem_parentConstraint1.cry" "FKSystem.ry";
connectAttr "FKSystem_parentConstraint1.crz" "FKSystem.rz";
connectAttr "FKSystem.ro" "FKSystem_parentConstraint1.cro";
connectAttr "FKSystem.pim" "FKSystem_parentConstraint1.cpim";
connectAttr "FKSystem.rp" "FKSystem_parentConstraint1.crp";
connectAttr "FKSystem.rpt" "FKSystem_parentConstraint1.crt";
connectAttr "RootZeroXform.t" "FKSystem_parentConstraint1.tg[0].tt";
connectAttr "RootZeroXform.rp" "FKSystem_parentConstraint1.tg[0].trp";
connectAttr "RootZeroXform.rpt" "FKSystem_parentConstraint1.tg[0].trt";
connectAttr "RootZeroXform.r" "FKSystem_parentConstraint1.tg[0].tr";
connectAttr "RootZeroXform.ro" "FKSystem_parentConstraint1.tg[0].tro";
connectAttr "RootZeroXform.s" "FKSystem_parentConstraint1.tg[0].ts";
connectAttr "RootZeroXform.pm" "FKSystem_parentConstraint1.tg[0].tpm";
connectAttr "FKSystem_parentConstraint1.w0" "FKSystem_parentConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctx" "FKParentConstraintToRoot_M.tx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cty" "FKParentConstraintToRoot_M.ty"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctz" "FKParentConstraintToRoot_M.tz"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crx" "FKParentConstraintToRoot_M.rx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cry" "FKParentConstraintToRoot_M.ry"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crz" "FKParentConstraintToRoot_M.rz"
		;
connectAttr "FKParentConstraintToRoot_M.ro" "FKParentConstraintToRoot_M_parentConstraint1.cro"
		;
connectAttr "FKParentConstraintToRoot_M.pim" "FKParentConstraintToRoot_M_parentConstraint1.cpim"
		;
connectAttr "FKParentConstraintToRoot_M.rp" "FKParentConstraintToRoot_M_parentConstraint1.crp"
		;
connectAttr "FKParentConstraintToRoot_M.rpt" "FKParentConstraintToRoot_M_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.w0" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetHip_R.do";
connectAttr "FKIKBlendLegCondition_R.ocg" "FKOffsetHip_R.v";
connectAttr "jointLayer.di" "FKXHip_R.do";
connectAttr "jointLayer.di" "FKXKnee_R.do";
connectAttr "jointLayer.di" "FKXAnkle_R.do";
connectAttr "jointLayer.di" "FKXToes_R.do";
connectAttr "jointLayer.di" "FKOffsetHip_L.do";
connectAttr "FKIKBlendLegCondition_L.ocg" "FKOffsetHip_L.v";
connectAttr "jointLayer.di" "FKXHip_L.do";
connectAttr "jointLayer.di" "FKXKnee_L.do";
connectAttr "jointLayer.di" "FKXAnkle_L.do";
connectAttr "jointLayer.di" "FKXToes_L.do";
connectAttr "FKParentConstraintToWrist_R_pointConstraint1.ctx" "FKParentConstraintToWrist_R.tx"
		;
connectAttr "FKParentConstraintToWrist_R_pointConstraint1.cty" "FKParentConstraintToWrist_R.ty"
		;
connectAttr "FKParentConstraintToWrist_R_pointConstraint1.ctz" "FKParentConstraintToWrist_R.tz"
		;
connectAttr "FKParentConstraintToWrist_R_orientConstraint1.crx" "FKParentConstraintToWrist_R.rx"
		;
connectAttr "FKParentConstraintToWrist_R_orientConstraint1.cry" "FKParentConstraintToWrist_R.ry"
		;
connectAttr "FKParentConstraintToWrist_R_orientConstraint1.crz" "FKParentConstraintToWrist_R.rz"
		;
connectAttr "Main.fingerVis" "FKParentConstraintToWrist_R.v";
connectAttr "Wrist_R.s" "FKParentConstraintToWrist_R.s";
connectAttr "FKParentConstraintToWrist_R.pim" "FKParentConstraintToWrist_R_pointConstraint1.cpim"
		;
connectAttr "FKParentConstraintToWrist_R.rp" "FKParentConstraintToWrist_R_pointConstraint1.crp"
		;
connectAttr "FKParentConstraintToWrist_R.rpt" "FKParentConstraintToWrist_R_pointConstraint1.crt"
		;
connectAttr "Wrist_R.t" "FKParentConstraintToWrist_R_pointConstraint1.tg[0].tt";
connectAttr "Wrist_R.rp" "FKParentConstraintToWrist_R_pointConstraint1.tg[0].trp"
		;
connectAttr "Wrist_R.rpt" "FKParentConstraintToWrist_R_pointConstraint1.tg[0].trt"
		;
connectAttr "Wrist_R.pm" "FKParentConstraintToWrist_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToWrist_R_pointConstraint1.w0" "FKParentConstraintToWrist_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToWrist_R.ro" "FKParentConstraintToWrist_R_orientConstraint1.cro"
		;
connectAttr "FKParentConstraintToWrist_R.pim" "FKParentConstraintToWrist_R_orientConstraint1.cpim"
		;
connectAttr "Wrist_R.r" "FKParentConstraintToWrist_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Wrist_R.ro" "FKParentConstraintToWrist_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Wrist_R.pm" "FKParentConstraintToWrist_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Wrist_R.jo" "FKParentConstraintToWrist_R_orientConstraint1.tg[0].tjo"
		;
connectAttr "FKParentConstraintToWrist_R_orientConstraint1.w0" "FKParentConstraintToWrist_R_orientConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetMiddleFinger1_R.do";
connectAttr "jointLayer.di" "FKXMiddleFinger1_R.do";
connectAttr "jointLayer.di" "FKXMiddleFinger2_R.do";
connectAttr "jointLayer.di" "FKOffsetThumbFinger1_R.do";
connectAttr "jointLayer.di" "FKXThumbFinger1_R.do";
connectAttr "jointLayer.di" "FKXThumbFinger2_R.do";
connectAttr "jointLayer.di" "FKOffsetIndexFinger1_R.do";
connectAttr "jointLayer.di" "FKXIndexFinger1_R.do";
connectAttr "jointLayer.di" "FKXIndexFinger2_R.do";
connectAttr "FKParentConstraintToScapula_R_pointConstraint1.ctx" "FKParentConstraintToScapula_R.tx"
		;
connectAttr "FKParentConstraintToScapula_R_pointConstraint1.cty" "FKParentConstraintToScapula_R.ty"
		;
connectAttr "FKParentConstraintToScapula_R_pointConstraint1.ctz" "FKParentConstraintToScapula_R.tz"
		;
connectAttr "FKParentConstraintToScapula_R_orientConstraint1.crx" "FKParentConstraintToScapula_R.rx"
		;
connectAttr "FKParentConstraintToScapula_R_orientConstraint1.cry" "FKParentConstraintToScapula_R.ry"
		;
connectAttr "FKParentConstraintToScapula_R_orientConstraint1.crz" "FKParentConstraintToScapula_R.rz"
		;
connectAttr "FKParentConstraintToScapula_R.pim" "FKParentConstraintToScapula_R_pointConstraint1.cpim"
		;
connectAttr "FKParentConstraintToScapula_R.rp" "FKParentConstraintToScapula_R_pointConstraint1.crp"
		;
connectAttr "FKParentConstraintToScapula_R.rpt" "FKParentConstraintToScapula_R_pointConstraint1.crt"
		;
connectAttr "Scapula_R.t" "FKParentConstraintToScapula_R_pointConstraint1.tg[0].tt"
		;
connectAttr "Scapula_R.rp" "FKParentConstraintToScapula_R_pointConstraint1.tg[0].trp"
		;
connectAttr "Scapula_R.rpt" "FKParentConstraintToScapula_R_pointConstraint1.tg[0].trt"
		;
connectAttr "Scapula_R.pm" "FKParentConstraintToScapula_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToScapula_R_pointConstraint1.w0" "FKParentConstraintToScapula_R_pointConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToScapula_R.ro" "FKParentConstraintToScapula_R_orientConstraint1.cro"
		;
connectAttr "FKParentConstraintToScapula_R.pim" "FKParentConstraintToScapula_R_orientConstraint1.cpim"
		;
connectAttr "Scapula_R.r" "FKParentConstraintToScapula_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Scapula_R.ro" "FKParentConstraintToScapula_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Scapula_R.pm" "FKParentConstraintToScapula_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_R.jo" "FKParentConstraintToScapula_R_orientConstraint1.tg[0].tjo"
		;
connectAttr "FKParentConstraintToScapula_R_orientConstraint1.w0" "FKParentConstraintToScapula_R_orientConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetShoulder_R.do";
connectAttr "FKIKBlendArmCondition_R.ocg" "FKOffsetShoulder_R.v";
connectAttr "FKGlobalShoulder_R_orientConstraint1.crx" "FKGlobalShoulder_R.rx";
connectAttr "FKGlobalShoulder_R_orientConstraint1.cry" "FKGlobalShoulder_R.ry";
connectAttr "FKGlobalShoulder_R_orientConstraint1.crz" "FKGlobalShoulder_R.rz";
connectAttr "jointLayer.di" "FKXShoulder_R.do";
connectAttr "jointLayer.di" "FKXElbow_R.do";
connectAttr "jointLayer.di" "FKXWrist_R.do";
connectAttr "FKGlobalShoulder_R.ro" "FKGlobalShoulder_R_orientConstraint1.cro";
connectAttr "FKGlobalShoulder_R.pim" "FKGlobalShoulder_R_orientConstraint1.cpim"
		;
connectAttr "GlobalShoulder_R.r" "FKGlobalShoulder_R_orientConstraint1.tg[0].tr"
		;
connectAttr "GlobalShoulder_R.ro" "FKGlobalShoulder_R_orientConstraint1.tg[0].tro"
		;
connectAttr "GlobalShoulder_R.pm" "FKGlobalShoulder_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "FKGlobalShoulder_R_orientConstraint1.w0" "FKGlobalShoulder_R_orientConstraint1.tg[0].tw"
		;
connectAttr "FKGlobalStaticShoulder_R.r" "FKGlobalShoulder_R_orientConstraint1.tg[1].tr"
		;
connectAttr "FKGlobalStaticShoulder_R.ro" "FKGlobalShoulder_R_orientConstraint1.tg[1].tro"
		;
connectAttr "FKGlobalStaticShoulder_R.pm" "FKGlobalShoulder_R_orientConstraint1.tg[1].tpm"
		;
connectAttr "FKGlobalShoulder_R_orientConstraint1.w1" "FKGlobalShoulder_R_orientConstraint1.tg[1].tw"
		;
connectAttr "globalUnitConversionShoulder_R.o" "FKGlobalShoulder_R_orientConstraint1.w0"
		;
connectAttr "globalReverseShoulder_R.ox" "FKGlobalShoulder_R_orientConstraint1.w1"
		;
connectAttr "FKParentConstraintToChest_M_pointConstraint1.ctx" "FKParentConstraintToChest_M.tx"
		;
connectAttr "FKParentConstraintToChest_M_pointConstraint1.cty" "FKParentConstraintToChest_M.ty"
		;
connectAttr "FKParentConstraintToChest_M_pointConstraint1.ctz" "FKParentConstraintToChest_M.tz"
		;
connectAttr "FKParentConstraintToChest_M_orientConstraint1.crx" "FKParentConstraintToChest_M.rx"
		;
connectAttr "FKParentConstraintToChest_M_orientConstraint1.cry" "FKParentConstraintToChest_M.ry"
		;
connectAttr "FKParentConstraintToChest_M_orientConstraint1.crz" "FKParentConstraintToChest_M.rz"
		;
connectAttr "FKParentConstraintToChest_M.pim" "FKParentConstraintToChest_M_pointConstraint1.cpim"
		;
connectAttr "FKParentConstraintToChest_M.rp" "FKParentConstraintToChest_M_pointConstraint1.crp"
		;
connectAttr "FKParentConstraintToChest_M.rpt" "FKParentConstraintToChest_M_pointConstraint1.crt"
		;
connectAttr "Chest_M.t" "FKParentConstraintToChest_M_pointConstraint1.tg[0].tt";
connectAttr "Chest_M.rp" "FKParentConstraintToChest_M_pointConstraint1.tg[0].trp"
		;
connectAttr "Chest_M.rpt" "FKParentConstraintToChest_M_pointConstraint1.tg[0].trt"
		;
connectAttr "Chest_M.pm" "FKParentConstraintToChest_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToChest_M_pointConstraint1.w0" "FKParentConstraintToChest_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToChest_M.ro" "FKParentConstraintToChest_M_orientConstraint1.cro"
		;
connectAttr "FKParentConstraintToChest_M.pim" "FKParentConstraintToChest_M_orientConstraint1.cpim"
		;
connectAttr "Chest_M.r" "FKParentConstraintToChest_M_orientConstraint1.tg[0].tr"
		;
connectAttr "Chest_M.ro" "FKParentConstraintToChest_M_orientConstraint1.tg[0].tro"
		;
connectAttr "Chest_M.pm" "FKParentConstraintToChest_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "Chest_M.jo" "FKParentConstraintToChest_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "FKParentConstraintToChest_M_orientConstraint1.w0" "FKParentConstraintToChest_M_orientConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetScapula_R.do";
connectAttr "jointLayer.di" "FKXScapula_R.do";
connectAttr "jointLayer.di" "FKOffsetNeck1_M.do";
connectAttr "jointLayer.di" "FKXNeck1_M.do";
connectAttr "FKGlobalHead1_M_orientConstraint1.crx" "FKGlobalHead1_M.rx";
connectAttr "FKGlobalHead1_M_orientConstraint1.cry" "FKGlobalHead1_M.ry";
connectAttr "FKGlobalHead1_M_orientConstraint1.crz" "FKGlobalHead1_M.rz";
connectAttr "jointLayer.di" "FKXHead1_M.do";
connectAttr "FKGlobalHead1_M.ro" "FKGlobalHead1_M_orientConstraint1.cro";
connectAttr "FKGlobalHead1_M.pim" "FKGlobalHead1_M_orientConstraint1.cpim";
connectAttr "GlobalHead1_M.r" "FKGlobalHead1_M_orientConstraint1.tg[0].tr";
connectAttr "GlobalHead1_M.ro" "FKGlobalHead1_M_orientConstraint1.tg[0].tro";
connectAttr "GlobalHead1_M.pm" "FKGlobalHead1_M_orientConstraint1.tg[0].tpm";
connectAttr "FKGlobalHead1_M_orientConstraint1.w0" "FKGlobalHead1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKGlobalStaticHead1_M.r" "FKGlobalHead1_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKGlobalStaticHead1_M.ro" "FKGlobalHead1_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKGlobalStaticHead1_M.pm" "FKGlobalHead1_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "FKGlobalHead1_M_orientConstraint1.w1" "FKGlobalHead1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "globalUnitConversionHead1_M.o" "FKGlobalHead1_M_orientConstraint1.w0"
		;
connectAttr "globalReverseHead1_M.ox" "FKGlobalHead1_M_orientConstraint1.w1";
connectAttr "jointLayer.di" "FKOffsetScapula_L.do";
connectAttr "jointLayer.di" "FKXScapula_L.do";
connectAttr "FKIKBlendSpineCondition_M.ocg" "FKOffsetRoot_M.v";
connectAttr "jointLayer.di" "FKOffsetRoot_M.do";
connectAttr "jointLayer.di" "FKXRoot_M.do";
connectAttr "FKXRoot_M_parentConstraint1.ctx" "FKXRoot_M.tx";
connectAttr "FKXRoot_M_parentConstraint1.cty" "FKXRoot_M.ty";
connectAttr "FKXRoot_M_parentConstraint1.ctz" "FKXRoot_M.tz";
connectAttr "FKXRoot_M_parentConstraint1.crx" "FKXRoot_M.rx";
connectAttr "FKXRoot_M_parentConstraint1.cry" "FKXRoot_M.ry";
connectAttr "FKXRoot_M_parentConstraint1.crz" "FKXRoot_M.rz";
connectAttr "HipSwingerStabilizer_orientConstraint1.crx" "HipSwingerStabilizer.rx"
		;
connectAttr "HipSwingerStabilizer_orientConstraint1.cry" "HipSwingerStabilizer.ry"
		;
connectAttr "HipSwingerStabilizer_orientConstraint1.crz" "HipSwingerStabilizer.rz"
		;
connectAttr "jointLayer.di" "FKXSpine1_M.do";
connectAttr "jointLayer.di" "FKXChest_M.do";
connectAttr "HipSwingerStabilizer.ro" "HipSwingerStabilizer_orientConstraint1.cro"
		;
connectAttr "HipSwingerStabilizer.pim" "HipSwingerStabilizer_orientConstraint1.cpim"
		;
connectAttr "HipSwingerStabilizerTarget.r" "HipSwingerStabilizer_orientConstraint1.tg[0].tr"
		;
connectAttr "HipSwingerStabilizerTarget.ro" "HipSwingerStabilizer_orientConstraint1.tg[0].tro"
		;
connectAttr "HipSwingerStabilizerTarget.pm" "HipSwingerStabilizer_orientConstraint1.tg[0].tpm"
		;
connectAttr "HipSwingerStabilizer_orientConstraint1.w0" "HipSwingerStabilizer_orientConstraint1.tg[0].tw"
		;
connectAttr "FKXRoot_M.ro" "FKXRoot_M_parentConstraint1.cro";
connectAttr "FKXRoot_M.pim" "FKXRoot_M_parentConstraint1.cpim";
connectAttr "FKXRoot_M.rp" "FKXRoot_M_parentConstraint1.crp";
connectAttr "FKXRoot_M.rpt" "FKXRoot_M_parentConstraint1.crt";
connectAttr "FKXRoot_M.jo" "FKXRoot_M_parentConstraint1.cjo";
connectAttr "HipSwingReverseRoot.t" "FKXRoot_M_parentConstraint1.tg[0].tt";
connectAttr "HipSwingReverseRoot.rp" "FKXRoot_M_parentConstraint1.tg[0].trp";
connectAttr "HipSwingReverseRoot.rpt" "FKXRoot_M_parentConstraint1.tg[0].trt";
connectAttr "HipSwingReverseRoot.r" "FKXRoot_M_parentConstraint1.tg[0].tr";
connectAttr "HipSwingReverseRoot.ro" "FKXRoot_M_parentConstraint1.tg[0].tro";
connectAttr "HipSwingReverseRoot.s" "FKXRoot_M_parentConstraint1.tg[0].ts";
connectAttr "HipSwingReverseRoot.pm" "FKXRoot_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M_parentConstraint1.w0" "FKXRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSpineCondition_M.ocg" "HipSwingerOffset_M.v";
connectAttr "HipSwingReverse_orientConstraint1.crx" "HipSwingReverse.rx";
connectAttr "HipSwingReverse_orientConstraint1.cry" "HipSwingReverse.ry";
connectAttr "HipSwingReverse_orientConstraint1.crz" "HipSwingReverse.rz";
connectAttr "HipSwingReverse.ro" "HipSwingReverse_orientConstraint1.cro";
connectAttr "HipSwingReverse.pim" "HipSwingReverse_orientConstraint1.cpim";
connectAttr "HipSwinger_M.r" "HipSwingReverse_orientConstraint1.tg[0].tr";
connectAttr "HipSwinger_M.ro" "HipSwingReverse_orientConstraint1.tg[0].tro";
connectAttr "HipSwinger_M.pm" "HipSwingReverse_orientConstraint1.tg[0].tpm";
connectAttr "HipSwingReverse_orientConstraint1.w0" "HipSwingReverse_orientConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToWrist_L_pointConstraint1.ctx" "FKParentConstraintToWrist_L.tx"
		;
connectAttr "FKParentConstraintToWrist_L_pointConstraint1.cty" "FKParentConstraintToWrist_L.ty"
		;
connectAttr "FKParentConstraintToWrist_L_pointConstraint1.ctz" "FKParentConstraintToWrist_L.tz"
		;
connectAttr "FKParentConstraintToWrist_L_orientConstraint1.crx" "FKParentConstraintToWrist_L.rx"
		;
connectAttr "FKParentConstraintToWrist_L_orientConstraint1.cry" "FKParentConstraintToWrist_L.ry"
		;
connectAttr "FKParentConstraintToWrist_L_orientConstraint1.crz" "FKParentConstraintToWrist_L.rz"
		;
connectAttr "Main.fingerVis" "FKParentConstraintToWrist_L.v";
connectAttr "Wrist_L.s" "FKParentConstraintToWrist_L.s";
connectAttr "FKParentConstraintToWrist_L.pim" "FKParentConstraintToWrist_L_pointConstraint1.cpim"
		;
connectAttr "FKParentConstraintToWrist_L.rp" "FKParentConstraintToWrist_L_pointConstraint1.crp"
		;
connectAttr "FKParentConstraintToWrist_L.rpt" "FKParentConstraintToWrist_L_pointConstraint1.crt"
		;
connectAttr "Wrist_L.t" "FKParentConstraintToWrist_L_pointConstraint1.tg[0].tt";
connectAttr "Wrist_L.rp" "FKParentConstraintToWrist_L_pointConstraint1.tg[0].trp"
		;
connectAttr "Wrist_L.rpt" "FKParentConstraintToWrist_L_pointConstraint1.tg[0].trt"
		;
connectAttr "Wrist_L.pm" "FKParentConstraintToWrist_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToWrist_L_pointConstraint1.w0" "FKParentConstraintToWrist_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToWrist_L.ro" "FKParentConstraintToWrist_L_orientConstraint1.cro"
		;
connectAttr "FKParentConstraintToWrist_L.pim" "FKParentConstraintToWrist_L_orientConstraint1.cpim"
		;
connectAttr "Wrist_L.r" "FKParentConstraintToWrist_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Wrist_L.ro" "FKParentConstraintToWrist_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Wrist_L.pm" "FKParentConstraintToWrist_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Wrist_L.jo" "FKParentConstraintToWrist_L_orientConstraint1.tg[0].tjo"
		;
connectAttr "FKParentConstraintToWrist_L_orientConstraint1.w0" "FKParentConstraintToWrist_L_orientConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetMiddleFinger1_L.do";
connectAttr "jointLayer.di" "FKXMiddleFinger1_L.do";
connectAttr "jointLayer.di" "FKXMiddleFinger2_L.do";
connectAttr "jointLayer.di" "FKOffsetThumbFinger1_L.do";
connectAttr "jointLayer.di" "FKXThumbFinger1_L.do";
connectAttr "jointLayer.di" "FKXThumbFinger2_L.do";
connectAttr "jointLayer.di" "FKOffsetIndexFinger1_L.do";
connectAttr "jointLayer.di" "FKXIndexFinger1_L.do";
connectAttr "jointLayer.di" "FKXIndexFinger2_L.do";
connectAttr "FKParentConstraintToScapula_L_pointConstraint1.ctx" "FKParentConstraintToScapula_L.tx"
		;
connectAttr "FKParentConstraintToScapula_L_pointConstraint1.cty" "FKParentConstraintToScapula_L.ty"
		;
connectAttr "FKParentConstraintToScapula_L_pointConstraint1.ctz" "FKParentConstraintToScapula_L.tz"
		;
connectAttr "FKParentConstraintToScapula_L_orientConstraint1.crx" "FKParentConstraintToScapula_L.rx"
		;
connectAttr "FKParentConstraintToScapula_L_orientConstraint1.cry" "FKParentConstraintToScapula_L.ry"
		;
connectAttr "FKParentConstraintToScapula_L_orientConstraint1.crz" "FKParentConstraintToScapula_L.rz"
		;
connectAttr "FKParentConstraintToScapula_L.pim" "FKParentConstraintToScapula_L_pointConstraint1.cpim"
		;
connectAttr "FKParentConstraintToScapula_L.rp" "FKParentConstraintToScapula_L_pointConstraint1.crp"
		;
connectAttr "FKParentConstraintToScapula_L.rpt" "FKParentConstraintToScapula_L_pointConstraint1.crt"
		;
connectAttr "Scapula_L.t" "FKParentConstraintToScapula_L_pointConstraint1.tg[0].tt"
		;
connectAttr "Scapula_L.rp" "FKParentConstraintToScapula_L_pointConstraint1.tg[0].trp"
		;
connectAttr "Scapula_L.rpt" "FKParentConstraintToScapula_L_pointConstraint1.tg[0].trt"
		;
connectAttr "Scapula_L.pm" "FKParentConstraintToScapula_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToScapula_L_pointConstraint1.w0" "FKParentConstraintToScapula_L_pointConstraint1.tg[0].tw"
		;
connectAttr "FKParentConstraintToScapula_L.ro" "FKParentConstraintToScapula_L_orientConstraint1.cro"
		;
connectAttr "FKParentConstraintToScapula_L.pim" "FKParentConstraintToScapula_L_orientConstraint1.cpim"
		;
connectAttr "Scapula_L.r" "FKParentConstraintToScapula_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Scapula_L.ro" "FKParentConstraintToScapula_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Scapula_L.pm" "FKParentConstraintToScapula_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_L.jo" "FKParentConstraintToScapula_L_orientConstraint1.tg[0].tjo"
		;
connectAttr "FKParentConstraintToScapula_L_orientConstraint1.w0" "FKParentConstraintToScapula_L_orientConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "FKOffsetShoulder_L.do";
connectAttr "FKIKBlendArmCondition_L.ocg" "FKOffsetShoulder_L.v";
connectAttr "FKGlobalShoulder_L_orientConstraint1.crx" "FKGlobalShoulder_L.rx";
connectAttr "FKGlobalShoulder_L_orientConstraint1.cry" "FKGlobalShoulder_L.ry";
connectAttr "FKGlobalShoulder_L_orientConstraint1.crz" "FKGlobalShoulder_L.rz";
connectAttr "jointLayer.di" "FKXShoulder_L.do";
connectAttr "jointLayer.di" "FKXElbow_L.do";
connectAttr "jointLayer.di" "FKXWrist_L.do";
connectAttr "FKGlobalShoulder_L.ro" "FKGlobalShoulder_L_orientConstraint1.cro";
connectAttr "FKGlobalShoulder_L.pim" "FKGlobalShoulder_L_orientConstraint1.cpim"
		;
connectAttr "GlobalShoulder_L.r" "FKGlobalShoulder_L_orientConstraint1.tg[0].tr"
		;
connectAttr "GlobalShoulder_L.ro" "FKGlobalShoulder_L_orientConstraint1.tg[0].tro"
		;
connectAttr "GlobalShoulder_L.pm" "FKGlobalShoulder_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "FKGlobalShoulder_L_orientConstraint1.w0" "FKGlobalShoulder_L_orientConstraint1.tg[0].tw"
		;
connectAttr "FKGlobalStaticShoulder_L.r" "FKGlobalShoulder_L_orientConstraint1.tg[1].tr"
		;
connectAttr "FKGlobalStaticShoulder_L.ro" "FKGlobalShoulder_L_orientConstraint1.tg[1].tro"
		;
connectAttr "FKGlobalStaticShoulder_L.pm" "FKGlobalShoulder_L_orientConstraint1.tg[1].tpm"
		;
connectAttr "FKGlobalShoulder_L_orientConstraint1.w1" "FKGlobalShoulder_L_orientConstraint1.tg[1].tw"
		;
connectAttr "globalUnitConversionShoulder_L.o" "FKGlobalShoulder_L_orientConstraint1.w0"
		;
connectAttr "globalReverseShoulder_L.ox" "FKGlobalShoulder_L_orientConstraint1.w1"
		;
connectAttr "Main.ikVis" "IKSystem.v";
connectAttr "IKParentConstraintHip_R_parentConstraint1.ctx" "IKParentConstraintHip_R.tx"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.cty" "IKParentConstraintHip_R.ty"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.ctz" "IKParentConstraintHip_R.tz"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.crx" "IKParentConstraintHip_R.rx"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.cry" "IKParentConstraintHip_R.ry"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.crz" "IKParentConstraintHip_R.rz"
		;
connectAttr "FKIKBlendLegCondition_R.ocr" "IKParentConstraintHip_R.v";
connectAttr "IKParentConstraintHip_R.ro" "IKParentConstraintHip_R_parentConstraint1.cro"
		;
connectAttr "IKParentConstraintHip_R.pim" "IKParentConstraintHip_R_parentConstraint1.cpim"
		;
connectAttr "IKParentConstraintHip_R.rp" "IKParentConstraintHip_R_parentConstraint1.crp"
		;
connectAttr "IKParentConstraintHip_R.rpt" "IKParentConstraintHip_R_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "IKParentConstraintHip_R_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "IKParentConstraintHip_R_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "IKParentConstraintHip_R_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "IKParentConstraintHip_R_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "IKParentConstraintHip_R_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "IKParentConstraintHip_R_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "IKParentConstraintHip_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKParentConstraintHip_R_parentConstraint1.w0" "IKParentConstraintHip_R_parentConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "IKXHip_R.do";
connectAttr "IKXHip_R.s" "IKXKnee_R.is";
connectAttr "PoleLockBlenderIKXKnee_R.o" "IKXKnee_R.tx";
connectAttr "IKLeg_R.s" "IKXAnkle_R.s";
connectAttr "IKXKnee_R.s" "IKXAnkle_R.is";
connectAttr "PoleLockBlenderIKXAnkle_R.o" "IKXAnkle_R.tx";
connectAttr "IKXAnkle_R_orientConstraint1.crx" "IKXAnkle_R.rx";
connectAttr "IKXAnkle_R_orientConstraint1.cry" "IKXAnkle_R.ry";
connectAttr "IKXAnkle_R_orientConstraint1.crz" "IKXAnkle_R.rz";
connectAttr "IKXAnkle_R.s" "IKXToes_R.is";
connectAttr "IKXToes_R.s" "IKXToesEnd_R.is";
connectAttr "IKXToesEnd_R.tx" "IKToesEffector_R.tx";
connectAttr "IKXToesEnd_R.ty" "IKToesEffector_R.ty";
connectAttr "IKXToesEnd_R.tz" "IKToesEffector_R.tz";
connectAttr "IKXAnkle_R.ro" "IKXAnkle_R_orientConstraint1.cro";
connectAttr "IKXAnkle_R.pim" "IKXAnkle_R_orientConstraint1.cpim";
connectAttr "IKXAnkle_R.jo" "IKXAnkle_R_orientConstraint1.cjo";
connectAttr "IKXAnkle_R.is" "IKXAnkle_R_orientConstraint1.is";
connectAttr "IKFKAlignedLeg_R.r" "IKXAnkle_R_orientConstraint1.tg[0].tr";
connectAttr "IKFKAlignedLeg_R.ro" "IKXAnkle_R_orientConstraint1.tg[0].tro";
connectAttr "IKFKAlignedLeg_R.pm" "IKXAnkle_R_orientConstraint1.tg[0].tpm";
connectAttr "IKXAnkle_R_orientConstraint1.w0" "IKXAnkle_R_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXToes_R.tx" "IKAnkleEffector_R.tx";
connectAttr "IKXToes_R.ty" "IKAnkleEffector_R.ty";
connectAttr "IKXToes_R.tz" "IKAnkleEffector_R.tz";
connectAttr "IKXAnkle_R.tx" "IKLegEffector_R.tx";
connectAttr "IKXAnkle_R.ty" "IKLegEffector_R.ty";
connectAttr "IKXAnkle_R.tz" "IKLegEffector_R.tz";
connectAttr "Main.arrowVis" "PoleAnnotationLeg_R.v";
connectAttr "PoleLeg_RShape.wm" "PoleAnnotationLeg_RShape.dom" -na;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.ctx" "IKParentConstraintShoulder_R.tx"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.cty" "IKParentConstraintShoulder_R.ty"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.ctz" "IKParentConstraintShoulder_R.tz"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.crx" "IKParentConstraintShoulder_R.rx"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.cry" "IKParentConstraintShoulder_R.ry"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.crz" "IKParentConstraintShoulder_R.rz"
		;
connectAttr "FKIKBlendArmCondition_R.ocr" "IKParentConstraintShoulder_R.v";
connectAttr "IKParentConstraintShoulder_R.ro" "IKParentConstraintShoulder_R_parentConstraint1.cro"
		;
connectAttr "IKParentConstraintShoulder_R.pim" "IKParentConstraintShoulder_R_parentConstraint1.cpim"
		;
connectAttr "IKParentConstraintShoulder_R.rp" "IKParentConstraintShoulder_R_parentConstraint1.crp"
		;
connectAttr "IKParentConstraintShoulder_R.rpt" "IKParentConstraintShoulder_R_parentConstraint1.crt"
		;
connectAttr "Scapula_R.t" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Scapula_R.rp" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Scapula_R.rpt" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Scapula_R.r" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Scapula_R.ro" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Scapula_R.s" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Scapula_R.pm" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_R.jo" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "Scapula_R.ssc" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "Scapula_R.is" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tis"
		;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.w0" "IKParentConstraintShoulder_R_parentConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "IKXShoulder_R.do";
connectAttr "IKXShoulder_R.s" "IKXElbow_R.is";
connectAttr "PoleLockBlenderIKXElbow_R.o" "IKXElbow_R.tx";
connectAttr "IKXElbow_R.s" "IKXWrist_R.is";
connectAttr "PoleLockBlenderIKXWrist_R.o" "IKXWrist_R.tx";
connectAttr "IKXWrist_R_orientConstraint1.crx" "IKXWrist_R.rx";
connectAttr "IKXWrist_R_orientConstraint1.cry" "IKXWrist_R.ry";
connectAttr "IKXWrist_R_orientConstraint1.crz" "IKXWrist_R.rz";
connectAttr "IKArm_R.s" "IKXWrist_R.s";
connectAttr "IKXWrist_R.ro" "IKXWrist_R_orientConstraint1.cro";
connectAttr "IKXWrist_R.pim" "IKXWrist_R_orientConstraint1.cpim";
connectAttr "IKXWrist_R.jo" "IKXWrist_R_orientConstraint1.cjo";
connectAttr "IKXWrist_R.is" "IKXWrist_R_orientConstraint1.is";
connectAttr "IKFKAlignedArm_R.r" "IKXWrist_R_orientConstraint1.tg[0].tr";
connectAttr "IKFKAlignedArm_R.ro" "IKXWrist_R_orientConstraint1.tg[0].tro";
connectAttr "IKFKAlignedArm_R.pm" "IKXWrist_R_orientConstraint1.tg[0].tpm";
connectAttr "IKXWrist_R_orientConstraint1.w0" "IKXWrist_R_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXWrist_R.tx" "IKArmEffector_R.tx";
connectAttr "IKXWrist_R.ty" "IKArmEffector_R.ty";
connectAttr "IKXWrist_R.tz" "IKArmEffector_R.tz";
connectAttr "Main.arrowVis" "PoleAnnotationArm_R.v";
connectAttr "PoleArm_RShape.wm" "PoleAnnotationArm_RShape.dom" -na;
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKParentConstraintRoot_M.v";
connectAttr "jointLayer.di" "IKXRoot_M.do";
connectAttr "IKXRoot_M_parentConstraint1.ctx" "IKXRoot_M.tx";
connectAttr "IKXRoot_M_parentConstraint1.cty" "IKXRoot_M.ty";
connectAttr "IKXRoot_M_parentConstraint1.ctz" "IKXRoot_M.tz";
connectAttr "IKXRoot_M_parentConstraint1.crx" "IKXRoot_M.rx";
connectAttr "IKXRoot_M_parentConstraint1.cry" "IKXRoot_M.ry";
connectAttr "IKXRoot_M_parentConstraint1.crz" "IKXRoot_M.rz";
connectAttr "IKXRoot_M.s" "IKXSpine1_M.is";
connectAttr "IKXSpine1_M_parentConstraint1.ctx" "IKXSpine1_M.tx";
connectAttr "IKXSpine1_M_parentConstraint1.cty" "IKXSpine1_M.ty";
connectAttr "IKXSpine1_M_parentConstraint1.ctz" "IKXSpine1_M.tz";
connectAttr "IKXSpine1_M_parentConstraint1.crx" "IKXSpine1_M.rx";
connectAttr "IKXSpine1_M_parentConstraint1.cry" "IKXSpine1_M.ry";
connectAttr "IKXSpine1_M_parentConstraint1.crz" "IKXSpine1_M.rz";
connectAttr "IKXSpine1_M.s" "IKXChest_M.is";
connectAttr "IKXChest_M_pointConstraint1.ctx" "IKXChest_M.tx";
connectAttr "IKXChest_M_pointConstraint1.cty" "IKXChest_M.ty";
connectAttr "IKXChest_M_pointConstraint1.ctz" "IKXChest_M.tz";
connectAttr "IKXChest_M_orientConstraint1.crx" "IKXChest_M.rx";
connectAttr "IKXChest_M_orientConstraint1.cry" "IKXChest_M.ry";
connectAttr "IKXChest_M_orientConstraint1.crz" "IKXChest_M.rz";
connectAttr "IKXChest_M.pim" "IKXChest_M_pointConstraint1.cpim";
connectAttr "IKXChest_M.rp" "IKXChest_M_pointConstraint1.crp";
connectAttr "IKXChest_M.rpt" "IKXChest_M_pointConstraint1.crt";
connectAttr "IKSpChestFollowOffset_M.t" "IKXChest_M_pointConstraint1.tg[0].tt";
connectAttr "IKSpChestFollowOffset_M.rp" "IKXChest_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpChestFollowOffset_M.rpt" "IKXChest_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpChestFollowOffset_M.pm" "IKXChest_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKXChest_M_pointConstraint1.w0" "IKXChest_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpine3LocalOrient2_M.t" "IKXChest_M_pointConstraint1.tg[1].tt";
connectAttr "IKSpine3LocalOrient2_M.rp" "IKXChest_M_pointConstraint1.tg[1].trp";
connectAttr "IKSpine3LocalOrient2_M.rpt" "IKXChest_M_pointConstraint1.tg[1].trt"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "IKXChest_M_pointConstraint1.tg[1].tpm";
connectAttr "IKXChest_M_pointConstraint1.w1" "IKXChest_M_pointConstraint1.tg[1].tw"
		;
connectAttr "stretchySpineReverse_M.ox" "IKXChest_M_pointConstraint1.w0";
connectAttr "stretchySpineUnitConversion_M.o" "IKXChest_M_pointConstraint1.w1";
connectAttr "IKXChest_M.ro" "IKXChest_M_orientConstraint1.cro";
connectAttr "IKXChest_M.pim" "IKXChest_M_orientConstraint1.cpim";
connectAttr "IKXChest_M.jo" "IKXChest_M_orientConstraint1.cjo";
connectAttr "IKXChest_M.is" "IKXChest_M_orientConstraint1.is";
connectAttr "IKSpine3LocalOrient2_M.r" "IKXChest_M_orientConstraint1.tg[0].tr";
connectAttr "IKSpine3LocalOrient2_M.ro" "IKXChest_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "IKXChest_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKXChest_M_orientConstraint1.w0" "IKXChest_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXSpine1_M.ro" "IKXSpine1_M_parentConstraint1.cro";
connectAttr "IKXSpine1_M.pim" "IKXSpine1_M_parentConstraint1.cpim";
connectAttr "IKXSpine1_M.rp" "IKXSpine1_M_parentConstraint1.crp";
connectAttr "IKXSpine1_M.rpt" "IKXSpine1_M_parentConstraint1.crt";
connectAttr "IKXSpine1_M.jo" "IKXSpine1_M_parentConstraint1.cjo";
connectAttr "IKAcSpine1FollowOffset_M.t" "IKXSpine1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcSpine1FollowOffset_M.rp" "IKXSpine1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcSpine1FollowOffset_M.rpt" "IKXSpine1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcSpine1FollowOffset_M.r" "IKXSpine1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcSpine1FollowOffset_M.ro" "IKXSpine1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcSpine1FollowOffset_M.s" "IKXSpine1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcSpine1FollowOffset_M.pm" "IKXSpine1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXSpine1_M_parentConstraint1.w0" "IKXSpine1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpSpine1FollowOffset_M.t" "IKXSpine1_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpSpine1FollowOffset_M.rp" "IKXSpine1_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpSpine1FollowOffset_M.rpt" "IKXSpine1_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpSpine1FollowOffset_M.r" "IKXSpine1_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpSpine1FollowOffset_M.ro" "IKXSpine1_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpSpine1FollowOffset_M.s" "IKXSpine1_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpSpine1FollowOffset_M.pm" "IKXSpine1_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXSpine1_M_parentConstraint1.w1" "IKXSpine1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySpineUnitConversion_M.o" "IKXSpine1_M_parentConstraint1.w0"
		;
connectAttr "stretchySpineReverse_M.ox" "IKXSpine1_M_parentConstraint1.w1";
connectAttr "IKXRoot_M.ro" "IKXRoot_M_parentConstraint1.cro";
connectAttr "IKXRoot_M.pim" "IKXRoot_M_parentConstraint1.cpim";
connectAttr "IKXRoot_M.rp" "IKXRoot_M_parentConstraint1.crp";
connectAttr "IKXRoot_M.rpt" "IKXRoot_M_parentConstraint1.crt";
connectAttr "IKXRoot_M.jo" "IKXRoot_M_parentConstraint1.cjo";
connectAttr "IKAcRootFollowOffset_M.t" "IKXRoot_M_parentConstraint1.tg[0].tt";
connectAttr "IKAcRootFollowOffset_M.rp" "IKXRoot_M_parentConstraint1.tg[0].trp";
connectAttr "IKAcRootFollowOffset_M.rpt" "IKXRoot_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcRootFollowOffset_M.r" "IKXRoot_M_parentConstraint1.tg[0].tr";
connectAttr "IKAcRootFollowOffset_M.ro" "IKXRoot_M_parentConstraint1.tg[0].tro";
connectAttr "IKAcRootFollowOffset_M.s" "IKXRoot_M_parentConstraint1.tg[0].ts";
connectAttr "IKAcRootFollowOffset_M.pm" "IKXRoot_M_parentConstraint1.tg[0].tpm";
connectAttr "IKXRoot_M_parentConstraint1.w0" "IKXRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpRootFollowOffset_M.t" "IKXRoot_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpRootFollowOffset_M.rp" "IKXRoot_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpRootFollowOffset_M.rpt" "IKXRoot_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpRootFollowOffset_M.r" "IKXRoot_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpRootFollowOffset_M.ro" "IKXRoot_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpRootFollowOffset_M.s" "IKXRoot_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpRootFollowOffset_M.pm" "IKXRoot_M_parentConstraint1.tg[1].tpm";
connectAttr "IKXRoot_M_parentConstraint1.w1" "IKXRoot_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySpineUnitConversion_M.o" "IKXRoot_M_parentConstraint1.w0";
connectAttr "stretchySpineReverse_M.ox" "IKXRoot_M_parentConstraint1.w1";
connectAttr "IKfake0Spine_M.s" "IKSpSpine1_M.is";
connectAttr "stretchySpineBlendTwo1_M.o" "IKSpSpine1_M.tx";
connectAttr "IKSpSpine1_M.s" "IKSpChest_M.is";
connectAttr "IKSpChest_M.s" "IKfake1Spine_M.is";
connectAttr "stretchySpineBlendTwo0_M.o" "IKfake1Spine_M.tx";
connectAttr "IKfake1Spine_M.tx" "IKSpineEffector_M.tx";
connectAttr "IKfake1Spine_M.ty" "IKSpineEffector_M.ty";
connectAttr "IKfake1Spine_M.tz" "IKSpineEffector_M.tz";
connectAttr "IKFixedOrientRoot_M_orientConstraint1.crx" "IKFixedOrientRoot_M.rx"
		;
connectAttr "IKFixedOrientRoot_M_orientConstraint1.cry" "IKFixedOrientRoot_M.ry"
		;
connectAttr "IKFixedOrientRoot_M_orientConstraint1.crz" "IKFixedOrientRoot_M.rz"
		;
connectAttr "IKFixedOrientRoot_M.ro" "IKFixedOrientRoot_M_orientConstraint1.cro"
		;
connectAttr "IKFixedOrientRoot_M.pim" "IKFixedOrientRoot_M_orientConstraint1.cpim"
		;
connectAttr "IKfake0Spine_M.r" "IKFixedOrientRoot_M_orientConstraint1.tg[0].tr";
connectAttr "IKfake0Spine_M.ro" "IKFixedOrientRoot_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKfake0Spine_M.pm" "IKFixedOrientRoot_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKfake0Spine_M.jo" "IKFixedOrientRoot_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKFixedOrientRoot_M_orientConstraint1.w0" "IKFixedOrientRoot_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpine1LocalOrient3_M.r" "IKFixedOrientRoot_M_orientConstraint1.tg[1].tr"
		;
connectAttr "IKSpine1LocalOrient3_M.ro" "IKFixedOrientRoot_M_orientConstraint1.tg[1].tro"
		;
connectAttr "IKSpine1LocalOrient3_M.pm" "IKFixedOrientRoot_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "IKFixedOrientRoot_M_orientConstraint1.w1" "IKFixedOrientRoot_M_orientConstraint1.tg[1].tw"
		;
connectAttr "IKFixedOrientSpine1_MReverse.ox" "IKFixedOrientRoot_M_orientConstraint1.w0"
		;
connectAttr "IKFixedOrientSpine1_MUnitConversion.o" "IKFixedOrientRoot_M_orientConstraint1.w1"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.ctx" "IKParentConstraintHip_L.tx"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.cty" "IKParentConstraintHip_L.ty"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.ctz" "IKParentConstraintHip_L.tz"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.crx" "IKParentConstraintHip_L.rx"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.cry" "IKParentConstraintHip_L.ry"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.crz" "IKParentConstraintHip_L.rz"
		;
connectAttr "FKIKBlendLegCondition_L.ocr" "IKParentConstraintHip_L.v";
connectAttr "IKParentConstraintHip_L.ro" "IKParentConstraintHip_L_parentConstraint1.cro"
		;
connectAttr "IKParentConstraintHip_L.pim" "IKParentConstraintHip_L_parentConstraint1.cpim"
		;
connectAttr "IKParentConstraintHip_L.rp" "IKParentConstraintHip_L_parentConstraint1.crp"
		;
connectAttr "IKParentConstraintHip_L.rpt" "IKParentConstraintHip_L_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "IKParentConstraintHip_L_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "IKParentConstraintHip_L_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "IKParentConstraintHip_L_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "IKParentConstraintHip_L_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "IKParentConstraintHip_L_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "IKParentConstraintHip_L_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "IKParentConstraintHip_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKParentConstraintHip_L_parentConstraint1.w0" "IKParentConstraintHip_L_parentConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "IKXHip_L.do";
connectAttr "IKXHip_L.s" "IKXKnee_L.is";
connectAttr "PoleLockBlenderIKXKnee_L.o" "IKXKnee_L.tx";
connectAttr "IKLeg_L.s" "IKXAnkle_L.s";
connectAttr "IKXKnee_L.s" "IKXAnkle_L.is";
connectAttr "PoleLockBlenderIKXAnkle_L.o" "IKXAnkle_L.tx";
connectAttr "IKXAnkle_L_orientConstraint1.crx" "IKXAnkle_L.rx";
connectAttr "IKXAnkle_L_orientConstraint1.cry" "IKXAnkle_L.ry";
connectAttr "IKXAnkle_L_orientConstraint1.crz" "IKXAnkle_L.rz";
connectAttr "IKXAnkle_L.s" "IKXToes_L.is";
connectAttr "IKXToes_L.s" "IKXToesEnd_L.is";
connectAttr "IKXToesEnd_L.tx" "IKToesEffector_L.tx";
connectAttr "IKXToesEnd_L.ty" "IKToesEffector_L.ty";
connectAttr "IKXToesEnd_L.tz" "IKToesEffector_L.tz";
connectAttr "IKXAnkle_L.ro" "IKXAnkle_L_orientConstraint1.cro";
connectAttr "IKXAnkle_L.pim" "IKXAnkle_L_orientConstraint1.cpim";
connectAttr "IKXAnkle_L.jo" "IKXAnkle_L_orientConstraint1.cjo";
connectAttr "IKXAnkle_L.is" "IKXAnkle_L_orientConstraint1.is";
connectAttr "IKFKAlignedLeg_L.r" "IKXAnkle_L_orientConstraint1.tg[0].tr";
connectAttr "IKFKAlignedLeg_L.ro" "IKXAnkle_L_orientConstraint1.tg[0].tro";
connectAttr "IKFKAlignedLeg_L.pm" "IKXAnkle_L_orientConstraint1.tg[0].tpm";
connectAttr "IKXAnkle_L_orientConstraint1.w0" "IKXAnkle_L_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXToes_L.tx" "IKAnkleEffector_L.tx";
connectAttr "IKXToes_L.ty" "IKAnkleEffector_L.ty";
connectAttr "IKXToes_L.tz" "IKAnkleEffector_L.tz";
connectAttr "IKXAnkle_L.tx" "IKLegEffector_L.tx";
connectAttr "IKXAnkle_L.ty" "IKLegEffector_L.ty";
connectAttr "IKXAnkle_L.tz" "IKLegEffector_L.tz";
connectAttr "Main.arrowVis" "PoleAnnotationLeg_L.v";
connectAttr "PoleLeg_LShape.wm" "PoleAnnotationLeg_LShape.dom" -na;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.ctx" "IKParentConstraintShoulder_L.tx"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.cty" "IKParentConstraintShoulder_L.ty"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.ctz" "IKParentConstraintShoulder_L.tz"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.crx" "IKParentConstraintShoulder_L.rx"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.cry" "IKParentConstraintShoulder_L.ry"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.crz" "IKParentConstraintShoulder_L.rz"
		;
connectAttr "FKIKBlendArmCondition_L.ocr" "IKParentConstraintShoulder_L.v";
connectAttr "IKParentConstraintShoulder_L.ro" "IKParentConstraintShoulder_L_parentConstraint1.cro"
		;
connectAttr "IKParentConstraintShoulder_L.pim" "IKParentConstraintShoulder_L_parentConstraint1.cpim"
		;
connectAttr "IKParentConstraintShoulder_L.rp" "IKParentConstraintShoulder_L_parentConstraint1.crp"
		;
connectAttr "IKParentConstraintShoulder_L.rpt" "IKParentConstraintShoulder_L_parentConstraint1.crt"
		;
connectAttr "Scapula_L.t" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Scapula_L.rp" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Scapula_L.rpt" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Scapula_L.r" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Scapula_L.ro" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Scapula_L.s" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Scapula_L.pm" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_L.jo" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "Scapula_L.ssc" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "Scapula_L.is" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tis"
		;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.w0" "IKParentConstraintShoulder_L_parentConstraint1.tg[0].tw"
		;
connectAttr "jointLayer.di" "IKXShoulder_L.do";
connectAttr "IKXShoulder_L.s" "IKXElbow_L.is";
connectAttr "PoleLockBlenderIKXElbow_L.o" "IKXElbow_L.tx";
connectAttr "IKXElbow_L.s" "IKXWrist_L.is";
connectAttr "PoleLockBlenderIKXWrist_L.o" "IKXWrist_L.tx";
connectAttr "IKXWrist_L_orientConstraint1.crx" "IKXWrist_L.rx";
connectAttr "IKXWrist_L_orientConstraint1.cry" "IKXWrist_L.ry";
connectAttr "IKXWrist_L_orientConstraint1.crz" "IKXWrist_L.rz";
connectAttr "IKArm_L.s" "IKXWrist_L.s";
connectAttr "IKXWrist_L.ro" "IKXWrist_L_orientConstraint1.cro";
connectAttr "IKXWrist_L.pim" "IKXWrist_L_orientConstraint1.cpim";
connectAttr "IKXWrist_L.jo" "IKXWrist_L_orientConstraint1.cjo";
connectAttr "IKXWrist_L.is" "IKXWrist_L_orientConstraint1.is";
connectAttr "IKFKAlignedArm_L.r" "IKXWrist_L_orientConstraint1.tg[0].tr";
connectAttr "IKFKAlignedArm_L.ro" "IKXWrist_L_orientConstraint1.tg[0].tro";
connectAttr "IKFKAlignedArm_L.pm" "IKXWrist_L_orientConstraint1.tg[0].tpm";
connectAttr "IKXWrist_L_orientConstraint1.w0" "IKXWrist_L_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXWrist_L.tx" "IKArmEffector_L.tx";
connectAttr "IKXWrist_L.ty" "IKArmEffector_L.ty";
connectAttr "IKXWrist_L.tz" "IKArmEffector_L.tz";
connectAttr "Main.arrowVis" "PoleAnnotationArm_L.v";
connectAttr "PoleArm_LShape.wm" "PoleAnnotationArm_LShape.dom" -na;
connectAttr "IKSpSpine1FollowOffset_M_pointConstraint1.ctx" "IKSpSpine1FollowOffset_M.tx"
		;
connectAttr "IKSpSpine1FollowOffset_M_pointConstraint1.cty" "IKSpSpine1FollowOffset_M.ty"
		;
connectAttr "IKSpSpine1FollowOffset_M_pointConstraint1.ctz" "IKSpSpine1FollowOffset_M.tz"
		;
connectAttr "IKSpSpine1FollowOffset_M_orientConstraint1.crx" "IKSpSpine1FollowOffset_M.rx"
		;
connectAttr "IKSpSpine1FollowOffset_M_orientConstraint1.cry" "IKSpSpine1FollowOffset_M.ry"
		;
connectAttr "IKSpSpine1FollowOffset_M_orientConstraint1.crz" "IKSpSpine1FollowOffset_M.rz"
		;
connectAttr "IKSpSpine1FollowOffset_M.pim" "IKSpSpine1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpSpine1FollowOffset_M.rp" "IKSpSpine1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpSpine1FollowOffset_M.rpt" "IKSpSpine1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpSpine1_M.t" "IKSpSpine1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpSpine1_M.rp" "IKSpSpine1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpSpine1_M.rpt" "IKSpSpine1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpSpine1_M.pm" "IKSpSpine1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpSpine1FollowOffset_M_pointConstraint1.w0" "IKSpSpine1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpSpine1FollowOffset_M.ro" "IKSpSpine1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpSpine1FollowOffset_M.pim" "IKSpSpine1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpSpine1_M.r" "IKSpSpine1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpSpine1_M.ro" "IKSpSpine1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpSpine1_M.pm" "IKSpSpine1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpSpine1_M.jo" "IKSpSpine1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpSpine1FollowOffset_M_orientConstraint1.w0" "IKSpSpine1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpChestFollowOffset_M_pointConstraint1.ctx" "IKSpChestFollowOffset_M.tx"
		;
connectAttr "IKSpChestFollowOffset_M_pointConstraint1.cty" "IKSpChestFollowOffset_M.ty"
		;
connectAttr "IKSpChestFollowOffset_M_pointConstraint1.ctz" "IKSpChestFollowOffset_M.tz"
		;
connectAttr "IKSpChestFollowOffset_M_orientConstraint1.crx" "IKSpChestFollowOffset_M.rx"
		;
connectAttr "IKSpChestFollowOffset_M_orientConstraint1.cry" "IKSpChestFollowOffset_M.ry"
		;
connectAttr "IKSpChestFollowOffset_M_orientConstraint1.crz" "IKSpChestFollowOffset_M.rz"
		;
connectAttr "IKSpChestFollowOffset_M.pim" "IKSpChestFollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpChestFollowOffset_M.rp" "IKSpChestFollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpChestFollowOffset_M.rpt" "IKSpChestFollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpChest_M.t" "IKSpChestFollowOffset_M_pointConstraint1.tg[0].tt";
connectAttr "IKSpChest_M.rp" "IKSpChestFollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpChest_M.rpt" "IKSpChestFollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpChest_M.pm" "IKSpChestFollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpChestFollowOffset_M_pointConstraint1.w0" "IKSpChestFollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpChestFollowOffset_M.ro" "IKSpChestFollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpChestFollowOffset_M.pim" "IKSpChestFollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpChest_M.r" "IKSpChestFollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpChest_M.ro" "IKSpChestFollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpChest_M.pm" "IKSpChestFollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpChest_M.jo" "IKSpChestFollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpChestFollowOffset_M_orientConstraint1.w0" "IKSpChestFollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcRoot_M_pointConstraint1.ctx" "IKAcRoot_M.tx";
connectAttr "IKAcRoot_M_pointConstraint1.cty" "IKAcRoot_M.ty";
connectAttr "IKAcRoot_M_pointConstraint1.ctz" "IKAcRoot_M.tz";
connectAttr "IKAcRoot_M_aimConstraint1.crx" "IKAcRoot_M.rx";
connectAttr "IKAcRoot_M_aimConstraint1.cry" "IKAcRoot_M.ry";
connectAttr "IKAcRoot_M_aimConstraint1.crz" "IKAcRoot_M.rz";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcRoot_M.sx";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcRoot_M.sy";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcRoot_M.sz";
connectAttr "IKAcRoot_M.pim" "IKAcRoot_M_pointConstraint1.cpim";
connectAttr "IKAcRoot_M.rp" "IKAcRoot_M_pointConstraint1.crp";
connectAttr "IKAcRoot_M.rpt" "IKAcRoot_M_pointConstraint1.crt";
connectAttr "IKAcPociXformRoot_M.t" "IKAcRoot_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformRoot_M.rp" "IKAcRoot_M_pointConstraint1.tg[0].trp";
connectAttr "IKAcPociXformRoot_M.rpt" "IKAcRoot_M_pointConstraint1.tg[0].trt";
connectAttr "IKAcPociXformRoot_M.pm" "IKAcRoot_M_pointConstraint1.tg[0].tpm";
connectAttr "IKAcRoot_M_pointConstraint1.w0" "IKAcRoot_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcRoot_M.pim" "IKAcRoot_M_aimConstraint1.cpim";
connectAttr "IKAcRoot_M.t" "IKAcRoot_M_aimConstraint1.ct";
connectAttr "IKAcRoot_M.rp" "IKAcRoot_M_aimConstraint1.crp";
connectAttr "IKAcRoot_M.rpt" "IKAcRoot_M_aimConstraint1.crt";
connectAttr "IKAcRoot_M.ro" "IKAcRoot_M_aimConstraint1.cro";
connectAttr "IKAcRoot_M.jo" "IKAcRoot_M_aimConstraint1.cjo";
connectAttr "IKAcRoot_M.is" "IKAcRoot_M_aimConstraint1.is";
connectAttr "IKAcSpine1_M.t" "IKAcRoot_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcSpine1_M.rp" "IKAcRoot_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcSpine1_M.rpt" "IKAcRoot_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcSpine1_M.pm" "IKAcRoot_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcRoot_M_aimConstraint1.w0" "IKAcRoot_M_aimConstraint1.tg[0].tw";
connectAttr "IKfake0Spine_M.wm" "IKAcRoot_M_aimConstraint1.wum";
connectAttr "IKSpRoot_M.rx" "IKAcRoot_M_aimConstraint1.ox";
connectAttr "IKAcSpine1_M_pointConstraint1.ctx" "IKAcSpine1_M.tx";
connectAttr "IKAcSpine1_M_pointConstraint1.cty" "IKAcSpine1_M.ty";
connectAttr "IKAcSpine1_M_pointConstraint1.ctz" "IKAcSpine1_M.tz";
connectAttr "IKAcSpine1_M_aimConstraint1.crx" "IKAcSpine1_M.rx";
connectAttr "IKAcSpine1_M_aimConstraint1.cry" "IKAcSpine1_M.ry";
connectAttr "IKAcSpine1_M_aimConstraint1.crz" "IKAcSpine1_M.rz";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcSpine1_M.sx";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcSpine1_M.sy";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcSpine1_M.sz";
connectAttr "IKAcSpine1_M.pim" "IKAcSpine1_M_pointConstraint1.cpim";
connectAttr "IKAcSpine1_M.rp" "IKAcSpine1_M_pointConstraint1.crp";
connectAttr "IKAcSpine1_M.rpt" "IKAcSpine1_M_pointConstraint1.crt";
connectAttr "IKAcPociXformSpine1_M.t" "IKAcSpine1_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformSpine1_M.rp" "IKAcSpine1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformSpine1_M.rpt" "IKAcSpine1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformSpine1_M.pm" "IKAcSpine1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcSpine1_M_pointConstraint1.w0" "IKAcSpine1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcSpine1_M.pim" "IKAcSpine1_M_aimConstraint1.cpim";
connectAttr "IKAcSpine1_M.t" "IKAcSpine1_M_aimConstraint1.ct";
connectAttr "IKAcSpine1_M.rp" "IKAcSpine1_M_aimConstraint1.crp";
connectAttr "IKAcSpine1_M.rpt" "IKAcSpine1_M_aimConstraint1.crt";
connectAttr "IKAcSpine1_M.ro" "IKAcSpine1_M_aimConstraint1.cro";
connectAttr "IKAcSpine1_M.jo" "IKAcSpine1_M_aimConstraint1.cjo";
connectAttr "IKAcSpine1_M.is" "IKAcSpine1_M_aimConstraint1.is";
connectAttr "IKAcChest_M.t" "IKAcSpine1_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcChest_M.rp" "IKAcSpine1_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcChest_M.rpt" "IKAcSpine1_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcChest_M.pm" "IKAcSpine1_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcSpine1_M_aimConstraint1.w0" "IKAcSpine1_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcRoot_M.wm" "IKAcSpine1_M_aimConstraint1.wum";
connectAttr "IKSpSpine1_M.rx" "IKAcSpine1_M_aimConstraint1.ox";
connectAttr "IKAcChest_M_pointConstraint1.ctx" "IKAcChest_M.tx";
connectAttr "IKAcChest_M_pointConstraint1.cty" "IKAcChest_M.ty";
connectAttr "IKAcChest_M_pointConstraint1.ctz" "IKAcChest_M.tz";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcChest_M.sx";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcChest_M.sy";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKAcChest_M.sz";
connectAttr "IKAcChest_M.pim" "IKAcChest_M_pointConstraint1.cpim";
connectAttr "IKAcChest_M.rp" "IKAcChest_M_pointConstraint1.crp";
connectAttr "IKAcChest_M.rpt" "IKAcChest_M_pointConstraint1.crt";
connectAttr "IKAcPociXformChest_M.t" "IKAcChest_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformChest_M.rp" "IKAcChest_M_pointConstraint1.tg[0].trp";
connectAttr "IKAcPociXformChest_M.rpt" "IKAcChest_M_pointConstraint1.tg[0].trt";
connectAttr "IKAcPociXformChest_M.pm" "IKAcChest_M_pointConstraint1.tg[0].tpm";
connectAttr "IKAcChest_M_pointConstraint1.w0" "IKAcChest_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcPociRoot_M.p" "IKAcPociXformRoot_M.t";
connectAttr "IKAcPociSpine1_M.p" "IKAcPociXformSpine1_M.t";
connectAttr "IKAcPociChest_M.p" "IKAcPociXformChest_M.t";
connectAttr "IKAcSpine1FollowOffset_M_pointConstraint1.ctx" "IKAcSpine1FollowOffset_M.tx"
		;
connectAttr "IKAcSpine1FollowOffset_M_pointConstraint1.cty" "IKAcSpine1FollowOffset_M.ty"
		;
connectAttr "IKAcSpine1FollowOffset_M_pointConstraint1.ctz" "IKAcSpine1FollowOffset_M.tz"
		;
connectAttr "IKAcSpine1FollowOffset_M_orientConstraint1.crx" "IKAcSpine1FollowOffset_M.rx"
		;
connectAttr "IKAcSpine1FollowOffset_M_orientConstraint1.cry" "IKAcSpine1FollowOffset_M.ry"
		;
connectAttr "IKAcSpine1FollowOffset_M_orientConstraint1.crz" "IKAcSpine1FollowOffset_M.rz"
		;
connectAttr "IKAcSpine1FollowOffset_M.pim" "IKAcSpine1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcSpine1FollowOffset_M.rp" "IKAcSpine1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcSpine1FollowOffset_M.rpt" "IKAcSpine1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcSpine1_M.t" "IKAcSpine1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcSpine1_M.rp" "IKAcSpine1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcSpine1_M.rpt" "IKAcSpine1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcSpine1_M.pm" "IKAcSpine1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcSpine1FollowOffset_M_pointConstraint1.w0" "IKAcSpine1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcSpine1FollowOffset_M.ro" "IKAcSpine1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcSpine1FollowOffset_M.pim" "IKAcSpine1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcSpine1_M.r" "IKAcSpine1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcSpine1_M.ro" "IKAcSpine1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcSpine1_M.pm" "IKAcSpine1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcSpine1_M.jo" "IKAcSpine1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcSpine1FollowOffset_M_orientConstraint1.w0" "IKAcSpine1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcChestFollowOffset_M_pointConstraint1.ctx" "IKAcChestFollowOffset_M.tx"
		;
connectAttr "IKAcChestFollowOffset_M_pointConstraint1.cty" "IKAcChestFollowOffset_M.ty"
		;
connectAttr "IKAcChestFollowOffset_M_pointConstraint1.ctz" "IKAcChestFollowOffset_M.tz"
		;
connectAttr "IKAcChestFollowOffset_M_orientConstraint1.crx" "IKAcChestFollowOffset_M.rx"
		;
connectAttr "IKAcChestFollowOffset_M_orientConstraint1.cry" "IKAcChestFollowOffset_M.ry"
		;
connectAttr "IKAcChestFollowOffset_M_orientConstraint1.crz" "IKAcChestFollowOffset_M.rz"
		;
connectAttr "IKAcChestFollowOffset_M.pim" "IKAcChestFollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcChestFollowOffset_M.rp" "IKAcChestFollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcChestFollowOffset_M.rpt" "IKAcChestFollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcChest_M.t" "IKAcChestFollowOffset_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcChest_M.rp" "IKAcChestFollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcChest_M.rpt" "IKAcChestFollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcChest_M.pm" "IKAcChestFollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcChestFollowOffset_M_pointConstraint1.w0" "IKAcChestFollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcChestFollowOffset_M.ro" "IKAcChestFollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcChestFollowOffset_M.pim" "IKAcChestFollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcChest_M.r" "IKAcChestFollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcChest_M.ro" "IKAcChestFollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcChest_M.pm" "IKAcChestFollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcChest_M.jo" "IKAcChestFollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcChestFollowOffset_M_orientConstraint1.w0" "IKAcChestFollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKRootConstraint_parentConstraint1.ctx" "IKRootConstraint.tx";
connectAttr "IKRootConstraint_parentConstraint1.cty" "IKRootConstraint.ty";
connectAttr "IKRootConstraint_parentConstraint1.ctz" "IKRootConstraint.tz";
connectAttr "IKRootConstraint_parentConstraint1.crx" "IKRootConstraint.rx";
connectAttr "IKRootConstraint_parentConstraint1.cry" "IKRootConstraint.ry";
connectAttr "IKRootConstraint_parentConstraint1.crz" "IKRootConstraint.rz";
connectAttr "IKRootConstraint.ro" "IKRootConstraint_parentConstraint1.cro";
connectAttr "IKRootConstraint.pim" "IKRootConstraint_parentConstraint1.cpim";
connectAttr "IKRootConstraint.rp" "IKRootConstraint_parentConstraint1.crp";
connectAttr "IKRootConstraint.rpt" "IKRootConstraint_parentConstraint1.crt";
connectAttr "RootZeroXform.t" "IKRootConstraint_parentConstraint1.tg[0].tt";
connectAttr "RootZeroXform.rp" "IKRootConstraint_parentConstraint1.tg[0].trp";
connectAttr "RootZeroXform.rpt" "IKRootConstraint_parentConstraint1.tg[0].trt";
connectAttr "RootZeroXform.r" "IKRootConstraint_parentConstraint1.tg[0].tr";
connectAttr "RootZeroXform.ro" "IKRootConstraint_parentConstraint1.tg[0].tro";
connectAttr "RootZeroXform.s" "IKRootConstraint_parentConstraint1.tg[0].ts";
connectAttr "RootZeroXform.pm" "IKRootConstraint_parentConstraint1.tg[0].tpm";
connectAttr "IKRootConstraint_parentConstraint1.w0" "IKRootConstraint_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendLegCondition_R.ocr" "IKOffsetLeg_R.v";
connectAttr "unitConversion5.o" "IKLegFootRockInnerPivot_R.rz";
connectAttr "unitConversion6.o" "IKLegFootRockOuterPivot_R.rz";
connectAttr "unitConversion7.o" "RollRollerHeel_R.rx";
connectAttr "unitConversion9.o" "RollRollerToesEnd_R.rx";
connectAttr "unitConversion8.o" "RollRollerToes_R.rx";
connectAttr "IKXAnkle_R.msg" "IKAnkleHandle_R.hsj";
connectAttr "IKAnkleEffector_R.hp" "IKAnkleHandle_R.hee";
connectAttr "ikSCsolver.msg" "IKAnkleHandle_R.hsv";
connectAttr "IKXHip_R.msg" "IKLegHandle_R.hsj";
connectAttr "IKLegEffector_R.hp" "IKLegHandle_R.hee";
connectAttr "ikRPsolver.msg" "IKLegHandle_R.hsv";
connectAttr "IKLegHandle_R_poleVectorConstraint1.ctx" "IKLegHandle_R.pvx";
connectAttr "IKLegHandle_R_poleVectorConstraint1.cty" "IKLegHandle_R.pvy";
connectAttr "IKLegHandle_R_poleVectorConstraint1.ctz" "IKLegHandle_R.pvz";
connectAttr "IKLegHandle_R.pim" "IKLegHandle_R_poleVectorConstraint1.cpim";
connectAttr "IKXHip_R.pm" "IKLegHandle_R_poleVectorConstraint1.ps";
connectAttr "IKXHip_R.t" "IKLegHandle_R_poleVectorConstraint1.crp";
connectAttr "PoleLeg_R.t" "IKLegHandle_R_poleVectorConstraint1.tg[0].tt";
connectAttr "PoleLeg_R.rp" "IKLegHandle_R_poleVectorConstraint1.tg[0].trp";
connectAttr "PoleLeg_R.rpt" "IKLegHandle_R_poleVectorConstraint1.tg[0].trt";
connectAttr "PoleLeg_R.pm" "IKLegHandle_R_poleVectorConstraint1.tg[0].tpm";
connectAttr "IKLegHandle_R_poleVectorConstraint1.w0" "IKLegHandle_R_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IKXToes_R.msg" "IKToesHandle_R.hsj";
connectAttr "IKToesEffector_R.hp" "IKToesHandle_R.hee";
connectAttr "ikSCsolver.msg" "IKToesHandle_R.hsv";
connectAttr "PoleOffsetLeg_R_parentConstraint1.ctx" "PoleOffsetLeg_R.tx";
connectAttr "PoleOffsetLeg_R_parentConstraint1.cty" "PoleOffsetLeg_R.ty";
connectAttr "PoleOffsetLeg_R_parentConstraint1.ctz" "PoleOffsetLeg_R.tz";
connectAttr "PoleOffsetLeg_R_parentConstraint1.crx" "PoleOffsetLeg_R.rx";
connectAttr "PoleOffsetLeg_R_parentConstraint1.cry" "PoleOffsetLeg_R.ry";
connectAttr "PoleOffsetLeg_R_parentConstraint1.crz" "PoleOffsetLeg_R.rz";
connectAttr "FKIKBlendLegCondition_R.ocr" "PoleOffsetLeg_R.v";
connectAttr "PoleOffsetLeg_R.ro" "PoleOffsetLeg_R_parentConstraint1.cro";
connectAttr "PoleOffsetLeg_R.pim" "PoleOffsetLeg_R_parentConstraint1.cpim";
connectAttr "PoleOffsetLeg_R.rp" "PoleOffsetLeg_R_parentConstraint1.crp";
connectAttr "PoleOffsetLeg_R.rpt" "PoleOffsetLeg_R_parentConstraint1.crt";
connectAttr "PoleOffsetLeg_RStatic.t" "PoleOffsetLeg_R_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetLeg_RStatic.rp" "PoleOffsetLeg_R_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetLeg_RStatic.rpt" "PoleOffsetLeg_R_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetLeg_RStatic.r" "PoleOffsetLeg_R_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetLeg_RStatic.ro" "PoleOffsetLeg_R_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetLeg_RStatic.s" "PoleOffsetLeg_R_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetLeg_RStatic.pm" "PoleOffsetLeg_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_R_parentConstraint1.w0" "PoleOffsetLeg_R_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_RFollow.t" "PoleOffsetLeg_R_parentConstraint1.tg[1].tt"
		;
connectAttr "PoleOffsetLeg_RFollow.rp" "PoleOffsetLeg_R_parentConstraint1.tg[1].trp"
		;
connectAttr "PoleOffsetLeg_RFollow.rpt" "PoleOffsetLeg_R_parentConstraint1.tg[1].trt"
		;
connectAttr "PoleOffsetLeg_RFollow.r" "PoleOffsetLeg_R_parentConstraint1.tg[1].tr"
		;
connectAttr "PoleOffsetLeg_RFollow.ro" "PoleOffsetLeg_R_parentConstraint1.tg[1].tro"
		;
connectAttr "PoleOffsetLeg_RFollow.s" "PoleOffsetLeg_R_parentConstraint1.tg[1].ts"
		;
connectAttr "PoleOffsetLeg_RFollow.pm" "PoleOffsetLeg_R_parentConstraint1.tg[1].tpm"
		;
connectAttr "PoleOffsetLeg_R_parentConstraint1.w1" "PoleOffsetLeg_R_parentConstraint1.tg[1].tw"
		;
connectAttr "PoleLeg_RSetRangeFollow.oy" "PoleOffsetLeg_R_parentConstraint1.w0";
connectAttr "PoleLeg_RSetRangeFollow.ox" "PoleOffsetLeg_R_parentConstraint1.w1";
connectAttr "PoleAimLeg_R_aimConstraint1.crx" "PoleAimLeg_R.rx";
connectAttr "PoleAimLeg_R_aimConstraint1.cry" "PoleAimLeg_R.ry";
connectAttr "PoleAimLeg_R_aimConstraint1.crz" "PoleAimLeg_R.rz";
connectAttr "PoleAimLeg_R_pointConstraint1.ctx" "PoleAimLeg_R.tx";
connectAttr "PoleAimLeg_R_pointConstraint1.cty" "PoleAimLeg_R.ty";
connectAttr "PoleAimLeg_R_pointConstraint1.ctz" "PoleAimLeg_R.tz";
connectAttr "PoleAimLeg_R.pim" "PoleAimLeg_R_aimConstraint1.cpim";
connectAttr "PoleAimLeg_R.t" "PoleAimLeg_R_aimConstraint1.ct";
connectAttr "PoleAimLeg_R.rp" "PoleAimLeg_R_aimConstraint1.crp";
connectAttr "PoleAimLeg_R.rpt" "PoleAimLeg_R_aimConstraint1.crt";
connectAttr "PoleAimLeg_R.ro" "PoleAimLeg_R_aimConstraint1.cro";
connectAttr "IKLeg_R.t" "PoleAimLeg_R_aimConstraint1.tg[0].tt";
connectAttr "IKLeg_R.rp" "PoleAimLeg_R_aimConstraint1.tg[0].trp";
connectAttr "IKLeg_R.rpt" "PoleAimLeg_R_aimConstraint1.tg[0].trt";
connectAttr "IKLeg_R.pm" "PoleAimLeg_R_aimConstraint1.tg[0].tpm";
connectAttr "PoleAimLeg_R_aimConstraint1.w0" "PoleAimLeg_R_aimConstraint1.tg[0].tw"
		;
connectAttr "IKFKAlignedOffsetLeg_R.wm" "PoleAimLeg_R_aimConstraint1.wum";
connectAttr "unitConversion4.o" "PoleAimLeg_R_aimConstraint1.ox";
connectAttr "PoleAimLeg_R.pim" "PoleAimLeg_R_pointConstraint1.cpim";
connectAttr "PoleAimLeg_R.rp" "PoleAimLeg_R_pointConstraint1.crp";
connectAttr "PoleAimLeg_R.rpt" "PoleAimLeg_R_pointConstraint1.crt";
connectAttr "Root_M.t" "PoleAimLeg_R_pointConstraint1.tg[0].tt";
connectAttr "Root_M.rp" "PoleAimLeg_R_pointConstraint1.tg[0].trp";
connectAttr "Root_M.rpt" "PoleAimLeg_R_pointConstraint1.tg[0].trt";
connectAttr "Root_M.pm" "PoleAimLeg_R_pointConstraint1.tg[0].tpm";
connectAttr "PoleAimLeg_R_pointConstraint1.w0" "PoleAimLeg_R_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_R_parentConstraint1.ctx" "IKOffsetArm_R.tx";
connectAttr "IKOffsetArm_R_parentConstraint1.cty" "IKOffsetArm_R.ty";
connectAttr "IKOffsetArm_R_parentConstraint1.ctz" "IKOffsetArm_R.tz";
connectAttr "IKOffsetArm_R_parentConstraint1.crx" "IKOffsetArm_R.rx";
connectAttr "IKOffsetArm_R_parentConstraint1.cry" "IKOffsetArm_R.ry";
connectAttr "IKOffsetArm_R_parentConstraint1.crz" "IKOffsetArm_R.rz";
connectAttr "FKIKBlendArmCondition_R.ocr" "IKOffsetArm_R.v";
connectAttr "IKXShoulder_R.msg" "IKArmHandle_R.hsj";
connectAttr "IKArmEffector_R.hp" "IKArmHandle_R.hee";
connectAttr "ikRPsolver.msg" "IKArmHandle_R.hsv";
connectAttr "IKArmHandle_R_poleVectorConstraint1.ctx" "IKArmHandle_R.pvx";
connectAttr "IKArmHandle_R_poleVectorConstraint1.cty" "IKArmHandle_R.pvy";
connectAttr "IKArmHandle_R_poleVectorConstraint1.ctz" "IKArmHandle_R.pvz";
connectAttr "IKArmHandle_R.pim" "IKArmHandle_R_poleVectorConstraint1.cpim";
connectAttr "IKXShoulder_R.pm" "IKArmHandle_R_poleVectorConstraint1.ps";
connectAttr "IKXShoulder_R.t" "IKArmHandle_R_poleVectorConstraint1.crp";
connectAttr "PoleArm_R.t" "IKArmHandle_R_poleVectorConstraint1.tg[0].tt";
connectAttr "PoleArm_R.rp" "IKArmHandle_R_poleVectorConstraint1.tg[0].trp";
connectAttr "PoleArm_R.rpt" "IKArmHandle_R_poleVectorConstraint1.tg[0].trt";
connectAttr "PoleArm_R.pm" "IKArmHandle_R_poleVectorConstraint1.tg[0].tpm";
connectAttr "IKArmHandle_R_poleVectorConstraint1.w0" "IKArmHandle_R_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_R.ro" "IKOffsetArm_R_parentConstraint1.cro";
connectAttr "IKOffsetArm_R.pim" "IKOffsetArm_R_parentConstraint1.cpim";
connectAttr "IKOffsetArm_R.rp" "IKOffsetArm_R_parentConstraint1.crp";
connectAttr "IKOffsetArm_R.rpt" "IKOffsetArm_R_parentConstraint1.crt";
connectAttr "IKOffsetArm_RStatic.t" "IKOffsetArm_R_parentConstraint1.tg[0].tt";
connectAttr "IKOffsetArm_RStatic.rp" "IKOffsetArm_R_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetArm_RStatic.rpt" "IKOffsetArm_R_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetArm_RStatic.r" "IKOffsetArm_R_parentConstraint1.tg[0].tr";
connectAttr "IKOffsetArm_RStatic.ro" "IKOffsetArm_R_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetArm_RStatic.s" "IKOffsetArm_R_parentConstraint1.tg[0].ts";
connectAttr "IKOffsetArm_RStatic.pm" "IKOffsetArm_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_R_parentConstraint1.w0" "IKOffsetArm_R_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_RFollow.t" "IKOffsetArm_R_parentConstraint1.tg[1].tt";
connectAttr "IKOffsetArm_RFollow.rp" "IKOffsetArm_R_parentConstraint1.tg[1].trp"
		;
connectAttr "IKOffsetArm_RFollow.rpt" "IKOffsetArm_R_parentConstraint1.tg[1].trt"
		;
connectAttr "IKOffsetArm_RFollow.r" "IKOffsetArm_R_parentConstraint1.tg[1].tr";
connectAttr "IKOffsetArm_RFollow.ro" "IKOffsetArm_R_parentConstraint1.tg[1].tro"
		;
connectAttr "IKOffsetArm_RFollow.s" "IKOffsetArm_R_parentConstraint1.tg[1].ts";
connectAttr "IKOffsetArm_RFollow.pm" "IKOffsetArm_R_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetArm_R_parentConstraint1.w1" "IKOffsetArm_R_parentConstraint1.tg[1].tw"
		;
connectAttr "IKArm_RSetRangeFollow.oy" "IKOffsetArm_R_parentConstraint1.w0";
connectAttr "IKArm_RSetRangeFollow.ox" "IKOffsetArm_R_parentConstraint1.w1";
connectAttr "PoleOffsetArm_R_parentConstraint1.ctx" "PoleOffsetArm_R.tx";
connectAttr "PoleOffsetArm_R_parentConstraint1.cty" "PoleOffsetArm_R.ty";
connectAttr "PoleOffsetArm_R_parentConstraint1.ctz" "PoleOffsetArm_R.tz";
connectAttr "PoleOffsetArm_R_parentConstraint1.crx" "PoleOffsetArm_R.rx";
connectAttr "PoleOffsetArm_R_parentConstraint1.cry" "PoleOffsetArm_R.ry";
connectAttr "PoleOffsetArm_R_parentConstraint1.crz" "PoleOffsetArm_R.rz";
connectAttr "FKIKBlendArmCondition_R.ocr" "PoleOffsetArm_R.v";
connectAttr "PoleOffsetArm_R.ro" "PoleOffsetArm_R_parentConstraint1.cro";
connectAttr "PoleOffsetArm_R.pim" "PoleOffsetArm_R_parentConstraint1.cpim";
connectAttr "PoleOffsetArm_R.rp" "PoleOffsetArm_R_parentConstraint1.crp";
connectAttr "PoleOffsetArm_R.rpt" "PoleOffsetArm_R_parentConstraint1.crt";
connectAttr "PoleOffsetArm_RStatic.t" "PoleOffsetArm_R_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetArm_RStatic.rp" "PoleOffsetArm_R_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetArm_RStatic.rpt" "PoleOffsetArm_R_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetArm_RStatic.r" "PoleOffsetArm_R_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetArm_RStatic.ro" "PoleOffsetArm_R_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetArm_RStatic.s" "PoleOffsetArm_R_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetArm_RStatic.pm" "PoleOffsetArm_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_R_parentConstraint1.w0" "PoleOffsetArm_R_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_RFollow.t" "PoleOffsetArm_R_parentConstraint1.tg[1].tt"
		;
connectAttr "PoleOffsetArm_RFollow.rp" "PoleOffsetArm_R_parentConstraint1.tg[1].trp"
		;
connectAttr "PoleOffsetArm_RFollow.rpt" "PoleOffsetArm_R_parentConstraint1.tg[1].trt"
		;
connectAttr "PoleOffsetArm_RFollow.r" "PoleOffsetArm_R_parentConstraint1.tg[1].tr"
		;
connectAttr "PoleOffsetArm_RFollow.ro" "PoleOffsetArm_R_parentConstraint1.tg[1].tro"
		;
connectAttr "PoleOffsetArm_RFollow.s" "PoleOffsetArm_R_parentConstraint1.tg[1].ts"
		;
connectAttr "PoleOffsetArm_RFollow.pm" "PoleOffsetArm_R_parentConstraint1.tg[1].tpm"
		;
connectAttr "PoleOffsetArm_R_parentConstraint1.w1" "PoleOffsetArm_R_parentConstraint1.tg[1].tw"
		;
connectAttr "PoleArm_RSetRangeFollow.oy" "PoleOffsetArm_R_parentConstraint1.w0";
connectAttr "PoleArm_RSetRangeFollow.ox" "PoleOffsetArm_R_parentConstraint1.w1";
connectAttr "IKfake0Spine_M.msg" "IKSpineHandle_M.hsj";
connectAttr "IKSpineEffector_M.hp" "IKSpineHandle_M.hee";
connectAttr "ikSplineSolver.msg" "IKSpineHandle_M.hsv";
connectAttr "IKSpineCurve_MShape.ws" "IKSpineHandle_M.ic";
connectAttr "IKSpine1LocalOrient2_M.wm" "IKSpineHandle_M.dwum";
connectAttr "IKSpine3LocalOrient2_M.wm" "IKSpineHandle_M.dwue";
connectAttr "IKSpineRamp_M.oc" "IKSpineHandle_M.dtra";
connectAttr "IKSpineFlipAxisSetRange_M.oy" "IKSpineHandle_M.dwuy";
connectAttr "IKSpineFlipAxisSetRange_M.oz" "IKSpineHandle_M.dwuz";
connectAttr "IKSpineFlipAxisSetRange_M.oy" "IKSpineHandle_M.dwvy";
connectAttr "IKSpineFlipAxisSetRange_M.oz" "IKSpineHandle_M.dwvz";
connectAttr "IKSpineFlipAxisSetRange_M.ox" "IKSpineHandle_M.dwua";
connectAttr "IKSpine3_M.autoTwist" "IKSpineHandle_M.dtce";
connectAttr "unitConversion3.o" "IKSpineHandle_M.twi";
connectAttr "IKSpine3_M.ikCvVis" "IKOffsetcvSpine1_M.v";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.ctx" "IKOffsetcvSpine1_M.tx";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.cty" "IKOffsetcvSpine1_M.ty";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.ctz" "IKOffsetcvSpine1_M.tz";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.crx" "IKOffsetcvSpine1_M.rx";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.cry" "IKOffsetcvSpine1_M.ry";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.crz" "IKOffsetcvSpine1_M.rz";
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKExtracvSpine1_M.v";
connectAttr "IKOffsetcvSpine1_M.ro" "IKOffsetcvSpine1_M_parentConstraint1.cro";
connectAttr "IKOffsetcvSpine1_M.pim" "IKOffsetcvSpine1_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpine1_M.rp" "IKOffsetcvSpine1_M_parentConstraint1.crp";
connectAttr "IKOffsetcvSpine1_M.rpt" "IKOffsetcvSpine1_M_parentConstraint1.crt";
connectAttr "IKSpine1_M.t" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpine1_M.rp" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpine1_M.rpt" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpine1_M.r" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpine1_M.ro" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpine1_M.s" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpine1_M.pm" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.w0" "IKOffsetcvSpine1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpine2_M.t" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpine2_M.rp" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpine2_M.rpt" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpine2_M.r" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpine2_M.ro" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpine2_M.s" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpine2_M.pm" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.w1" "IKOffsetcvSpine1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKStiffSpine3SetRange_M.ox" "IKOffsetcvSpine1_M_parentConstraint1.w0"
		;
connectAttr "IKStiffSpine3SetRange_M.oy" "IKOffsetcvSpine1_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetSpine2_M_parentConstraint1.ctx" "IKOffsetSpine2_M.tx";
connectAttr "IKOffsetSpine2_M_parentConstraint1.cty" "IKOffsetSpine2_M.ty";
connectAttr "IKOffsetSpine2_M_parentConstraint1.ctz" "IKOffsetSpine2_M.tz";
connectAttr "IKOffsetSpine2_M_parentConstraint1.crx" "IKOffsetSpine2_M.rx";
connectAttr "IKOffsetSpine2_M_parentConstraint1.cry" "IKOffsetSpine2_M.ry";
connectAttr "IKOffsetSpine2_M_parentConstraint1.crz" "IKOffsetSpine2_M.rz";
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKOffsetSpine2_M.v";
connectAttr "IKOffsetSpine2_M.ro" "IKOffsetSpine2_M_parentConstraint1.cro";
connectAttr "IKOffsetSpine2_M.pim" "IKOffsetSpine2_M_parentConstraint1.cpim";
connectAttr "IKOffsetSpine2_M.rp" "IKOffsetSpine2_M_parentConstraint1.crp";
connectAttr "IKOffsetSpine2_M.rpt" "IKOffsetSpine2_M_parentConstraint1.crt";
connectAttr "IKSpine1_M.t" "IKOffsetSpine2_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpine1_M.rp" "IKOffsetSpine2_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpine1_M.rpt" "IKOffsetSpine2_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpine1_M.r" "IKOffsetSpine2_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpine1_M.ro" "IKOffsetSpine2_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpine1_M.s" "IKOffsetSpine2_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpine1_M.pm" "IKOffsetSpine2_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetSpine2_M_parentConstraint1.w0" "IKOffsetSpine2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpine3_M.t" "IKOffsetSpine2_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpine3_M.rp" "IKOffsetSpine2_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpine3_M.rpt" "IKOffsetSpine2_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpine3_M.r" "IKOffsetSpine2_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpine3_M.ro" "IKOffsetSpine2_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpine3_M.s" "IKOffsetSpine2_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpine3_M.pm" "IKOffsetSpine2_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetSpine2_M_parentConstraint1.w1" "IKOffsetSpine2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKFollowEndSpine2_MReverse.ox" "IKOffsetSpine2_M_parentConstraint1.w0"
		;
connectAttr "IKFollowEndSpine2_MUnitConversion.o" "IKOffsetSpine2_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetSpine3_M_parentConstraint1.ctx" "IKOffsetSpine3_M.tx";
connectAttr "IKOffsetSpine3_M_parentConstraint1.cty" "IKOffsetSpine3_M.ty";
connectAttr "IKOffsetSpine3_M_parentConstraint1.ctz" "IKOffsetSpine3_M.tz";
connectAttr "IKOffsetSpine3_M_parentConstraint1.crx" "IKOffsetSpine3_M.rx";
connectAttr "IKOffsetSpine3_M_parentConstraint1.cry" "IKOffsetSpine3_M.ry";
connectAttr "IKOffsetSpine3_M_parentConstraint1.crz" "IKOffsetSpine3_M.rz";
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKOffsetSpine3_M.v";
connectAttr "IKOffsetSpine3_M.ro" "IKOffsetSpine3_M_parentConstraint1.cro";
connectAttr "IKOffsetSpine3_M.pim" "IKOffsetSpine3_M_parentConstraint1.cpim";
connectAttr "IKOffsetSpine3_M.rp" "IKOffsetSpine3_M_parentConstraint1.crp";
connectAttr "IKOffsetSpine3_M.rpt" "IKOffsetSpine3_M_parentConstraint1.crt";
connectAttr "IKOffsetSpine3_MStatic.t" "IKOffsetSpine3_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKOffsetSpine3_MStatic.rp" "IKOffsetSpine3_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetSpine3_MStatic.rpt" "IKOffsetSpine3_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetSpine3_MStatic.r" "IKOffsetSpine3_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKOffsetSpine3_MStatic.ro" "IKOffsetSpine3_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetSpine3_MStatic.s" "IKOffsetSpine3_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKOffsetSpine3_MStatic.pm" "IKOffsetSpine3_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSpine3_M_parentConstraint1.w0" "IKOffsetSpine3_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetSpine3_MFollow.t" "IKOffsetSpine3_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKOffsetSpine3_MFollow.rp" "IKOffsetSpine3_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKOffsetSpine3_MFollow.rpt" "IKOffsetSpine3_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKOffsetSpine3_MFollow.r" "IKOffsetSpine3_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKOffsetSpine3_MFollow.ro" "IKOffsetSpine3_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKOffsetSpine3_MFollow.s" "IKOffsetSpine3_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKOffsetSpine3_MFollow.pm" "IKOffsetSpine3_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetSpine3_M_parentConstraint1.w1" "IKOffsetSpine3_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKSpine3_MSetRangeFollow.oy" "IKOffsetSpine3_M_parentConstraint1.w0"
		;
connectAttr "IKSpine3_MSetRangeFollow.ox" "IKOffsetSpine3_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetConstrainedSpine1_M_pointConstraint1.ctx" "IKOffsetConstrainedSpine1_M.tx"
		;
connectAttr "IKOffsetConstrainedSpine1_M_pointConstraint1.cty" "IKOffsetConstrainedSpine1_M.ty"
		;
connectAttr "IKOffsetConstrainedSpine1_M_pointConstraint1.ctz" "IKOffsetConstrainedSpine1_M.tz"
		;
connectAttr "IKOffsetConstrainedSpine1_M_orientConstraint1.crx" "IKOffsetConstrainedSpine1_M.rx"
		;
connectAttr "IKOffsetConstrainedSpine1_M_orientConstraint1.cry" "IKOffsetConstrainedSpine1_M.ry"
		;
connectAttr "IKOffsetConstrainedSpine1_M_orientConstraint1.crz" "IKOffsetConstrainedSpine1_M.rz"
		;
connectAttr "IKOffsetConstrainedSpine1_M.pim" "IKOffsetConstrainedSpine1_M_pointConstraint1.cpim"
		;
connectAttr "IKOffsetConstrainedSpine1_M.rp" "IKOffsetConstrainedSpine1_M_pointConstraint1.crp"
		;
connectAttr "IKOffsetConstrainedSpine1_M.rpt" "IKOffsetConstrainedSpine1_M_pointConstraint1.crt"
		;
connectAttr "RootX_M.t" "IKOffsetConstrainedSpine1_M_pointConstraint1.tg[0].tt";
connectAttr "RootX_M.rp" "IKOffsetConstrainedSpine1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "RootX_M.rpt" "IKOffsetConstrainedSpine1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "RootX_M.pm" "IKOffsetConstrainedSpine1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetConstrainedSpine1_M_pointConstraint1.w0" "IKOffsetConstrainedSpine1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetConstrainedSpine1_M.ro" "IKOffsetConstrainedSpine1_M_orientConstraint1.cro"
		;
connectAttr "IKOffsetConstrainedSpine1_M.pim" "IKOffsetConstrainedSpine1_M_orientConstraint1.cpim"
		;
connectAttr "RootX_M.r" "IKOffsetConstrainedSpine1_M_orientConstraint1.tg[0].tr"
		;
connectAttr "RootX_M.ro" "IKOffsetConstrainedSpine1_M_orientConstraint1.tg[0].tro"
		;
connectAttr "RootX_M.pm" "IKOffsetConstrainedSpine1_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetConstrainedSpine1_M_orientConstraint1.w0" "IKOffsetConstrainedSpine1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKOffsetSpine1_M.v";
connectAttr "FKIKBlendLegCondition_L.ocr" "IKOffsetLeg_L.v";
connectAttr "unitConversion11.o" "IKLegFootRockInnerPivot_L.rz";
connectAttr "unitConversion12.o" "IKLegFootRockOuterPivot_L.rz";
connectAttr "unitConversion13.o" "RollRollerHeel_L.rx";
connectAttr "unitConversion15.o" "RollRollerToesEnd_L.rx";
connectAttr "unitConversion14.o" "RollRollerToes_L.rx";
connectAttr "IKXAnkle_L.msg" "IKAnkleHandle_L.hsj";
connectAttr "IKAnkleEffector_L.hp" "IKAnkleHandle_L.hee";
connectAttr "ikSCsolver.msg" "IKAnkleHandle_L.hsv";
connectAttr "IKXHip_L.msg" "IKLegHandle_L.hsj";
connectAttr "IKLegEffector_L.hp" "IKLegHandle_L.hee";
connectAttr "ikRPsolver.msg" "IKLegHandle_L.hsv";
connectAttr "IKLegHandle_L_poleVectorConstraint1.ctx" "IKLegHandle_L.pvx";
connectAttr "IKLegHandle_L_poleVectorConstraint1.cty" "IKLegHandle_L.pvy";
connectAttr "IKLegHandle_L_poleVectorConstraint1.ctz" "IKLegHandle_L.pvz";
connectAttr "IKLegHandle_L.pim" "IKLegHandle_L_poleVectorConstraint1.cpim";
connectAttr "IKXHip_L.pm" "IKLegHandle_L_poleVectorConstraint1.ps";
connectAttr "IKXHip_L.t" "IKLegHandle_L_poleVectorConstraint1.crp";
connectAttr "PoleLeg_L.t" "IKLegHandle_L_poleVectorConstraint1.tg[0].tt";
connectAttr "PoleLeg_L.rp" "IKLegHandle_L_poleVectorConstraint1.tg[0].trp";
connectAttr "PoleLeg_L.rpt" "IKLegHandle_L_poleVectorConstraint1.tg[0].trt";
connectAttr "PoleLeg_L.pm" "IKLegHandle_L_poleVectorConstraint1.tg[0].tpm";
connectAttr "IKLegHandle_L_poleVectorConstraint1.w0" "IKLegHandle_L_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IKXToes_L.msg" "IKToesHandle_L.hsj";
connectAttr "IKToesEffector_L.hp" "IKToesHandle_L.hee";
connectAttr "ikSCsolver.msg" "IKToesHandle_L.hsv";
connectAttr "PoleOffsetLeg_L_parentConstraint1.ctx" "PoleOffsetLeg_L.tx";
connectAttr "PoleOffsetLeg_L_parentConstraint1.cty" "PoleOffsetLeg_L.ty";
connectAttr "PoleOffsetLeg_L_parentConstraint1.ctz" "PoleOffsetLeg_L.tz";
connectAttr "PoleOffsetLeg_L_parentConstraint1.crx" "PoleOffsetLeg_L.rx";
connectAttr "PoleOffsetLeg_L_parentConstraint1.cry" "PoleOffsetLeg_L.ry";
connectAttr "PoleOffsetLeg_L_parentConstraint1.crz" "PoleOffsetLeg_L.rz";
connectAttr "FKIKBlendLegCondition_L.ocr" "PoleOffsetLeg_L.v";
connectAttr "PoleOffsetLeg_L.ro" "PoleOffsetLeg_L_parentConstraint1.cro";
connectAttr "PoleOffsetLeg_L.pim" "PoleOffsetLeg_L_parentConstraint1.cpim";
connectAttr "PoleOffsetLeg_L.rp" "PoleOffsetLeg_L_parentConstraint1.crp";
connectAttr "PoleOffsetLeg_L.rpt" "PoleOffsetLeg_L_parentConstraint1.crt";
connectAttr "PoleOffsetLeg_LStatic.t" "PoleOffsetLeg_L_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetLeg_LStatic.rp" "PoleOffsetLeg_L_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetLeg_LStatic.rpt" "PoleOffsetLeg_L_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetLeg_LStatic.r" "PoleOffsetLeg_L_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetLeg_LStatic.ro" "PoleOffsetLeg_L_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetLeg_LStatic.s" "PoleOffsetLeg_L_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetLeg_LStatic.pm" "PoleOffsetLeg_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_L_parentConstraint1.w0" "PoleOffsetLeg_L_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_LFollow.t" "PoleOffsetLeg_L_parentConstraint1.tg[1].tt"
		;
connectAttr "PoleOffsetLeg_LFollow.rp" "PoleOffsetLeg_L_parentConstraint1.tg[1].trp"
		;
connectAttr "PoleOffsetLeg_LFollow.rpt" "PoleOffsetLeg_L_parentConstraint1.tg[1].trt"
		;
connectAttr "PoleOffsetLeg_LFollow.r" "PoleOffsetLeg_L_parentConstraint1.tg[1].tr"
		;
connectAttr "PoleOffsetLeg_LFollow.ro" "PoleOffsetLeg_L_parentConstraint1.tg[1].tro"
		;
connectAttr "PoleOffsetLeg_LFollow.s" "PoleOffsetLeg_L_parentConstraint1.tg[1].ts"
		;
connectAttr "PoleOffsetLeg_LFollow.pm" "PoleOffsetLeg_L_parentConstraint1.tg[1].tpm"
		;
connectAttr "PoleOffsetLeg_L_parentConstraint1.w1" "PoleOffsetLeg_L_parentConstraint1.tg[1].tw"
		;
connectAttr "PoleLeg_LSetRangeFollow.oy" "PoleOffsetLeg_L_parentConstraint1.w0";
connectAttr "PoleLeg_LSetRangeFollow.ox" "PoleOffsetLeg_L_parentConstraint1.w1";
connectAttr "PoleAimLeg_L_aimConstraint1.crx" "PoleAimLeg_L.rx";
connectAttr "PoleAimLeg_L_aimConstraint1.cry" "PoleAimLeg_L.ry";
connectAttr "PoleAimLeg_L_aimConstraint1.crz" "PoleAimLeg_L.rz";
connectAttr "PoleAimLeg_L_pointConstraint1.ctx" "PoleAimLeg_L.tx";
connectAttr "PoleAimLeg_L_pointConstraint1.cty" "PoleAimLeg_L.ty";
connectAttr "PoleAimLeg_L_pointConstraint1.ctz" "PoleAimLeg_L.tz";
connectAttr "PoleAimLeg_L.pim" "PoleAimLeg_L_aimConstraint1.cpim";
connectAttr "PoleAimLeg_L.t" "PoleAimLeg_L_aimConstraint1.ct";
connectAttr "PoleAimLeg_L.rp" "PoleAimLeg_L_aimConstraint1.crp";
connectAttr "PoleAimLeg_L.rpt" "PoleAimLeg_L_aimConstraint1.crt";
connectAttr "PoleAimLeg_L.ro" "PoleAimLeg_L_aimConstraint1.cro";
connectAttr "IKLeg_L.t" "PoleAimLeg_L_aimConstraint1.tg[0].tt";
connectAttr "IKLeg_L.rp" "PoleAimLeg_L_aimConstraint1.tg[0].trp";
connectAttr "IKLeg_L.rpt" "PoleAimLeg_L_aimConstraint1.tg[0].trt";
connectAttr "IKLeg_L.pm" "PoleAimLeg_L_aimConstraint1.tg[0].tpm";
connectAttr "PoleAimLeg_L_aimConstraint1.w0" "PoleAimLeg_L_aimConstraint1.tg[0].tw"
		;
connectAttr "IKFKAlignedOffsetLeg_L.wm" "PoleAimLeg_L_aimConstraint1.wum";
connectAttr "unitConversion10.o" "PoleAimLeg_L_aimConstraint1.ox";
connectAttr "PoleAimLeg_L.pim" "PoleAimLeg_L_pointConstraint1.cpim";
connectAttr "PoleAimLeg_L.rp" "PoleAimLeg_L_pointConstraint1.crp";
connectAttr "PoleAimLeg_L.rpt" "PoleAimLeg_L_pointConstraint1.crt";
connectAttr "Root_M.t" "PoleAimLeg_L_pointConstraint1.tg[0].tt";
connectAttr "Root_M.rp" "PoleAimLeg_L_pointConstraint1.tg[0].trp";
connectAttr "Root_M.rpt" "PoleAimLeg_L_pointConstraint1.tg[0].trt";
connectAttr "Root_M.pm" "PoleAimLeg_L_pointConstraint1.tg[0].tpm";
connectAttr "PoleAimLeg_L_pointConstraint1.w0" "PoleAimLeg_L_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_L_parentConstraint1.ctx" "IKOffsetArm_L.tx";
connectAttr "IKOffsetArm_L_parentConstraint1.cty" "IKOffsetArm_L.ty";
connectAttr "IKOffsetArm_L_parentConstraint1.ctz" "IKOffsetArm_L.tz";
connectAttr "IKOffsetArm_L_parentConstraint1.crx" "IKOffsetArm_L.rx";
connectAttr "IKOffsetArm_L_parentConstraint1.cry" "IKOffsetArm_L.ry";
connectAttr "IKOffsetArm_L_parentConstraint1.crz" "IKOffsetArm_L.rz";
connectAttr "FKIKBlendArmCondition_L.ocr" "IKOffsetArm_L.v";
connectAttr "IKXShoulder_L.msg" "IKArmHandle_L.hsj";
connectAttr "IKArmEffector_L.hp" "IKArmHandle_L.hee";
connectAttr "ikRPsolver.msg" "IKArmHandle_L.hsv";
connectAttr "IKArmHandle_L_poleVectorConstraint1.ctx" "IKArmHandle_L.pvx";
connectAttr "IKArmHandle_L_poleVectorConstraint1.cty" "IKArmHandle_L.pvy";
connectAttr "IKArmHandle_L_poleVectorConstraint1.ctz" "IKArmHandle_L.pvz";
connectAttr "IKArmHandle_L.pim" "IKArmHandle_L_poleVectorConstraint1.cpim";
connectAttr "IKXShoulder_L.pm" "IKArmHandle_L_poleVectorConstraint1.ps";
connectAttr "IKXShoulder_L.t" "IKArmHandle_L_poleVectorConstraint1.crp";
connectAttr "PoleArm_L.t" "IKArmHandle_L_poleVectorConstraint1.tg[0].tt";
connectAttr "PoleArm_L.rp" "IKArmHandle_L_poleVectorConstraint1.tg[0].trp";
connectAttr "PoleArm_L.rpt" "IKArmHandle_L_poleVectorConstraint1.tg[0].trt";
connectAttr "PoleArm_L.pm" "IKArmHandle_L_poleVectorConstraint1.tg[0].tpm";
connectAttr "IKArmHandle_L_poleVectorConstraint1.w0" "IKArmHandle_L_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_L.ro" "IKOffsetArm_L_parentConstraint1.cro";
connectAttr "IKOffsetArm_L.pim" "IKOffsetArm_L_parentConstraint1.cpim";
connectAttr "IKOffsetArm_L.rp" "IKOffsetArm_L_parentConstraint1.crp";
connectAttr "IKOffsetArm_L.rpt" "IKOffsetArm_L_parentConstraint1.crt";
connectAttr "IKOffsetArm_LStatic.t" "IKOffsetArm_L_parentConstraint1.tg[0].tt";
connectAttr "IKOffsetArm_LStatic.rp" "IKOffsetArm_L_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetArm_LStatic.rpt" "IKOffsetArm_L_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetArm_LStatic.r" "IKOffsetArm_L_parentConstraint1.tg[0].tr";
connectAttr "IKOffsetArm_LStatic.ro" "IKOffsetArm_L_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetArm_LStatic.s" "IKOffsetArm_L_parentConstraint1.tg[0].ts";
connectAttr "IKOffsetArm_LStatic.pm" "IKOffsetArm_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_L_parentConstraint1.w0" "IKOffsetArm_L_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_LFollow.t" "IKOffsetArm_L_parentConstraint1.tg[1].tt";
connectAttr "IKOffsetArm_LFollow.rp" "IKOffsetArm_L_parentConstraint1.tg[1].trp"
		;
connectAttr "IKOffsetArm_LFollow.rpt" "IKOffsetArm_L_parentConstraint1.tg[1].trt"
		;
connectAttr "IKOffsetArm_LFollow.r" "IKOffsetArm_L_parentConstraint1.tg[1].tr";
connectAttr "IKOffsetArm_LFollow.ro" "IKOffsetArm_L_parentConstraint1.tg[1].tro"
		;
connectAttr "IKOffsetArm_LFollow.s" "IKOffsetArm_L_parentConstraint1.tg[1].ts";
connectAttr "IKOffsetArm_LFollow.pm" "IKOffsetArm_L_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetArm_L_parentConstraint1.w1" "IKOffsetArm_L_parentConstraint1.tg[1].tw"
		;
connectAttr "IKArm_LSetRangeFollow.oy" "IKOffsetArm_L_parentConstraint1.w0";
connectAttr "IKArm_LSetRangeFollow.ox" "IKOffsetArm_L_parentConstraint1.w1";
connectAttr "PoleOffsetArm_L_parentConstraint1.ctx" "PoleOffsetArm_L.tx";
connectAttr "PoleOffsetArm_L_parentConstraint1.cty" "PoleOffsetArm_L.ty";
connectAttr "PoleOffsetArm_L_parentConstraint1.ctz" "PoleOffsetArm_L.tz";
connectAttr "PoleOffsetArm_L_parentConstraint1.crx" "PoleOffsetArm_L.rx";
connectAttr "PoleOffsetArm_L_parentConstraint1.cry" "PoleOffsetArm_L.ry";
connectAttr "PoleOffsetArm_L_parentConstraint1.crz" "PoleOffsetArm_L.rz";
connectAttr "FKIKBlendArmCondition_L.ocr" "PoleOffsetArm_L.v";
connectAttr "PoleOffsetArm_L.ro" "PoleOffsetArm_L_parentConstraint1.cro";
connectAttr "PoleOffsetArm_L.pim" "PoleOffsetArm_L_parentConstraint1.cpim";
connectAttr "PoleOffsetArm_L.rp" "PoleOffsetArm_L_parentConstraint1.crp";
connectAttr "PoleOffsetArm_L.rpt" "PoleOffsetArm_L_parentConstraint1.crt";
connectAttr "PoleOffsetArm_LStatic.t" "PoleOffsetArm_L_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetArm_LStatic.rp" "PoleOffsetArm_L_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetArm_LStatic.rpt" "PoleOffsetArm_L_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetArm_LStatic.r" "PoleOffsetArm_L_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetArm_LStatic.ro" "PoleOffsetArm_L_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetArm_LStatic.s" "PoleOffsetArm_L_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetArm_LStatic.pm" "PoleOffsetArm_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_L_parentConstraint1.w0" "PoleOffsetArm_L_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_LFollow.t" "PoleOffsetArm_L_parentConstraint1.tg[1].tt"
		;
connectAttr "PoleOffsetArm_LFollow.rp" "PoleOffsetArm_L_parentConstraint1.tg[1].trp"
		;
connectAttr "PoleOffsetArm_LFollow.rpt" "PoleOffsetArm_L_parentConstraint1.tg[1].trt"
		;
connectAttr "PoleOffsetArm_LFollow.r" "PoleOffsetArm_L_parentConstraint1.tg[1].tr"
		;
connectAttr "PoleOffsetArm_LFollow.ro" "PoleOffsetArm_L_parentConstraint1.tg[1].tro"
		;
connectAttr "PoleOffsetArm_LFollow.s" "PoleOffsetArm_L_parentConstraint1.tg[1].ts"
		;
connectAttr "PoleOffsetArm_LFollow.pm" "PoleOffsetArm_L_parentConstraint1.tg[1].tpm"
		;
connectAttr "PoleOffsetArm_L_parentConstraint1.w1" "PoleOffsetArm_L_parentConstraint1.tg[1].tw"
		;
connectAttr "PoleArm_LSetRangeFollow.oy" "PoleOffsetArm_L_parentConstraint1.w0";
connectAttr "PoleArm_LSetRangeFollow.ox" "PoleOffsetArm_L_parentConstraint1.w1";
connectAttr "IKScalerRoot_M_scaleConstraint1.csx" "IKScalerRoot_M.sx";
connectAttr "IKScalerRoot_M_scaleConstraint1.csy" "IKScalerRoot_M.sy";
connectAttr "IKScalerRoot_M_scaleConstraint1.csz" "IKScalerRoot_M.sz";
connectAttr "IKScalerRoot_M.pim" "IKScalerRoot_M_scaleConstraint1.cpim";
connectAttr "IKSpine1LocalOrient2_M.s" "IKScalerRoot_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpine1LocalOrient2_M.pm" "IKScalerRoot_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerRoot_M_scaleConstraint1.w0" "IKScalerRoot_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpine2LocalOrient2_M.s" "IKScalerRoot_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "IKScalerRoot_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerRoot_M_scaleConstraint1.w1" "IKScalerRoot_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpine3LocalOrient2_M.s" "IKScalerRoot_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "IKScalerRoot_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerRoot_M_scaleConstraint1.w2" "IKScalerRoot_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerSpine1_M_scaleConstraint1.csx" "IKScalerSpine1_M.sx";
connectAttr "IKScalerSpine1_M_scaleConstraint1.csy" "IKScalerSpine1_M.sy";
connectAttr "IKScalerSpine1_M_scaleConstraint1.csz" "IKScalerSpine1_M.sz";
connectAttr "IKScalerSpine1_M.pim" "IKScalerSpine1_M_scaleConstraint1.cpim";
connectAttr "IKSpine1LocalOrient2_M.s" "IKScalerSpine1_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpine1LocalOrient2_M.pm" "IKScalerSpine1_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerSpine1_M_scaleConstraint1.w0" "IKScalerSpine1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpine2LocalOrient2_M.s" "IKScalerSpine1_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "IKScalerSpine1_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerSpine1_M_scaleConstraint1.w1" "IKScalerSpine1_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpine3LocalOrient2_M.s" "IKScalerSpine1_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "IKScalerSpine1_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerSpine1_M_scaleConstraint1.w2" "IKScalerSpine1_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerChest_M_scaleConstraint1.csx" "IKScalerChest_M.sx";
connectAttr "IKScalerChest_M_scaleConstraint1.csy" "IKScalerChest_M.sy";
connectAttr "IKScalerChest_M_scaleConstraint1.csz" "IKScalerChest_M.sz";
connectAttr "IKScalerChest_M.pim" "IKScalerChest_M_scaleConstraint1.cpim";
connectAttr "IKSpine1LocalOrient2_M.s" "IKScalerChest_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpine1LocalOrient2_M.pm" "IKScalerChest_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerChest_M_scaleConstraint1.w0" "IKScalerChest_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpine2LocalOrient2_M.s" "IKScalerChest_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "IKScalerChest_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerChest_M_scaleConstraint1.w1" "IKScalerChest_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpine3LocalOrient2_M.s" "IKScalerChest_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "IKScalerChest_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerChest_M_scaleConstraint1.w2" "IKScalerChest_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_pointConstraint1.ctx" "PoleOffsetLeg_RFollowNoScale.tx"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_pointConstraint1.cty" "PoleOffsetLeg_RFollowNoScale.ty"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_pointConstraint1.ctz" "PoleOffsetLeg_RFollowNoScale.tz"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_orientConstraint1.crx" "PoleOffsetLeg_RFollowNoScale.rx"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_orientConstraint1.cry" "PoleOffsetLeg_RFollowNoScale.ry"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_orientConstraint1.crz" "PoleOffsetLeg_RFollowNoScale.rz"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.pim" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.rp" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.crp"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.rpt" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.crt"
		;
connectAttr "PoleAimLeg_R.t" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "PoleAimLeg_R.rp" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "PoleAimLeg_R.rpt" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "PoleAimLeg_R.pm" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_pointConstraint1.w0" "PoleOffsetLeg_RFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.ro" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.cro"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.pim" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "PoleAimLeg_R.r" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "PoleAimLeg_R.ro" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "PoleAimLeg_R.pm" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_orientConstraint1.w0" "PoleOffsetLeg_RFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.ctx" "PoleOffsetLeg_RFollow.tx"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.cty" "PoleOffsetLeg_RFollow.ty"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.ctz" "PoleOffsetLeg_RFollow.tz"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.crx" "PoleOffsetLeg_RFollow.rx"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.cry" "PoleOffsetLeg_RFollow.ry"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.crz" "PoleOffsetLeg_RFollow.rz"
		;
connectAttr "PoleOffsetLeg_RFollow.ro" "PoleOffsetLeg_RFollow_parentConstraint1.cro"
		;
connectAttr "PoleOffsetLeg_RFollow.pim" "PoleOffsetLeg_RFollow_parentConstraint1.cpim"
		;
connectAttr "PoleOffsetLeg_RFollow.rp" "PoleOffsetLeg_RFollow_parentConstraint1.crp"
		;
connectAttr "PoleOffsetLeg_RFollow.rpt" "PoleOffsetLeg_RFollow_parentConstraint1.crt"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.t" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.rp" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.rpt" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.r" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.ro" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.s" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.pm" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.w0" "PoleOffsetLeg_RFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_RFollowNoScale_pointConstraint1.ctx" "IKOffsetArm_RFollowNoScale.tx"
		;
connectAttr "IKOffsetArm_RFollowNoScale_pointConstraint1.cty" "IKOffsetArm_RFollowNoScale.ty"
		;
connectAttr "IKOffsetArm_RFollowNoScale_pointConstraint1.ctz" "IKOffsetArm_RFollowNoScale.tz"
		;
connectAttr "IKOffsetArm_RFollowNoScale_orientConstraint1.crx" "IKOffsetArm_RFollowNoScale.rx"
		;
connectAttr "IKOffsetArm_RFollowNoScale_orientConstraint1.cry" "IKOffsetArm_RFollowNoScale.ry"
		;
connectAttr "IKOffsetArm_RFollowNoScale_orientConstraint1.crz" "IKOffsetArm_RFollowNoScale.rz"
		;
connectAttr "IKOffsetArm_RFollowNoScale.pim" "IKOffsetArm_RFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "IKOffsetArm_RFollowNoScale.rp" "IKOffsetArm_RFollowNoScale_pointConstraint1.crp"
		;
connectAttr "IKOffsetArm_RFollowNoScale.rpt" "IKOffsetArm_RFollowNoScale_pointConstraint1.crt"
		;
connectAttr "Scapula_R.t" "IKOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "Scapula_R.rp" "IKOffsetArm_RFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "Scapula_R.rpt" "IKOffsetArm_RFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "Scapula_R.pm" "IKOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_RFollowNoScale_pointConstraint1.w0" "IKOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_RFollowNoScale.ro" "IKOffsetArm_RFollowNoScale_orientConstraint1.cro"
		;
connectAttr "IKOffsetArm_RFollowNoScale.pim" "IKOffsetArm_RFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "Scapula_R.r" "IKOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "Scapula_R.ro" "IKOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "Scapula_R.pm" "IKOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_R.jo" "IKOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKOffsetArm_RFollowNoScale_orientConstraint1.w0" "IKOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.ctx" "IKOffsetArm_RFollow.tx"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.cty" "IKOffsetArm_RFollow.ty"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.ctz" "IKOffsetArm_RFollow.tz"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.crx" "IKOffsetArm_RFollow.rx"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.cry" "IKOffsetArm_RFollow.ry"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.crz" "IKOffsetArm_RFollow.rz"
		;
connectAttr "IKOffsetArm_RFollow.ro" "IKOffsetArm_RFollow_parentConstraint1.cro"
		;
connectAttr "IKOffsetArm_RFollow.pim" "IKOffsetArm_RFollow_parentConstraint1.cpim"
		;
connectAttr "IKOffsetArm_RFollow.rp" "IKOffsetArm_RFollow_parentConstraint1.crp"
		;
connectAttr "IKOffsetArm_RFollow.rpt" "IKOffsetArm_RFollow_parentConstraint1.crt"
		;
connectAttr "IKOffsetArm_RFollowNoScale.t" "IKOffsetArm_RFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "IKOffsetArm_RFollowNoScale.rp" "IKOffsetArm_RFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetArm_RFollowNoScale.rpt" "IKOffsetArm_RFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetArm_RFollowNoScale.r" "IKOffsetArm_RFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "IKOffsetArm_RFollowNoScale.ro" "IKOffsetArm_RFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetArm_RFollowNoScale.s" "IKOffsetArm_RFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "IKOffsetArm_RFollowNoScale.pm" "IKOffsetArm_RFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.w0" "IKOffsetArm_RFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_pointConstraint1.ctx" "PoleOffsetArm_RFollowNoScale.tx"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_pointConstraint1.cty" "PoleOffsetArm_RFollowNoScale.ty"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_pointConstraint1.ctz" "PoleOffsetArm_RFollowNoScale.tz"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_orientConstraint1.crx" "PoleOffsetArm_RFollowNoScale.rx"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_orientConstraint1.cry" "PoleOffsetArm_RFollowNoScale.ry"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_orientConstraint1.crz" "PoleOffsetArm_RFollowNoScale.rz"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.pim" "PoleOffsetArm_RFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.rp" "PoleOffsetArm_RFollowNoScale_pointConstraint1.crp"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.rpt" "PoleOffsetArm_RFollowNoScale_pointConstraint1.crt"
		;
connectAttr "IKArm_R.t" "PoleOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "IKArm_R.rp" "PoleOffsetArm_RFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "IKArm_R.rpt" "PoleOffsetArm_RFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "IKArm_R.pm" "PoleOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_pointConstraint1.w0" "PoleOffsetArm_RFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.ro" "PoleOffsetArm_RFollowNoScale_orientConstraint1.cro"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.pim" "PoleOffsetArm_RFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "IKArm_R.r" "PoleOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "IKArm_R.ro" "PoleOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "IKArm_R.pm" "PoleOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_RFollowNoScale_orientConstraint1.w0" "PoleOffsetArm_RFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.ctx" "PoleOffsetArm_RFollow.tx"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.cty" "PoleOffsetArm_RFollow.ty"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.ctz" "PoleOffsetArm_RFollow.tz"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.crx" "PoleOffsetArm_RFollow.rx"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.cry" "PoleOffsetArm_RFollow.ry"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.crz" "PoleOffsetArm_RFollow.rz"
		;
connectAttr "PoleOffsetArm_RFollow.ro" "PoleOffsetArm_RFollow_parentConstraint1.cro"
		;
connectAttr "PoleOffsetArm_RFollow.pim" "PoleOffsetArm_RFollow_parentConstraint1.cpim"
		;
connectAttr "PoleOffsetArm_RFollow.rp" "PoleOffsetArm_RFollow_parentConstraint1.crp"
		;
connectAttr "PoleOffsetArm_RFollow.rpt" "PoleOffsetArm_RFollow_parentConstraint1.crt"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.t" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.rp" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.rpt" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.r" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.ro" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.s" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetArm_RFollowNoScale.pm" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.w0" "PoleOffsetArm_RFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_pointConstraint1.ctx" "IKOffsetSpine3_MFollowNoScale.tx"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_pointConstraint1.cty" "IKOffsetSpine3_MFollowNoScale.ty"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_pointConstraint1.ctz" "IKOffsetSpine3_MFollowNoScale.tz"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_orientConstraint1.crx" "IKOffsetSpine3_MFollowNoScale.rx"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_orientConstraint1.cry" "IKOffsetSpine3_MFollowNoScale.ry"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_orientConstraint1.crz" "IKOffsetSpine3_MFollowNoScale.rz"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.pim" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.rp" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.crp"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.rpt" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.crt"
		;
connectAttr "RootX_M.t" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "RootX_M.rp" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "RootX_M.rpt" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "RootX_M.pm" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_pointConstraint1.w0" "IKOffsetSpine3_MFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.ro" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.cro"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.pim" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "RootX_M.r" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "RootX_M.ro" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "RootX_M.pm" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_orientConstraint1.w0" "IKOffsetSpine3_MFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.ctx" "IKOffsetSpine3_MFollow.tx"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.cty" "IKOffsetSpine3_MFollow.ty"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.ctz" "IKOffsetSpine3_MFollow.tz"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.crx" "IKOffsetSpine3_MFollow.rx"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.cry" "IKOffsetSpine3_MFollow.ry"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.crz" "IKOffsetSpine3_MFollow.rz"
		;
connectAttr "IKOffsetSpine3_MFollow.ro" "IKOffsetSpine3_MFollow_parentConstraint1.cro"
		;
connectAttr "IKOffsetSpine3_MFollow.pim" "IKOffsetSpine3_MFollow_parentConstraint1.cpim"
		;
connectAttr "IKOffsetSpine3_MFollow.rp" "IKOffsetSpine3_MFollow_parentConstraint1.crp"
		;
connectAttr "IKOffsetSpine3_MFollow.rpt" "IKOffsetSpine3_MFollow_parentConstraint1.crt"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.t" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.rp" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.rpt" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.r" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.ro" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.s" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.pm" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.w0" "IKOffsetSpine3_MFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_pointConstraint1.ctx" "PoleOffsetLeg_LFollowNoScale.tx"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_pointConstraint1.cty" "PoleOffsetLeg_LFollowNoScale.ty"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_pointConstraint1.ctz" "PoleOffsetLeg_LFollowNoScale.tz"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_orientConstraint1.crx" "PoleOffsetLeg_LFollowNoScale.rx"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_orientConstraint1.cry" "PoleOffsetLeg_LFollowNoScale.ry"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_orientConstraint1.crz" "PoleOffsetLeg_LFollowNoScale.rz"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.pim" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.rp" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.crp"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.rpt" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.crt"
		;
connectAttr "PoleAimLeg_L.t" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "PoleAimLeg_L.rp" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "PoleAimLeg_L.rpt" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "PoleAimLeg_L.pm" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_pointConstraint1.w0" "PoleOffsetLeg_LFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.ro" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.cro"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.pim" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "PoleAimLeg_L.r" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "PoleAimLeg_L.ro" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "PoleAimLeg_L.pm" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_orientConstraint1.w0" "PoleOffsetLeg_LFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.ctx" "PoleOffsetLeg_LFollow.tx"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.cty" "PoleOffsetLeg_LFollow.ty"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.ctz" "PoleOffsetLeg_LFollow.tz"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.crx" "PoleOffsetLeg_LFollow.rx"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.cry" "PoleOffsetLeg_LFollow.ry"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.crz" "PoleOffsetLeg_LFollow.rz"
		;
connectAttr "PoleOffsetLeg_LFollow.ro" "PoleOffsetLeg_LFollow_parentConstraint1.cro"
		;
connectAttr "PoleOffsetLeg_LFollow.pim" "PoleOffsetLeg_LFollow_parentConstraint1.cpim"
		;
connectAttr "PoleOffsetLeg_LFollow.rp" "PoleOffsetLeg_LFollow_parentConstraint1.crp"
		;
connectAttr "PoleOffsetLeg_LFollow.rpt" "PoleOffsetLeg_LFollow_parentConstraint1.crt"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.t" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.rp" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.rpt" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.r" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.ro" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.s" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.pm" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.w0" "PoleOffsetLeg_LFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_LFollowNoScale_pointConstraint1.ctx" "IKOffsetArm_LFollowNoScale.tx"
		;
connectAttr "IKOffsetArm_LFollowNoScale_pointConstraint1.cty" "IKOffsetArm_LFollowNoScale.ty"
		;
connectAttr "IKOffsetArm_LFollowNoScale_pointConstraint1.ctz" "IKOffsetArm_LFollowNoScale.tz"
		;
connectAttr "IKOffsetArm_LFollowNoScale_orientConstraint1.crx" "IKOffsetArm_LFollowNoScale.rx"
		;
connectAttr "IKOffsetArm_LFollowNoScale_orientConstraint1.cry" "IKOffsetArm_LFollowNoScale.ry"
		;
connectAttr "IKOffsetArm_LFollowNoScale_orientConstraint1.crz" "IKOffsetArm_LFollowNoScale.rz"
		;
connectAttr "IKOffsetArm_LFollowNoScale.pim" "IKOffsetArm_LFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "IKOffsetArm_LFollowNoScale.rp" "IKOffsetArm_LFollowNoScale_pointConstraint1.crp"
		;
connectAttr "IKOffsetArm_LFollowNoScale.rpt" "IKOffsetArm_LFollowNoScale_pointConstraint1.crt"
		;
connectAttr "Scapula_L.t" "IKOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "Scapula_L.rp" "IKOffsetArm_LFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "Scapula_L.rpt" "IKOffsetArm_LFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "Scapula_L.pm" "IKOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_LFollowNoScale_pointConstraint1.w0" "IKOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_LFollowNoScale.ro" "IKOffsetArm_LFollowNoScale_orientConstraint1.cro"
		;
connectAttr "IKOffsetArm_LFollowNoScale.pim" "IKOffsetArm_LFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "Scapula_L.r" "IKOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "Scapula_L.ro" "IKOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "Scapula_L.pm" "IKOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_L.jo" "IKOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKOffsetArm_LFollowNoScale_orientConstraint1.w0" "IKOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.ctx" "IKOffsetArm_LFollow.tx"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.cty" "IKOffsetArm_LFollow.ty"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.ctz" "IKOffsetArm_LFollow.tz"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.crx" "IKOffsetArm_LFollow.rx"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.cry" "IKOffsetArm_LFollow.ry"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.crz" "IKOffsetArm_LFollow.rz"
		;
connectAttr "IKOffsetArm_LFollow.ro" "IKOffsetArm_LFollow_parentConstraint1.cro"
		;
connectAttr "IKOffsetArm_LFollow.pim" "IKOffsetArm_LFollow_parentConstraint1.cpim"
		;
connectAttr "IKOffsetArm_LFollow.rp" "IKOffsetArm_LFollow_parentConstraint1.crp"
		;
connectAttr "IKOffsetArm_LFollow.rpt" "IKOffsetArm_LFollow_parentConstraint1.crt"
		;
connectAttr "IKOffsetArm_LFollowNoScale.t" "IKOffsetArm_LFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "IKOffsetArm_LFollowNoScale.rp" "IKOffsetArm_LFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "IKOffsetArm_LFollowNoScale.rpt" "IKOffsetArm_LFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "IKOffsetArm_LFollowNoScale.r" "IKOffsetArm_LFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "IKOffsetArm_LFollowNoScale.ro" "IKOffsetArm_LFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "IKOffsetArm_LFollowNoScale.s" "IKOffsetArm_LFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "IKOffsetArm_LFollowNoScale.pm" "IKOffsetArm_LFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.w0" "IKOffsetArm_LFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_pointConstraint1.ctx" "PoleOffsetArm_LFollowNoScale.tx"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_pointConstraint1.cty" "PoleOffsetArm_LFollowNoScale.ty"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_pointConstraint1.ctz" "PoleOffsetArm_LFollowNoScale.tz"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_orientConstraint1.crx" "PoleOffsetArm_LFollowNoScale.rx"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_orientConstraint1.cry" "PoleOffsetArm_LFollowNoScale.ry"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_orientConstraint1.crz" "PoleOffsetArm_LFollowNoScale.rz"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.pim" "PoleOffsetArm_LFollowNoScale_pointConstraint1.cpim"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.rp" "PoleOffsetArm_LFollowNoScale_pointConstraint1.crp"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.rpt" "PoleOffsetArm_LFollowNoScale_pointConstraint1.crt"
		;
connectAttr "IKArm_L.t" "PoleOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tt"
		;
connectAttr "IKArm_L.rp" "PoleOffsetArm_LFollowNoScale_pointConstraint1.tg[0].trp"
		;
connectAttr "IKArm_L.rpt" "PoleOffsetArm_LFollowNoScale_pointConstraint1.tg[0].trt"
		;
connectAttr "IKArm_L.pm" "PoleOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_pointConstraint1.w0" "PoleOffsetArm_LFollowNoScale_pointConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.ro" "PoleOffsetArm_LFollowNoScale_orientConstraint1.cro"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.pim" "PoleOffsetArm_LFollowNoScale_orientConstraint1.cpim"
		;
connectAttr "IKArm_L.r" "PoleOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tr"
		;
connectAttr "IKArm_L.ro" "PoleOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tro"
		;
connectAttr "IKArm_L.pm" "PoleOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_LFollowNoScale_orientConstraint1.w0" "PoleOffsetArm_LFollowNoScale_orientConstraint1.tg[0].tw"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.ctx" "PoleOffsetArm_LFollow.tx"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.cty" "PoleOffsetArm_LFollow.ty"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.ctz" "PoleOffsetArm_LFollow.tz"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.crx" "PoleOffsetArm_LFollow.rx"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.cry" "PoleOffsetArm_LFollow.ry"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.crz" "PoleOffsetArm_LFollow.rz"
		;
connectAttr "PoleOffsetArm_LFollow.ro" "PoleOffsetArm_LFollow_parentConstraint1.cro"
		;
connectAttr "PoleOffsetArm_LFollow.pim" "PoleOffsetArm_LFollow_parentConstraint1.cpim"
		;
connectAttr "PoleOffsetArm_LFollow.rp" "PoleOffsetArm_LFollow_parentConstraint1.crp"
		;
connectAttr "PoleOffsetArm_LFollow.rpt" "PoleOffsetArm_LFollow_parentConstraint1.crt"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.t" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.rp" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.rpt" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.r" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.ro" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.s" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "PoleOffsetArm_LFollowNoScale.pm" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.w0" "PoleOffsetArm_LFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSpineCondition_M.ocr" "IKSpineCurve_M.v";
connectAttr "IKSpineLocator0_MShape.wp" "IKSpineCurve_MShape.cp[0]";
connectAttr "IKSpineLocator1_MShape.wp" "IKSpineCurve_MShape.cp[1]";
connectAttr "IKSpineLocator2_MShape.wp" "IKSpineCurve_MShape.cp[2]";
connectAttr "IKmessureLoc1Leg_R_pointConstraint1.ctx" "IKmessureLoc1Leg_R.tx";
connectAttr "IKmessureLoc1Leg_R_pointConstraint1.cty" "IKmessureLoc1Leg_R.ty";
connectAttr "IKmessureLoc1Leg_R_pointConstraint1.ctz" "IKmessureLoc1Leg_R.tz";
connectAttr "IKmessureLoc1Leg_R.pim" "IKmessureLoc1Leg_R_pointConstraint1.cpim";
connectAttr "IKmessureLoc1Leg_R.rp" "IKmessureLoc1Leg_R_pointConstraint1.crp";
connectAttr "IKmessureLoc1Leg_R.rpt" "IKmessureLoc1Leg_R_pointConstraint1.crt";
connectAttr "IKXHip_R.t" "IKmessureLoc1Leg_R_pointConstraint1.tg[0].tt";
connectAttr "IKXHip_R.rp" "IKmessureLoc1Leg_R_pointConstraint1.tg[0].trp";
connectAttr "IKXHip_R.rpt" "IKmessureLoc1Leg_R_pointConstraint1.tg[0].trt";
connectAttr "IKXHip_R.pm" "IKmessureLoc1Leg_R_pointConstraint1.tg[0].tpm";
connectAttr "IKmessureLoc1Leg_R_pointConstraint1.w0" "IKmessureLoc1Leg_R_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Leg_R_pointConstraint1.ctx" "IKmessureLoc2Leg_R.tx";
connectAttr "IKmessureLoc2Leg_R_pointConstraint1.cty" "IKmessureLoc2Leg_R.ty";
connectAttr "IKmessureLoc2Leg_R_pointConstraint1.ctz" "IKmessureLoc2Leg_R.tz";
connectAttr "IKmessureLoc2Leg_R.pim" "IKmessureLoc2Leg_R_pointConstraint1.cpim";
connectAttr "IKmessureLoc2Leg_R.rp" "IKmessureLoc2Leg_R_pointConstraint1.crp";
connectAttr "IKmessureLoc2Leg_R.rpt" "IKmessureLoc2Leg_R_pointConstraint1.crt";
connectAttr "IKmessureConstrainToLeg_R.t" "IKmessureLoc2Leg_R_pointConstraint1.tg[0].tt"
		;
connectAttr "IKmessureConstrainToLeg_R.rp" "IKmessureLoc2Leg_R_pointConstraint1.tg[0].trp"
		;
connectAttr "IKmessureConstrainToLeg_R.rpt" "IKmessureLoc2Leg_R_pointConstraint1.tg[0].trt"
		;
connectAttr "IKmessureConstrainToLeg_R.pm" "IKmessureLoc2Leg_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKmessureLoc2Leg_R_pointConstraint1.w0" "IKmessureLoc2Leg_R_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Leg_R.t" "IKdistanceLeg_RShape.ep";
connectAttr "IKdistanceLeg_RShape_antiPop.o" "IKdistanceLeg_RShape.antiPop";
connectAttr "IKmessureLoc1Arm_R_pointConstraint1.ctx" "IKmessureLoc1Arm_R.tx";
connectAttr "IKmessureLoc1Arm_R_pointConstraint1.cty" "IKmessureLoc1Arm_R.ty";
connectAttr "IKmessureLoc1Arm_R_pointConstraint1.ctz" "IKmessureLoc1Arm_R.tz";
connectAttr "IKmessureLoc1Arm_R.pim" "IKmessureLoc1Arm_R_pointConstraint1.cpim";
connectAttr "IKmessureLoc1Arm_R.rp" "IKmessureLoc1Arm_R_pointConstraint1.crp";
connectAttr "IKmessureLoc1Arm_R.rpt" "IKmessureLoc1Arm_R_pointConstraint1.crt";
connectAttr "IKXShoulder_R.t" "IKmessureLoc1Arm_R_pointConstraint1.tg[0].tt";
connectAttr "IKXShoulder_R.rp" "IKmessureLoc1Arm_R_pointConstraint1.tg[0].trp";
connectAttr "IKXShoulder_R.rpt" "IKmessureLoc1Arm_R_pointConstraint1.tg[0].trt";
connectAttr "IKXShoulder_R.pm" "IKmessureLoc1Arm_R_pointConstraint1.tg[0].tpm";
connectAttr "IKmessureLoc1Arm_R_pointConstraint1.w0" "IKmessureLoc1Arm_R_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Arm_R_pointConstraint1.ctx" "IKmessureLoc2Arm_R.tx";
connectAttr "IKmessureLoc2Arm_R_pointConstraint1.cty" "IKmessureLoc2Arm_R.ty";
connectAttr "IKmessureLoc2Arm_R_pointConstraint1.ctz" "IKmessureLoc2Arm_R.tz";
connectAttr "IKmessureLoc2Arm_R.pim" "IKmessureLoc2Arm_R_pointConstraint1.cpim";
connectAttr "IKmessureLoc2Arm_R.rp" "IKmessureLoc2Arm_R_pointConstraint1.crp";
connectAttr "IKmessureLoc2Arm_R.rpt" "IKmessureLoc2Arm_R_pointConstraint1.crt";
connectAttr "IKmessureConstrainToArm_R.t" "IKmessureLoc2Arm_R_pointConstraint1.tg[0].tt"
		;
connectAttr "IKmessureConstrainToArm_R.rp" "IKmessureLoc2Arm_R_pointConstraint1.tg[0].trp"
		;
connectAttr "IKmessureConstrainToArm_R.rpt" "IKmessureLoc2Arm_R_pointConstraint1.tg[0].trt"
		;
connectAttr "IKmessureConstrainToArm_R.pm" "IKmessureLoc2Arm_R_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKmessureLoc2Arm_R_pointConstraint1.w0" "IKmessureLoc2Arm_R_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Arm_R.t" "IKdistanceArm_RShape.ep";
connectAttr "IKdistanceArm_RShape_antiPop.o" "IKdistanceArm_RShape.antiPop";
connectAttr "IKmessureLoc1Leg_L_pointConstraint1.ctx" "IKmessureLoc1Leg_L.tx";
connectAttr "IKmessureLoc1Leg_L_pointConstraint1.cty" "IKmessureLoc1Leg_L.ty";
connectAttr "IKmessureLoc1Leg_L_pointConstraint1.ctz" "IKmessureLoc1Leg_L.tz";
connectAttr "IKmessureLoc1Leg_L.pim" "IKmessureLoc1Leg_L_pointConstraint1.cpim";
connectAttr "IKmessureLoc1Leg_L.rp" "IKmessureLoc1Leg_L_pointConstraint1.crp";
connectAttr "IKmessureLoc1Leg_L.rpt" "IKmessureLoc1Leg_L_pointConstraint1.crt";
connectAttr "IKXHip_L.t" "IKmessureLoc1Leg_L_pointConstraint1.tg[0].tt";
connectAttr "IKXHip_L.rp" "IKmessureLoc1Leg_L_pointConstraint1.tg[0].trp";
connectAttr "IKXHip_L.rpt" "IKmessureLoc1Leg_L_pointConstraint1.tg[0].trt";
connectAttr "IKXHip_L.pm" "IKmessureLoc1Leg_L_pointConstraint1.tg[0].tpm";
connectAttr "IKmessureLoc1Leg_L_pointConstraint1.w0" "IKmessureLoc1Leg_L_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Leg_L_pointConstraint1.ctx" "IKmessureLoc2Leg_L.tx";
connectAttr "IKmessureLoc2Leg_L_pointConstraint1.cty" "IKmessureLoc2Leg_L.ty";
connectAttr "IKmessureLoc2Leg_L_pointConstraint1.ctz" "IKmessureLoc2Leg_L.tz";
connectAttr "IKmessureLoc2Leg_L.pim" "IKmessureLoc2Leg_L_pointConstraint1.cpim";
connectAttr "IKmessureLoc2Leg_L.rp" "IKmessureLoc2Leg_L_pointConstraint1.crp";
connectAttr "IKmessureLoc2Leg_L.rpt" "IKmessureLoc2Leg_L_pointConstraint1.crt";
connectAttr "IKmessureConstrainToLeg_L.t" "IKmessureLoc2Leg_L_pointConstraint1.tg[0].tt"
		;
connectAttr "IKmessureConstrainToLeg_L.rp" "IKmessureLoc2Leg_L_pointConstraint1.tg[0].trp"
		;
connectAttr "IKmessureConstrainToLeg_L.rpt" "IKmessureLoc2Leg_L_pointConstraint1.tg[0].trt"
		;
connectAttr "IKmessureConstrainToLeg_L.pm" "IKmessureLoc2Leg_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKmessureLoc2Leg_L_pointConstraint1.w0" "IKmessureLoc2Leg_L_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Leg_L.t" "IKdistanceLeg_LShape.ep";
connectAttr "IKdistanceLeg_LShape_antiPop.o" "IKdistanceLeg_LShape.antiPop";
connectAttr "IKmessureLoc1Arm_L_pointConstraint1.ctx" "IKmessureLoc1Arm_L.tx";
connectAttr "IKmessureLoc1Arm_L_pointConstraint1.cty" "IKmessureLoc1Arm_L.ty";
connectAttr "IKmessureLoc1Arm_L_pointConstraint1.ctz" "IKmessureLoc1Arm_L.tz";
connectAttr "IKmessureLoc1Arm_L.pim" "IKmessureLoc1Arm_L_pointConstraint1.cpim";
connectAttr "IKmessureLoc1Arm_L.rp" "IKmessureLoc1Arm_L_pointConstraint1.crp";
connectAttr "IKmessureLoc1Arm_L.rpt" "IKmessureLoc1Arm_L_pointConstraint1.crt";
connectAttr "IKXShoulder_L.t" "IKmessureLoc1Arm_L_pointConstraint1.tg[0].tt";
connectAttr "IKXShoulder_L.rp" "IKmessureLoc1Arm_L_pointConstraint1.tg[0].trp";
connectAttr "IKXShoulder_L.rpt" "IKmessureLoc1Arm_L_pointConstraint1.tg[0].trt";
connectAttr "IKXShoulder_L.pm" "IKmessureLoc1Arm_L_pointConstraint1.tg[0].tpm";
connectAttr "IKmessureLoc1Arm_L_pointConstraint1.w0" "IKmessureLoc1Arm_L_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Arm_L_pointConstraint1.ctx" "IKmessureLoc2Arm_L.tx";
connectAttr "IKmessureLoc2Arm_L_pointConstraint1.cty" "IKmessureLoc2Arm_L.ty";
connectAttr "IKmessureLoc2Arm_L_pointConstraint1.ctz" "IKmessureLoc2Arm_L.tz";
connectAttr "IKmessureLoc2Arm_L.pim" "IKmessureLoc2Arm_L_pointConstraint1.cpim";
connectAttr "IKmessureLoc2Arm_L.rp" "IKmessureLoc2Arm_L_pointConstraint1.crp";
connectAttr "IKmessureLoc2Arm_L.rpt" "IKmessureLoc2Arm_L_pointConstraint1.crt";
connectAttr "IKmessureConstrainToArm_L.t" "IKmessureLoc2Arm_L_pointConstraint1.tg[0].tt"
		;
connectAttr "IKmessureConstrainToArm_L.rp" "IKmessureLoc2Arm_L_pointConstraint1.tg[0].trp"
		;
connectAttr "IKmessureConstrainToArm_L.rpt" "IKmessureLoc2Arm_L_pointConstraint1.tg[0].trt"
		;
connectAttr "IKmessureConstrainToArm_L.pm" "IKmessureLoc2Arm_L_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKmessureLoc2Arm_L_pointConstraint1.w0" "IKmessureLoc2Arm_L_pointConstraint1.tg[0].tw"
		;
connectAttr "IKmessureLoc2Arm_L.t" "IKdistanceArm_LShape.ep";
connectAttr "IKdistanceArm_LShape_antiPop.o" "IKdistanceArm_LShape.antiPop";
connectAttr "Main.fkIkVis" "FKIKSystem.v";
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.ctx" "FKIKParentConstraintLeg_R.tx"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.cty" "FKIKParentConstraintLeg_R.ty"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.ctz" "FKIKParentConstraintLeg_R.tz"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.crx" "FKIKParentConstraintLeg_R.rx"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.cry" "FKIKParentConstraintLeg_R.ry"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.crz" "FKIKParentConstraintLeg_R.rz"
		;
connectAttr "FKIKParentConstraintLeg_R.ro" "FKIKParentConstraintLeg_R_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintLeg_R.pim" "FKIKParentConstraintLeg_R_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintLeg_R.rp" "FKIKParentConstraintLeg_R_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintLeg_R.rpt" "FKIKParentConstraintLeg_R_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.w0" "FKIKParentConstraintLeg_R_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.ctx" "FKIKParentConstraintArm_R.tx"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.cty" "FKIKParentConstraintArm_R.ty"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.ctz" "FKIKParentConstraintArm_R.tz"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.crx" "FKIKParentConstraintArm_R.rx"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.cry" "FKIKParentConstraintArm_R.ry"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.crz" "FKIKParentConstraintArm_R.rz"
		;
connectAttr "FKIKParentConstraintArm_R.ro" "FKIKParentConstraintArm_R_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintArm_R.pim" "FKIKParentConstraintArm_R_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintArm_R.rp" "FKIKParentConstraintArm_R_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintArm_R.rpt" "FKIKParentConstraintArm_R_parentConstraint1.crt"
		;
connectAttr "Scapula_R.t" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Scapula_R.rp" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Scapula_R.rpt" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Scapula_R.r" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Scapula_R.ro" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Scapula_R.s" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Scapula_R.pm" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_R.jo" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "Scapula_R.ssc" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "Scapula_R.is" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tis"
		;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.w0" "FKIKParentConstraintArm_R_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.ctx" "FKIKParentConstraintSpine_M.tx"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.cty" "FKIKParentConstraintSpine_M.ty"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.ctz" "FKIKParentConstraintSpine_M.tz"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.crx" "FKIKParentConstraintSpine_M.rx"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.cry" "FKIKParentConstraintSpine_M.ry"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.crz" "FKIKParentConstraintSpine_M.rz"
		;
connectAttr "FKIKParentConstraintSpine_M.ro" "FKIKParentConstraintSpine_M_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintSpine_M.pim" "FKIKParentConstraintSpine_M_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintSpine_M.rp" "FKIKParentConstraintSpine_M_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintSpine_M.rpt" "FKIKParentConstraintSpine_M_parentConstraint1.crt"
		;
connectAttr "Root_M.t" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tt";
connectAttr "Root_M.rp" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].trp"
		;
connectAttr "Root_M.rpt" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].trt"
		;
connectAttr "Root_M.r" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tr";
connectAttr "Root_M.ro" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tro"
		;
connectAttr "Root_M.s" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].ts";
connectAttr "Root_M.pm" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "Root_M.jo" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tjo"
		;
connectAttr "Root_M.ssc" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tsc"
		;
connectAttr "Root_M.is" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tis"
		;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.w0" "FKIKParentConstraintSpine_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.ctx" "FKIKParentConstraintLeg_L.tx"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.cty" "FKIKParentConstraintLeg_L.ty"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.ctz" "FKIKParentConstraintLeg_L.tz"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.crx" "FKIKParentConstraintLeg_L.rx"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.cry" "FKIKParentConstraintLeg_L.ry"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.crz" "FKIKParentConstraintLeg_L.rz"
		;
connectAttr "FKIKParentConstraintLeg_L.ro" "FKIKParentConstraintLeg_L_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintLeg_L.pim" "FKIKParentConstraintLeg_L_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintLeg_L.rp" "FKIKParentConstraintLeg_L_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintLeg_L.rpt" "FKIKParentConstraintLeg_L_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.w0" "FKIKParentConstraintLeg_L_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.ctx" "FKIKParentConstraintArm_L.tx"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.cty" "FKIKParentConstraintArm_L.ty"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.ctz" "FKIKParentConstraintArm_L.tz"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.crx" "FKIKParentConstraintArm_L.rx"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.cry" "FKIKParentConstraintArm_L.ry"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.crz" "FKIKParentConstraintArm_L.rz"
		;
connectAttr "FKIKParentConstraintArm_L.ro" "FKIKParentConstraintArm_L_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintArm_L.pim" "FKIKParentConstraintArm_L_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintArm_L.rp" "FKIKParentConstraintArm_L_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintArm_L.rpt" "FKIKParentConstraintArm_L_parentConstraint1.crt"
		;
connectAttr "Scapula_L.t" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Scapula_L.rp" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Scapula_L.rpt" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Scapula_L.r" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Scapula_L.ro" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Scapula_L.s" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Scapula_L.pm" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Scapula_L.jo" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "Scapula_L.ssc" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "Scapula_L.is" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tis"
		;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.w0" "FKIKParentConstraintArm_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Main.bendVis" "BendSystem.v";
connectAttr "LegLockConstrained_pointConstraint1.ctx" "LegLockConstrained.tx";
connectAttr "LegLockConstrained_pointConstraint1.cty" "LegLockConstrained.ty";
connectAttr "LegLockConstrained_pointConstraint1.ctz" "LegLockConstrained.tz";
connectAttr "LegLockConstrained_orientConstraint1.crx" "LegLockConstrained.rx";
connectAttr "LegLockConstrained_orientConstraint1.cry" "LegLockConstrained.ry";
connectAttr "LegLockConstrained_orientConstraint1.crz" "LegLockConstrained.rz";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_pointConstraint1.cpim";
connectAttr "LegLockConstrained.rp" "LegLockConstrained_pointConstraint1.crp";
connectAttr "LegLockConstrained.rpt" "LegLockConstrained_pointConstraint1.crt";
connectAttr "Root_M.t" "LegLockConstrained_pointConstraint1.tg[0].tt";
connectAttr "Root_M.rp" "LegLockConstrained_pointConstraint1.tg[0].trp";
connectAttr "Root_M.rpt" "LegLockConstrained_pointConstraint1.tg[0].trt";
connectAttr "Root_M.pm" "LegLockConstrained_pointConstraint1.tg[0].tpm";
connectAttr "LegLockConstrained_pointConstraint1.w0" "LegLockConstrained_pointConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrained.ro" "LegLockConstrained_orientConstraint1.cro";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_orientConstraint1.cpim"
		;
connectAttr "RootX_M.r" "LegLockConstrained_orientConstraint1.tg[0].tr";
connectAttr "RootX_M.ro" "LegLockConstrained_orientConstraint1.tg[0].tro";
connectAttr "RootX_M.pm" "LegLockConstrained_orientConstraint1.tg[0].tpm";
connectAttr "LegLockConstrained_orientConstraint1.w0" "LegLockConstrained_orientConstraint1.tg[0].tw"
		;
connectAttr "RootSpineAligned.r" "LegLockConstrained_orientConstraint1.tg[1].tr"
		;
connectAttr "RootSpineAligned.ro" "LegLockConstrained_orientConstraint1.tg[1].tro"
		;
connectAttr "RootSpineAligned.pm" "LegLockConstrained_orientConstraint1.tg[1].tpm"
		;
connectAttr "LegLockConstrained_orientConstraint1.w1" "LegLockConstrained_orientConstraint1.tg[1].tw"
		;
connectAttr "LegLockUnitConversion.o" "LegLockConstrained_orientConstraint1.w0";
connectAttr "LegLockReverse.ox" "LegLockConstrained_orientConstraint1.w1";
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.ctx" "RootCenterBtwLegsBlended_M.tx"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.cty" "RootCenterBtwLegsBlended_M.ty"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.ctz" "RootCenterBtwLegsBlended_M.tz"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.crx" "RootCenterBtwLegsBlended_M.rx"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.cry" "RootCenterBtwLegsBlended_M.ry"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.crz" "RootCenterBtwLegsBlended_M.rz"
		;
connectAttr "RootSpineAligned_orientConstraint1.crx" "RootSpineAligned.rx";
connectAttr "RootSpineAligned_orientConstraint1.cry" "RootSpineAligned.ry";
connectAttr "RootSpineAligned_orientConstraint1.crz" "RootSpineAligned.rz";
connectAttr "RootSpineAligned.ro" "RootSpineAligned_orientConstraint1.cro";
connectAttr "RootSpineAligned.pim" "RootSpineAligned_orientConstraint1.cpim";
connectAttr "Root_M.r" "RootSpineAligned_orientConstraint1.tg[0].tr";
connectAttr "Root_M.ro" "RootSpineAligned_orientConstraint1.tg[0].tro";
connectAttr "Root_M.pm" "RootSpineAligned_orientConstraint1.tg[0].tpm";
connectAttr "Root_M.jo" "RootSpineAligned_orientConstraint1.tg[0].tjo";
connectAttr "RootSpineAligned_orientConstraint1.w0" "RootSpineAligned_orientConstraint1.tg[0].tw"
		;
connectAttr "RootCenterBtwLegsBlended_M.ro" "RootCenterBtwLegsBlended_M_parentConstraint1.cro"
		;
connectAttr "RootCenterBtwLegsBlended_M.pim" "RootCenterBtwLegsBlended_M_parentConstraint1.cpim"
		;
connectAttr "RootCenterBtwLegsBlended_M.rp" "RootCenterBtwLegsBlended_M_parentConstraint1.crp"
		;
connectAttr "RootCenterBtwLegsBlended_M.rpt" "RootCenterBtwLegsBlended_M_parentConstraint1.crt"
		;
connectAttr "RootCenter_M.t" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].tt"
		;
connectAttr "RootCenter_M.rp" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].trp"
		;
connectAttr "RootCenter_M.rpt" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].trt"
		;
connectAttr "RootCenter_M.r" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].tr"
		;
connectAttr "RootCenter_M.ro" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].tro"
		;
connectAttr "RootCenter_M.s" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].ts"
		;
connectAttr "RootCenter_M.pm" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.w0" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[0].tw"
		;
connectAttr "RootCenterBtwLegsOffset_M.t" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].tt"
		;
connectAttr "RootCenterBtwLegsOffset_M.rp" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].trp"
		;
connectAttr "RootCenterBtwLegsOffset_M.rpt" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].trt"
		;
connectAttr "RootCenterBtwLegsOffset_M.r" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].tr"
		;
connectAttr "RootCenterBtwLegsOffset_M.ro" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].tro"
		;
connectAttr "RootCenterBtwLegsOffset_M.s" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].ts"
		;
connectAttr "RootCenterBtwLegsOffset_M.pm" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.w1" "RootCenterBtwLegsBlended_M_parentConstraint1.tg[1].tw"
		;
connectAttr "CenterBtwLegsUnitReverse.ox" "RootCenterBtwLegsBlended_M_parentConstraint1.w0"
		;
connectAttr "CenterBtwLegsUnitConversion.o" "RootCenterBtwLegsBlended_M_parentConstraint1.w1"
		;
connectAttr "RootCenterBtwLegs_M_pointConstraint1.ctx" "RootCenterBtwLegs_M.tx";
connectAttr "RootCenterBtwLegs_M_pointConstraint1.ctz" "RootCenterBtwLegs_M.tz";
connectAttr "RootCenterBtwLegs_M_orientConstraint1.cry" "RootCenterBtwLegs_M.ry"
		;
connectAttr "CenterBtwLegsNodeStateSetRange.ox" "RootCenterBtwLegs_M_pointConstraint1.nds"
		;
connectAttr "RootCenterBtwLegs_M.pim" "RootCenterBtwLegs_M_pointConstraint1.cpim"
		;
connectAttr "RootCenterBtwLegs_M.rp" "RootCenterBtwLegs_M_pointConstraint1.crp";
connectAttr "RootCenterBtwLegs_M.rpt" "RootCenterBtwLegs_M_pointConstraint1.crt"
		;
connectAttr "IKLeg_L.t" "RootCenterBtwLegs_M_pointConstraint1.tg[0].tt";
connectAttr "IKLeg_L.rp" "RootCenterBtwLegs_M_pointConstraint1.tg[0].trp";
connectAttr "IKLeg_L.rpt" "RootCenterBtwLegs_M_pointConstraint1.tg[0].trt";
connectAttr "IKLeg_L.pm" "RootCenterBtwLegs_M_pointConstraint1.tg[0].tpm";
connectAttr "RootCenterBtwLegs_M_pointConstraint1.w0" "RootCenterBtwLegs_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKLeg_R.t" "RootCenterBtwLegs_M_pointConstraint1.tg[1].tt";
connectAttr "IKLeg_R.rp" "RootCenterBtwLegs_M_pointConstraint1.tg[1].trp";
connectAttr "IKLeg_R.rpt" "RootCenterBtwLegs_M_pointConstraint1.tg[1].trt";
connectAttr "IKLeg_R.pm" "RootCenterBtwLegs_M_pointConstraint1.tg[1].tpm";
connectAttr "RootCenterBtwLegs_M_pointConstraint1.w1" "RootCenterBtwLegs_M_pointConstraint1.tg[1].tw"
		;
connectAttr "CenterBtwLegsNodeStateSetRange.ox" "RootCenterBtwLegs_M_orientConstraint1.nds"
		;
connectAttr "RootCenterBtwLegs_M.ro" "RootCenterBtwLegs_M_orientConstraint1.cro"
		;
connectAttr "RootCenterBtwLegs_M.pim" "RootCenterBtwLegs_M_orientConstraint1.cpim"
		;
connectAttr "IKLeg_L.r" "RootCenterBtwLegs_M_orientConstraint1.tg[0].tr";
connectAttr "IKLeg_L.ro" "RootCenterBtwLegs_M_orientConstraint1.tg[0].tro";
connectAttr "IKLeg_L.pm" "RootCenterBtwLegs_M_orientConstraint1.tg[0].tpm";
connectAttr "RootCenterBtwLegs_M_orientConstraint1.w0" "RootCenterBtwLegs_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKLeg_R.r" "RootCenterBtwLegs_M_orientConstraint1.tg[1].tr";
connectAttr "IKLeg_R.ro" "RootCenterBtwLegs_M_orientConstraint1.tg[1].tro";
connectAttr "IKLeg_R.pm" "RootCenterBtwLegs_M_orientConstraint1.tg[1].tpm";
connectAttr "RootCenterBtwLegs_M_orientConstraint1.w1" "RootCenterBtwLegs_M_orientConstraint1.tg[1].tw"
		;
connectAttr "TwistFollowChest_M_parentConstraint1.ctx" "TwistFollowChest_M.tx";
connectAttr "TwistFollowChest_M_parentConstraint1.cty" "TwistFollowChest_M.ty";
connectAttr "TwistFollowChest_M_parentConstraint1.ctz" "TwistFollowChest_M.tz";
connectAttr "TwistFollowChest_M_parentConstraint1.crx" "TwistFollowChest_M.rx";
connectAttr "TwistFollowChest_M_parentConstraint1.cry" "TwistFollowChest_M.ry";
connectAttr "TwistFollowChest_M_parentConstraint1.crz" "TwistFollowChest_M.rz";
connectAttr "TwistFollowChest_M.ro" "TwistFollowChest_M_parentConstraint1.cro";
connectAttr "TwistFollowChest_M.pim" "TwistFollowChest_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowChest_M.rp" "TwistFollowChest_M_parentConstraint1.crp";
connectAttr "TwistFollowChest_M.rpt" "TwistFollowChest_M_parentConstraint1.crt";
connectAttr "IKSpine3LocalOrient2_M.t" "TwistFollowChest_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpine3LocalOrient2_M.rp" "TwistFollowChest_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpine3LocalOrient2_M.rpt" "TwistFollowChest_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpine3LocalOrient2_M.r" "TwistFollowChest_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpine3LocalOrient2_M.ro" "TwistFollowChest_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpine3LocalOrient2_M.s" "TwistFollowChest_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "TwistFollowChest_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistFollowChest_M_parentConstraint1.w0" "TwistFollowChest_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistChest_M.msg" "UnTwistIKChest_M.hsj";
connectAttr "effector1.hp" "UnTwistIKChest_M.hee";
connectAttr "ikRPsolver.msg" "UnTwistIKChest_M.hsv";
connectAttr "UnTwistIKChest_M_poleVectorConstraint1.ctx" "UnTwistIKChest_M.pvx";
connectAttr "UnTwistIKChest_M_poleVectorConstraint1.cty" "UnTwistIKChest_M.pvy";
connectAttr "UnTwistIKChest_M_poleVectorConstraint1.ctz" "UnTwistIKChest_M.pvz";
connectAttr "UnTwistIKChest_M.pim" "UnTwistIKChest_M_poleVectorConstraint1.cpim"
		;
connectAttr "UnTwistChest_M.pm" "UnTwistIKChest_M_poleVectorConstraint1.ps";
connectAttr "UnTwistChest_M.t" "UnTwistIKChest_M_poleVectorConstraint1.crp";
connectAttr "UnTwistChest_M.t" "UnTwistIKChest_M_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "UnTwistChest_M.rp" "UnTwistIKChest_M_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "UnTwistChest_M.rpt" "UnTwistIKChest_M_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "UnTwistChest_M.pm" "UnTwistIKChest_M_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistIKChest_M_poleVectorConstraint1.w0" "UnTwistIKChest_M_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.ctx" "TwistFollowParentChest_M.tx"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.cty" "TwistFollowParentChest_M.ty"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.ctz" "TwistFollowParentChest_M.tz"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.crx" "TwistFollowParentChest_M.rx"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.cry" "TwistFollowParentChest_M.ry"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.crz" "TwistFollowParentChest_M.rz"
		;
connectAttr "TwistFollowParentChest_M.ro" "TwistFollowParentChest_M_parentConstraint1.cro"
		;
connectAttr "TwistFollowParentChest_M.pim" "TwistFollowParentChest_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowParentChest_M.rp" "TwistFollowParentChest_M_parentConstraint1.crp"
		;
connectAttr "TwistFollowParentChest_M.rpt" "TwistFollowParentChest_M_parentConstraint1.crt"
		;
connectAttr "IKSpRoot_M.t" "TwistFollowParentChest_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpRoot_M.rp" "TwistFollowParentChest_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpRoot_M.rpt" "TwistFollowParentChest_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpRoot_M.r" "TwistFollowParentChest_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpRoot_M.ro" "TwistFollowParentChest_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpRoot_M.s" "TwistFollowParentChest_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpRoot_M.pm" "TwistFollowParentChest_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKSpRoot_M.jo" "TwistFollowParentChest_M_parentConstraint1.tg[0].tjo"
		;
connectAttr "IKSpRoot_M.ssc" "TwistFollowParentChest_M_parentConstraint1.tg[0].tsc"
		;
connectAttr "IKSpRoot_M.is" "TwistFollowParentChest_M_parentConstraint1.tg[0].tis"
		;
connectAttr "TwistFollowParentChest_M_parentConstraint1.w0" "TwistFollowParentChest_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistChest_M_pointConstraint1.ctx" "UnTwistChest_M.tx";
connectAttr "UnTwistChest_M_pointConstraint1.cty" "UnTwistChest_M.ty";
connectAttr "UnTwistChest_M_pointConstraint1.ctz" "UnTwistChest_M.tz";
connectAttr "UnTwistChest_M.s" "UnTwistEndChest_M.is";
connectAttr "UnTwistChest_M.pim" "UnTwistChest_M_pointConstraint1.cpim";
connectAttr "UnTwistChest_M.rp" "UnTwistChest_M_pointConstraint1.crp";
connectAttr "UnTwistChest_M.rpt" "UnTwistChest_M_pointConstraint1.crt";
connectAttr "IKSpine3LocalOrient2_M.t" "UnTwistChest_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpine3LocalOrient2_M.rp" "UnTwistChest_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpine3LocalOrient2_M.rpt" "UnTwistChest_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "UnTwistChest_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistChest_M_pointConstraint1.w0" "UnTwistChest_M_pointConstraint1.tg[0].tw"
		;
connectAttr "UnTwistEndChest_M.tx" "effector1.tx";
connectAttr "UnTwistEndChest_M.ty" "effector1.ty";
connectAttr "UnTwistEndChest_M.tz" "effector1.tz";
connectAttr "UnTwistChest_M.s" "TwistBalancerChest_M.is";
connectAttr "TwistBalancerChest_M_parentConstraint1.ctx" "TwistBalancerChest_M.tx"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.cty" "TwistBalancerChest_M.ty"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.ctz" "TwistBalancerChest_M.tz"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.crx" "TwistBalancerChest_M.rx"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.cry" "TwistBalancerChest_M.ry"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.crz" "TwistBalancerChest_M.rz"
		;
connectAttr "IKSpine3_MExtraTwistPlusMinusAverage.o1" "TwistBalancerChest_M.twist"
		;
connectAttr "TwistBalancerChest_M.ro" "TwistBalancerChest_M_parentConstraint1.cro"
		;
connectAttr "TwistBalancerChest_M.pim" "TwistBalancerChest_M_parentConstraint1.cpim"
		;
connectAttr "TwistBalancerChest_M.rp" "TwistBalancerChest_M_parentConstraint1.crp"
		;
connectAttr "TwistBalancerChest_M.rpt" "TwistBalancerChest_M_parentConstraint1.crt"
		;
connectAttr "TwistBalancerChest_M.jo" "TwistBalancerChest_M_parentConstraint1.cjo"
		;
connectAttr "IKSpine3LocalOrient2_M.t" "TwistBalancerChest_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpine3LocalOrient2_M.rp" "TwistBalancerChest_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpine3LocalOrient2_M.rpt" "TwistBalancerChest_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpine3LocalOrient2_M.r" "TwistBalancerChest_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpine3LocalOrient2_M.ro" "TwistBalancerChest_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpine3LocalOrient2_M.s" "TwistBalancerChest_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpine3LocalOrient2_M.pm" "TwistBalancerChest_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.w0" "TwistBalancerChest_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistChest_M.t" "TwistBalancerChest_M_parentConstraint1.tg[1].tt"
		;
connectAttr "UnTwistChest_M.rp" "TwistBalancerChest_M_parentConstraint1.tg[1].trp"
		;
connectAttr "UnTwistChest_M.rpt" "TwistBalancerChest_M_parentConstraint1.tg[1].trt"
		;
connectAttr "UnTwistChest_M.r" "TwistBalancerChest_M_parentConstraint1.tg[1].tr"
		;
connectAttr "UnTwistChest_M.ro" "TwistBalancerChest_M_parentConstraint1.tg[1].tro"
		;
connectAttr "UnTwistChest_M.s" "TwistBalancerChest_M_parentConstraint1.tg[1].ts"
		;
connectAttr "UnTwistChest_M.pm" "TwistBalancerChest_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "UnTwistChest_M.jo" "TwistBalancerChest_M_parentConstraint1.tg[1].tjo"
		;
connectAttr "UnTwistChest_M.ssc" "TwistBalancerChest_M_parentConstraint1.tg[1].tsc"
		;
connectAttr "UnTwistChest_M.is" "TwistBalancerChest_M_parentConstraint1.tg[1].tis"
		;
connectAttr "TwistBalancerChest_M_parentConstraint1.w1" "TwistBalancerChest_M_parentConstraint1.tg[1].tw"
		;
connectAttr "MainTwistFlipSetRange.oz" "TwistBalancerChest_M_parentConstraint1.w1"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.ctx" "TwistFollowSpine2_M.tx"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.cty" "TwistFollowSpine2_M.ty"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.ctz" "TwistFollowSpine2_M.tz"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.crx" "TwistFollowSpine2_M.rx"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.cry" "TwistFollowSpine2_M.ry"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.crz" "TwistFollowSpine2_M.rz"
		;
connectAttr "TwistFollowSpine2_M.ro" "TwistFollowSpine2_M_parentConstraint1.cro"
		;
connectAttr "TwistFollowSpine2_M.pim" "TwistFollowSpine2_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowSpine2_M.rp" "TwistFollowSpine2_M_parentConstraint1.crp"
		;
connectAttr "TwistFollowSpine2_M.rpt" "TwistFollowSpine2_M_parentConstraint1.crt"
		;
connectAttr "IKSpine2LocalOrient2_M.t" "TwistFollowSpine2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpine2LocalOrient2_M.rp" "TwistFollowSpine2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpine2LocalOrient2_M.rpt" "TwistFollowSpine2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpine2LocalOrient2_M.r" "TwistFollowSpine2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpine2LocalOrient2_M.ro" "TwistFollowSpine2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpine2LocalOrient2_M.s" "TwistFollowSpine2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "TwistFollowSpine2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistFollowSpine2_M_parentConstraint1.w0" "TwistFollowSpine2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpine2_M.msg" "UnTwistIKSpine2_M.hsj";
connectAttr "effector2.hp" "UnTwistIKSpine2_M.hee";
connectAttr "ikRPsolver.msg" "UnTwistIKSpine2_M.hsv";
connectAttr "UnTwistIKSpine2_M_poleVectorConstraint1.ctx" "UnTwistIKSpine2_M.pvx"
		;
connectAttr "UnTwistIKSpine2_M_poleVectorConstraint1.cty" "UnTwistIKSpine2_M.pvy"
		;
connectAttr "UnTwistIKSpine2_M_poleVectorConstraint1.ctz" "UnTwistIKSpine2_M.pvz"
		;
connectAttr "UnTwistIKSpine2_M.pim" "UnTwistIKSpine2_M_poleVectorConstraint1.cpim"
		;
connectAttr "UnTwistSpine2_M.pm" "UnTwistIKSpine2_M_poleVectorConstraint1.ps";
connectAttr "UnTwistSpine2_M.t" "UnTwistIKSpine2_M_poleVectorConstraint1.crp";
connectAttr "UnTwistSpine2_M.t" "UnTwistIKSpine2_M_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "UnTwistSpine2_M.rp" "UnTwistIKSpine2_M_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "UnTwistSpine2_M.rpt" "UnTwistIKSpine2_M_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "UnTwistSpine2_M.pm" "UnTwistIKSpine2_M_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistIKSpine2_M_poleVectorConstraint1.w0" "UnTwistIKSpine2_M_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.ctx" "TwistFollowParentSpine2_M.tx"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.cty" "TwistFollowParentSpine2_M.ty"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.ctz" "TwistFollowParentSpine2_M.tz"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.crx" "TwistFollowParentSpine2_M.rx"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.cry" "TwistFollowParentSpine2_M.ry"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.crz" "TwistFollowParentSpine2_M.rz"
		;
connectAttr "TwistFollowParentSpine2_M.ro" "TwistFollowParentSpine2_M_parentConstraint1.cro"
		;
connectAttr "TwistFollowParentSpine2_M.pim" "TwistFollowParentSpine2_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowParentSpine2_M.rp" "TwistFollowParentSpine2_M_parentConstraint1.crp"
		;
connectAttr "TwistFollowParentSpine2_M.rpt" "TwistFollowParentSpine2_M_parentConstraint1.crt"
		;
connectAttr "IKSpine2LocalOrient3_M.t" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpine2LocalOrient3_M.rp" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpine2LocalOrient3_M.rpt" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpine2LocalOrient3_M.r" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpine2LocalOrient3_M.ro" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpine2LocalOrient3_M.s" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpine2LocalOrient3_M.pm" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.w0" "TwistFollowParentSpine2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpine2_M_pointConstraint1.ctx" "UnTwistSpine2_M.tx";
connectAttr "UnTwistSpine2_M_pointConstraint1.cty" "UnTwistSpine2_M.ty";
connectAttr "UnTwistSpine2_M_pointConstraint1.ctz" "UnTwistSpine2_M.tz";
connectAttr "UnTwistSpine2_M.s" "UnTwistEndSpine2_M.is";
connectAttr "UnTwistSpine2_M.s" "TwistBalancerSpine2_M.is";
connectAttr "TwistBalancerSpine2_M_parentConstraint1.ctx" "TwistBalancerSpine2_M.tx"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.cty" "TwistBalancerSpine2_M.ty"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.ctz" "TwistBalancerSpine2_M.tz"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.crx" "TwistBalancerSpine2_M.rx"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.cry" "TwistBalancerSpine2_M.ry"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.crz" "TwistBalancerSpine2_M.rz"
		;
connectAttr "TwistBalancerSpine2_M.ro" "TwistBalancerSpine2_M_parentConstraint1.cro"
		;
connectAttr "TwistBalancerSpine2_M.pim" "TwistBalancerSpine2_M_parentConstraint1.cpim"
		;
connectAttr "TwistBalancerSpine2_M.rp" "TwistBalancerSpine2_M_parentConstraint1.crp"
		;
connectAttr "TwistBalancerSpine2_M.rpt" "TwistBalancerSpine2_M_parentConstraint1.crt"
		;
connectAttr "TwistBalancerSpine2_M.jo" "TwistBalancerSpine2_M_parentConstraint1.cjo"
		;
connectAttr "IKSpine2LocalOrient2_M.t" "TwistBalancerSpine2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpine2LocalOrient2_M.rp" "TwistBalancerSpine2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpine2LocalOrient2_M.rpt" "TwistBalancerSpine2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpine2LocalOrient2_M.r" "TwistBalancerSpine2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpine2LocalOrient2_M.ro" "TwistBalancerSpine2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpine2LocalOrient2_M.s" "TwistBalancerSpine2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "TwistBalancerSpine2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.w0" "TwistBalancerSpine2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpine2_M.pim" "UnTwistSpine2_M_pointConstraint1.cpim";
connectAttr "UnTwistSpine2_M.rp" "UnTwistSpine2_M_pointConstraint1.crp";
connectAttr "UnTwistSpine2_M.rpt" "UnTwistSpine2_M_pointConstraint1.crt";
connectAttr "IKSpine2LocalOrient2_M.t" "UnTwistSpine2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpine2LocalOrient2_M.rp" "UnTwistSpine2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpine2LocalOrient2_M.rpt" "UnTwistSpine2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpine2LocalOrient2_M.pm" "UnTwistSpine2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistSpine2_M_pointConstraint1.w0" "UnTwistSpine2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "UnTwistEndSpine2_M.tx" "effector2.tx";
connectAttr "UnTwistEndSpine2_M.ty" "effector2.ty";
connectAttr "UnTwistEndSpine2_M.tz" "effector2.tz";
connectAttr "world_Loc_pointConstraint1.ctx" "world_Loc.tx";
connectAttr "world_Loc_pointConstraint1.cty" "world_Loc.ty";
connectAttr "world_Loc_pointConstraint1.ctz" "world_Loc.tz";
connectAttr "world_Loc_orientConstraint1.crx" "world_Loc.rx";
connectAttr "world_Loc_orientConstraint1.cry" "world_Loc.ry";
connectAttr "world_Loc_orientConstraint1.crz" "world_Loc.rz";
connectAttr "world_Loc.pim" "world_Loc_pointConstraint1.cpim";
connectAttr "world_Loc.rp" "world_Loc_pointConstraint1.crp";
connectAttr "world_Loc.rpt" "world_Loc_pointConstraint1.crt";
connectAttr "Root_M.t" "world_Loc_pointConstraint1.tg[0].tt";
connectAttr "Root_M.rp" "world_Loc_pointConstraint1.tg[0].trp";
connectAttr "Root_M.rpt" "world_Loc_pointConstraint1.tg[0].trt";
connectAttr "Root_M.pm" "world_Loc_pointConstraint1.tg[0].tpm";
connectAttr "world_Loc_pointConstraint1.w0" "world_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "world_Loc.ro" "world_Loc_orientConstraint1.cro";
connectAttr "world_Loc.pim" "world_Loc_orientConstraint1.cpim";
connectAttr "Root_M.r" "world_Loc_orientConstraint1.tg[0].tr";
connectAttr "Root_M.ro" "world_Loc_orientConstraint1.tg[0].tro";
connectAttr "Root_M.pm" "world_Loc_orientConstraint1.tg[0].tpm";
connectAttr "Root_M.jo" "world_Loc_orientConstraint1.tg[0].tjo";
connectAttr "world_Loc_orientConstraint1.w0" "world_Loc_orientConstraint1.tg[0].tw"
		;
connectAttr "Hip_R_Loc_pointConstraint1.ctx" "Hip_R_Loc.tx";
connectAttr "Hip_R_Loc_pointConstraint1.cty" "Hip_R_Loc.ty";
connectAttr "Hip_R_Loc_pointConstraint1.ctz" "Hip_R_Loc.tz";
connectAttr "Hip_R_Loc_orientConstraint1.crx" "Hip_R_Loc.rx";
connectAttr "Hip_R_Loc_orientConstraint1.cry" "Hip_R_Loc.ry";
connectAttr "Hip_R_Loc_orientConstraint1.crz" "Hip_R_Loc.rz";
connectAttr "Hip_R_Loc.pim" "Hip_R_Loc_pointConstraint1.cpim";
connectAttr "Hip_R_Loc.rp" "Hip_R_Loc_pointConstraint1.crp";
connectAttr "Hip_R_Loc.rpt" "Hip_R_Loc_pointConstraint1.crt";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.t" "Hip_R_Loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.rp" "Hip_R_Loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.rpt" "Hip_R_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.pm" "Hip_R_Loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "Hip_R_Loc_pointConstraint1.w0" "Hip_R_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "Hip_R_Loc.ro" "Hip_R_Loc_orientConstraint1.cro";
connectAttr "Hip_R_Loc.pim" "Hip_R_Loc_orientConstraint1.cpim";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.r" "Hip_R_Loc_orientConstraint1.tg[0].tr"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.ro" "Hip_R_Loc_orientConstraint1.tg[0].tro"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.pm" "Hip_R_Loc_orientConstraint1.tg[0].tpm"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.jo" "Hip_R_Loc_orientConstraint1.tg[0].tjo"
		;
connectAttr "Hip_R_Loc_orientConstraint1.w0" "Hip_R_Loc_orientConstraint1.tg[0].tw"
		;
connectAttr "Hip_L_Loc_pointConstraint1.ctx" "Hip_L_Loc.tx";
connectAttr "Hip_L_Loc_pointConstraint1.cty" "Hip_L_Loc.ty";
connectAttr "Hip_L_Loc_pointConstraint1.ctz" "Hip_L_Loc.tz";
connectAttr "Hip_L_Loc_orientConstraint1.crx" "Hip_L_Loc.rx";
connectAttr "Hip_L_Loc_orientConstraint1.cry" "Hip_L_Loc.ry";
connectAttr "Hip_L_Loc_orientConstraint1.crz" "Hip_L_Loc.rz";
connectAttr "Hip_L_Loc.pim" "Hip_L_Loc_pointConstraint1.cpim";
connectAttr "Hip_L_Loc.rp" "Hip_L_Loc_pointConstraint1.crp";
connectAttr "Hip_L_Loc.rpt" "Hip_L_Loc_pointConstraint1.crt";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.t" "Hip_L_Loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.rp" "Hip_L_Loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.rpt" "Hip_L_Loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.pm" "Hip_L_Loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "Hip_L_Loc_pointConstraint1.w0" "Hip_L_Loc_pointConstraint1.tg[0].tw"
		;
connectAttr "Hip_L_Loc.ro" "Hip_L_Loc_orientConstraint1.cro";
connectAttr "Hip_L_Loc.pim" "Hip_L_Loc_orientConstraint1.cpim";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.r" "Hip_L_Loc_orientConstraint1.tg[0].tr"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.ro" "Hip_L_Loc_orientConstraint1.tg[0].tro"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.pm" "Hip_L_Loc_orientConstraint1.tg[0].tpm"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.jo" "Hip_L_Loc_orientConstraint1.tg[0].tjo"
		;
connectAttr "Hip_L_Loc_orientConstraint1.w0" "Hip_L_Loc_orientConstraint1.tg[0].tw"
		;
connectAttr "Toes_R.ro" "Toes_R_parentConstraint1.cro";
connectAttr "Toes_R.pim" "Toes_R_parentConstraint1.cpim";
connectAttr "Toes_R.rp" "Toes_R_parentConstraint1.crp";
connectAttr "Toes_R.rpt" "Toes_R_parentConstraint1.crt";
connectAttr "Toes_R.jo" "Toes_R_parentConstraint1.cjo";
connectAttr "FKXToes_R.t" "Toes_R_parentConstraint1.tg[0].tt";
connectAttr "FKXToes_R.rp" "Toes_R_parentConstraint1.tg[0].trp";
connectAttr "FKXToes_R.rpt" "Toes_R_parentConstraint1.tg[0].trt";
connectAttr "FKXToes_R.r" "Toes_R_parentConstraint1.tg[0].tr";
connectAttr "FKXToes_R.ro" "Toes_R_parentConstraint1.tg[0].tro";
connectAttr "FKXToes_R.s" "Toes_R_parentConstraint1.tg[0].ts";
connectAttr "FKXToes_R.pm" "Toes_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXToes_R.jo" "Toes_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXToes_R.ssc" "Toes_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXToes_R.is" "Toes_R_parentConstraint1.tg[0].tis";
connectAttr "Toes_R_parentConstraint1.w0" "Toes_R_parentConstraint1.tg[0].tw";
connectAttr "IKXToes_R.t" "Toes_R_parentConstraint1.tg[1].tt";
connectAttr "IKXToes_R.rp" "Toes_R_parentConstraint1.tg[1].trp";
connectAttr "IKXToes_R.rpt" "Toes_R_parentConstraint1.tg[1].trt";
connectAttr "IKXToes_R.r" "Toes_R_parentConstraint1.tg[1].tr";
connectAttr "IKXToes_R.ro" "Toes_R_parentConstraint1.tg[1].tro";
connectAttr "IKXToes_R.s" "Toes_R_parentConstraint1.tg[1].ts";
connectAttr "IKXToes_R.pm" "Toes_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXToes_R.jo" "Toes_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXToes_R.ssc" "Toes_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXToes_R.is" "Toes_R_parentConstraint1.tg[1].tis";
connectAttr "Toes_R_parentConstraint1.w1" "Toes_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_R.ox" "Toes_R_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_R.o" "Toes_R_parentConstraint1.w1";
connectAttr "Ankle_R.ro" "Ankle_R_parentConstraint1.cro";
connectAttr "Ankle_R.pim" "Ankle_R_parentConstraint1.cpim";
connectAttr "Ankle_R.rp" "Ankle_R_parentConstraint1.crp";
connectAttr "Ankle_R.rpt" "Ankle_R_parentConstraint1.crt";
connectAttr "Ankle_R.jo" "Ankle_R_parentConstraint1.cjo";
connectAttr "FKXAnkle_R.t" "Ankle_R_parentConstraint1.tg[0].tt";
connectAttr "FKXAnkle_R.rp" "Ankle_R_parentConstraint1.tg[0].trp";
connectAttr "FKXAnkle_R.rpt" "Ankle_R_parentConstraint1.tg[0].trt";
connectAttr "FKXAnkle_R.r" "Ankle_R_parentConstraint1.tg[0].tr";
connectAttr "FKXAnkle_R.ro" "Ankle_R_parentConstraint1.tg[0].tro";
connectAttr "FKXAnkle_R.s" "Ankle_R_parentConstraint1.tg[0].ts";
connectAttr "FKXAnkle_R.pm" "Ankle_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXAnkle_R.jo" "Ankle_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXAnkle_R.ssc" "Ankle_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXAnkle_R.is" "Ankle_R_parentConstraint1.tg[0].tis";
connectAttr "Ankle_R_parentConstraint1.w0" "Ankle_R_parentConstraint1.tg[0].tw";
connectAttr "IKXAnkle_R.t" "Ankle_R_parentConstraint1.tg[1].tt";
connectAttr "IKXAnkle_R.rp" "Ankle_R_parentConstraint1.tg[1].trp";
connectAttr "IKXAnkle_R.rpt" "Ankle_R_parentConstraint1.tg[1].trt";
connectAttr "IKXAnkle_R.r" "Ankle_R_parentConstraint1.tg[1].tr";
connectAttr "IKXAnkle_R.ro" "Ankle_R_parentConstraint1.tg[1].tro";
connectAttr "IKXAnkle_R.s" "Ankle_R_parentConstraint1.tg[1].ts";
connectAttr "IKXAnkle_R.pm" "Ankle_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXAnkle_R.jo" "Ankle_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXAnkle_R.ssc" "Ankle_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXAnkle_R.is" "Ankle_R_parentConstraint1.tg[1].tis";
connectAttr "Ankle_R_parentConstraint1.w1" "Ankle_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_R.ox" "Ankle_R_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_R.o" "Ankle_R_parentConstraint1.w1";
connectAttr "Knee_R.ro" "Knee_R_parentConstraint1.cro";
connectAttr "Knee_R.pim" "Knee_R_parentConstraint1.cpim";
connectAttr "Knee_R.rp" "Knee_R_parentConstraint1.crp";
connectAttr "Knee_R.rpt" "Knee_R_parentConstraint1.crt";
connectAttr "Knee_R.jo" "Knee_R_parentConstraint1.cjo";
connectAttr "FKXKnee_R.t" "Knee_R_parentConstraint1.tg[0].tt";
connectAttr "FKXKnee_R.rp" "Knee_R_parentConstraint1.tg[0].trp";
connectAttr "FKXKnee_R.rpt" "Knee_R_parentConstraint1.tg[0].trt";
connectAttr "FKXKnee_R.r" "Knee_R_parentConstraint1.tg[0].tr";
connectAttr "FKXKnee_R.ro" "Knee_R_parentConstraint1.tg[0].tro";
connectAttr "FKXKnee_R.s" "Knee_R_parentConstraint1.tg[0].ts";
connectAttr "FKXKnee_R.pm" "Knee_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXKnee_R.jo" "Knee_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXKnee_R.ssc" "Knee_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXKnee_R.is" "Knee_R_parentConstraint1.tg[0].tis";
connectAttr "Knee_R_parentConstraint1.w0" "Knee_R_parentConstraint1.tg[0].tw";
connectAttr "IKXKnee_R.t" "Knee_R_parentConstraint1.tg[1].tt";
connectAttr "IKXKnee_R.rp" "Knee_R_parentConstraint1.tg[1].trp";
connectAttr "IKXKnee_R.rpt" "Knee_R_parentConstraint1.tg[1].trt";
connectAttr "IKXKnee_R.r" "Knee_R_parentConstraint1.tg[1].tr";
connectAttr "IKXKnee_R.ro" "Knee_R_parentConstraint1.tg[1].tro";
connectAttr "IKXKnee_R.s" "Knee_R_parentConstraint1.tg[1].ts";
connectAttr "IKXKnee_R.pm" "Knee_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXKnee_R.jo" "Knee_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXKnee_R.ssc" "Knee_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXKnee_R.is" "Knee_R_parentConstraint1.tg[1].tis";
connectAttr "Knee_R_parentConstraint1.w1" "Knee_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_R.ox" "Knee_R_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_R.o" "Knee_R_parentConstraint1.w1";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.ro" "Hip_R_parentConstraint1.cro"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.pim" "Hip_R_parentConstraint1.cpim"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.rp" "Hip_R_parentConstraint1.crp"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.rpt" "Hip_R_parentConstraint1.crt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.jo" "Hip_R_parentConstraint1.cjo"
		;
connectAttr "FKXHip_R.t" "Hip_R_parentConstraint1.tg[0].tt";
connectAttr "FKXHip_R.rp" "Hip_R_parentConstraint1.tg[0].trp";
connectAttr "FKXHip_R.rpt" "Hip_R_parentConstraint1.tg[0].trt";
connectAttr "FKXHip_R.r" "Hip_R_parentConstraint1.tg[0].tr";
connectAttr "FKXHip_R.ro" "Hip_R_parentConstraint1.tg[0].tro";
connectAttr "FKXHip_R.s" "Hip_R_parentConstraint1.tg[0].ts";
connectAttr "FKXHip_R.pm" "Hip_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXHip_R.jo" "Hip_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXHip_R.ssc" "Hip_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXHip_R.is" "Hip_R_parentConstraint1.tg[0].tis";
connectAttr "Hip_R_parentConstraint1.w0" "Hip_R_parentConstraint1.tg[0].tw";
connectAttr "IKXHip_R.t" "Hip_R_parentConstraint1.tg[1].tt";
connectAttr "IKXHip_R.rp" "Hip_R_parentConstraint1.tg[1].trp";
connectAttr "IKXHip_R.rpt" "Hip_R_parentConstraint1.tg[1].trt";
connectAttr "IKXHip_R.r" "Hip_R_parentConstraint1.tg[1].tr";
connectAttr "IKXHip_R.ro" "Hip_R_parentConstraint1.tg[1].tro";
connectAttr "IKXHip_R.s" "Hip_R_parentConstraint1.tg[1].ts";
connectAttr "IKXHip_R.pm" "Hip_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXHip_R.jo" "Hip_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXHip_R.ssc" "Hip_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXHip_R.is" "Hip_R_parentConstraint1.tg[1].tis";
connectAttr "Hip_R_parentConstraint1.w1" "Hip_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_R.ox" "Hip_R_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_R.o" "Hip_R_parentConstraint1.w1";
connectAttr "MiddleFinger2_R.ro" "MiddleFinger2_R_parentConstraint1.cro";
connectAttr "MiddleFinger2_R.pim" "MiddleFinger2_R_parentConstraint1.cpim";
connectAttr "MiddleFinger2_R.rp" "MiddleFinger2_R_parentConstraint1.crp";
connectAttr "MiddleFinger2_R.rpt" "MiddleFinger2_R_parentConstraint1.crt";
connectAttr "MiddleFinger2_R.jo" "MiddleFinger2_R_parentConstraint1.cjo";
connectAttr "FKXMiddleFinger2_R.t" "MiddleFinger2_R_parentConstraint1.tg[0].tt";
connectAttr "FKXMiddleFinger2_R.rp" "MiddleFinger2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "FKXMiddleFinger2_R.rpt" "MiddleFinger2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXMiddleFinger2_R.r" "MiddleFinger2_R_parentConstraint1.tg[0].tr";
connectAttr "FKXMiddleFinger2_R.ro" "MiddleFinger2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "FKXMiddleFinger2_R.s" "MiddleFinger2_R_parentConstraint1.tg[0].ts";
connectAttr "FKXMiddleFinger2_R.pm" "MiddleFinger2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKXMiddleFinger2_R.jo" "MiddleFinger2_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "FKXMiddleFinger2_R.ssc" "MiddleFinger2_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXMiddleFinger2_R.is" "MiddleFinger2_R_parentConstraint1.tg[0].tis"
		;
connectAttr "MiddleFinger2_R_parentConstraint1.w0" "MiddleFinger2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "MiddleFinger1_R.ro" "MiddleFinger1_R_parentConstraint1.cro";
connectAttr "MiddleFinger1_R.pim" "MiddleFinger1_R_parentConstraint1.cpim";
connectAttr "MiddleFinger1_R.rp" "MiddleFinger1_R_parentConstraint1.crp";
connectAttr "MiddleFinger1_R.rpt" "MiddleFinger1_R_parentConstraint1.crt";
connectAttr "MiddleFinger1_R.jo" "MiddleFinger1_R_parentConstraint1.cjo";
connectAttr "FKXMiddleFinger1_R.t" "MiddleFinger1_R_parentConstraint1.tg[0].tt";
connectAttr "FKXMiddleFinger1_R.rp" "MiddleFinger1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "FKXMiddleFinger1_R.rpt" "MiddleFinger1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXMiddleFinger1_R.r" "MiddleFinger1_R_parentConstraint1.tg[0].tr";
connectAttr "FKXMiddleFinger1_R.ro" "MiddleFinger1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "FKXMiddleFinger1_R.s" "MiddleFinger1_R_parentConstraint1.tg[0].ts";
connectAttr "FKXMiddleFinger1_R.pm" "MiddleFinger1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKXMiddleFinger1_R.jo" "MiddleFinger1_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "FKXMiddleFinger1_R.ssc" "MiddleFinger1_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXMiddleFinger1_R.is" "MiddleFinger1_R_parentConstraint1.tg[0].tis"
		;
connectAttr "MiddleFinger1_R_parentConstraint1.w0" "MiddleFinger1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "ThumbFinger2_R.ro" "ThumbFinger2_R_parentConstraint1.cro";
connectAttr "ThumbFinger2_R.pim" "ThumbFinger2_R_parentConstraint1.cpim";
connectAttr "ThumbFinger2_R.rp" "ThumbFinger2_R_parentConstraint1.crp";
connectAttr "ThumbFinger2_R.rpt" "ThumbFinger2_R_parentConstraint1.crt";
connectAttr "ThumbFinger2_R.jo" "ThumbFinger2_R_parentConstraint1.cjo";
connectAttr "FKXThumbFinger2_R.t" "ThumbFinger2_R_parentConstraint1.tg[0].tt";
connectAttr "FKXThumbFinger2_R.rp" "ThumbFinger2_R_parentConstraint1.tg[0].trp";
connectAttr "FKXThumbFinger2_R.rpt" "ThumbFinger2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXThumbFinger2_R.r" "ThumbFinger2_R_parentConstraint1.tg[0].tr";
connectAttr "FKXThumbFinger2_R.ro" "ThumbFinger2_R_parentConstraint1.tg[0].tro";
connectAttr "FKXThumbFinger2_R.s" "ThumbFinger2_R_parentConstraint1.tg[0].ts";
connectAttr "FKXThumbFinger2_R.pm" "ThumbFinger2_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXThumbFinger2_R.jo" "ThumbFinger2_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXThumbFinger2_R.ssc" "ThumbFinger2_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXThumbFinger2_R.is" "ThumbFinger2_R_parentConstraint1.tg[0].tis";
connectAttr "ThumbFinger2_R_parentConstraint1.w0" "ThumbFinger2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "ThumbFinger1_R.ro" "ThumbFinger1_R_parentConstraint1.cro";
connectAttr "ThumbFinger1_R.pim" "ThumbFinger1_R_parentConstraint1.cpim";
connectAttr "ThumbFinger1_R.rp" "ThumbFinger1_R_parentConstraint1.crp";
connectAttr "ThumbFinger1_R.rpt" "ThumbFinger1_R_parentConstraint1.crt";
connectAttr "ThumbFinger1_R.jo" "ThumbFinger1_R_parentConstraint1.cjo";
connectAttr "FKXThumbFinger1_R.t" "ThumbFinger1_R_parentConstraint1.tg[0].tt";
connectAttr "FKXThumbFinger1_R.rp" "ThumbFinger1_R_parentConstraint1.tg[0].trp";
connectAttr "FKXThumbFinger1_R.rpt" "ThumbFinger1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXThumbFinger1_R.r" "ThumbFinger1_R_parentConstraint1.tg[0].tr";
connectAttr "FKXThumbFinger1_R.ro" "ThumbFinger1_R_parentConstraint1.tg[0].tro";
connectAttr "FKXThumbFinger1_R.s" "ThumbFinger1_R_parentConstraint1.tg[0].ts";
connectAttr "FKXThumbFinger1_R.pm" "ThumbFinger1_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXThumbFinger1_R.jo" "ThumbFinger1_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXThumbFinger1_R.ssc" "ThumbFinger1_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXThumbFinger1_R.is" "ThumbFinger1_R_parentConstraint1.tg[0].tis";
connectAttr "ThumbFinger1_R_parentConstraint1.w0" "ThumbFinger1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "IndexFinger2_R.ro" "IndexFinger2_R_parentConstraint1.cro";
connectAttr "IndexFinger2_R.pim" "IndexFinger2_R_parentConstraint1.cpim";
connectAttr "IndexFinger2_R.rp" "IndexFinger2_R_parentConstraint1.crp";
connectAttr "IndexFinger2_R.rpt" "IndexFinger2_R_parentConstraint1.crt";
connectAttr "IndexFinger2_R.jo" "IndexFinger2_R_parentConstraint1.cjo";
connectAttr "FKXIndexFinger2_R.t" "IndexFinger2_R_parentConstraint1.tg[0].tt";
connectAttr "FKXIndexFinger2_R.rp" "IndexFinger2_R_parentConstraint1.tg[0].trp";
connectAttr "FKXIndexFinger2_R.rpt" "IndexFinger2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXIndexFinger2_R.r" "IndexFinger2_R_parentConstraint1.tg[0].tr";
connectAttr "FKXIndexFinger2_R.ro" "IndexFinger2_R_parentConstraint1.tg[0].tro";
connectAttr "FKXIndexFinger2_R.s" "IndexFinger2_R_parentConstraint1.tg[0].ts";
connectAttr "FKXIndexFinger2_R.pm" "IndexFinger2_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXIndexFinger2_R.jo" "IndexFinger2_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXIndexFinger2_R.ssc" "IndexFinger2_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXIndexFinger2_R.is" "IndexFinger2_R_parentConstraint1.tg[0].tis";
connectAttr "IndexFinger2_R_parentConstraint1.w0" "IndexFinger2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "IndexFinger1_R.ro" "IndexFinger1_R_parentConstraint1.cro";
connectAttr "IndexFinger1_R.pim" "IndexFinger1_R_parentConstraint1.cpim";
connectAttr "IndexFinger1_R.rp" "IndexFinger1_R_parentConstraint1.crp";
connectAttr "IndexFinger1_R.rpt" "IndexFinger1_R_parentConstraint1.crt";
connectAttr "IndexFinger1_R.jo" "IndexFinger1_R_parentConstraint1.cjo";
connectAttr "FKXIndexFinger1_R.t" "IndexFinger1_R_parentConstraint1.tg[0].tt";
connectAttr "FKXIndexFinger1_R.rp" "IndexFinger1_R_parentConstraint1.tg[0].trp";
connectAttr "FKXIndexFinger1_R.rpt" "IndexFinger1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXIndexFinger1_R.r" "IndexFinger1_R_parentConstraint1.tg[0].tr";
connectAttr "FKXIndexFinger1_R.ro" "IndexFinger1_R_parentConstraint1.tg[0].tro";
connectAttr "FKXIndexFinger1_R.s" "IndexFinger1_R_parentConstraint1.tg[0].ts";
connectAttr "FKXIndexFinger1_R.pm" "IndexFinger1_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXIndexFinger1_R.jo" "IndexFinger1_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXIndexFinger1_R.ssc" "IndexFinger1_R_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXIndexFinger1_R.is" "IndexFinger1_R_parentConstraint1.tg[0].tis";
connectAttr "IndexFinger1_R_parentConstraint1.w0" "IndexFinger1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Wrist_R.ro" "Wrist_R_parentConstraint1.cro";
connectAttr "Wrist_R.pim" "Wrist_R_parentConstraint1.cpim";
connectAttr "Wrist_R.rp" "Wrist_R_parentConstraint1.crp";
connectAttr "Wrist_R.rpt" "Wrist_R_parentConstraint1.crt";
connectAttr "Wrist_R.jo" "Wrist_R_parentConstraint1.cjo";
connectAttr "FKXWrist_R.t" "Wrist_R_parentConstraint1.tg[0].tt";
connectAttr "FKXWrist_R.rp" "Wrist_R_parentConstraint1.tg[0].trp";
connectAttr "FKXWrist_R.rpt" "Wrist_R_parentConstraint1.tg[0].trt";
connectAttr "FKXWrist_R.r" "Wrist_R_parentConstraint1.tg[0].tr";
connectAttr "FKXWrist_R.ro" "Wrist_R_parentConstraint1.tg[0].tro";
connectAttr "FKXWrist_R.s" "Wrist_R_parentConstraint1.tg[0].ts";
connectAttr "FKXWrist_R.pm" "Wrist_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXWrist_R.jo" "Wrist_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXWrist_R.ssc" "Wrist_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXWrist_R.is" "Wrist_R_parentConstraint1.tg[0].tis";
connectAttr "Wrist_R_parentConstraint1.w0" "Wrist_R_parentConstraint1.tg[0].tw";
connectAttr "IKXWrist_R.t" "Wrist_R_parentConstraint1.tg[1].tt";
connectAttr "IKXWrist_R.rp" "Wrist_R_parentConstraint1.tg[1].trp";
connectAttr "IKXWrist_R.rpt" "Wrist_R_parentConstraint1.tg[1].trt";
connectAttr "IKXWrist_R.r" "Wrist_R_parentConstraint1.tg[1].tr";
connectAttr "IKXWrist_R.ro" "Wrist_R_parentConstraint1.tg[1].tro";
connectAttr "IKXWrist_R.s" "Wrist_R_parentConstraint1.tg[1].ts";
connectAttr "IKXWrist_R.pm" "Wrist_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXWrist_R.jo" "Wrist_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXWrist_R.ssc" "Wrist_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXWrist_R.is" "Wrist_R_parentConstraint1.tg[1].tis";
connectAttr "Wrist_R_parentConstraint1.w1" "Wrist_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendArmReverse_R.ox" "Wrist_R_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_R.o" "Wrist_R_parentConstraint1.w1";
connectAttr "Elbow_R.ro" "Elbow_R_parentConstraint1.cro";
connectAttr "Elbow_R.pim" "Elbow_R_parentConstraint1.cpim";
connectAttr "Elbow_R.rp" "Elbow_R_parentConstraint1.crp";
connectAttr "Elbow_R.rpt" "Elbow_R_parentConstraint1.crt";
connectAttr "Elbow_R.jo" "Elbow_R_parentConstraint1.cjo";
connectAttr "FKXElbow_R.t" "Elbow_R_parentConstraint1.tg[0].tt";
connectAttr "FKXElbow_R.rp" "Elbow_R_parentConstraint1.tg[0].trp";
connectAttr "FKXElbow_R.rpt" "Elbow_R_parentConstraint1.tg[0].trt";
connectAttr "FKXElbow_R.r" "Elbow_R_parentConstraint1.tg[0].tr";
connectAttr "FKXElbow_R.ro" "Elbow_R_parentConstraint1.tg[0].tro";
connectAttr "FKXElbow_R.s" "Elbow_R_parentConstraint1.tg[0].ts";
connectAttr "FKXElbow_R.pm" "Elbow_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXElbow_R.jo" "Elbow_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXElbow_R.ssc" "Elbow_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXElbow_R.is" "Elbow_R_parentConstraint1.tg[0].tis";
connectAttr "Elbow_R_parentConstraint1.w0" "Elbow_R_parentConstraint1.tg[0].tw";
connectAttr "IKXElbow_R.t" "Elbow_R_parentConstraint1.tg[1].tt";
connectAttr "IKXElbow_R.rp" "Elbow_R_parentConstraint1.tg[1].trp";
connectAttr "IKXElbow_R.rpt" "Elbow_R_parentConstraint1.tg[1].trt";
connectAttr "IKXElbow_R.r" "Elbow_R_parentConstraint1.tg[1].tr";
connectAttr "IKXElbow_R.ro" "Elbow_R_parentConstraint1.tg[1].tro";
connectAttr "IKXElbow_R.s" "Elbow_R_parentConstraint1.tg[1].ts";
connectAttr "IKXElbow_R.pm" "Elbow_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXElbow_R.jo" "Elbow_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXElbow_R.ssc" "Elbow_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXElbow_R.is" "Elbow_R_parentConstraint1.tg[1].tis";
connectAttr "Elbow_R_parentConstraint1.w1" "Elbow_R_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendArmReverse_R.ox" "Elbow_R_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_R.o" "Elbow_R_parentConstraint1.w1";
connectAttr "Shoulder_R.ro" "Shoulder_R_parentConstraint1.cro";
connectAttr "Shoulder_R.pim" "Shoulder_R_parentConstraint1.cpim";
connectAttr "Shoulder_R.rp" "Shoulder_R_parentConstraint1.crp";
connectAttr "Shoulder_R.rpt" "Shoulder_R_parentConstraint1.crt";
connectAttr "Shoulder_R.jo" "Shoulder_R_parentConstraint1.cjo";
connectAttr "FKXShoulder_R.t" "Shoulder_R_parentConstraint1.tg[0].tt";
connectAttr "FKXShoulder_R.rp" "Shoulder_R_parentConstraint1.tg[0].trp";
connectAttr "FKXShoulder_R.rpt" "Shoulder_R_parentConstraint1.tg[0].trt";
connectAttr "FKXShoulder_R.r" "Shoulder_R_parentConstraint1.tg[0].tr";
connectAttr "FKXShoulder_R.ro" "Shoulder_R_parentConstraint1.tg[0].tro";
connectAttr "FKXShoulder_R.s" "Shoulder_R_parentConstraint1.tg[0].ts";
connectAttr "FKXShoulder_R.pm" "Shoulder_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXShoulder_R.jo" "Shoulder_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXShoulder_R.ssc" "Shoulder_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXShoulder_R.is" "Shoulder_R_parentConstraint1.tg[0].tis";
connectAttr "Shoulder_R_parentConstraint1.w0" "Shoulder_R_parentConstraint1.tg[0].tw"
		;
connectAttr "IKXShoulder_R.t" "Shoulder_R_parentConstraint1.tg[1].tt";
connectAttr "IKXShoulder_R.rp" "Shoulder_R_parentConstraint1.tg[1].trp";
connectAttr "IKXShoulder_R.rpt" "Shoulder_R_parentConstraint1.tg[1].trt";
connectAttr "IKXShoulder_R.r" "Shoulder_R_parentConstraint1.tg[1].tr";
connectAttr "IKXShoulder_R.ro" "Shoulder_R_parentConstraint1.tg[1].tro";
connectAttr "IKXShoulder_R.s" "Shoulder_R_parentConstraint1.tg[1].ts";
connectAttr "IKXShoulder_R.pm" "Shoulder_R_parentConstraint1.tg[1].tpm";
connectAttr "IKXShoulder_R.jo" "Shoulder_R_parentConstraint1.tg[1].tjo";
connectAttr "IKXShoulder_R.ssc" "Shoulder_R_parentConstraint1.tg[1].tsc";
connectAttr "IKXShoulder_R.is" "Shoulder_R_parentConstraint1.tg[1].tis";
connectAttr "Shoulder_R_parentConstraint1.w1" "Shoulder_R_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendArmReverse_R.ox" "Shoulder_R_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_R.o" "Shoulder_R_parentConstraint1.w1";
connectAttr "Scapula_R.ro" "Scapula_R_parentConstraint1.cro";
connectAttr "Scapula_R.pim" "Scapula_R_parentConstraint1.cpim";
connectAttr "Scapula_R.rp" "Scapula_R_parentConstraint1.crp";
connectAttr "Scapula_R.rpt" "Scapula_R_parentConstraint1.crt";
connectAttr "Scapula_R.jo" "Scapula_R_parentConstraint1.cjo";
connectAttr "FKXScapula_R.t" "Scapula_R_parentConstraint1.tg[0].tt";
connectAttr "FKXScapula_R.rp" "Scapula_R_parentConstraint1.tg[0].trp";
connectAttr "FKXScapula_R.rpt" "Scapula_R_parentConstraint1.tg[0].trt";
connectAttr "FKXScapula_R.r" "Scapula_R_parentConstraint1.tg[0].tr";
connectAttr "FKXScapula_R.ro" "Scapula_R_parentConstraint1.tg[0].tro";
connectAttr "FKXScapula_R.s" "Scapula_R_parentConstraint1.tg[0].ts";
connectAttr "FKXScapula_R.pm" "Scapula_R_parentConstraint1.tg[0].tpm";
connectAttr "FKXScapula_R.jo" "Scapula_R_parentConstraint1.tg[0].tjo";
connectAttr "FKXScapula_R.ssc" "Scapula_R_parentConstraint1.tg[0].tsc";
connectAttr "FKXScapula_R.is" "Scapula_R_parentConstraint1.tg[0].tis";
connectAttr "Scapula_R_parentConstraint1.w0" "Scapula_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Head1_M.ro" "Head1_M_parentConstraint1.cro";
connectAttr "Head1_M.pim" "Head1_M_parentConstraint1.cpim";
connectAttr "Head1_M.rp" "Head1_M_parentConstraint1.crp";
connectAttr "Head1_M.rpt" "Head1_M_parentConstraint1.crt";
connectAttr "Head1_M.jo" "Head1_M_parentConstraint1.cjo";
connectAttr "FKXHead1_M.t" "Head1_M_parentConstraint1.tg[0].tt";
connectAttr "FKXHead1_M.rp" "Head1_M_parentConstraint1.tg[0].trp";
connectAttr "FKXHead1_M.rpt" "Head1_M_parentConstraint1.tg[0].trt";
connectAttr "FKXHead1_M.r" "Head1_M_parentConstraint1.tg[0].tr";
connectAttr "FKXHead1_M.ro" "Head1_M_parentConstraint1.tg[0].tro";
connectAttr "FKXHead1_M.s" "Head1_M_parentConstraint1.tg[0].ts";
connectAttr "FKXHead1_M.pm" "Head1_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXHead1_M.jo" "Head1_M_parentConstraint1.tg[0].tjo";
connectAttr "FKXHead1_M.ssc" "Head1_M_parentConstraint1.tg[0].tsc";
connectAttr "FKXHead1_M.is" "Head1_M_parentConstraint1.tg[0].tis";
connectAttr "Head1_M_parentConstraint1.w0" "Head1_M_parentConstraint1.tg[0].tw";
connectAttr "Neck1_M.ro" "Neck1_M_parentConstraint1.cro";
connectAttr "Neck1_M.pim" "Neck1_M_parentConstraint1.cpim";
connectAttr "Neck1_M.rp" "Neck1_M_parentConstraint1.crp";
connectAttr "Neck1_M.rpt" "Neck1_M_parentConstraint1.crt";
connectAttr "Neck1_M.jo" "Neck1_M_parentConstraint1.cjo";
connectAttr "FKXNeck1_M.t" "Neck1_M_parentConstraint1.tg[0].tt";
connectAttr "FKXNeck1_M.rp" "Neck1_M_parentConstraint1.tg[0].trp";
connectAttr "FKXNeck1_M.rpt" "Neck1_M_parentConstraint1.tg[0].trt";
connectAttr "FKXNeck1_M.r" "Neck1_M_parentConstraint1.tg[0].tr";
connectAttr "FKXNeck1_M.ro" "Neck1_M_parentConstraint1.tg[0].tro";
connectAttr "FKXNeck1_M.s" "Neck1_M_parentConstraint1.tg[0].ts";
connectAttr "FKXNeck1_M.pm" "Neck1_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXNeck1_M.jo" "Neck1_M_parentConstraint1.tg[0].tjo";
connectAttr "FKXNeck1_M.ssc" "Neck1_M_parentConstraint1.tg[0].tsc";
connectAttr "FKXNeck1_M.is" "Neck1_M_parentConstraint1.tg[0].tis";
connectAttr "Neck1_M_parentConstraint1.w0" "Neck1_M_parentConstraint1.tg[0].tw";
connectAttr "Chest_M.ro" "Chest_M_parentConstraint1.cro";
connectAttr "Chest_M.pim" "Chest_M_parentConstraint1.cpim";
connectAttr "Chest_M.rp" "Chest_M_parentConstraint1.crp";
connectAttr "Chest_M.rpt" "Chest_M_parentConstraint1.crt";
connectAttr "Chest_M.jo" "Chest_M_parentConstraint1.cjo";
connectAttr "FKXChest_M.t" "Chest_M_parentConstraint1.tg[0].tt";
connectAttr "FKXChest_M.rp" "Chest_M_parentConstraint1.tg[0].trp";
connectAttr "FKXChest_M.rpt" "Chest_M_parentConstraint1.tg[0].trt";
connectAttr "FKXChest_M.r" "Chest_M_parentConstraint1.tg[0].tr";
connectAttr "FKXChest_M.ro" "Chest_M_parentConstraint1.tg[0].tro";
connectAttr "FKXChest_M.s" "Chest_M_parentConstraint1.tg[0].ts";
connectAttr "FKXChest_M.pm" "Chest_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXChest_M.jo" "Chest_M_parentConstraint1.tg[0].tjo";
connectAttr "FKXChest_M.ssc" "Chest_M_parentConstraint1.tg[0].tsc";
connectAttr "FKXChest_M.is" "Chest_M_parentConstraint1.tg[0].tis";
connectAttr "Chest_M_parentConstraint1.w0" "Chest_M_parentConstraint1.tg[0].tw";
connectAttr "IKXChest_M.t" "Chest_M_parentConstraint1.tg[1].tt";
connectAttr "IKXChest_M.rp" "Chest_M_parentConstraint1.tg[1].trp";
connectAttr "IKXChest_M.rpt" "Chest_M_parentConstraint1.tg[1].trt";
connectAttr "IKXChest_M.r" "Chest_M_parentConstraint1.tg[1].tr";
connectAttr "IKXChest_M.ro" "Chest_M_parentConstraint1.tg[1].tro";
connectAttr "IKXChest_M.s" "Chest_M_parentConstraint1.tg[1].ts";
connectAttr "IKXChest_M.pm" "Chest_M_parentConstraint1.tg[1].tpm";
connectAttr "IKXChest_M.jo" "Chest_M_parentConstraint1.tg[1].tjo";
connectAttr "IKXChest_M.ssc" "Chest_M_parentConstraint1.tg[1].tsc";
connectAttr "IKXChest_M.is" "Chest_M_parentConstraint1.tg[1].tis";
connectAttr "Chest_M_parentConstraint1.w1" "Chest_M_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendSpineReverse_M.ox" "Chest_M_parentConstraint1.w0";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "Chest_M_parentConstraint1.w1";
connectAttr "Spine1_M.ro" "Spine1_M_parentConstraint1.cro";
connectAttr "Spine1_M.pim" "Spine1_M_parentConstraint1.cpim";
connectAttr "Spine1_M.rp" "Spine1_M_parentConstraint1.crp";
connectAttr "Spine1_M.rpt" "Spine1_M_parentConstraint1.crt";
connectAttr "Spine1_M.jo" "Spine1_M_parentConstraint1.cjo";
connectAttr "FKXSpine1_M.t" "Spine1_M_parentConstraint1.tg[0].tt";
connectAttr "FKXSpine1_M.rp" "Spine1_M_parentConstraint1.tg[0].trp";
connectAttr "FKXSpine1_M.rpt" "Spine1_M_parentConstraint1.tg[0].trt";
connectAttr "FKXSpine1_M.r" "Spine1_M_parentConstraint1.tg[0].tr";
connectAttr "FKXSpine1_M.ro" "Spine1_M_parentConstraint1.tg[0].tro";
connectAttr "FKXSpine1_M.s" "Spine1_M_parentConstraint1.tg[0].ts";
connectAttr "FKXSpine1_M.pm" "Spine1_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXSpine1_M.jo" "Spine1_M_parentConstraint1.tg[0].tjo";
connectAttr "FKXSpine1_M.ssc" "Spine1_M_parentConstraint1.tg[0].tsc";
connectAttr "FKXSpine1_M.is" "Spine1_M_parentConstraint1.tg[0].tis";
connectAttr "Spine1_M_parentConstraint1.w0" "Spine1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKXSpine1_M.t" "Spine1_M_parentConstraint1.tg[1].tt";
connectAttr "IKXSpine1_M.rp" "Spine1_M_parentConstraint1.tg[1].trp";
connectAttr "IKXSpine1_M.rpt" "Spine1_M_parentConstraint1.tg[1].trt";
connectAttr "IKXSpine1_M.r" "Spine1_M_parentConstraint1.tg[1].tr";
connectAttr "IKXSpine1_M.ro" "Spine1_M_parentConstraint1.tg[1].tro";
connectAttr "IKXSpine1_M.s" "Spine1_M_parentConstraint1.tg[1].ts";
connectAttr "IKXSpine1_M.pm" "Spine1_M_parentConstraint1.tg[1].tpm";
connectAttr "IKXSpine1_M.jo" "Spine1_M_parentConstraint1.tg[1].tjo";
connectAttr "IKXSpine1_M.ssc" "Spine1_M_parentConstraint1.tg[1].tsc";
connectAttr "IKXSpine1_M.is" "Spine1_M_parentConstraint1.tg[1].tis";
connectAttr "Spine1_M_parentConstraint1.w1" "Spine1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSpineReverse_M.ox" "Spine1_M_parentConstraint1.w0";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "Spine1_M_parentConstraint1.w1";
connectAttr "Root_M.ro" "Root_M_parentConstraint1.cro";
connectAttr "Root_M.pim" "Root_M_parentConstraint1.cpim";
connectAttr "Root_M.rp" "Root_M_parentConstraint1.crp";
connectAttr "Root_M.rpt" "Root_M_parentConstraint1.crt";
connectAttr "Root_M.jo" "Root_M_parentConstraint1.cjo";
connectAttr "FKXRoot_M.t" "Root_M_parentConstraint1.tg[0].tt";
connectAttr "FKXRoot_M.rp" "Root_M_parentConstraint1.tg[0].trp";
connectAttr "FKXRoot_M.rpt" "Root_M_parentConstraint1.tg[0].trt";
connectAttr "FKXRoot_M.r" "Root_M_parentConstraint1.tg[0].tr";
connectAttr "FKXRoot_M.ro" "Root_M_parentConstraint1.tg[0].tro";
connectAttr "FKXRoot_M.s" "Root_M_parentConstraint1.tg[0].ts";
connectAttr "FKXRoot_M.pm" "Root_M_parentConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M.jo" "Root_M_parentConstraint1.tg[0].tjo";
connectAttr "FKXRoot_M.ssc" "Root_M_parentConstraint1.tg[0].tsc";
connectAttr "FKXRoot_M.is" "Root_M_parentConstraint1.tg[0].tis";
connectAttr "Root_M_parentConstraint1.w0" "Root_M_parentConstraint1.tg[0].tw";
connectAttr "IKXRoot_M.t" "Root_M_parentConstraint1.tg[1].tt";
connectAttr "IKXRoot_M.rp" "Root_M_parentConstraint1.tg[1].trp";
connectAttr "IKXRoot_M.rpt" "Root_M_parentConstraint1.tg[1].trt";
connectAttr "IKXRoot_M.r" "Root_M_parentConstraint1.tg[1].tr";
connectAttr "IKXRoot_M.ro" "Root_M_parentConstraint1.tg[1].tro";
connectAttr "IKXRoot_M.s" "Root_M_parentConstraint1.tg[1].ts";
connectAttr "IKXRoot_M.pm" "Root_M_parentConstraint1.tg[1].tpm";
connectAttr "IKXRoot_M.jo" "Root_M_parentConstraint1.tg[1].tjo";
connectAttr "IKXRoot_M.ssc" "Root_M_parentConstraint1.tg[1].tsc";
connectAttr "IKXRoot_M.is" "Root_M_parentConstraint1.tg[1].tis";
connectAttr "Root_M_parentConstraint1.w1" "Root_M_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendSpineReverse_M.ox" "Root_M_parentConstraint1.w0";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "Root_M_parentConstraint1.w1";
connectAttr "Toes_L.ro" "Toes_L_parentConstraint1.cro";
connectAttr "Toes_L.pim" "Toes_L_parentConstraint1.cpim";
connectAttr "Toes_L.rp" "Toes_L_parentConstraint1.crp";
connectAttr "Toes_L.rpt" "Toes_L_parentConstraint1.crt";
connectAttr "Toes_L.jo" "Toes_L_parentConstraint1.cjo";
connectAttr "FKXToes_L.t" "Toes_L_parentConstraint1.tg[0].tt";
connectAttr "FKXToes_L.rp" "Toes_L_parentConstraint1.tg[0].trp";
connectAttr "FKXToes_L.rpt" "Toes_L_parentConstraint1.tg[0].trt";
connectAttr "FKXToes_L.r" "Toes_L_parentConstraint1.tg[0].tr";
connectAttr "FKXToes_L.ro" "Toes_L_parentConstraint1.tg[0].tro";
connectAttr "FKXToes_L.s" "Toes_L_parentConstraint1.tg[0].ts";
connectAttr "FKXToes_L.pm" "Toes_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXToes_L.jo" "Toes_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXToes_L.ssc" "Toes_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXToes_L.is" "Toes_L_parentConstraint1.tg[0].tis";
connectAttr "Toes_L_parentConstraint1.w0" "Toes_L_parentConstraint1.tg[0].tw";
connectAttr "IKXToes_L.t" "Toes_L_parentConstraint1.tg[1].tt";
connectAttr "IKXToes_L.rp" "Toes_L_parentConstraint1.tg[1].trp";
connectAttr "IKXToes_L.rpt" "Toes_L_parentConstraint1.tg[1].trt";
connectAttr "IKXToes_L.r" "Toes_L_parentConstraint1.tg[1].tr";
connectAttr "IKXToes_L.ro" "Toes_L_parentConstraint1.tg[1].tro";
connectAttr "IKXToes_L.s" "Toes_L_parentConstraint1.tg[1].ts";
connectAttr "IKXToes_L.pm" "Toes_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXToes_L.jo" "Toes_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXToes_L.ssc" "Toes_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXToes_L.is" "Toes_L_parentConstraint1.tg[1].tis";
connectAttr "Toes_L_parentConstraint1.w1" "Toes_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_L.ox" "Toes_L_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_L.o" "Toes_L_parentConstraint1.w1";
connectAttr "Ankle_L.ro" "Ankle_L_parentConstraint1.cro";
connectAttr "Ankle_L.pim" "Ankle_L_parentConstraint1.cpim";
connectAttr "Ankle_L.rp" "Ankle_L_parentConstraint1.crp";
connectAttr "Ankle_L.rpt" "Ankle_L_parentConstraint1.crt";
connectAttr "Ankle_L.jo" "Ankle_L_parentConstraint1.cjo";
connectAttr "FKXAnkle_L.t" "Ankle_L_parentConstraint1.tg[0].tt";
connectAttr "FKXAnkle_L.rp" "Ankle_L_parentConstraint1.tg[0].trp";
connectAttr "FKXAnkle_L.rpt" "Ankle_L_parentConstraint1.tg[0].trt";
connectAttr "FKXAnkle_L.r" "Ankle_L_parentConstraint1.tg[0].tr";
connectAttr "FKXAnkle_L.ro" "Ankle_L_parentConstraint1.tg[0].tro";
connectAttr "FKXAnkle_L.s" "Ankle_L_parentConstraint1.tg[0].ts";
connectAttr "FKXAnkle_L.pm" "Ankle_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXAnkle_L.jo" "Ankle_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXAnkle_L.ssc" "Ankle_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXAnkle_L.is" "Ankle_L_parentConstraint1.tg[0].tis";
connectAttr "Ankle_L_parentConstraint1.w0" "Ankle_L_parentConstraint1.tg[0].tw";
connectAttr "IKXAnkle_L.t" "Ankle_L_parentConstraint1.tg[1].tt";
connectAttr "IKXAnkle_L.rp" "Ankle_L_parentConstraint1.tg[1].trp";
connectAttr "IKXAnkle_L.rpt" "Ankle_L_parentConstraint1.tg[1].trt";
connectAttr "IKXAnkle_L.r" "Ankle_L_parentConstraint1.tg[1].tr";
connectAttr "IKXAnkle_L.ro" "Ankle_L_parentConstraint1.tg[1].tro";
connectAttr "IKXAnkle_L.s" "Ankle_L_parentConstraint1.tg[1].ts";
connectAttr "IKXAnkle_L.pm" "Ankle_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXAnkle_L.jo" "Ankle_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXAnkle_L.ssc" "Ankle_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXAnkle_L.is" "Ankle_L_parentConstraint1.tg[1].tis";
connectAttr "Ankle_L_parentConstraint1.w1" "Ankle_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_L.ox" "Ankle_L_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_L.o" "Ankle_L_parentConstraint1.w1";
connectAttr "Knee_L.ro" "Knee_L_parentConstraint1.cro";
connectAttr "Knee_L.pim" "Knee_L_parentConstraint1.cpim";
connectAttr "Knee_L.rp" "Knee_L_parentConstraint1.crp";
connectAttr "Knee_L.rpt" "Knee_L_parentConstraint1.crt";
connectAttr "Knee_L.jo" "Knee_L_parentConstraint1.cjo";
connectAttr "FKXKnee_L.t" "Knee_L_parentConstraint1.tg[0].tt";
connectAttr "FKXKnee_L.rp" "Knee_L_parentConstraint1.tg[0].trp";
connectAttr "FKXKnee_L.rpt" "Knee_L_parentConstraint1.tg[0].trt";
connectAttr "FKXKnee_L.r" "Knee_L_parentConstraint1.tg[0].tr";
connectAttr "FKXKnee_L.ro" "Knee_L_parentConstraint1.tg[0].tro";
connectAttr "FKXKnee_L.s" "Knee_L_parentConstraint1.tg[0].ts";
connectAttr "FKXKnee_L.pm" "Knee_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXKnee_L.jo" "Knee_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXKnee_L.ssc" "Knee_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXKnee_L.is" "Knee_L_parentConstraint1.tg[0].tis";
connectAttr "Knee_L_parentConstraint1.w0" "Knee_L_parentConstraint1.tg[0].tw";
connectAttr "IKXKnee_L.t" "Knee_L_parentConstraint1.tg[1].tt";
connectAttr "IKXKnee_L.rp" "Knee_L_parentConstraint1.tg[1].trp";
connectAttr "IKXKnee_L.rpt" "Knee_L_parentConstraint1.tg[1].trt";
connectAttr "IKXKnee_L.r" "Knee_L_parentConstraint1.tg[1].tr";
connectAttr "IKXKnee_L.ro" "Knee_L_parentConstraint1.tg[1].tro";
connectAttr "IKXKnee_L.s" "Knee_L_parentConstraint1.tg[1].ts";
connectAttr "IKXKnee_L.pm" "Knee_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXKnee_L.jo" "Knee_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXKnee_L.ssc" "Knee_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXKnee_L.is" "Knee_L_parentConstraint1.tg[1].tis";
connectAttr "Knee_L_parentConstraint1.w1" "Knee_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_L.ox" "Knee_L_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_L.o" "Knee_L_parentConstraint1.w1";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.ro" "Hip_L_parentConstraint1.cro"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.pim" "Hip_L_parentConstraint1.cpim"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.rp" "Hip_L_parentConstraint1.crp"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.rpt" "Hip_L_parentConstraint1.crt"
		;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.jo" "Hip_L_parentConstraint1.cjo"
		;
connectAttr "FKXHip_L.t" "Hip_L_parentConstraint1.tg[0].tt";
connectAttr "FKXHip_L.rp" "Hip_L_parentConstraint1.tg[0].trp";
connectAttr "FKXHip_L.rpt" "Hip_L_parentConstraint1.tg[0].trt";
connectAttr "FKXHip_L.r" "Hip_L_parentConstraint1.tg[0].tr";
connectAttr "FKXHip_L.ro" "Hip_L_parentConstraint1.tg[0].tro";
connectAttr "FKXHip_L.s" "Hip_L_parentConstraint1.tg[0].ts";
connectAttr "FKXHip_L.pm" "Hip_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXHip_L.jo" "Hip_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXHip_L.ssc" "Hip_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXHip_L.is" "Hip_L_parentConstraint1.tg[0].tis";
connectAttr "Hip_L_parentConstraint1.w0" "Hip_L_parentConstraint1.tg[0].tw";
connectAttr "IKXHip_L.t" "Hip_L_parentConstraint1.tg[1].tt";
connectAttr "IKXHip_L.rp" "Hip_L_parentConstraint1.tg[1].trp";
connectAttr "IKXHip_L.rpt" "Hip_L_parentConstraint1.tg[1].trt";
connectAttr "IKXHip_L.r" "Hip_L_parentConstraint1.tg[1].tr";
connectAttr "IKXHip_L.ro" "Hip_L_parentConstraint1.tg[1].tro";
connectAttr "IKXHip_L.s" "Hip_L_parentConstraint1.tg[1].ts";
connectAttr "IKXHip_L.pm" "Hip_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXHip_L.jo" "Hip_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXHip_L.ssc" "Hip_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXHip_L.is" "Hip_L_parentConstraint1.tg[1].tis";
connectAttr "Hip_L_parentConstraint1.w1" "Hip_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendLegReverse_L.ox" "Hip_L_parentConstraint1.w0";
connectAttr "FKIKBlendLegUnitConversion_L.o" "Hip_L_parentConstraint1.w1";
connectAttr "MiddleFinger2_L.ro" "MiddleFinger2_L_parentConstraint1.cro";
connectAttr "MiddleFinger2_L.pim" "MiddleFinger2_L_parentConstraint1.cpim";
connectAttr "MiddleFinger2_L.rp" "MiddleFinger2_L_parentConstraint1.crp";
connectAttr "MiddleFinger2_L.rpt" "MiddleFinger2_L_parentConstraint1.crt";
connectAttr "MiddleFinger2_L.jo" "MiddleFinger2_L_parentConstraint1.cjo";
connectAttr "FKXMiddleFinger2_L.t" "MiddleFinger2_L_parentConstraint1.tg[0].tt";
connectAttr "FKXMiddleFinger2_L.rp" "MiddleFinger2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "FKXMiddleFinger2_L.rpt" "MiddleFinger2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXMiddleFinger2_L.r" "MiddleFinger2_L_parentConstraint1.tg[0].tr";
connectAttr "FKXMiddleFinger2_L.ro" "MiddleFinger2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "FKXMiddleFinger2_L.s" "MiddleFinger2_L_parentConstraint1.tg[0].ts";
connectAttr "FKXMiddleFinger2_L.pm" "MiddleFinger2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKXMiddleFinger2_L.jo" "MiddleFinger2_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "FKXMiddleFinger2_L.ssc" "MiddleFinger2_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXMiddleFinger2_L.is" "MiddleFinger2_L_parentConstraint1.tg[0].tis"
		;
connectAttr "MiddleFinger2_L_parentConstraint1.w0" "MiddleFinger2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "MiddleFinger1_L.ro" "MiddleFinger1_L_parentConstraint1.cro";
connectAttr "MiddleFinger1_L.pim" "MiddleFinger1_L_parentConstraint1.cpim";
connectAttr "MiddleFinger1_L.rp" "MiddleFinger1_L_parentConstraint1.crp";
connectAttr "MiddleFinger1_L.rpt" "MiddleFinger1_L_parentConstraint1.crt";
connectAttr "MiddleFinger1_L.jo" "MiddleFinger1_L_parentConstraint1.cjo";
connectAttr "FKXMiddleFinger1_L.t" "MiddleFinger1_L_parentConstraint1.tg[0].tt";
connectAttr "FKXMiddleFinger1_L.rp" "MiddleFinger1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "FKXMiddleFinger1_L.rpt" "MiddleFinger1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXMiddleFinger1_L.r" "MiddleFinger1_L_parentConstraint1.tg[0].tr";
connectAttr "FKXMiddleFinger1_L.ro" "MiddleFinger1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "FKXMiddleFinger1_L.s" "MiddleFinger1_L_parentConstraint1.tg[0].ts";
connectAttr "FKXMiddleFinger1_L.pm" "MiddleFinger1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKXMiddleFinger1_L.jo" "MiddleFinger1_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "FKXMiddleFinger1_L.ssc" "MiddleFinger1_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXMiddleFinger1_L.is" "MiddleFinger1_L_parentConstraint1.tg[0].tis"
		;
connectAttr "MiddleFinger1_L_parentConstraint1.w0" "MiddleFinger1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "ThumbFinger2_L.ro" "ThumbFinger2_L_parentConstraint1.cro";
connectAttr "ThumbFinger2_L.pim" "ThumbFinger2_L_parentConstraint1.cpim";
connectAttr "ThumbFinger2_L.rp" "ThumbFinger2_L_parentConstraint1.crp";
connectAttr "ThumbFinger2_L.rpt" "ThumbFinger2_L_parentConstraint1.crt";
connectAttr "ThumbFinger2_L.jo" "ThumbFinger2_L_parentConstraint1.cjo";
connectAttr "FKXThumbFinger2_L.t" "ThumbFinger2_L_parentConstraint1.tg[0].tt";
connectAttr "FKXThumbFinger2_L.rp" "ThumbFinger2_L_parentConstraint1.tg[0].trp";
connectAttr "FKXThumbFinger2_L.rpt" "ThumbFinger2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXThumbFinger2_L.r" "ThumbFinger2_L_parentConstraint1.tg[0].tr";
connectAttr "FKXThumbFinger2_L.ro" "ThumbFinger2_L_parentConstraint1.tg[0].tro";
connectAttr "FKXThumbFinger2_L.s" "ThumbFinger2_L_parentConstraint1.tg[0].ts";
connectAttr "FKXThumbFinger2_L.pm" "ThumbFinger2_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXThumbFinger2_L.jo" "ThumbFinger2_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXThumbFinger2_L.ssc" "ThumbFinger2_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXThumbFinger2_L.is" "ThumbFinger2_L_parentConstraint1.tg[0].tis";
connectAttr "ThumbFinger2_L_parentConstraint1.w0" "ThumbFinger2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "ThumbFinger1_L.ro" "ThumbFinger1_L_parentConstraint1.cro";
connectAttr "ThumbFinger1_L.pim" "ThumbFinger1_L_parentConstraint1.cpim";
connectAttr "ThumbFinger1_L.rp" "ThumbFinger1_L_parentConstraint1.crp";
connectAttr "ThumbFinger1_L.rpt" "ThumbFinger1_L_parentConstraint1.crt";
connectAttr "ThumbFinger1_L.jo" "ThumbFinger1_L_parentConstraint1.cjo";
connectAttr "FKXThumbFinger1_L.t" "ThumbFinger1_L_parentConstraint1.tg[0].tt";
connectAttr "FKXThumbFinger1_L.rp" "ThumbFinger1_L_parentConstraint1.tg[0].trp";
connectAttr "FKXThumbFinger1_L.rpt" "ThumbFinger1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXThumbFinger1_L.r" "ThumbFinger1_L_parentConstraint1.tg[0].tr";
connectAttr "FKXThumbFinger1_L.ro" "ThumbFinger1_L_parentConstraint1.tg[0].tro";
connectAttr "FKXThumbFinger1_L.s" "ThumbFinger1_L_parentConstraint1.tg[0].ts";
connectAttr "FKXThumbFinger1_L.pm" "ThumbFinger1_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXThumbFinger1_L.jo" "ThumbFinger1_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXThumbFinger1_L.ssc" "ThumbFinger1_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXThumbFinger1_L.is" "ThumbFinger1_L_parentConstraint1.tg[0].tis";
connectAttr "ThumbFinger1_L_parentConstraint1.w0" "ThumbFinger1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "IndexFinger2_L.ro" "IndexFinger2_L_parentConstraint1.cro";
connectAttr "IndexFinger2_L.pim" "IndexFinger2_L_parentConstraint1.cpim";
connectAttr "IndexFinger2_L.rp" "IndexFinger2_L_parentConstraint1.crp";
connectAttr "IndexFinger2_L.rpt" "IndexFinger2_L_parentConstraint1.crt";
connectAttr "IndexFinger2_L.jo" "IndexFinger2_L_parentConstraint1.cjo";
connectAttr "FKXIndexFinger2_L.t" "IndexFinger2_L_parentConstraint1.tg[0].tt";
connectAttr "FKXIndexFinger2_L.rp" "IndexFinger2_L_parentConstraint1.tg[0].trp";
connectAttr "FKXIndexFinger2_L.rpt" "IndexFinger2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXIndexFinger2_L.r" "IndexFinger2_L_parentConstraint1.tg[0].tr";
connectAttr "FKXIndexFinger2_L.ro" "IndexFinger2_L_parentConstraint1.tg[0].tro";
connectAttr "FKXIndexFinger2_L.s" "IndexFinger2_L_parentConstraint1.tg[0].ts";
connectAttr "FKXIndexFinger2_L.pm" "IndexFinger2_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXIndexFinger2_L.jo" "IndexFinger2_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXIndexFinger2_L.ssc" "IndexFinger2_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXIndexFinger2_L.is" "IndexFinger2_L_parentConstraint1.tg[0].tis";
connectAttr "IndexFinger2_L_parentConstraint1.w0" "IndexFinger2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "IndexFinger1_L.ro" "IndexFinger1_L_parentConstraint1.cro";
connectAttr "IndexFinger1_L.pim" "IndexFinger1_L_parentConstraint1.cpim";
connectAttr "IndexFinger1_L.rp" "IndexFinger1_L_parentConstraint1.crp";
connectAttr "IndexFinger1_L.rpt" "IndexFinger1_L_parentConstraint1.crt";
connectAttr "IndexFinger1_L.jo" "IndexFinger1_L_parentConstraint1.cjo";
connectAttr "FKXIndexFinger1_L.t" "IndexFinger1_L_parentConstraint1.tg[0].tt";
connectAttr "FKXIndexFinger1_L.rp" "IndexFinger1_L_parentConstraint1.tg[0].trp";
connectAttr "FKXIndexFinger1_L.rpt" "IndexFinger1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "FKXIndexFinger1_L.r" "IndexFinger1_L_parentConstraint1.tg[0].tr";
connectAttr "FKXIndexFinger1_L.ro" "IndexFinger1_L_parentConstraint1.tg[0].tro";
connectAttr "FKXIndexFinger1_L.s" "IndexFinger1_L_parentConstraint1.tg[0].ts";
connectAttr "FKXIndexFinger1_L.pm" "IndexFinger1_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXIndexFinger1_L.jo" "IndexFinger1_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXIndexFinger1_L.ssc" "IndexFinger1_L_parentConstraint1.tg[0].tsc"
		;
connectAttr "FKXIndexFinger1_L.is" "IndexFinger1_L_parentConstraint1.tg[0].tis";
connectAttr "IndexFinger1_L_parentConstraint1.w0" "IndexFinger1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Wrist_L.ro" "Wrist_L_parentConstraint1.cro";
connectAttr "Wrist_L.pim" "Wrist_L_parentConstraint1.cpim";
connectAttr "Wrist_L.rp" "Wrist_L_parentConstraint1.crp";
connectAttr "Wrist_L.rpt" "Wrist_L_parentConstraint1.crt";
connectAttr "Wrist_L.jo" "Wrist_L_parentConstraint1.cjo";
connectAttr "FKXWrist_L.t" "Wrist_L_parentConstraint1.tg[0].tt";
connectAttr "FKXWrist_L.rp" "Wrist_L_parentConstraint1.tg[0].trp";
connectAttr "FKXWrist_L.rpt" "Wrist_L_parentConstraint1.tg[0].trt";
connectAttr "FKXWrist_L.r" "Wrist_L_parentConstraint1.tg[0].tr";
connectAttr "FKXWrist_L.ro" "Wrist_L_parentConstraint1.tg[0].tro";
connectAttr "FKXWrist_L.s" "Wrist_L_parentConstraint1.tg[0].ts";
connectAttr "FKXWrist_L.pm" "Wrist_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXWrist_L.jo" "Wrist_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXWrist_L.ssc" "Wrist_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXWrist_L.is" "Wrist_L_parentConstraint1.tg[0].tis";
connectAttr "Wrist_L_parentConstraint1.w0" "Wrist_L_parentConstraint1.tg[0].tw";
connectAttr "IKXWrist_L.t" "Wrist_L_parentConstraint1.tg[1].tt";
connectAttr "IKXWrist_L.rp" "Wrist_L_parentConstraint1.tg[1].trp";
connectAttr "IKXWrist_L.rpt" "Wrist_L_parentConstraint1.tg[1].trt";
connectAttr "IKXWrist_L.r" "Wrist_L_parentConstraint1.tg[1].tr";
connectAttr "IKXWrist_L.ro" "Wrist_L_parentConstraint1.tg[1].tro";
connectAttr "IKXWrist_L.s" "Wrist_L_parentConstraint1.tg[1].ts";
connectAttr "IKXWrist_L.pm" "Wrist_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXWrist_L.jo" "Wrist_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXWrist_L.ssc" "Wrist_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXWrist_L.is" "Wrist_L_parentConstraint1.tg[1].tis";
connectAttr "Wrist_L_parentConstraint1.w1" "Wrist_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendArmReverse_L.ox" "Wrist_L_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_L.o" "Wrist_L_parentConstraint1.w1";
connectAttr "Elbow_L.ro" "Elbow_L_parentConstraint1.cro";
connectAttr "Elbow_L.pim" "Elbow_L_parentConstraint1.cpim";
connectAttr "Elbow_L.rp" "Elbow_L_parentConstraint1.crp";
connectAttr "Elbow_L.rpt" "Elbow_L_parentConstraint1.crt";
connectAttr "Elbow_L.jo" "Elbow_L_parentConstraint1.cjo";
connectAttr "FKXElbow_L.t" "Elbow_L_parentConstraint1.tg[0].tt";
connectAttr "FKXElbow_L.rp" "Elbow_L_parentConstraint1.tg[0].trp";
connectAttr "FKXElbow_L.rpt" "Elbow_L_parentConstraint1.tg[0].trt";
connectAttr "FKXElbow_L.r" "Elbow_L_parentConstraint1.tg[0].tr";
connectAttr "FKXElbow_L.ro" "Elbow_L_parentConstraint1.tg[0].tro";
connectAttr "FKXElbow_L.s" "Elbow_L_parentConstraint1.tg[0].ts";
connectAttr "FKXElbow_L.pm" "Elbow_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXElbow_L.jo" "Elbow_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXElbow_L.ssc" "Elbow_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXElbow_L.is" "Elbow_L_parentConstraint1.tg[0].tis";
connectAttr "Elbow_L_parentConstraint1.w0" "Elbow_L_parentConstraint1.tg[0].tw";
connectAttr "IKXElbow_L.t" "Elbow_L_parentConstraint1.tg[1].tt";
connectAttr "IKXElbow_L.rp" "Elbow_L_parentConstraint1.tg[1].trp";
connectAttr "IKXElbow_L.rpt" "Elbow_L_parentConstraint1.tg[1].trt";
connectAttr "IKXElbow_L.r" "Elbow_L_parentConstraint1.tg[1].tr";
connectAttr "IKXElbow_L.ro" "Elbow_L_parentConstraint1.tg[1].tro";
connectAttr "IKXElbow_L.s" "Elbow_L_parentConstraint1.tg[1].ts";
connectAttr "IKXElbow_L.pm" "Elbow_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXElbow_L.jo" "Elbow_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXElbow_L.ssc" "Elbow_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXElbow_L.is" "Elbow_L_parentConstraint1.tg[1].tis";
connectAttr "Elbow_L_parentConstraint1.w1" "Elbow_L_parentConstraint1.tg[1].tw";
connectAttr "FKIKBlendArmReverse_L.ox" "Elbow_L_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_L.o" "Elbow_L_parentConstraint1.w1";
connectAttr "Shoulder_L.ro" "Shoulder_L_parentConstraint1.cro";
connectAttr "Shoulder_L.pim" "Shoulder_L_parentConstraint1.cpim";
connectAttr "Shoulder_L.rp" "Shoulder_L_parentConstraint1.crp";
connectAttr "Shoulder_L.rpt" "Shoulder_L_parentConstraint1.crt";
connectAttr "Shoulder_L.jo" "Shoulder_L_parentConstraint1.cjo";
connectAttr "FKXShoulder_L.t" "Shoulder_L_parentConstraint1.tg[0].tt";
connectAttr "FKXShoulder_L.rp" "Shoulder_L_parentConstraint1.tg[0].trp";
connectAttr "FKXShoulder_L.rpt" "Shoulder_L_parentConstraint1.tg[0].trt";
connectAttr "FKXShoulder_L.r" "Shoulder_L_parentConstraint1.tg[0].tr";
connectAttr "FKXShoulder_L.ro" "Shoulder_L_parentConstraint1.tg[0].tro";
connectAttr "FKXShoulder_L.s" "Shoulder_L_parentConstraint1.tg[0].ts";
connectAttr "FKXShoulder_L.pm" "Shoulder_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXShoulder_L.jo" "Shoulder_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXShoulder_L.ssc" "Shoulder_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXShoulder_L.is" "Shoulder_L_parentConstraint1.tg[0].tis";
connectAttr "Shoulder_L_parentConstraint1.w0" "Shoulder_L_parentConstraint1.tg[0].tw"
		;
connectAttr "IKXShoulder_L.t" "Shoulder_L_parentConstraint1.tg[1].tt";
connectAttr "IKXShoulder_L.rp" "Shoulder_L_parentConstraint1.tg[1].trp";
connectAttr "IKXShoulder_L.rpt" "Shoulder_L_parentConstraint1.tg[1].trt";
connectAttr "IKXShoulder_L.r" "Shoulder_L_parentConstraint1.tg[1].tr";
connectAttr "IKXShoulder_L.ro" "Shoulder_L_parentConstraint1.tg[1].tro";
connectAttr "IKXShoulder_L.s" "Shoulder_L_parentConstraint1.tg[1].ts";
connectAttr "IKXShoulder_L.pm" "Shoulder_L_parentConstraint1.tg[1].tpm";
connectAttr "IKXShoulder_L.jo" "Shoulder_L_parentConstraint1.tg[1].tjo";
connectAttr "IKXShoulder_L.ssc" "Shoulder_L_parentConstraint1.tg[1].tsc";
connectAttr "IKXShoulder_L.is" "Shoulder_L_parentConstraint1.tg[1].tis";
connectAttr "Shoulder_L_parentConstraint1.w1" "Shoulder_L_parentConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendArmReverse_L.ox" "Shoulder_L_parentConstraint1.w0";
connectAttr "FKIKBlendArmUnitConversion_L.o" "Shoulder_L_parentConstraint1.w1";
connectAttr "Scapula_L.ro" "Scapula_L_parentConstraint1.cro";
connectAttr "Scapula_L.pim" "Scapula_L_parentConstraint1.cpim";
connectAttr "Scapula_L.rp" "Scapula_L_parentConstraint1.crp";
connectAttr "Scapula_L.rpt" "Scapula_L_parentConstraint1.crt";
connectAttr "Scapula_L.jo" "Scapula_L_parentConstraint1.cjo";
connectAttr "FKXScapula_L.t" "Scapula_L_parentConstraint1.tg[0].tt";
connectAttr "FKXScapula_L.rp" "Scapula_L_parentConstraint1.tg[0].trp";
connectAttr "FKXScapula_L.rpt" "Scapula_L_parentConstraint1.tg[0].trt";
connectAttr "FKXScapula_L.r" "Scapula_L_parentConstraint1.tg[0].tr";
connectAttr "FKXScapula_L.ro" "Scapula_L_parentConstraint1.tg[0].tro";
connectAttr "FKXScapula_L.s" "Scapula_L_parentConstraint1.tg[0].ts";
connectAttr "FKXScapula_L.pm" "Scapula_L_parentConstraint1.tg[0].tpm";
connectAttr "FKXScapula_L.jo" "Scapula_L_parentConstraint1.tg[0].tjo";
connectAttr "FKXScapula_L.ssc" "Scapula_L_parentConstraint1.tg[0].tsc";
connectAttr "FKXScapula_L.is" "Scapula_L_parentConstraint1.tg[0].tis";
connectAttr "Scapula_L_parentConstraint1.w0" "Scapula_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Root_M_parentConstraint1.ctx" "Root_M.tx";
connectAttr "Root_M_parentConstraint1.cty" "Root_M.ty";
connectAttr "Root_M_parentConstraint1.ctz" "Root_M.tz";
connectAttr "Root_M_parentConstraint1.crx" "Root_M.rx";
connectAttr "Root_M_parentConstraint1.cry" "Root_M.ry";
connectAttr "Root_M_parentConstraint1.crz" "Root_M.rz";
connectAttr "ScaleBlendRoot_M.opr" "Root_M.sx";
connectAttr "ScaleBlendRoot_M.opg" "Root_M.sy";
connectAttr "ScaleBlendRoot_M.opb" "Root_M.sz";
connectAttr "Hip_R_parentConstraint1.ctx" "|Group|Main|DeformationSystem|Root_M|Hip_R.tx"
		;
connectAttr "Hip_R_parentConstraint1.cty" "|Group|Main|DeformationSystem|Root_M|Hip_R.ty"
		;
connectAttr "Hip_R_parentConstraint1.ctz" "|Group|Main|DeformationSystem|Root_M|Hip_R.tz"
		;
connectAttr "Hip_R_parentConstraint1.crx" "|Group|Main|DeformationSystem|Root_M|Hip_R.rx"
		;
connectAttr "Hip_R_parentConstraint1.cry" "|Group|Main|DeformationSystem|Root_M|Hip_R.ry"
		;
connectAttr "Hip_R_parentConstraint1.crz" "|Group|Main|DeformationSystem|Root_M|Hip_R.rz"
		;
connectAttr "ScaleBlendHip_R.opr" "|Group|Main|DeformationSystem|Root_M|Hip_R.sx"
		;
connectAttr "ScaleBlendHip_R.opg" "|Group|Main|DeformationSystem|Root_M|Hip_R.sy"
		;
connectAttr "ScaleBlendHip_R.opb" "|Group|Main|DeformationSystem|Root_M|Hip_R.sz"
		;
connectAttr "Root_M.s" "|Group|Main|DeformationSystem|Root_M|Hip_R.is";
connectAttr "ScaleBlendKnee_R.opr" "Knee_R.sx";
connectAttr "ScaleBlendKnee_R.opg" "Knee_R.sy";
connectAttr "ScaleBlendKnee_R.opb" "Knee_R.sz";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.s" "Knee_R.is";
connectAttr "Knee_R_parentConstraint1.ctx" "Knee_R.tx";
connectAttr "Knee_R_parentConstraint1.cty" "Knee_R.ty";
connectAttr "Knee_R_parentConstraint1.ctz" "Knee_R.tz";
connectAttr "Knee_R_parentConstraint1.crx" "Knee_R.rx";
connectAttr "Knee_R_parentConstraint1.cry" "Knee_R.ry";
connectAttr "Knee_R_parentConstraint1.crz" "Knee_R.rz";
connectAttr "ScaleBlendAnkle_R.opr" "Ankle_R.sx";
connectAttr "ScaleBlendAnkle_R.opg" "Ankle_R.sy";
connectAttr "ScaleBlendAnkle_R.opb" "Ankle_R.sz";
connectAttr "Knee_R.s" "Ankle_R.is";
connectAttr "Ankle_R_parentConstraint1.ctx" "Ankle_R.tx";
connectAttr "Ankle_R_parentConstraint1.cty" "Ankle_R.ty";
connectAttr "Ankle_R_parentConstraint1.ctz" "Ankle_R.tz";
connectAttr "Ankle_R_parentConstraint1.crx" "Ankle_R.rx";
connectAttr "Ankle_R_parentConstraint1.cry" "Ankle_R.ry";
connectAttr "Ankle_R_parentConstraint1.crz" "Ankle_R.rz";
connectAttr "ScaleBlendToes_R.opr" "Toes_R.sx";
connectAttr "ScaleBlendToes_R.opg" "Toes_R.sy";
connectAttr "ScaleBlendToes_R.opb" "Toes_R.sz";
connectAttr "Ankle_R.s" "Toes_R.is";
connectAttr "Toes_R_parentConstraint1.ctx" "Toes_R.tx";
connectAttr "Toes_R_parentConstraint1.cty" "Toes_R.ty";
connectAttr "Toes_R_parentConstraint1.ctz" "Toes_R.tz";
connectAttr "Toes_R_parentConstraint1.crx" "Toes_R.rx";
connectAttr "Toes_R_parentConstraint1.cry" "Toes_R.ry";
connectAttr "Toes_R_parentConstraint1.crz" "Toes_R.rz";
connectAttr "Toes_R.s" "ToesEnd_R.is";
connectAttr "ScaleBlendToesEnd_R.opr" "ToesEnd_R.sx";
connectAttr "ScaleBlendToesEnd_R.opg" "ToesEnd_R.sy";
connectAttr "ScaleBlendToesEnd_R.opb" "ToesEnd_R.sz";
connectAttr "ScaleBlendSpine1_M.opr" "Spine1_M.sx";
connectAttr "ScaleBlendSpine1_M.opg" "Spine1_M.sy";
connectAttr "ScaleBlendSpine1_M.opb" "Spine1_M.sz";
connectAttr "Root_M.s" "Spine1_M.is";
connectAttr "Spine1_M_parentConstraint1.ctx" "Spine1_M.tx";
connectAttr "Spine1_M_parentConstraint1.cty" "Spine1_M.ty";
connectAttr "Spine1_M_parentConstraint1.ctz" "Spine1_M.tz";
connectAttr "Spine1_M_parentConstraint1.crx" "Spine1_M.rx";
connectAttr "Spine1_M_parentConstraint1.cry" "Spine1_M.ry";
connectAttr "Spine1_M_parentConstraint1.crz" "Spine1_M.rz";
connectAttr "Chest_M_parentConstraint1.ctx" "Chest_M.tx";
connectAttr "Chest_M_parentConstraint1.cty" "Chest_M.ty";
connectAttr "Chest_M_parentConstraint1.ctz" "Chest_M.tz";
connectAttr "Chest_M_parentConstraint1.crx" "Chest_M.rx";
connectAttr "Chest_M_parentConstraint1.cry" "Chest_M.ry";
connectAttr "Chest_M_parentConstraint1.crz" "Chest_M.rz";
connectAttr "ScaleBlendChest_M.opr" "Chest_M.sx";
connectAttr "ScaleBlendChest_M.opg" "Chest_M.sy";
connectAttr "ScaleBlendChest_M.opb" "Chest_M.sz";
connectAttr "Spine1_M.s" "Chest_M.is";
connectAttr "Scapula_R_parentConstraint1.ctx" "Scapula_R.tx";
connectAttr "Scapula_R_parentConstraint1.cty" "Scapula_R.ty";
connectAttr "Scapula_R_parentConstraint1.ctz" "Scapula_R.tz";
connectAttr "Scapula_R_parentConstraint1.crx" "Scapula_R.rx";
connectAttr "Scapula_R_parentConstraint1.cry" "Scapula_R.ry";
connectAttr "Scapula_R_parentConstraint1.crz" "Scapula_R.rz";
connectAttr "FKScapula_R.s" "Scapula_R.s";
connectAttr "Chest_M.s" "Scapula_R.is";
connectAttr "ScaleBlendShoulder_R.opr" "Shoulder_R.sx";
connectAttr "ScaleBlendShoulder_R.opg" "Shoulder_R.sy";
connectAttr "ScaleBlendShoulder_R.opb" "Shoulder_R.sz";
connectAttr "Scapula_R.s" "Shoulder_R.is";
connectAttr "Shoulder_R_parentConstraint1.ctx" "Shoulder_R.tx";
connectAttr "Shoulder_R_parentConstraint1.cty" "Shoulder_R.ty";
connectAttr "Shoulder_R_parentConstraint1.ctz" "Shoulder_R.tz";
connectAttr "Shoulder_R_parentConstraint1.crx" "Shoulder_R.rx";
connectAttr "Shoulder_R_parentConstraint1.cry" "Shoulder_R.ry";
connectAttr "Shoulder_R_parentConstraint1.crz" "Shoulder_R.rz";
connectAttr "ScaleBlendElbow_R.opr" "Elbow_R.sx";
connectAttr "ScaleBlendElbow_R.opg" "Elbow_R.sy";
connectAttr "ScaleBlendElbow_R.opb" "Elbow_R.sz";
connectAttr "Shoulder_R.s" "Elbow_R.is";
connectAttr "Elbow_R_parentConstraint1.ctx" "Elbow_R.tx";
connectAttr "Elbow_R_parentConstraint1.cty" "Elbow_R.ty";
connectAttr "Elbow_R_parentConstraint1.ctz" "Elbow_R.tz";
connectAttr "Elbow_R_parentConstraint1.crx" "Elbow_R.rx";
connectAttr "Elbow_R_parentConstraint1.cry" "Elbow_R.ry";
connectAttr "Elbow_R_parentConstraint1.crz" "Elbow_R.rz";
connectAttr "ScaleBlendWrist_R.opr" "Wrist_R.sx";
connectAttr "ScaleBlendWrist_R.opg" "Wrist_R.sy";
connectAttr "ScaleBlendWrist_R.opb" "Wrist_R.sz";
connectAttr "Wrist_R_parentConstraint1.ctx" "Wrist_R.tx";
connectAttr "Wrist_R_parentConstraint1.cty" "Wrist_R.ty";
connectAttr "Wrist_R_parentConstraint1.ctz" "Wrist_R.tz";
connectAttr "Wrist_R_parentConstraint1.crx" "Wrist_R.rx";
connectAttr "Wrist_R_parentConstraint1.cry" "Wrist_R.ry";
connectAttr "Wrist_R_parentConstraint1.crz" "Wrist_R.rz";
connectAttr "Elbow_R.s" "Wrist_R.is";
connectAttr "FKMiddleFinger1_R.s" "MiddleFinger1_R.s";
connectAttr "Wrist_R.s" "MiddleFinger1_R.is";
connectAttr "MiddleFinger1_R_parentConstraint1.ctx" "MiddleFinger1_R.tx";
connectAttr "MiddleFinger1_R_parentConstraint1.cty" "MiddleFinger1_R.ty";
connectAttr "MiddleFinger1_R_parentConstraint1.ctz" "MiddleFinger1_R.tz";
connectAttr "MiddleFinger1_R_parentConstraint1.crx" "MiddleFinger1_R.rx";
connectAttr "MiddleFinger1_R_parentConstraint1.cry" "MiddleFinger1_R.ry";
connectAttr "MiddleFinger1_R_parentConstraint1.crz" "MiddleFinger1_R.rz";
connectAttr "FKMiddleFinger2_R.s" "MiddleFinger2_R.s";
connectAttr "MiddleFinger1_R.s" "MiddleFinger2_R.is";
connectAttr "MiddleFinger2_R_parentConstraint1.ctx" "MiddleFinger2_R.tx";
connectAttr "MiddleFinger2_R_parentConstraint1.cty" "MiddleFinger2_R.ty";
connectAttr "MiddleFinger2_R_parentConstraint1.ctz" "MiddleFinger2_R.tz";
connectAttr "MiddleFinger2_R_parentConstraint1.crx" "MiddleFinger2_R.rx";
connectAttr "MiddleFinger2_R_parentConstraint1.cry" "MiddleFinger2_R.ry";
connectAttr "MiddleFinger2_R_parentConstraint1.crz" "MiddleFinger2_R.rz";
connectAttr "MiddleFinger2_R.s" "MiddleFinger3_R.is";
connectAttr "FKThumbFinger1_R.s" "ThumbFinger1_R.s";
connectAttr "Wrist_R.s" "ThumbFinger1_R.is";
connectAttr "ThumbFinger1_R_parentConstraint1.ctx" "ThumbFinger1_R.tx";
connectAttr "ThumbFinger1_R_parentConstraint1.cty" "ThumbFinger1_R.ty";
connectAttr "ThumbFinger1_R_parentConstraint1.ctz" "ThumbFinger1_R.tz";
connectAttr "ThumbFinger1_R_parentConstraint1.crx" "ThumbFinger1_R.rx";
connectAttr "ThumbFinger1_R_parentConstraint1.cry" "ThumbFinger1_R.ry";
connectAttr "ThumbFinger1_R_parentConstraint1.crz" "ThumbFinger1_R.rz";
connectAttr "FKThumbFinger2_R.s" "ThumbFinger2_R.s";
connectAttr "ThumbFinger1_R.s" "ThumbFinger2_R.is";
connectAttr "ThumbFinger2_R_parentConstraint1.ctx" "ThumbFinger2_R.tx";
connectAttr "ThumbFinger2_R_parentConstraint1.cty" "ThumbFinger2_R.ty";
connectAttr "ThumbFinger2_R_parentConstraint1.ctz" "ThumbFinger2_R.tz";
connectAttr "ThumbFinger2_R_parentConstraint1.crx" "ThumbFinger2_R.rx";
connectAttr "ThumbFinger2_R_parentConstraint1.cry" "ThumbFinger2_R.ry";
connectAttr "ThumbFinger2_R_parentConstraint1.crz" "ThumbFinger2_R.rz";
connectAttr "ThumbFinger2_R.s" "ThumbFinger3_R.is";
connectAttr "FKIndexFinger1_R.s" "IndexFinger1_R.s";
connectAttr "Wrist_R.s" "IndexFinger1_R.is";
connectAttr "IndexFinger1_R_parentConstraint1.ctx" "IndexFinger1_R.tx";
connectAttr "IndexFinger1_R_parentConstraint1.cty" "IndexFinger1_R.ty";
connectAttr "IndexFinger1_R_parentConstraint1.ctz" "IndexFinger1_R.tz";
connectAttr "IndexFinger1_R_parentConstraint1.crx" "IndexFinger1_R.rx";
connectAttr "IndexFinger1_R_parentConstraint1.cry" "IndexFinger1_R.ry";
connectAttr "IndexFinger1_R_parentConstraint1.crz" "IndexFinger1_R.rz";
connectAttr "FKIndexFinger2_R.s" "IndexFinger2_R.s";
connectAttr "IndexFinger1_R.s" "IndexFinger2_R.is";
connectAttr "IndexFinger2_R_parentConstraint1.ctx" "IndexFinger2_R.tx";
connectAttr "IndexFinger2_R_parentConstraint1.cty" "IndexFinger2_R.ty";
connectAttr "IndexFinger2_R_parentConstraint1.ctz" "IndexFinger2_R.tz";
connectAttr "IndexFinger2_R_parentConstraint1.crx" "IndexFinger2_R.rx";
connectAttr "IndexFinger2_R_parentConstraint1.cry" "IndexFinger2_R.ry";
connectAttr "IndexFinger2_R_parentConstraint1.crz" "IndexFinger2_R.rz";
connectAttr "IndexFinger2_R.s" "IndexFinger3_R.is";
connectAttr "FKNeck1_M.s" "Neck1_M.s";
connectAttr "Chest_M.s" "Neck1_M.is";
connectAttr "Neck1_M_parentConstraint1.ctx" "Neck1_M.tx";
connectAttr "Neck1_M_parentConstraint1.cty" "Neck1_M.ty";
connectAttr "Neck1_M_parentConstraint1.ctz" "Neck1_M.tz";
connectAttr "Neck1_M_parentConstraint1.crx" "Neck1_M.rx";
connectAttr "Neck1_M_parentConstraint1.cry" "Neck1_M.ry";
connectAttr "Neck1_M_parentConstraint1.crz" "Neck1_M.rz";
connectAttr "Head1_M_parentConstraint1.ctx" "Head1_M.tx";
connectAttr "Head1_M_parentConstraint1.cty" "Head1_M.ty";
connectAttr "Head1_M_parentConstraint1.ctz" "Head1_M.tz";
connectAttr "Head1_M_parentConstraint1.crx" "Head1_M.rx";
connectAttr "Head1_M_parentConstraint1.cry" "Head1_M.ry";
connectAttr "Head1_M_parentConstraint1.crz" "Head1_M.rz";
connectAttr "FKHead1_M.s" "Head1_M.s";
connectAttr "Neck1_M.s" "Head1_M.is";
connectAttr "Head1_M.s" "HeadEnd_M.is";
connectAttr "Scapula_L_parentConstraint1.ctx" "Scapula_L.tx";
connectAttr "Scapula_L_parentConstraint1.cty" "Scapula_L.ty";
connectAttr "Scapula_L_parentConstraint1.ctz" "Scapula_L.tz";
connectAttr "Scapula_L_parentConstraint1.crx" "Scapula_L.rx";
connectAttr "Scapula_L_parentConstraint1.cry" "Scapula_L.ry";
connectAttr "Scapula_L_parentConstraint1.crz" "Scapula_L.rz";
connectAttr "FKScapula_L.s" "Scapula_L.s";
connectAttr "Chest_M.s" "Scapula_L.is";
connectAttr "ScaleBlendShoulder_L.opr" "Shoulder_L.sx";
connectAttr "ScaleBlendShoulder_L.opg" "Shoulder_L.sy";
connectAttr "ScaleBlendShoulder_L.opb" "Shoulder_L.sz";
connectAttr "Scapula_L.s" "Shoulder_L.is";
connectAttr "Shoulder_L_parentConstraint1.ctx" "Shoulder_L.tx";
connectAttr "Shoulder_L_parentConstraint1.cty" "Shoulder_L.ty";
connectAttr "Shoulder_L_parentConstraint1.ctz" "Shoulder_L.tz";
connectAttr "Shoulder_L_parentConstraint1.crx" "Shoulder_L.rx";
connectAttr "Shoulder_L_parentConstraint1.cry" "Shoulder_L.ry";
connectAttr "Shoulder_L_parentConstraint1.crz" "Shoulder_L.rz";
connectAttr "ScaleBlendElbow_L.opr" "Elbow_L.sx";
connectAttr "ScaleBlendElbow_L.opg" "Elbow_L.sy";
connectAttr "ScaleBlendElbow_L.opb" "Elbow_L.sz";
connectAttr "Shoulder_L.s" "Elbow_L.is";
connectAttr "Elbow_L_parentConstraint1.ctx" "Elbow_L.tx";
connectAttr "Elbow_L_parentConstraint1.cty" "Elbow_L.ty";
connectAttr "Elbow_L_parentConstraint1.ctz" "Elbow_L.tz";
connectAttr "Elbow_L_parentConstraint1.crx" "Elbow_L.rx";
connectAttr "Elbow_L_parentConstraint1.cry" "Elbow_L.ry";
connectAttr "Elbow_L_parentConstraint1.crz" "Elbow_L.rz";
connectAttr "ScaleBlendWrist_L.opr" "Wrist_L.sx";
connectAttr "ScaleBlendWrist_L.opg" "Wrist_L.sy";
connectAttr "ScaleBlendWrist_L.opb" "Wrist_L.sz";
connectAttr "Wrist_L_parentConstraint1.ctx" "Wrist_L.tx";
connectAttr "Wrist_L_parentConstraint1.cty" "Wrist_L.ty";
connectAttr "Wrist_L_parentConstraint1.ctz" "Wrist_L.tz";
connectAttr "Wrist_L_parentConstraint1.crx" "Wrist_L.rx";
connectAttr "Wrist_L_parentConstraint1.cry" "Wrist_L.ry";
connectAttr "Wrist_L_parentConstraint1.crz" "Wrist_L.rz";
connectAttr "Elbow_L.s" "Wrist_L.is";
connectAttr "FKMiddleFinger1_L.s" "MiddleFinger1_L.s";
connectAttr "Wrist_L.s" "MiddleFinger1_L.is";
connectAttr "MiddleFinger1_L_parentConstraint1.ctx" "MiddleFinger1_L.tx";
connectAttr "MiddleFinger1_L_parentConstraint1.cty" "MiddleFinger1_L.ty";
connectAttr "MiddleFinger1_L_parentConstraint1.ctz" "MiddleFinger1_L.tz";
connectAttr "MiddleFinger1_L_parentConstraint1.crx" "MiddleFinger1_L.rx";
connectAttr "MiddleFinger1_L_parentConstraint1.cry" "MiddleFinger1_L.ry";
connectAttr "MiddleFinger1_L_parentConstraint1.crz" "MiddleFinger1_L.rz";
connectAttr "FKMiddleFinger2_L.s" "MiddleFinger2_L.s";
connectAttr "MiddleFinger1_L.s" "MiddleFinger2_L.is";
connectAttr "MiddleFinger2_L_parentConstraint1.ctx" "MiddleFinger2_L.tx";
connectAttr "MiddleFinger2_L_parentConstraint1.cty" "MiddleFinger2_L.ty";
connectAttr "MiddleFinger2_L_parentConstraint1.ctz" "MiddleFinger2_L.tz";
connectAttr "MiddleFinger2_L_parentConstraint1.crx" "MiddleFinger2_L.rx";
connectAttr "MiddleFinger2_L_parentConstraint1.cry" "MiddleFinger2_L.ry";
connectAttr "MiddleFinger2_L_parentConstraint1.crz" "MiddleFinger2_L.rz";
connectAttr "MiddleFinger2_L.s" "MiddleFinger3_L.is";
connectAttr "FKThumbFinger1_L.s" "ThumbFinger1_L.s";
connectAttr "Wrist_L.s" "ThumbFinger1_L.is";
connectAttr "ThumbFinger1_L_parentConstraint1.ctx" "ThumbFinger1_L.tx";
connectAttr "ThumbFinger1_L_parentConstraint1.cty" "ThumbFinger1_L.ty";
connectAttr "ThumbFinger1_L_parentConstraint1.ctz" "ThumbFinger1_L.tz";
connectAttr "ThumbFinger1_L_parentConstraint1.crx" "ThumbFinger1_L.rx";
connectAttr "ThumbFinger1_L_parentConstraint1.cry" "ThumbFinger1_L.ry";
connectAttr "ThumbFinger1_L_parentConstraint1.crz" "ThumbFinger1_L.rz";
connectAttr "FKThumbFinger2_L.s" "ThumbFinger2_L.s";
connectAttr "ThumbFinger1_L.s" "ThumbFinger2_L.is";
connectAttr "ThumbFinger2_L_parentConstraint1.ctx" "ThumbFinger2_L.tx";
connectAttr "ThumbFinger2_L_parentConstraint1.cty" "ThumbFinger2_L.ty";
connectAttr "ThumbFinger2_L_parentConstraint1.ctz" "ThumbFinger2_L.tz";
connectAttr "ThumbFinger2_L_parentConstraint1.crx" "ThumbFinger2_L.rx";
connectAttr "ThumbFinger2_L_parentConstraint1.cry" "ThumbFinger2_L.ry";
connectAttr "ThumbFinger2_L_parentConstraint1.crz" "ThumbFinger2_L.rz";
connectAttr "ThumbFinger2_L.s" "ThumbFinger3_L.is";
connectAttr "FKIndexFinger1_L.s" "IndexFinger1_L.s";
connectAttr "Wrist_L.s" "IndexFinger1_L.is";
connectAttr "IndexFinger1_L_parentConstraint1.ctx" "IndexFinger1_L.tx";
connectAttr "IndexFinger1_L_parentConstraint1.cty" "IndexFinger1_L.ty";
connectAttr "IndexFinger1_L_parentConstraint1.ctz" "IndexFinger1_L.tz";
connectAttr "IndexFinger1_L_parentConstraint1.crx" "IndexFinger1_L.rx";
connectAttr "IndexFinger1_L_parentConstraint1.cry" "IndexFinger1_L.ry";
connectAttr "IndexFinger1_L_parentConstraint1.crz" "IndexFinger1_L.rz";
connectAttr "FKIndexFinger2_L.s" "IndexFinger2_L.s";
connectAttr "IndexFinger1_L.s" "IndexFinger2_L.is";
connectAttr "IndexFinger2_L_parentConstraint1.ctx" "IndexFinger2_L.tx";
connectAttr "IndexFinger2_L_parentConstraint1.cty" "IndexFinger2_L.ty";
connectAttr "IndexFinger2_L_parentConstraint1.ctz" "IndexFinger2_L.tz";
connectAttr "IndexFinger2_L_parentConstraint1.crx" "IndexFinger2_L.rx";
connectAttr "IndexFinger2_L_parentConstraint1.cry" "IndexFinger2_L.ry";
connectAttr "IndexFinger2_L_parentConstraint1.crz" "IndexFinger2_L.rz";
connectAttr "IndexFinger2_L.s" "IndexFinger3_L.is";
connectAttr "Hip_L_parentConstraint1.ctx" "|Group|Main|DeformationSystem|Root_M|Hip_L.tx"
		;
connectAttr "Hip_L_parentConstraint1.cty" "|Group|Main|DeformationSystem|Root_M|Hip_L.ty"
		;
connectAttr "Hip_L_parentConstraint1.ctz" "|Group|Main|DeformationSystem|Root_M|Hip_L.tz"
		;
connectAttr "Hip_L_parentConstraint1.crx" "|Group|Main|DeformationSystem|Root_M|Hip_L.rx"
		;
connectAttr "Hip_L_parentConstraint1.cry" "|Group|Main|DeformationSystem|Root_M|Hip_L.ry"
		;
connectAttr "Hip_L_parentConstraint1.crz" "|Group|Main|DeformationSystem|Root_M|Hip_L.rz"
		;
connectAttr "ScaleBlendHip_L.opr" "|Group|Main|DeformationSystem|Root_M|Hip_L.sx"
		;
connectAttr "ScaleBlendHip_L.opg" "|Group|Main|DeformationSystem|Root_M|Hip_L.sy"
		;
connectAttr "ScaleBlendHip_L.opb" "|Group|Main|DeformationSystem|Root_M|Hip_L.sz"
		;
connectAttr "Root_M.s" "|Group|Main|DeformationSystem|Root_M|Hip_L.is";
connectAttr "ScaleBlendKnee_L.opr" "Knee_L.sx";
connectAttr "ScaleBlendKnee_L.opg" "Knee_L.sy";
connectAttr "ScaleBlendKnee_L.opb" "Knee_L.sz";
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.s" "Knee_L.is";
connectAttr "Knee_L_parentConstraint1.ctx" "Knee_L.tx";
connectAttr "Knee_L_parentConstraint1.cty" "Knee_L.ty";
connectAttr "Knee_L_parentConstraint1.ctz" "Knee_L.tz";
connectAttr "Knee_L_parentConstraint1.crx" "Knee_L.rx";
connectAttr "Knee_L_parentConstraint1.cry" "Knee_L.ry";
connectAttr "Knee_L_parentConstraint1.crz" "Knee_L.rz";
connectAttr "ScaleBlendAnkle_L.opr" "Ankle_L.sx";
connectAttr "ScaleBlendAnkle_L.opg" "Ankle_L.sy";
connectAttr "ScaleBlendAnkle_L.opb" "Ankle_L.sz";
connectAttr "Knee_L.s" "Ankle_L.is";
connectAttr "Ankle_L_parentConstraint1.ctx" "Ankle_L.tx";
connectAttr "Ankle_L_parentConstraint1.cty" "Ankle_L.ty";
connectAttr "Ankle_L_parentConstraint1.ctz" "Ankle_L.tz";
connectAttr "Ankle_L_parentConstraint1.crx" "Ankle_L.rx";
connectAttr "Ankle_L_parentConstraint1.cry" "Ankle_L.ry";
connectAttr "Ankle_L_parentConstraint1.crz" "Ankle_L.rz";
connectAttr "ScaleBlendToes_L.opr" "Toes_L.sx";
connectAttr "ScaleBlendToes_L.opg" "Toes_L.sy";
connectAttr "ScaleBlendToes_L.opb" "Toes_L.sz";
connectAttr "Ankle_L.s" "Toes_L.is";
connectAttr "Toes_L_parentConstraint1.ctx" "Toes_L.tx";
connectAttr "Toes_L_parentConstraint1.cty" "Toes_L.ty";
connectAttr "Toes_L_parentConstraint1.ctz" "Toes_L.tz";
connectAttr "Toes_L_parentConstraint1.crx" "Toes_L.rx";
connectAttr "Toes_L_parentConstraint1.cry" "Toes_L.ry";
connectAttr "Toes_L_parentConstraint1.crz" "Toes_L.rz";
connectAttr "Toes_L.s" "ToesEnd_L.is";
connectAttr "ScaleBlendToesEnd_L.opr" "ToesEnd_L.sx";
connectAttr "ScaleBlendToesEnd_L.opg" "ToesEnd_L.sy";
connectAttr "ScaleBlendToesEnd_L.opb" "ToesEnd_L.sz";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.ctx" "R_Weapon_ctrl_grp.tx";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.cty" "R_Weapon_ctrl_grp.ty";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.ctz" "R_Weapon_ctrl_grp.tz";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.crx" "R_Weapon_ctrl_grp.rx";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.cry" "R_Weapon_ctrl_grp.ry";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.crz" "R_Weapon_ctrl_grp.rz";
connectAttr "makeNurbCircle1.oc" "R_Weapon_ctrlShape.cr";
connectAttr "Main.t" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].tpm";
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.w0" "R_Weapon_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Weapon_ctrl_grp_parentConstraint1.w1" "R_Weapon_ctrl_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "R_Weapon_ctrl_grp_parentConstraint1_MainW0.o" "R_Weapon_ctrl_grp_parentConstraint1.w0"
		;
connectAttr "R_Weapon_ctrl_grp_parentConstraint1_R_HandW1.o" "R_Weapon_ctrl_grp_parentConstraint1.w1"
		;
connectAttr "R_Weapon_ctrl_grp.ro" "R_Weapon_ctrl_grp_parentConstraint1.cro";
connectAttr "R_Weapon_ctrl_grp.pim" "R_Weapon_ctrl_grp_parentConstraint1.cpim";
connectAttr "R_Weapon_ctrl_grp.rp" "R_Weapon_ctrl_grp_parentConstraint1.crp";
connectAttr "R_Weapon_ctrl_grp.rpt" "R_Weapon_ctrl_grp_parentConstraint1.crt";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.ctx" "L_Weapon_ctrl_grp.tx";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.cty" "L_Weapon_ctrl_grp.ty";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.ctz" "L_Weapon_ctrl_grp.tz";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.crx" "L_Weapon_ctrl_grp.rx";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.cry" "L_Weapon_ctrl_grp.ry";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.crz" "L_Weapon_ctrl_grp.rz";
connectAttr "makeNurbCircle2.oc" "L_Weapon_ctrlShape.cr";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.w0" "L_Weapon_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Main.t" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].tt";
connectAttr "Main.rp" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].trp";
connectAttr "Main.rpt" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].trt";
connectAttr "Main.r" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].tr";
connectAttr "Main.ro" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].tro";
connectAttr "Main.s" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].ts";
connectAttr "Main.pm" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].tpm";
connectAttr "L_Weapon_ctrl_grp_parentConstraint1.w1" "L_Weapon_ctrl_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "L_Weapon_ctrl_grp_parentConstraint1_L_HandW0.o" "L_Weapon_ctrl_grp_parentConstraint1.w0"
		;
connectAttr "L_Weapon_ctrl_grp_parentConstraint1_MainW1.o" "L_Weapon_ctrl_grp_parentConstraint1.w1"
		;
connectAttr "L_Weapon_ctrl_grp.ro" "L_Weapon_ctrl_grp_parentConstraint1.cro";
connectAttr "L_Weapon_ctrl_grp.pim" "L_Weapon_ctrl_grp_parentConstraint1.cpim";
connectAttr "L_Weapon_ctrl_grp.rp" "L_Weapon_ctrl_grp_parentConstraint1.crp";
connectAttr "L_Weapon_ctrl_grp.rpt" "L_Weapon_ctrl_grp_parentConstraint1.crt";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Heel.fat" "HeelFat.i1y";
connectAttr "Heel.fat" "HeelFat.i1z";
connectAttr "Heel.fatY" "HeelFat.i2y";
connectAttr "Heel.fatZ" "HeelFat.i2z";
connectAttr "FootSideInner.fat" "FootSideInnerFat.i1y";
connectAttr "FootSideInner.fat" "FootSideInnerFat.i1z";
connectAttr "FootSideInner.fatY" "FootSideInnerFat.i2y";
connectAttr "FootSideInner.fatZ" "FootSideInnerFat.i2z";
connectAttr "FootSideOuter.fat" "FootSideOuterFat.i1y";
connectAttr "FootSideOuter.fat" "FootSideOuterFat.i1z";
connectAttr "FootSideOuter.fatY" "FootSideOuterFat.i2y";
connectAttr "FootSideOuter.fatZ" "FootSideOuterFat.i2z";
connectAttr "ToesEnd.fat" "ToesEndFat.i1y";
connectAttr "ToesEnd.fat" "ToesEndFat.i1z";
connectAttr "ToesEnd.fatY" "ToesEndFat.i2y";
connectAttr "ToesEnd.fatZ" "ToesEndFat.i2z";
connectAttr "Toes.fat" "ToesFat.i1y";
connectAttr "Toes.fat" "ToesFat.i1z";
connectAttr "Toes.fatY" "ToesFat.i2y";
connectAttr "Toes.fatZ" "ToesFat.i2z";
connectAttr "Ankle.fat" "AnkleFat.i1y";
connectAttr "Ankle.fat" "AnkleFat.i1z";
connectAttr "Ankle.fatY" "AnkleFat.i2y";
connectAttr "Ankle.fatZ" "AnkleFat.i2z";
connectAttr "Knee.fat" "KneeFat.i1y";
connectAttr "Knee.fat" "KneeFat.i1z";
connectAttr "Knee.fatY" "KneeFat.i2y";
connectAttr "Knee.fatZ" "KneeFat.i2z";
connectAttr "Hip.fat" "HipFat.i1y";
connectAttr "Hip.fat" "HipFat.i1z";
connectAttr "Hip.fatY" "HipFat.i2y";
connectAttr "Hip.fatZ" "HipFat.i2z";
connectAttr "MiddleFinger3.fat" "MiddleFinger3Fat.i1y";
connectAttr "MiddleFinger3.fat" "MiddleFinger3Fat.i1z";
connectAttr "MiddleFinger3.fatY" "MiddleFinger3Fat.i2y";
connectAttr "MiddleFinger3.fatZ" "MiddleFinger3Fat.i2z";
connectAttr "MiddleFinger2.fat" "MiddleFinger2Fat.i1y";
connectAttr "MiddleFinger2.fat" "MiddleFinger2Fat.i1z";
connectAttr "MiddleFinger2.fatY" "MiddleFinger2Fat.i2y";
connectAttr "MiddleFinger2.fatZ" "MiddleFinger2Fat.i2z";
connectAttr "MiddleFinger1.fat" "MiddleFinger1Fat.i1y";
connectAttr "MiddleFinger1.fat" "MiddleFinger1Fat.i1z";
connectAttr "MiddleFinger1.fatY" "MiddleFinger1Fat.i2y";
connectAttr "MiddleFinger1.fatZ" "MiddleFinger1Fat.i2z";
connectAttr "ThumbFinger3.fat" "ThumbFinger3Fat.i1y";
connectAttr "ThumbFinger3.fat" "ThumbFinger3Fat.i1z";
connectAttr "ThumbFinger3.fatY" "ThumbFinger3Fat.i2y";
connectAttr "ThumbFinger3.fatZ" "ThumbFinger3Fat.i2z";
connectAttr "ThumbFinger2.fat" "ThumbFinger2Fat.i1y";
connectAttr "ThumbFinger2.fat" "ThumbFinger2Fat.i1z";
connectAttr "ThumbFinger2.fatY" "ThumbFinger2Fat.i2y";
connectAttr "ThumbFinger2.fatZ" "ThumbFinger2Fat.i2z";
connectAttr "ThumbFinger1.fat" "ThumbFinger1Fat.i1y";
connectAttr "ThumbFinger1.fat" "ThumbFinger1Fat.i1z";
connectAttr "ThumbFinger1.fatY" "ThumbFinger1Fat.i2y";
connectAttr "ThumbFinger1.fatZ" "ThumbFinger1Fat.i2z";
connectAttr "IndexFinger3.fat" "IndexFinger3Fat.i1y";
connectAttr "IndexFinger3.fat" "IndexFinger3Fat.i1z";
connectAttr "IndexFinger3.fatY" "IndexFinger3Fat.i2y";
connectAttr "IndexFinger3.fatZ" "IndexFinger3Fat.i2z";
connectAttr "IndexFinger2.fat" "IndexFinger2Fat.i1y";
connectAttr "IndexFinger2.fat" "IndexFinger2Fat.i1z";
connectAttr "IndexFinger2.fatY" "IndexFinger2Fat.i2y";
connectAttr "IndexFinger2.fatZ" "IndexFinger2Fat.i2z";
connectAttr "IndexFinger1.fat" "IndexFinger1Fat.i1y";
connectAttr "IndexFinger1.fat" "IndexFinger1Fat.i1z";
connectAttr "IndexFinger1.fatY" "IndexFinger1Fat.i2y";
connectAttr "IndexFinger1.fatZ" "IndexFinger1Fat.i2z";
connectAttr "Wrist.fat" "WristFat.i1y";
connectAttr "Wrist.fat" "WristFat.i1z";
connectAttr "Wrist.fatY" "WristFat.i2y";
connectAttr "Wrist.fatZ" "WristFat.i2z";
connectAttr "Elbow.fat" "ElbowFat.i1y";
connectAttr "Elbow.fat" "ElbowFat.i1z";
connectAttr "Elbow.fatY" "ElbowFat.i2y";
connectAttr "Elbow.fatZ" "ElbowFat.i2z";
connectAttr "Shoulder.fat" "ShoulderFat.i1y";
connectAttr "Shoulder.fat" "ShoulderFat.i1z";
connectAttr "Shoulder.fatY" "ShoulderFat.i2y";
connectAttr "Shoulder.fatZ" "ShoulderFat.i2z";
connectAttr "Scapula.fat" "ScapulaFat.i1y";
connectAttr "Scapula.fat" "ScapulaFat.i1z";
connectAttr "Scapula.fatY" "ScapulaFat.i2y";
connectAttr "Scapula.fatZ" "ScapulaFat.i2z";
connectAttr "HeadEnd.fat" "HeadEndFat.i1y";
connectAttr "HeadEnd.fat" "HeadEndFat.i1z";
connectAttr "HeadEnd.fatY" "HeadEndFat.i2y";
connectAttr "HeadEnd.fatZ" "HeadEndFat.i2z";
connectAttr "Head1.fat" "Head1Fat.i1y";
connectAttr "Head1.fat" "Head1Fat.i1z";
connectAttr "Head1.fatY" "Head1Fat.i2y";
connectAttr "Head1.fatZ" "Head1Fat.i2z";
connectAttr "Neck1.fat" "Neck1Fat.i1y";
connectAttr "Neck1.fat" "Neck1Fat.i1z";
connectAttr "Neck1.fatY" "Neck1Fat.i2y";
connectAttr "Neck1.fatZ" "Neck1Fat.i2z";
connectAttr "Chest.fat" "ChestFat.i1y";
connectAttr "Chest.fat" "ChestFat.i1z";
connectAttr "Chest.fatY" "ChestFat.i2y";
connectAttr "Chest.fatZ" "ChestFat.i2z";
connectAttr "Spine1.fat" "Spine1Fat.i1y";
connectAttr "Spine1.fat" "Spine1Fat.i1z";
connectAttr "Spine1.fatY" "Spine1Fat.i2y";
connectAttr "Spine1.fatZ" "Spine1Fat.i2z";
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatY" "RootFat.i2y";
connectAttr "Root.fatZ" "RootFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraToes_R.iog" "ControlSet.dsm" -na;
connectAttr "FKToes_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraAnkle_R.iog" "ControlSet.dsm" -na;
connectAttr "FKAnkle_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraKnee_R.iog" "ControlSet.dsm" -na;
connectAttr "FKKnee_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraHip_R.iog" "ControlSet.dsm" -na;
connectAttr "FKHip_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMiddleFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMiddleFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMiddleFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKMiddleFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraThumbFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKThumbFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraThumbFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKThumbFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraIndexFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKIndexFinger2_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraIndexFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKIndexFinger1_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWrist_R.iog" "ControlSet.dsm" -na;
connectAttr "FKWrist_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraElbow_R.iog" "ControlSet.dsm" -na;
connectAttr "FKElbow_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraShoulder_R.iog" "ControlSet.dsm" -na;
connectAttr "FKShoulder_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraScapula_R.iog" "ControlSet.dsm" -na;
connectAttr "FKScapula_R.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraHead1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKHead1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraNeck1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKNeck1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraChest_M.iog" "ControlSet.dsm" -na;
connectAttr "FKChest_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraToes_L.iog" "ControlSet.dsm" -na;
connectAttr "FKToes_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraAnkle_L.iog" "ControlSet.dsm" -na;
connectAttr "FKAnkle_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraKnee_L.iog" "ControlSet.dsm" -na;
connectAttr "FKKnee_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraHip_L.iog" "ControlSet.dsm" -na;
connectAttr "FKHip_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMiddleFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMiddleFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraMiddleFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKMiddleFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraThumbFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKThumbFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraThumbFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKThumbFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraIndexFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKIndexFinger2_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraIndexFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKIndexFinger1_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraWrist_L.iog" "ControlSet.dsm" -na;
connectAttr "FKWrist_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraElbow_L.iog" "ControlSet.dsm" -na;
connectAttr "FKElbow_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraShoulder_L.iog" "ControlSet.dsm" -na;
connectAttr "FKShoulder_L.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraScapula_L.iog" "ControlSet.dsm" -na;
connectAttr "FKScapula_L.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "IKLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "PoleExtraLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "PoleLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalExtraLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraArm_R.iog" "ControlSet.dsm" -na;
connectAttr "IKArm_R.iog" "ControlSet.dsm" -na;
connectAttr "PoleExtraArm_R.iog" "ControlSet.dsm" -na;
connectAttr "PoleArm_R.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalExtraArm_R.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalArm_R.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpine1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpine2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpine2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpine3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpine3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "IKLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "PoleExtraLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "PoleLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalExtraLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraArm_L.iog" "ControlSet.dsm" -na;
connectAttr "IKArm_L.iog" "ControlSet.dsm" -na;
connectAttr "PoleExtraArm_L.iog" "ControlSet.dsm" -na;
connectAttr "PoleArm_L.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalExtraArm_L.iog" "ControlSet.dsm" -na;
connectAttr "IKLocalArm_L.iog" "ControlSet.dsm" -na;
connectAttr "FKIKLeg_R.iog" "ControlSet.dsm" -na;
connectAttr "FKIKArm_R.iog" "ControlSet.dsm" -na;
connectAttr "FKIKSpine_M.iog" "ControlSet.dsm" -na;
connectAttr "FKIKLeg_L.iog" "ControlSet.dsm" -na;
connectAttr "FKIKArm_L.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraToes_R.iog" "ControlSet.dsm" -na;
connectAttr "RollToes_R.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraToesEnd_R.iog" "ControlSet.dsm" -na;
connectAttr "RollToesEnd_R.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraHeel_R.iog" "ControlSet.dsm" -na;
connectAttr "RollHeel_R.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraToes_R.iog" "ControlSet.dsm" -na;
connectAttr "IKToes_R.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraToes_L.iog" "ControlSet.dsm" -na;
connectAttr "RollToes_L.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraToesEnd_L.iog" "ControlSet.dsm" -na;
connectAttr "RollToesEnd_L.iog" "ControlSet.dsm" -na;
connectAttr "RollExtraHeel_L.iog" "ControlSet.dsm" -na;
connectAttr "RollHeel_L.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraToes_L.iog" "ControlSet.dsm" -na;
connectAttr "IKToes_L.iog" "ControlSet.dsm" -na;
connectAttr "HipSwinger_M.iog" "ControlSet.dsm" -na;
connectAttr "Toes_R.iog" "DeformSet.dsm" -na;
connectAttr "Ankle_R.iog" "DeformSet.dsm" -na;
connectAttr "Knee_R.iog" "DeformSet.dsm" -na;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.iog" "DeformSet.dsm" -na
		;
connectAttr "MiddleFinger2_R.iog" "DeformSet.dsm" -na;
connectAttr "MiddleFinger1_R.iog" "DeformSet.dsm" -na;
connectAttr "ThumbFinger2_R.iog" "DeformSet.dsm" -na;
connectAttr "ThumbFinger1_R.iog" "DeformSet.dsm" -na;
connectAttr "IndexFinger2_R.iog" "DeformSet.dsm" -na;
connectAttr "IndexFinger1_R.iog" "DeformSet.dsm" -na;
connectAttr "Wrist_R.iog" "DeformSet.dsm" -na;
connectAttr "Elbow_R.iog" "DeformSet.dsm" -na;
connectAttr "Shoulder_R.iog" "DeformSet.dsm" -na;
connectAttr "Scapula_R.iog" "DeformSet.dsm" -na;
connectAttr "Head1_M.iog" "DeformSet.dsm" -na;
connectAttr "Neck1_M.iog" "DeformSet.dsm" -na;
connectAttr "Chest_M.iog" "DeformSet.dsm" -na;
connectAttr "Spine1_M.iog" "DeformSet.dsm" -na;
connectAttr "Root_M.iog" "DeformSet.dsm" -na;
connectAttr "Toes_L.iog" "DeformSet.dsm" -na;
connectAttr "Ankle_L.iog" "DeformSet.dsm" -na;
connectAttr "Knee_L.iog" "DeformSet.dsm" -na;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.iog" "DeformSet.dsm" -na
		;
connectAttr "MiddleFinger2_L.iog" "DeformSet.dsm" -na;
connectAttr "MiddleFinger1_L.iog" "DeformSet.dsm" -na;
connectAttr "ThumbFinger2_L.iog" "DeformSet.dsm" -na;
connectAttr "ThumbFinger1_L.iog" "DeformSet.dsm" -na;
connectAttr "IndexFinger2_L.iog" "DeformSet.dsm" -na;
connectAttr "IndexFinger1_L.iog" "DeformSet.dsm" -na;
connectAttr "Wrist_L.iog" "DeformSet.dsm" -na;
connectAttr "Elbow_L.iog" "DeformSet.dsm" -na;
connectAttr "Shoulder_L.iog" "DeformSet.dsm" -na;
connectAttr "Scapula_L.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerASpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendArmBlendTwo_L.msg" "AllSet.dnsm" -na;
connectAttr "volumepowArm_L.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverArm_L.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyArm_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeArmUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendLegBlendTwo_L.msg" "AllSet.dnsm" -na;
connectAttr "volumepowLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeLegUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendSpineBlendTwo_M.msg" "AllSet.dnsm" -na;
connectAttr "volumepowSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchySpine_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeSpineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendArmBlendTwo_R.msg" "AllSet.dnsm" -na;
connectAttr "volumepowArm_R.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverArm_R.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyArm_R.msg" "AllSet.dnsm" -na;
connectAttr "volumeArmUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendLegBlendTwo_R.msg" "AllSet.dnsm" -na;
connectAttr "volumepowLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "volumeLegUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "CenterBtwLegsNodeStateSetRange.msg" "AllSet.dnsm" -na;
connectAttr "CenterBtwLegsUnitReverse.msg" "AllSet.dnsm" -na;
connectAttr "CenterBtwLegsUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXWrist_LDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXElbow_LDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleArmUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceArm_LShape_normal.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceArm_LShape_antiPop.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchArm_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXAnkle_LDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXKnee_LDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLegUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceLeg_LShape_normal.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceLeg_LShape_antiPop.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXWrist_RDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXElbow_RDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleArmUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceArm_RShape_normal.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceArm_RShape_antiPop.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchArm_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXAnkle_RDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderNormalizeIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "IKXKnee_RDistance.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockBlenderIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLegUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceLeg_RShape_normal.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceLeg_RShape_antiPop.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleChestMultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleSpine1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleRootMultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHip_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToes_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToesEnd_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendRoot_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendChest_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHip_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToes_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToesEnd_R.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion15.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion14.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion13.msg" "AllSet.dnsm" -na;
connectAttr "IKRollAngleLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "Leg_LAngleReverse.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion12.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_L.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion11.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_L.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion10.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion9.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion8.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion7.msg" "AllSet.dnsm" -na;
connectAttr "IKRollAngleLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "Leg_RAngleReverse.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion6.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_R.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion5.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_R.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion4.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmsetRange_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmCondition_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmReverse_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegsetRange_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegCondition_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegReverse_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegUnitConversion_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpinesetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineCondition_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineReverse_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmsetRange_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmCondition_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmReverse_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegsetRange_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegCondition_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegReverse_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegUnitConversion_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleArm_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKArm_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "PoleLeg_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKFixedOrientSpine1_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFixedOrientSpine1_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociChest_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociRoot_M.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSpine2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSpine2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_MSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion3.msg" "AllSet.dnsm" -na;
connectAttr "IKSpineFlipAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion2.msg" "AllSet.dnsm" -na;
connectAttr "IKSpineRamp_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_MExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_MAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion1.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_M360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_MAutoTwistUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "MainTwistFlipSetRange.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineBlendTwo1_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineMultiplyDivide1_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineBlendTwo0_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineMultiplyDivide0_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineReverse_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySpineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoAllMultiplySpine_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoNormalizeSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSpine3SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "PoleArm_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKArm_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "PoleLeg_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "globalReverseShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionHead1_M.msg" "AllSet.dnsm" -na;
connectAttr "globalReverseHead1_M.msg" "AllSet.dnsm" -na;
connectAttr "globalUnitConversionShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "globalReverseShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "LegLockReverse.msg" "AllSet.dnsm" -na;
connectAttr "LegLockUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "jointLayer.msg" "AllSet.dnsm" -na;
connectAttr "RootCenterBtwLegsBlended_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootCenterBtwLegs_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootCenterBtwLegs_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootCenterBtwLegs_M.iog" "AllSet.dsm" -na;
connectAttr "RootCenter_M.iog" "AllSet.dsm" -na;
connectAttr "RootCenterBtwLegsOffset_M.iog" "AllSet.dsm" -na;
connectAttr "RootCenterBtwLegsBlended_M.iog" "AllSet.dsm" -na;
connectAttr "HipSwingerStabilizer_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "HipSwingReverse_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "HipSwingerStabilizer.iog" "AllSet.dsm" -na;
connectAttr "HipSwingReverseRoot.iog" "AllSet.dsm" -na;
connectAttr "HipSwingReverse.iog" "AllSet.dsm" -na;
connectAttr "HipSwingerStabilizerTarget.iog" "AllSet.dsm" -na;
connectAttr "HipSwinger_MShape.iog" "AllSet.dsm" -na;
connectAttr "HipSwinger_M.iog" "AllSet.dsm" -na;
connectAttr "HipSwingerOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureConstrainToArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_L.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureConstrainToLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_L.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_L.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureConstrainToArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Arm_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Arm_R.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKdistanceLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureConstrainToLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc2Leg_R.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKmessureLoc1Leg_R.iog" "AllSet.dsm" -na;
connectAttr "IKScalerChest_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerSpine1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerRoot_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKToes_LShape.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKExtraToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetToes_L.iog" "AllSet.dsm" -na;
connectAttr "RollRollerHeel_L.iog" "AllSet.dsm" -na;
connectAttr "RollRollerToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "RollRollerToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKToesHandle_L.iog" "AllSet.dsm" -na;
connectAttr "IKToesEffector_L.iog" "AllSet.dsm" -na;
connectAttr "IKAnkleHandle_L.iog" "AllSet.dsm" -na;
connectAttr "IKAnkleEffector_L.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetOffsetHeel_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRockOuterPivot_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRockInnerPivot_L.iog" "AllSet.dsm" -na;
connectAttr "RollHeel_LShape.iog" "AllSet.dsm" -na;
connectAttr "RollHeel_L.iog" "AllSet.dsm" -na;
connectAttr "RollExtraHeel_L.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetHeel_L.iog" "AllSet.dsm" -na;
connectAttr "RollToesEnd_LShape.iog" "AllSet.dsm" -na;
connectAttr "RollToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "RollExtraToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "RollToes_LShape.iog" "AllSet.dsm" -na;
connectAttr "RollToes_L.iog" "AllSet.dsm" -na;
connectAttr "RollExtraToes_L.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRoll_L.iog" "AllSet.dsm" -na;
connectAttr "IKToes_RShape.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKExtraToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetToes_R.iog" "AllSet.dsm" -na;
connectAttr "RollRollerHeel_R.iog" "AllSet.dsm" -na;
connectAttr "RollRollerToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "RollRollerToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKToesHandle_R.iog" "AllSet.dsm" -na;
connectAttr "IKToesEffector_R.iog" "AllSet.dsm" -na;
connectAttr "IKAnkleHandle_R.iog" "AllSet.dsm" -na;
connectAttr "IKAnkleEffector_R.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetOffsetHeel_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRockOuterPivot_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRockInnerPivot_R.iog" "AllSet.dsm" -na;
connectAttr "RollHeel_RShape.iog" "AllSet.dsm" -na;
connectAttr "RollHeel_R.iog" "AllSet.dsm" -na;
connectAttr "RollExtraHeel_R.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetHeel_R.iog" "AllSet.dsm" -na;
connectAttr "RollToesEnd_RShape.iog" "AllSet.dsm" -na;
connectAttr "RollToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "RollExtraToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "RollToes_RShape.iog" "AllSet.dsm" -na;
connectAttr "RollToes_R.iog" "AllSet.dsm" -na;
connectAttr "RollExtraToes_R.iog" "AllSet.dsm" -na;
connectAttr "RollOffsetToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegFootRoll_R.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintArm_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintArm_L.iog" "AllSet.dsm" -na;
connectAttr "FKIKArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKArm_L.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintLeg_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintLeg_L.iog" "AllSet.dsm" -na;
connectAttr "FKIKLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKLeg_L.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintSpine_M_parentConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKIKParentConstraintSpine_M.iog" "AllSet.dsm" -na;
connectAttr "FKIKSpine_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKSpine_M.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintArm_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintArm_R.iog" "AllSet.dsm" -na;
connectAttr "FKIKArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKArm_R.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintLeg_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintLeg_R.iog" "AllSet.dsm" -na;
connectAttr "FKIKLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKLeg_R.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_LStatic.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_LFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_LFollow.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_LFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetArm_LFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetArm_LFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LStatic.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LFollow.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_LFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "IKLocalArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKLocalArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKLocalExtraArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKLocalOffsetArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKXWrist_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedOffsetArm_L.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKArmHandle_L_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "PoleArm_L.iog" "AllSet.dsm" -na;
connectAttr "PoleExtraArm_L.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKArm_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKExtraArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_L.iog" "AllSet.dsm" -na;
connectAttr "IKArmHandle_L.iog" "AllSet.dsm" -na;
connectAttr "IKArmEffector_L.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_LStatic.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_LFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_LFollow.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_LFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetLeg_LFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetLeg_LFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_L_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLocalLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKLocalLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLocalExtraLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLocalOffsetLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKXAnkle_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedOffsetLeg_L.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegHandle_L_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "PoleLeg_L.iog" "AllSet.dsm" -na;
connectAttr "PoleExtraLeg_L.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLeg_LShape.iog" "AllSet.dsm" -na;
connectAttr "IKLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKExtraLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetLeg_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegHandle_L.iog" "AllSet.dsm" -na;
connectAttr "IKLegEffector_L.iog" "AllSet.dsm" -na;
connectAttr "IKFixedOrientRoot_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpine1LocalOrient3_M.iog" "AllSet.dsm" -na;
connectAttr "IKFixedOrientRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKXChest_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXChest_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpChestFollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpChestFollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpChestFollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpSpine1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpSpine1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpSpine1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpRootFollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcChestFollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcChestFollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcChestFollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXSpine1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcRootFollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcChest_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcRoot_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcRoot_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpineOffset3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpineOffset2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSpineOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetConstrainedSpine1_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKOffsetConstrainedSpine1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetConstrainedSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_MStatic.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_MFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_MFollow.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_MFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKOffsetSpine3_MFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKOffsetSpine3_MFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerSpine2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKSpine2_M_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "effector2.iog" "AllSet.dsm" -na;
connectAttr "UnTwistSpine2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistEndSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentOffsetSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentSpine2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpine2LocalOrient3_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowOffsetSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowSpine2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerChest_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerChest_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKChest_M_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKChest_M.iog" "AllSet.dsm" -na;
connectAttr "effector1.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentOffsetChest_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowOffsetChest_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistChest_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistEndChest_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistChest_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentChest_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowChest_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentChest_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpine1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpine3LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine3LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpine3_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpine3_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine2LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine2LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine1LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine1LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpine1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator2_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpine1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator0_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpineLocator0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineCurve_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpineCurve_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineHandle_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpineEffector_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake1Spine_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake0Spine_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpSpineOffset_M.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_RStatic.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_RFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_RFollow.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_RFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetArm_RFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetArm_RFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RStatic.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RFollow.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_RFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "IKLocalArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKLocalArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKLocalExtraArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKLocalOffsetArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKXWrist_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedOffsetArm_R.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKArmHandle_R_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "PoleArm_R.iog" "AllSet.dsm" -na;
connectAttr "PoleExtraArm_R.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKArm_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKExtraArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetArm_R.iog" "AllSet.dsm" -na;
connectAttr "IKArmHandle_R.iog" "AllSet.dsm" -na;
connectAttr "IKArmEffector_R.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_RStatic.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_RFollow_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_RFollow.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_RFollowNoScale_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetLeg_RFollowNoScale_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "PoleOffsetLeg_RFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_R_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleAimLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLocalLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKLocalLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLocalExtraLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLocalOffsetLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKXAnkle_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKFKAlignedOffsetLeg_R.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "PoleAnnotationLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegHandle_R_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "PoleLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "PoleLeg_R.iog" "AllSet.dsm" -na;
connectAttr "PoleExtraLeg_R.iog" "AllSet.dsm" -na;
connectAttr "PoleOffsetLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLeg_RShape.iog" "AllSet.dsm" -na;
connectAttr "IKLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKExtraLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetLeg_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegHandle_R.iog" "AllSet.dsm" -na;
connectAttr "IKLegEffector_R.iog" "AllSet.dsm" -na;
connectAttr "Scapula_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Shoulder_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Elbow_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wrist_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger1_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger2_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger1_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger2_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger1_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger2_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hip_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Knee_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Ankle_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Toes_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Spine1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Chest_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Neck1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Head1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Scapula_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Shoulder_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Elbow_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Wrist_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger1_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger2_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger1_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger2_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger1_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger2_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hip_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Knee_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Ankle_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Toes_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKMessureFromShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintShoulder_L_parentConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKXOffsetShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Shoulder_L.iog" "AllSet.dsm" -na;
connectAttr "IKXShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Elbow_L.iog" "AllSet.dsm" -na;
connectAttr "IKXElbow_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Wrist_L.iog" "AllSet.dsm" -na;
connectAttr "IKXWrist_L.iog" "AllSet.dsm" -na;
connectAttr "IKMessureFromHip_L.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintHip_L_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXOffsetHip_L.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintHip_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hip_L.iog" "AllSet.dsm" -na;
connectAttr "IKXHip_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Knee_L.iog" "AllSet.dsm" -na;
connectAttr "IKXKnee_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Ankle_L.iog" "AllSet.dsm" -na;
connectAttr "IKXAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2Toes_L.iog" "AllSet.dsm" -na;
connectAttr "IKXToes_L.iog" "AllSet.dsm" -na;
connectAttr "IKX2ToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "IKXToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "IKXOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Root_M.iog" "AllSet.dsm" -na;
connectAttr "IKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Spine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Chest_M.iog" "AllSet.dsm" -na;
connectAttr "IKXChest_M.iog" "AllSet.dsm" -na;
connectAttr "IKMessureFromShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintShoulder_R_parentConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKXOffsetShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Shoulder_R.iog" "AllSet.dsm" -na;
connectAttr "IKXShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Elbow_R.iog" "AllSet.dsm" -na;
connectAttr "IKXElbow_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Wrist_R.iog" "AllSet.dsm" -na;
connectAttr "IKXWrist_R.iog" "AllSet.dsm" -na;
connectAttr "IKMessureFromHip_R.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintHip_R_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXOffsetHip_R.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintHip_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hip_R.iog" "AllSet.dsm" -na;
connectAttr "IKXHip_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Knee_R.iog" "AllSet.dsm" -na;
connectAttr "IKXKnee_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Ankle_R.iog" "AllSet.dsm" -na;
connectAttr "IKXAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2Toes_R.iog" "AllSet.dsm" -na;
connectAttr "IKXToes_R.iog" "AllSet.dsm" -na;
connectAttr "IKX2ToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "IKXToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToScapula_L_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToScapula_L_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToScapula_L.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToWrist_L_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToWrist_L_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToWrist_L.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToChest_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToChest_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToChest_M.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToScapula_R_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToScapula_R_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToScapula_R.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToWrist_R_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKParentConstraintToWrist_R_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToWrist_R.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToWrist_L.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToHip_L.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToChest_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToWrist_R.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToHip_R.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "FKXScapula_L.iog" "AllSet.dsm" -na;
connectAttr "FKScapula_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKScapula_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraScapula_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetScapula_L.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalShoulder_L_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalOffsetShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "GlobalShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalStaticShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKXShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKShoulder_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetShoulder_L.iog" "AllSet.dsm" -na;
connectAttr "FKXElbow_L.iog" "AllSet.dsm" -na;
connectAttr "FKElbow_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKElbow_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraElbow_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetElbow_L.iog" "AllSet.dsm" -na;
connectAttr "FKXWrist_L.iog" "AllSet.dsm" -na;
connectAttr "FKWrist_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKWrist_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWrist_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWrist_L.iog" "AllSet.dsm" -na;
connectAttr "FKXIndexFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger1_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraIndexFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetIndexFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXIndexFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger2_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraIndexFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetIndexFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKXThumbFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger1_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraThumbFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetThumbFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXThumbFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger2_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraThumbFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetThumbFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMiddleFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger1_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMiddleFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMiddleFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "FKXMiddleFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger2_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMiddleFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMiddleFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "FKXHip_L.iog" "AllSet.dsm" -na;
connectAttr "FKHip_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKHip_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHip_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHip_L.iog" "AllSet.dsm" -na;
connectAttr "FKXKnee_L.iog" "AllSet.dsm" -na;
connectAttr "FKKnee_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKKnee_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraKnee_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetKnee_L.iog" "AllSet.dsm" -na;
connectAttr "FKXAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "FKAnkle_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetAnkle_L.iog" "AllSet.dsm" -na;
connectAttr "FKXToes_L.iog" "AllSet.dsm" -na;
connectAttr "FKToes_LShape.iog" "AllSet.dsm" -na;
connectAttr "FKToes_L.iog" "AllSet.dsm" -na;
connectAttr "FKExtraToes_L.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetToes_L.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "FKSpine1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetSpine1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXChest_M.iog" "AllSet.dsm" -na;
connectAttr "FKChest_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKChest_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraChest_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetChest_M.iog" "AllSet.dsm" -na;
connectAttr "FKXNeck1_M.iog" "AllSet.dsm" -na;
connectAttr "FKNeck1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKNeck1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraNeck1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetNeck1_M.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalHead1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalOffsetHead1_M.iog" "AllSet.dsm" -na;
connectAttr "GlobalHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalStaticHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKHead1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHead1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXScapula_R.iog" "AllSet.dsm" -na;
connectAttr "FKScapula_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKScapula_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraScapula_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetScapula_R.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalShoulder_R_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalOffsetShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "GlobalShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKGlobalStaticShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKXShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKShoulder_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetShoulder_R.iog" "AllSet.dsm" -na;
connectAttr "FKXElbow_R.iog" "AllSet.dsm" -na;
connectAttr "FKElbow_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKElbow_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraElbow_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetElbow_R.iog" "AllSet.dsm" -na;
connectAttr "FKXWrist_R.iog" "AllSet.dsm" -na;
connectAttr "FKWrist_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKWrist_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraWrist_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetWrist_R.iog" "AllSet.dsm" -na;
connectAttr "FKXIndexFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraIndexFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetIndexFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXIndexFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger2_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKIndexFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraIndexFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetIndexFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKXThumbFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraThumbFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetThumbFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXThumbFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger2_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKThumbFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraThumbFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetThumbFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMiddleFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger1_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMiddleFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMiddleFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "FKXMiddleFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger2_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKMiddleFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraMiddleFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetMiddleFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "FKXHip_R.iog" "AllSet.dsm" -na;
connectAttr "FKHip_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKHip_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHip_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHip_R.iog" "AllSet.dsm" -na;
connectAttr "FKXKnee_R.iog" "AllSet.dsm" -na;
connectAttr "FKKnee_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKKnee_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraKnee_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetKnee_R.iog" "AllSet.dsm" -na;
connectAttr "FKXAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "FKAnkle_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetAnkle_R.iog" "AllSet.dsm" -na;
connectAttr "FKXToes_R.iog" "AllSet.dsm" -na;
connectAttr "FKToes_RShape.iog" "AllSet.dsm" -na;
connectAttr "FKToes_R.iog" "AllSet.dsm" -na;
connectAttr "FKExtraToes_R.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetToes_R.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootSpineAligned_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootSpineAligned.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "IKRootConstraint_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKSystem_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootZeroXform.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape3.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape2.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape1.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Scapula_L.iog" "AllSet.dsm" -na;
connectAttr "Shoulder_L.iog" "AllSet.dsm" -na;
connectAttr "Elbow_L.iog" "AllSet.dsm" -na;
connectAttr "Wrist_L.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger3_L.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger3_L.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger1_L.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger2_L.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger3_L.iog" "AllSet.dsm" -na;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_L.iog" "AllSet.dsm" -na;
connectAttr "Knee_L.iog" "AllSet.dsm" -na;
connectAttr "Ankle_L.iog" "AllSet.dsm" -na;
connectAttr "Toes_L.iog" "AllSet.dsm" -na;
connectAttr "ToesEnd_L.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "Spine1_M.iog" "AllSet.dsm" -na;
connectAttr "Chest_M.iog" "AllSet.dsm" -na;
connectAttr "Neck1_M.iog" "AllSet.dsm" -na;
connectAttr "Head1_M.iog" "AllSet.dsm" -na;
connectAttr "HeadEnd_M.iog" "AllSet.dsm" -na;
connectAttr "Scapula_R.iog" "AllSet.dsm" -na;
connectAttr "Shoulder_R.iog" "AllSet.dsm" -na;
connectAttr "Elbow_R.iog" "AllSet.dsm" -na;
connectAttr "Wrist_R.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "IndexFinger3_R.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "ThumbFinger3_R.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger1_R.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger2_R.iog" "AllSet.dsm" -na;
connectAttr "MiddleFinger3_R.iog" "AllSet.dsm" -na;
connectAttr "|Group|Main|DeformationSystem|Root_M|Hip_R.iog" "AllSet.dsm" -na;
connectAttr "Knee_R.iog" "AllSet.dsm" -na;
connectAttr "Ankle_R.iog" "AllSet.dsm" -na;
connectAttr "Toes_R.iog" "AllSet.dsm" -na;
connectAttr "ToesEnd_R.iog" "AllSet.dsm" -na;
connectAttr "IKRootConstraint.iog" "AllSet.dsm" -na;
connectAttr "IKMessure.iog" "AllSet.dsm" -na;
connectAttr "IKCurve.iog" "AllSet.dsm" -na;
connectAttr "IKStatic.iog" "AllSet.dsm" -na;
connectAttr "IKFollow.iog" "AllSet.dsm" -na;
connectAttr "IKHandle.iog" "AllSet.dsm" -na;
connectAttr "IKJoints.iog" "AllSet.dsm" -na;
connectAttr "DynamicSystem.iog" "AllSet.dsm" -na;
connectAttr "ConstraintSystem.iog" "AllSet.dsm" -na;
connectAttr "GlobalSystem.iog" "AllSet.dsm" -na;
connectAttr "TwistSystem.iog" "AllSet.dsm" -na;
connectAttr "RootSystem.iog" "AllSet.dsm" -na;
connectAttr "BendSystem.iog" "AllSet.dsm" -na;
connectAttr "FKIKSystem.iog" "AllSet.dsm" -na;
connectAttr "IKSystem.iog" "AllSet.dsm" -na;
connectAttr "FKSystem.iog" "AllSet.dsm" -na;
connectAttr "DeformationSystem.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "MainShape.iog" "AllSet.dsm" -na;
connectAttr "Main.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "RootX_M.legLock" "LegLockUnitConversion.i";
connectAttr "LegLockUnitConversion.o" "LegLockReverse.ix";
connectAttr "globalUnitConversionShoulder_R.o" "globalReverseShoulder_R.ix";
connectAttr "FKShoulder_R.Global" "globalUnitConversionShoulder_R.i";
connectAttr "globalUnitConversionHead1_M.o" "globalReverseHead1_M.ix";
connectAttr "FKHead1_M.Global" "globalUnitConversionHead1_M.i";
connectAttr "globalUnitConversionShoulder_L.o" "globalReverseShoulder_L.ix";
connectAttr "FKShoulder_L.Global" "globalUnitConversionShoulder_L.i";
connectAttr "PoleLeg_R.follow" "PoleLeg_RSetRangeFollow.vx";
connectAttr "PoleLeg_R.follow" "PoleLeg_RSetRangeFollow.vy";
connectAttr "IKArm_R.follow" "IKArm_RSetRangeFollow.vx";
connectAttr "IKArm_R.follow" "IKArm_RSetRangeFollow.vy";
connectAttr "PoleArm_R.follow" "PoleArm_RSetRangeFollow.vx";
connectAttr "PoleArm_R.follow" "PoleArm_RSetRangeFollow.vy";
connectAttr "IKSpine3_M.stiff" "IKStiffSpine3SetRange_M.vx";
connectAttr "IKSpine3_M.stiff" "IKStiffSpine3SetRange_M.vy";
connectAttr "IKSpineCurve_MShape.ws" "IKCurveInfoSpine_M.ic";
connectAttr "IKCurveInfoSpine_M.al" "IKCurveInfoNormalizeSpine_M.i1x";
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKCurveInfoAllMultiplySpine_M.i1x"
		;
connectAttr "Main.sx" "IKCurveInfoAllMultiplySpine_M.i2x";
connectAttr "IKSpine3_M.stretchy" "stretchySpineUnitConversion_M.i";
connectAttr "stretchySpineUnitConversion_M.o" "stretchySpineReverse_M.ix";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "stretchySpineMultiplyDivide0_M.i2x"
		;
connectAttr "stretchySpineUnitConversion_M.o" "stretchySpineBlendTwo0_M.ab";
connectAttr "stretchySpineMultiplyDivide0_M.ox" "stretchySpineBlendTwo0_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "stretchySpineMultiplyDivide1_M.i2x"
		;
connectAttr "stretchySpineUnitConversion_M.o" "stretchySpineBlendTwo1_M.ab";
connectAttr "stretchySpineMultiplyDivide1_M.ox" "stretchySpineBlendTwo1_M.i[1]";
connectAttr "IKSpine3_M.autoTwist" "IKSpine3_MAutoTwistUnitConversion.i";
connectAttr "MainTwistFlipSetRange.oy" "IKSpine3_M360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "unitConversion1.o" "IKSpine3_M360TwistDivideMultiplyDivide.i2x";
connectAttr "TwistBalancerChest_M.rx" "unitConversion1.i";
connectAttr "IKSpine3_MAutoTwistUnitConversion.o" "IKSpine3_MAutoTwistMultiplyDivide.i1x"
		;
connectAttr "IKSpine3_M360TwistDivideMultiplyDivide.ox" "IKSpine3_MAutoTwistMultiplyDivide.i2x"
		;
connectAttr "IKSpine3_MAutoTwistMultiplyDivide.ox" "IKSpine3_MExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "IKSpine3_M.extraTwist" "IKSpine3_MExtraTwistPlusMinusAverage.i1[1]"
		;
connectAttr "unitConversion2.o" "IKSpineRamp_M.cel[1].ecr";
connectAttr "TwistBalancerSpine2_M.rx" "unitConversion2.i";
connectAttr "IKSpine3_M.flipAxis" "IKSpineFlipAxisSetRange_M.vx";
connectAttr "IKSpine3_M.flipAxis" "IKSpineFlipAxisSetRange_M.vy";
connectAttr "IKSpine3_M.flipAxis" "IKSpineFlipAxisSetRange_M.vz";
connectAttr "IKSpine3_M.extraTwist" "unitConversion3.i";
connectAttr "IKSpine3_M.follow" "IKSpine3_MSetRangeFollow.vx";
connectAttr "IKSpine3_M.follow" "IKSpine3_MSetRangeFollow.vy";
connectAttr "IKSpine2_M.followEnd" "IKFollowEndSpine2_MUnitConversion.i";
connectAttr "IKFollowEndSpine2_MUnitConversion.o" "IKFollowEndSpine2_MReverse.ix"
		;
connectAttr "IKSpineCurve_MShape.ws" "IKAcPociRoot_M.ic";
connectAttr "IKSpineCurve_MShape.ws" "IKAcPociSpine1_M.ic";
connectAttr "IKSpineCurve_MShape.ws" "IKAcPociChest_M.ic";
connectAttr "IKSpine1_M.FixedOrient" "IKFixedOrientSpine1_MUnitConversion.i";
connectAttr "IKFixedOrientSpine1_MUnitConversion.o" "IKFixedOrientSpine1_MReverse.ix"
		;
connectAttr "PoleLeg_L.follow" "PoleLeg_LSetRangeFollow.vx";
connectAttr "PoleLeg_L.follow" "PoleLeg_LSetRangeFollow.vy";
connectAttr "IKArm_L.follow" "IKArm_LSetRangeFollow.vx";
connectAttr "IKArm_L.follow" "IKArm_LSetRangeFollow.vy";
connectAttr "PoleArm_L.follow" "PoleArm_LSetRangeFollow.vx";
connectAttr "PoleArm_L.follow" "PoleArm_LSetRangeFollow.vy";
connectAttr "FKIKLeg_R.FKIKBlend" "FKIKBlendLegUnitConversion_R.i";
connectAttr "FKIKBlendLegUnitConversion_R.o" "FKIKBlendLegReverse_R.ix";
connectAttr "FKIKLeg_R.autoVis" "FKIKBlendLegCondition_R.ft";
connectAttr "FKIKLeg_R.IKVis" "FKIKBlendLegCondition_R.ctr";
connectAttr "FKIKLeg_R.FKVis" "FKIKBlendLegCondition_R.ctg";
connectAttr "FKIKLeg_R.FKIKBlend" "FKIKBlendLegCondition_R.cfr";
connectAttr "FKIKBlendLegsetRange_R.ox" "FKIKBlendLegCondition_R.cfg";
connectAttr "FKIKLeg_R.FKIKBlend" "FKIKBlendLegsetRange_R.vx";
connectAttr "FKIKArm_R.FKIKBlend" "FKIKBlendArmUnitConversion_R.i";
connectAttr "FKIKBlendArmUnitConversion_R.o" "FKIKBlendArmReverse_R.ix";
connectAttr "FKIKArm_R.autoVis" "FKIKBlendArmCondition_R.ft";
connectAttr "FKIKArm_R.IKVis" "FKIKBlendArmCondition_R.ctr";
connectAttr "FKIKArm_R.FKVis" "FKIKBlendArmCondition_R.ctg";
connectAttr "FKIKArm_R.FKIKBlend" "FKIKBlendArmCondition_R.cfr";
connectAttr "FKIKBlendArmsetRange_R.ox" "FKIKBlendArmCondition_R.cfg";
connectAttr "FKIKArm_R.FKIKBlend" "FKIKBlendArmsetRange_R.vx";
connectAttr "FKIKSpine_M.FKIKBlend" "FKIKBlendSpineUnitConversion_M.i";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "FKIKBlendSpineReverse_M.ix";
connectAttr "FKIKSpine_M.autoVis" "FKIKBlendSpineCondition_M.ft";
connectAttr "FKIKSpine_M.IKVis" "FKIKBlendSpineCondition_M.ctr";
connectAttr "FKIKSpine_M.FKVis" "FKIKBlendSpineCondition_M.ctg";
connectAttr "FKIKSpine_M.FKIKBlend" "FKIKBlendSpineCondition_M.cfr";
connectAttr "FKIKBlendSpinesetRange_M.ox" "FKIKBlendSpineCondition_M.cfg";
connectAttr "FKIKSpine_M.FKIKBlend" "FKIKBlendSpinesetRange_M.vx";
connectAttr "FKIKLeg_L.FKIKBlend" "FKIKBlendLegUnitConversion_L.i";
connectAttr "FKIKBlendLegUnitConversion_L.o" "FKIKBlendLegReverse_L.ix";
connectAttr "FKIKLeg_L.autoVis" "FKIKBlendLegCondition_L.ft";
connectAttr "FKIKLeg_L.IKVis" "FKIKBlendLegCondition_L.ctr";
connectAttr "FKIKLeg_L.FKVis" "FKIKBlendLegCondition_L.ctg";
connectAttr "FKIKLeg_L.FKIKBlend" "FKIKBlendLegCondition_L.cfr";
connectAttr "FKIKBlendLegsetRange_L.ox" "FKIKBlendLegCondition_L.cfg";
connectAttr "FKIKLeg_L.FKIKBlend" "FKIKBlendLegsetRange_L.vx";
connectAttr "FKIKArm_L.FKIKBlend" "FKIKBlendArmUnitConversion_L.i";
connectAttr "FKIKBlendArmUnitConversion_L.o" "FKIKBlendArmReverse_L.ix";
connectAttr "FKIKArm_L.autoVis" "FKIKBlendArmCondition_L.ft";
connectAttr "FKIKArm_L.IKVis" "FKIKBlendArmCondition_L.ctr";
connectAttr "FKIKArm_L.FKVis" "FKIKBlendArmCondition_L.ctg";
connectAttr "FKIKArm_L.FKIKBlend" "FKIKBlendArmCondition_L.cfr";
connectAttr "FKIKBlendArmsetRange_L.ox" "FKIKBlendArmCondition_L.cfg";
connectAttr "FKIKArm_L.FKIKBlend" "FKIKBlendArmsetRange_L.vx";
connectAttr "IKLeg_R.swivel" "unitConversion4.i";
connectAttr "IKLeg_R.rock" "IKLegFootRockInnerPivotClamp_R.ipr";
connectAttr "IKLegFootRockInnerPivotClamp_R.opr" "unitConversion5.i";
connectAttr "IKLeg_R.rock" "IKLegFootRockOuterPivotClamp_R.ipr";
connectAttr "IKLegFootRockOuterPivotClamp_R.opr" "unitConversion6.i";
connectAttr "IKLeg_R.rollAngle" "Leg_RAngleReverse.i1x";
connectAttr "IKLeg_R.roll" "IKRollAngleLeg_R.vx";
connectAttr "IKLeg_R.roll" "IKRollAngleLeg_R.vy";
connectAttr "IKLeg_R.roll" "IKRollAngleLeg_R.vz";
connectAttr "Leg_RAngleReverse.ox" "IKRollAngleLeg_R.nx";
connectAttr "IKLeg_R.rollAngle" "IKRollAngleLeg_R.my";
connectAttr "IKLeg_R.rollAngle" "IKRollAngleLeg_R.mz";
connectAttr "IKRollAngleLeg_R.ox" "unitConversion7.i";
connectAttr "IKRollAngleLeg_R.oy" "unitConversion8.i";
connectAttr "IKRollAngleLeg_R.oz" "unitConversion9.i";
connectAttr "IKLeg_L.swivel" "unitConversion10.i";
connectAttr "IKLeg_L.rock" "IKLegFootRockInnerPivotClamp_L.ipr";
connectAttr "IKLegFootRockInnerPivotClamp_L.opr" "unitConversion11.i";
connectAttr "IKLeg_L.rock" "IKLegFootRockOuterPivotClamp_L.ipr";
connectAttr "IKLegFootRockOuterPivotClamp_L.opr" "unitConversion12.i";
connectAttr "IKLeg_L.rollAngle" "Leg_LAngleReverse.i1x";
connectAttr "IKLeg_L.roll" "IKRollAngleLeg_L.vx";
connectAttr "IKLeg_L.roll" "IKRollAngleLeg_L.vy";
connectAttr "IKLeg_L.roll" "IKRollAngleLeg_L.vz";
connectAttr "Leg_LAngleReverse.ox" "IKRollAngleLeg_L.nx";
connectAttr "IKLeg_L.rollAngle" "IKRollAngleLeg_L.my";
connectAttr "IKLeg_L.rollAngle" "IKRollAngleLeg_L.mz";
connectAttr "IKRollAngleLeg_L.ox" "unitConversion13.i";
connectAttr "IKRollAngleLeg_L.oy" "unitConversion14.i";
connectAttr "IKRollAngleLeg_L.oz" "unitConversion15.i";
connectAttr "FKIKBlendLegUnitConversion_R.o" "ScaleBlendToesEnd_R.b";
connectAttr "FKToes_R.sx" "ScaleBlendToes_R.c2r";
connectAttr "FKToes_R.sy" "ScaleBlendToes_R.c2g";
connectAttr "FKToes_R.sz" "ScaleBlendToes_R.c2b";
connectAttr "FKIKBlendLegUnitConversion_R.o" "ScaleBlendToes_R.b";
connectAttr "FKAnkle_R.sx" "ScaleBlendAnkle_R.c2r";
connectAttr "FKAnkle_R.sy" "ScaleBlendAnkle_R.c2g";
connectAttr "FKAnkle_R.sz" "ScaleBlendAnkle_R.c2b";
connectAttr "FKIKBlendLegUnitConversion_R.o" "ScaleBlendAnkle_R.b";
connectAttr "IKLeg_R.sx" "ScaleBlendAnkle_R.c1r";
connectAttr "IKLeg_R.sy" "ScaleBlendAnkle_R.c1g";
connectAttr "IKLeg_R.sz" "ScaleBlendAnkle_R.c1b";
connectAttr "FKKnee_R.sx" "ScaleBlendKnee_R.c2r";
connectAttr "FKKnee_R.sy" "ScaleBlendKnee_R.c2g";
connectAttr "FKKnee_R.sz" "ScaleBlendKnee_R.c2b";
connectAttr "FKIKBlendLegUnitConversion_R.o" "ScaleBlendKnee_R.b";
connectAttr "PoleLockBlenderNormalizeIKXAnkle_R.ox" "ScaleBlendKnee_R.c1r";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendKnee_R.c1g";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendKnee_R.c1b";
connectAttr "FKHip_R.sx" "ScaleBlendHip_R.c2r";
connectAttr "FKHip_R.sy" "ScaleBlendHip_R.c2g";
connectAttr "FKHip_R.sz" "ScaleBlendHip_R.c2b";
connectAttr "FKIKBlendLegUnitConversion_R.o" "ScaleBlendHip_R.b";
connectAttr "PoleLockBlenderNormalizeIKXKnee_R.ox" "ScaleBlendHip_R.c1r";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendHip_R.c1g";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendHip_R.c1b";
connectAttr "FKWrist_R.sx" "ScaleBlendWrist_R.c2r";
connectAttr "FKWrist_R.sy" "ScaleBlendWrist_R.c2g";
connectAttr "FKWrist_R.sz" "ScaleBlendWrist_R.c2b";
connectAttr "FKIKBlendArmUnitConversion_R.o" "ScaleBlendWrist_R.b";
connectAttr "IKArm_R.sx" "ScaleBlendWrist_R.c1r";
connectAttr "IKArm_R.sy" "ScaleBlendWrist_R.c1g";
connectAttr "IKArm_R.sz" "ScaleBlendWrist_R.c1b";
connectAttr "FKElbow_R.sx" "ScaleBlendElbow_R.c2r";
connectAttr "FKElbow_R.sy" "ScaleBlendElbow_R.c2g";
connectAttr "FKElbow_R.sz" "ScaleBlendElbow_R.c2b";
connectAttr "FKIKBlendArmUnitConversion_R.o" "ScaleBlendElbow_R.b";
connectAttr "PoleLockBlenderNormalizeIKXWrist_R.ox" "ScaleBlendElbow_R.c1r";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendElbow_R.c1g";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendElbow_R.c1b";
connectAttr "FKShoulder_R.sx" "ScaleBlendShoulder_R.c2r";
connectAttr "FKShoulder_R.sy" "ScaleBlendShoulder_R.c2g";
connectAttr "FKShoulder_R.sz" "ScaleBlendShoulder_R.c2b";
connectAttr "FKIKBlendArmUnitConversion_R.o" "ScaleBlendShoulder_R.b";
connectAttr "PoleLockBlenderNormalizeIKXElbow_R.ox" "ScaleBlendShoulder_R.c1r";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendShoulder_R.c1g";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendShoulder_R.c1b";
connectAttr "FKChest_M.sx" "ScaleBlendChest_M.c2r";
connectAttr "FKChest_M.sy" "ScaleBlendChest_M.c2g";
connectAttr "FKChest_M.sz" "ScaleBlendChest_M.c2b";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "ScaleBlendChest_M.b";
connectAttr "IKScaleChestMultiplyDivide_M.ox" "ScaleBlendChest_M.c1r";
connectAttr "IKScaleChestMultiplyDivide_M.oy" "ScaleBlendChest_M.c1g";
connectAttr "IKScaleChestMultiplyDivide_M.oz" "ScaleBlendChest_M.c1b";
connectAttr "FKSpine1_M.sx" "ScaleBlendSpine1_M.c2r";
connectAttr "FKSpine1_M.sy" "ScaleBlendSpine1_M.c2g";
connectAttr "FKSpine1_M.sz" "ScaleBlendSpine1_M.c2b";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "ScaleBlendSpine1_M.b";
connectAttr "IKScaleSpine1MultiplyDivide_M.ox" "ScaleBlendSpine1_M.c1r";
connectAttr "IKScaleSpine1MultiplyDivide_M.oy" "ScaleBlendSpine1_M.c1g";
connectAttr "IKScaleSpine1MultiplyDivide_M.oz" "ScaleBlendSpine1_M.c1b";
connectAttr "FKRoot_M.sx" "ScaleBlendRoot_M.c2r";
connectAttr "FKRoot_M.sy" "ScaleBlendRoot_M.c2g";
connectAttr "FKRoot_M.sz" "ScaleBlendRoot_M.c2b";
connectAttr "FKIKBlendSpineUnitConversion_M.o" "ScaleBlendRoot_M.b";
connectAttr "IKScaleRootMultiplyDivide_M.ox" "ScaleBlendRoot_M.c1r";
connectAttr "IKScaleRootMultiplyDivide_M.oy" "ScaleBlendRoot_M.c1g";
connectAttr "IKScaleRootMultiplyDivide_M.oz" "ScaleBlendRoot_M.c1b";
connectAttr "FKIKBlendLegUnitConversion_L.o" "ScaleBlendToesEnd_L.b";
connectAttr "FKToes_L.sx" "ScaleBlendToes_L.c2r";
connectAttr "FKToes_L.sy" "ScaleBlendToes_L.c2g";
connectAttr "FKToes_L.sz" "ScaleBlendToes_L.c2b";
connectAttr "FKIKBlendLegUnitConversion_L.o" "ScaleBlendToes_L.b";
connectAttr "FKAnkle_L.sx" "ScaleBlendAnkle_L.c2r";
connectAttr "FKAnkle_L.sy" "ScaleBlendAnkle_L.c2g";
connectAttr "FKAnkle_L.sz" "ScaleBlendAnkle_L.c2b";
connectAttr "FKIKBlendLegUnitConversion_L.o" "ScaleBlendAnkle_L.b";
connectAttr "IKLeg_L.sx" "ScaleBlendAnkle_L.c1r";
connectAttr "IKLeg_L.sy" "ScaleBlendAnkle_L.c1g";
connectAttr "IKLeg_L.sz" "ScaleBlendAnkle_L.c1b";
connectAttr "FKKnee_L.sx" "ScaleBlendKnee_L.c2r";
connectAttr "FKKnee_L.sy" "ScaleBlendKnee_L.c2g";
connectAttr "FKKnee_L.sz" "ScaleBlendKnee_L.c2b";
connectAttr "FKIKBlendLegUnitConversion_L.o" "ScaleBlendKnee_L.b";
connectAttr "PoleLockBlenderNormalizeIKXAnkle_L.ox" "ScaleBlendKnee_L.c1r";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendKnee_L.c1g";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendKnee_L.c1b";
connectAttr "FKHip_L.sx" "ScaleBlendHip_L.c2r";
connectAttr "FKHip_L.sy" "ScaleBlendHip_L.c2g";
connectAttr "FKHip_L.sz" "ScaleBlendHip_L.c2b";
connectAttr "FKIKBlendLegUnitConversion_L.o" "ScaleBlendHip_L.b";
connectAttr "PoleLockBlenderNormalizeIKXKnee_L.ox" "ScaleBlendHip_L.c1r";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendHip_L.c1g";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendHip_L.c1b";
connectAttr "FKWrist_L.sx" "ScaleBlendWrist_L.c2r";
connectAttr "FKWrist_L.sy" "ScaleBlendWrist_L.c2g";
connectAttr "FKWrist_L.sz" "ScaleBlendWrist_L.c2b";
connectAttr "FKIKBlendArmUnitConversion_L.o" "ScaleBlendWrist_L.b";
connectAttr "IKArm_L.sx" "ScaleBlendWrist_L.c1r";
connectAttr "IKArm_L.sy" "ScaleBlendWrist_L.c1g";
connectAttr "IKArm_L.sz" "ScaleBlendWrist_L.c1b";
connectAttr "FKElbow_L.sx" "ScaleBlendElbow_L.c2r";
connectAttr "FKElbow_L.sy" "ScaleBlendElbow_L.c2g";
connectAttr "FKElbow_L.sz" "ScaleBlendElbow_L.c2b";
connectAttr "FKIKBlendArmUnitConversion_L.o" "ScaleBlendElbow_L.b";
connectAttr "PoleLockBlenderNormalizeIKXWrist_L.ox" "ScaleBlendElbow_L.c1r";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendElbow_L.c1g";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendElbow_L.c1b";
connectAttr "FKShoulder_L.sx" "ScaleBlendShoulder_L.c2r";
connectAttr "FKShoulder_L.sy" "ScaleBlendShoulder_L.c2g";
connectAttr "FKShoulder_L.sz" "ScaleBlendShoulder_L.c2b";
connectAttr "FKIKBlendArmUnitConversion_L.o" "ScaleBlendShoulder_L.b";
connectAttr "PoleLockBlenderNormalizeIKXElbow_L.ox" "ScaleBlendShoulder_L.c1r";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendShoulder_L.c1g";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendShoulder_L.c1b";
connectAttr "IKScalerRoot_M.s" "IKScaleRootMultiplyDivide_M.i1";
connectAttr "IKScalerSpine1_M.s" "IKScaleSpine1MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBSpine1_M.o1" "IKScaleSpine1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBSpine1_M.o1" "IKScaleSpine1MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerChest_M.s" "IKScaleChestMultiplyDivide_M.i1";
connectAttr "IKLeg_R.stretchy" "IKSetRangeStretchLeg_R.vx";
connectAttr "IKLeg_R.antiPop" "IKSetRangeAntiPopLeg_R.vx";
connectAttr "IKmessureBlendStretchLeg_R.o" "IKmessureDivLeg_R.i1x";
connectAttr "IKSetRangeAntiPopLeg_R.ox" "IKmessureBlendAntiPopLeg_R.ab";
connectAttr "IKdistanceLeg_RShape_normal.o" "IKmessureBlendAntiPopLeg_R.i[0]";
connectAttr "IKdistanceLeg_RShape_antiPop.o" "IKmessureBlendAntiPopLeg_R.i[1]";
connectAttr "IKdistanceLeg_RShape.dist" "IKdistanceLeg_RShape_antiPop.i";
connectAttr "IKdistanceLeg_RShape.dist" "IKdistanceLeg_RShape_normal.i";
connectAttr "IKmessureBlendAntiPopLeg_R.o" "IKdistanceClampLeg_R.ipr";
connectAttr "IKSetRangeStretchLeg_R.ox" "IKmessureBlendStretchLeg_R.ab";
connectAttr "IKdistanceClampLeg_R.opr" "IKmessureBlendStretchLeg_R.i[0]";
connectAttr "IKmessureBlendAntiPopLeg_R.o" "IKmessureBlendStretchLeg_R.i[1]";
connectAttr "PoleLeg_R.lock" "PoleLegUnitConversion_R.i";
connectAttr "IKmessureDivLeg_R.ox" "IKXKnee_R_IKmessureDiv_R.i1x";
connectAttr "IKXKnee_R_IKLenght_R.ox" "IKXKnee_R_IKmessureDiv_R.i2x";
connectAttr "IKLeg_R.Lenght1" "IKXKnee_R_IKLenght_R.i1x";
connectAttr "IKXKnee_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXKnee_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.o" "PoleLockBlenderIKXKnee_R.i[1]"
		;
connectAttr "PoleLegUnitConversion_R.o" "PoleLockBlenderIKXKnee_R.ab";
connectAttr "PoleLeg_R.wm" "IKXKnee_RDistance.im1";
connectAttr "IKMessureFromHip_R.wm" "IKXKnee_RDistance.im2";
connectAttr "PoleLockMainScalerIKXKnee_R.ox" "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.i"
		;
connectAttr "IKXKnee_RDistance.d" "PoleLockMainScalerIKXKnee_R.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXKnee_R.i2x";
connectAttr "PoleLockBlenderIKXKnee_R.o" "PoleLockBlenderNormalizeIKXKnee_R.i1x"
		;
connectAttr "IKmessureDivLeg_R.ox" "IKXAnkle_R_IKmessureDiv_R.i1x";
connectAttr "IKXAnkle_R_IKLenght_R.ox" "IKXAnkle_R_IKmessureDiv_R.i2x";
connectAttr "IKLeg_R.Lenght2" "IKXAnkle_R_IKLenght_R.i1x";
connectAttr "IKXAnkle_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXAnkle_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.o" "PoleLockBlenderIKXAnkle_R.i[1]"
		;
connectAttr "PoleLegUnitConversion_R.o" "PoleLockBlenderIKXAnkle_R.ab";
connectAttr "PoleLeg_R.wm" "IKXAnkle_RDistance.im1";
connectAttr "IKmessureLoc2Leg_R.wm" "IKXAnkle_RDistance.im2";
connectAttr "PoleLockMainScalerIKXAnkle_R.ox" "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.i"
		;
connectAttr "IKXAnkle_RDistance.d" "PoleLockMainScalerIKXAnkle_R.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXAnkle_R.i2x";
connectAttr "PoleLockBlenderIKXAnkle_R.o" "PoleLockBlenderNormalizeIKXAnkle_R.i1x"
		;
connectAttr "IKArm_R.stretchy" "IKSetRangeStretchArm_R.vx";
connectAttr "IKArm_R.antiPop" "IKSetRangeAntiPopArm_R.vx";
connectAttr "IKmessureBlendStretchArm_R.o" "IKmessureDivArm_R.i1x";
connectAttr "IKSetRangeAntiPopArm_R.ox" "IKmessureBlendAntiPopArm_R.ab";
connectAttr "IKdistanceArm_RShape_normal.o" "IKmessureBlendAntiPopArm_R.i[0]";
connectAttr "IKdistanceArm_RShape_antiPop.o" "IKmessureBlendAntiPopArm_R.i[1]";
connectAttr "IKdistanceArm_RShape.dist" "IKdistanceArm_RShape_antiPop.i";
connectAttr "IKdistanceArm_RShape.dist" "IKdistanceArm_RShape_normal.i";
connectAttr "IKmessureBlendAntiPopArm_R.o" "IKdistanceClampArm_R.ipr";
connectAttr "IKSetRangeStretchArm_R.ox" "IKmessureBlendStretchArm_R.ab";
connectAttr "IKdistanceClampArm_R.opr" "IKmessureBlendStretchArm_R.i[0]";
connectAttr "IKmessureBlendAntiPopArm_R.o" "IKmessureBlendStretchArm_R.i[1]";
connectAttr "PoleArm_R.lock" "PoleArmUnitConversion_R.i";
connectAttr "IKmessureDivArm_R.ox" "IKXElbow_R_IKmessureDiv_R.i1x";
connectAttr "IKXElbow_R_IKLenght_R.ox" "IKXElbow_R_IKmessureDiv_R.i2x";
connectAttr "IKArm_R.Lenght1" "IKXElbow_R_IKLenght_R.i1x";
connectAttr "IKXElbow_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXElbow_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.o" "PoleLockBlenderIKXElbow_R.i[1]"
		;
connectAttr "PoleArmUnitConversion_R.o" "PoleLockBlenderIKXElbow_R.ab";
connectAttr "PoleArm_R.wm" "IKXElbow_RDistance.im1";
connectAttr "IKMessureFromShoulder_R.wm" "IKXElbow_RDistance.im2";
connectAttr "PoleLockMainScalerIKXElbow_R.ox" "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.i"
		;
connectAttr "IKXElbow_RDistance.d" "PoleLockMainScalerIKXElbow_R.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXElbow_R.i2x";
connectAttr "PoleLockBlenderIKXElbow_R.o" "PoleLockBlenderNormalizeIKXElbow_R.i1x"
		;
connectAttr "IKmessureDivArm_R.ox" "IKXWrist_R_IKmessureDiv_R.i1x";
connectAttr "IKXWrist_R_IKLenght_R.ox" "IKXWrist_R_IKmessureDiv_R.i2x";
connectAttr "IKArm_R.Lenght2" "IKXWrist_R_IKLenght_R.i1x";
connectAttr "IKXWrist_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXWrist_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.o" "PoleLockBlenderIKXWrist_R.i[1]"
		;
connectAttr "PoleArmUnitConversion_R.o" "PoleLockBlenderIKXWrist_R.ab";
connectAttr "PoleArm_R.wm" "IKXWrist_RDistance.im1";
connectAttr "IKmessureLoc2Arm_R.wm" "IKXWrist_RDistance.im2";
connectAttr "PoleLockMainScalerIKXWrist_R.ox" "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.i"
		;
connectAttr "IKXWrist_RDistance.d" "PoleLockMainScalerIKXWrist_R.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXWrist_R.i2x";
connectAttr "PoleLockBlenderIKXWrist_R.o" "PoleLockBlenderNormalizeIKXWrist_R.i1x"
		;
connectAttr "IKLeg_L.stretchy" "IKSetRangeStretchLeg_L.vx";
connectAttr "IKLeg_L.antiPop" "IKSetRangeAntiPopLeg_L.vx";
connectAttr "IKmessureBlendStretchLeg_L.o" "IKmessureDivLeg_L.i1x";
connectAttr "IKSetRangeAntiPopLeg_L.ox" "IKmessureBlendAntiPopLeg_L.ab";
connectAttr "IKdistanceLeg_LShape_normal.o" "IKmessureBlendAntiPopLeg_L.i[0]";
connectAttr "IKdistanceLeg_LShape_antiPop.o" "IKmessureBlendAntiPopLeg_L.i[1]";
connectAttr "IKdistanceLeg_LShape.dist" "IKdistanceLeg_LShape_antiPop.i";
connectAttr "IKdistanceLeg_LShape.dist" "IKdistanceLeg_LShape_normal.i";
connectAttr "IKmessureBlendAntiPopLeg_L.o" "IKdistanceClampLeg_L.ipr";
connectAttr "IKSetRangeStretchLeg_L.ox" "IKmessureBlendStretchLeg_L.ab";
connectAttr "IKdistanceClampLeg_L.opr" "IKmessureBlendStretchLeg_L.i[0]";
connectAttr "IKmessureBlendAntiPopLeg_L.o" "IKmessureBlendStretchLeg_L.i[1]";
connectAttr "PoleLeg_L.lock" "PoleLegUnitConversion_L.i";
connectAttr "IKmessureDivLeg_L.ox" "IKXKnee_L_IKmessureDiv_L.i1x";
connectAttr "IKXKnee_L_IKLenght_L.ox" "IKXKnee_L_IKmessureDiv_L.i2x";
connectAttr "IKLeg_L.Lenght1" "IKXKnee_L_IKLenght_L.i1x";
connectAttr "IKXKnee_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXKnee_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.o" "PoleLockBlenderIKXKnee_L.i[1]"
		;
connectAttr "PoleLegUnitConversion_L.o" "PoleLockBlenderIKXKnee_L.ab";
connectAttr "PoleLeg_L.wm" "IKXKnee_LDistance.im1";
connectAttr "IKMessureFromHip_L.wm" "IKXKnee_LDistance.im2";
connectAttr "PoleLockMainScalerIKXKnee_L.ox" "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.i"
		;
connectAttr "IKXKnee_LDistance.d" "PoleLockMainScalerIKXKnee_L.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXKnee_L.i2x";
connectAttr "PoleLockBlenderIKXKnee_L.o" "PoleLockBlenderNormalizeIKXKnee_L.i1x"
		;
connectAttr "IKmessureDivLeg_L.ox" "IKXAnkle_L_IKmessureDiv_L.i1x";
connectAttr "IKXAnkle_L_IKLenght_L.ox" "IKXAnkle_L_IKmessureDiv_L.i2x";
connectAttr "IKLeg_L.Lenght2" "IKXAnkle_L_IKLenght_L.i1x";
connectAttr "IKXAnkle_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXAnkle_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.o" "PoleLockBlenderIKXAnkle_L.i[1]"
		;
connectAttr "PoleLegUnitConversion_L.o" "PoleLockBlenderIKXAnkle_L.ab";
connectAttr "PoleLeg_L.wm" "IKXAnkle_LDistance.im1";
connectAttr "IKmessureLoc2Leg_L.wm" "IKXAnkle_LDistance.im2";
connectAttr "PoleLockMainScalerIKXAnkle_L.ox" "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.i"
		;
connectAttr "IKXAnkle_LDistance.d" "PoleLockMainScalerIKXAnkle_L.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXAnkle_L.i2x";
connectAttr "PoleLockBlenderIKXAnkle_L.o" "PoleLockBlenderNormalizeIKXAnkle_L.i1x"
		;
connectAttr "IKArm_L.stretchy" "IKSetRangeStretchArm_L.vx";
connectAttr "IKArm_L.antiPop" "IKSetRangeAntiPopArm_L.vx";
connectAttr "IKmessureBlendStretchArm_L.o" "IKmessureDivArm_L.i1x";
connectAttr "IKSetRangeAntiPopArm_L.ox" "IKmessureBlendAntiPopArm_L.ab";
connectAttr "IKdistanceArm_LShape_normal.o" "IKmessureBlendAntiPopArm_L.i[0]";
connectAttr "IKdistanceArm_LShape_antiPop.o" "IKmessureBlendAntiPopArm_L.i[1]";
connectAttr "IKdistanceArm_LShape.dist" "IKdistanceArm_LShape_antiPop.i";
connectAttr "IKdistanceArm_LShape.dist" "IKdistanceArm_LShape_normal.i";
connectAttr "IKmessureBlendAntiPopArm_L.o" "IKdistanceClampArm_L.ipr";
connectAttr "IKSetRangeStretchArm_L.ox" "IKmessureBlendStretchArm_L.ab";
connectAttr "IKdistanceClampArm_L.opr" "IKmessureBlendStretchArm_L.i[0]";
connectAttr "IKmessureBlendAntiPopArm_L.o" "IKmessureBlendStretchArm_L.i[1]";
connectAttr "PoleArm_L.lock" "PoleArmUnitConversion_L.i";
connectAttr "IKmessureDivArm_L.ox" "IKXElbow_L_IKmessureDiv_L.i1x";
connectAttr "IKXElbow_L_IKLenght_L.ox" "IKXElbow_L_IKmessureDiv_L.i2x";
connectAttr "IKArm_L.Lenght1" "IKXElbow_L_IKLenght_L.i1x";
connectAttr "IKXElbow_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXElbow_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.o" "PoleLockBlenderIKXElbow_L.i[1]"
		;
connectAttr "PoleArmUnitConversion_L.o" "PoleLockBlenderIKXElbow_L.ab";
connectAttr "PoleArm_L.wm" "IKXElbow_LDistance.im1";
connectAttr "IKMessureFromShoulder_L.wm" "IKXElbow_LDistance.im2";
connectAttr "PoleLockMainScalerIKXElbow_L.ox" "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.i"
		;
connectAttr "IKXElbow_LDistance.d" "PoleLockMainScalerIKXElbow_L.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXElbow_L.i2x";
connectAttr "PoleLockBlenderIKXElbow_L.o" "PoleLockBlenderNormalizeIKXElbow_L.i1x"
		;
connectAttr "IKmessureDivArm_L.ox" "IKXWrist_L_IKmessureDiv_L.i1x";
connectAttr "IKXWrist_L_IKLenght_L.ox" "IKXWrist_L_IKmessureDiv_L.i2x";
connectAttr "IKArm_L.Lenght2" "IKXWrist_L_IKLenght_L.i1x";
connectAttr "IKXWrist_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXWrist_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.o" "PoleLockBlenderIKXWrist_L.i[1]"
		;
connectAttr "PoleArmUnitConversion_L.o" "PoleLockBlenderIKXWrist_L.ab";
connectAttr "PoleArm_L.wm" "IKXWrist_LDistance.im1";
connectAttr "IKmessureLoc2Arm_L.wm" "IKXWrist_LDistance.im2";
connectAttr "PoleLockMainScalerIKXWrist_L.ox" "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.i"
		;
connectAttr "IKXWrist_LDistance.d" "PoleLockMainScalerIKXWrist_L.i1x";
connectAttr "Main.sy" "PoleLockMainScalerIKXWrist_L.i2x";
connectAttr "PoleLockBlenderIKXWrist_L.o" "PoleLockBlenderNormalizeIKXWrist_L.i1x"
		;
connectAttr "RootX_M.CenterBtwFeet" "CenterBtwLegsUnitConversion.i";
connectAttr "CenterBtwLegsUnitConversion.o" "CenterBtwLegsUnitReverse.ix";
connectAttr "RootX_M.CenterBtwFeet" "CenterBtwLegsNodeStateSetRange.vx";
connectAttr "IKLeg_R.volume" "volumeLegUnitConversion_R.i";
connectAttr "volumeLegUnitConversion_R.o" "multWithStretchyLeg_R.i1x";
connectAttr "IKmessureDivLeg_R.ox" "volume1OverLeg_R.i2x";
connectAttr "volume1OverLeg_R.ox" "volumepowLeg_R.i1x";
connectAttr "multWithStretchyLeg_R.ox" "volumeBlendLegBlendTwo_R.ab";
connectAttr "volumepowLeg_R.ox" "volumeBlendLegBlendTwo_R.i[1]";
connectAttr "IKArm_R.volume" "volumeArmUnitConversion_R.i";
connectAttr "volumeArmUnitConversion_R.o" "multWithStretchyArm_R.i1x";
connectAttr "IKmessureDivArm_R.ox" "volume1OverArm_R.i2x";
connectAttr "volume1OverArm_R.ox" "volumepowArm_R.i1x";
connectAttr "multWithStretchyArm_R.ox" "volumeBlendArmBlendTwo_R.ab";
connectAttr "volumepowArm_R.ox" "volumeBlendArmBlendTwo_R.i[1]";
connectAttr "IKSpine3_M.volume" "volumeSpineUnitConversion_M.i";
connectAttr "volumeSpineUnitConversion_M.o" "multWithStretchySpine_M.i1x";
connectAttr "stretchySpineUnitConversion_M.o" "multWithStretchySpine_M.i2x";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "volume1OverSpine_M.i2x";
connectAttr "volume1OverSpine_M.ox" "volumepowSpine_M.i1x";
connectAttr "multWithStretchySpine_M.ox" "volumeBlendSpineBlendTwo_M.ab";
connectAttr "volumepowSpine_M.ox" "volumeBlendSpineBlendTwo_M.i[1]";
connectAttr "IKLeg_L.volume" "volumeLegUnitConversion_L.i";
connectAttr "volumeLegUnitConversion_L.o" "multWithStretchyLeg_L.i1x";
connectAttr "IKmessureDivLeg_L.ox" "volume1OverLeg_L.i2x";
connectAttr "volume1OverLeg_L.ox" "volumepowLeg_L.i1x";
connectAttr "multWithStretchyLeg_L.ox" "volumeBlendLegBlendTwo_L.ab";
connectAttr "volumepowLeg_L.ox" "volumeBlendLegBlendTwo_L.i[1]";
connectAttr "IKArm_L.volume" "volumeArmUnitConversion_L.i";
connectAttr "volumeArmUnitConversion_L.o" "multWithStretchyArm_L.i1x";
connectAttr "IKmessureDivArm_L.ox" "volume1OverArm_L.i2x";
connectAttr "volume1OverArm_L.ox" "volumepowArm_L.i1x";
connectAttr "multWithStretchyArm_L.ox" "volumeBlendArmBlendTwo_L.ab";
connectAttr "volumepowArm_L.ox" "volumeBlendArmBlendTwo_L.i[1]";
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerASpine1_M.i1[0]"
		;
connectAttr "IKSquashDistributerSpine1_M.ox" "IKSquashDistributNormalizerBSpine1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerASpine1_M.o1" "IKSquashDistributerSpine1_M.i1x"
		;
connectAttr "IKScalerSpine1_M.scalerWeight" "IKSquashDistributerSpine1_M.i2x";
connectAttr "Wrist_L.rx" "unitConversion16.i";
connectAttr "Wrist_R.rx" "unitConversion17.i";
connectAttr "R_Weapon_ctrl.Parent" "R_Weapon_ctrl_grp_parentConstraint1_MainW0.i"
		;
connectAttr "R_Weapon_ctrl.Parent" "R_Weapon_ctrl_grp_parentConstraint1_R_HandW1.i"
		;
connectAttr "L_Weapon_ctrl.Parent" "L_Weapon_ctrl_grp_parentConstraint1_L_HandW0.i"
		;
connectAttr "L_Weapon_ctrl.Parent" "L_Weapon_ctrl_grp_parentConstraint1_MainW1.i"
		;
connectAttr "multiplyDivide1.ox" "reverse1.ix";
connectAttr "multiplyDivide2.ox" "reverse2.ix";
connectAttr "multiplyDivide3.o" "reverse3.i";
connectAttr "multiplyDivide4.o" "reverse4.i";
connectAttr "reverse2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "GlobalST_group.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "reverse4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "reverse3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "multiplyDivide4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "reverse1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "multiplyDivide3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "unitConversion16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "unitConversion17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
connectAttr "R_Weapon_ctrl_grp.msg" ":hyperGraphLayout.hyp[2].dn";
connectAttr "L_Weapon_ctrl_grp.msg" ":hyperGraphLayout.hyp[3].dn";
connectAttr "FitSkeleton.msg" ":hyperGraphLayout.hyp[5].dn";
connectAttr "MotionSystem.msg" ":hyperGraphLayout.hyp[6].dn";
// End of RIG.ma

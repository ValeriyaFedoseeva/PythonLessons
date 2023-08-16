//Maya ASCII 2019 scene
//Name: reference_human_male_skeleton.ma
//Last modified: Tue, Aug 15, 2023 01:46:35 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
requires "Mayatomr" "2012.0m - 3.9.1.36 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19045)\n";
createNode transform -n "Reference_UMA_Male_Rig";
	rename -uid "28B581E2-4742-876F-04F3-73843652675A";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.7794805449999999e-06 1.080887481 -1.0013355340000001 ;
	setAttr ".r" -type "double3" -90 0 -8.6514237410000003e-06 ;
	setAttr ".rp" -type "double3" 6.3291529169581893e-14 -1.746856007067692e-09 -7.4999743304715594e-08 ;
	setAttr ".rpt" -type "double3" -1.632095015644216e-07 -1.080887479431113 1.0013356093885082 ;
	setAttr ".sp" -type "double3" 6.3291529169581893e-14 -1.7468560070676986e-09 -7.4999743304715594e-08 ;
	setAttr ".spt" -type "double3" -3.6734198463196485e-40 6.6174449004242214e-24 0 ;
	setAttr -k on ".MaxHandle";
	setAttr ".liw" yes;
createNode locator -n "Reference_UMA_Male_RigShape" -p "Reference_UMA_Male_Rig";
	rename -uid "E199A9F9-43F8-7A7F-4DCB-7DB957430DDA";
	setAttr -k off ".v";
createNode transform -n "Reference_Global" -p "Reference_UMA_Male_Rig";
	rename -uid "0E8AFA92-4F19-C0F8-045F-53951582A4DF";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.155510545999782e-10 0 0 ;
	setAttr ".r" -type "double3" 90.000045779999994 -89.999977110000003 0 ;
	setAttr ".rp" -type "double3" -5.022151805533781e-09 2.6598021962004337e-11 1.7568104471177293e-09 ;
	setAttr ".rpt" -type "double3" 4.9955572564456271e-09 -1.7834084903296141e-09 -6.7789609455346894e-09 ;
	setAttr ".sp" -type "double3" -5.022151805533781e-09 2.6598021962004337e-11 1.7568104471177293e-09 ;
	setAttr -k on ".MaxHandle";
	setAttr ".liw" yes;
createNode locator -n "Reference_GlobalShape" -p "Reference_Global";
	rename -uid "53A8B05D-4350-3C81-1DE4-E99DDABD571A";
	setAttr -k off ".v";
createNode transform -n "Reference_Position" -p "Reference_Global";
	rename -uid "B5B5AEC0-4658-7B0F-4C22-5FA2C3EF4AAE";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 1.0587911840678754e-21 0 ;
	setAttr ".rp" -type "double3" -1.4791141972893971e-31 -1.0339757656912846e-25 8.3819031715393066e-09 ;
	setAttr ".sp" -type "double3" -1.4791141972893971e-31 -1.0339757656912846e-25 8.3819031715393066e-09 ;
	setAttr -k on ".MaxHandle";
	setAttr ".liw" yes;
createNode locator -n "Reference_PositionShape" -p "Reference_Position";
	rename -uid "6F0D26E5-4CE0-6918-7B64-ACAEA60A97D3";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 8.3819031715393066e-09 ;
createNode joint -n "Reference_Pelvis" -p "Reference_Position";
	rename -uid "5DE0CD54-4215-6141-D957-C49CDEE06F42";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.959 0 0 ;
	setAttr ".r" -type "double3" -89.999962875058202 -7.2820907213857854e-05 -89.999968458576248 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99999999999988887 1.2977948384086184e-16 4.7195286379012038e-07 0
		 4.7195286383020261e-07 6.4795290856632299e-07 -0.99999999999967881 0 -3.0602711273665525e-13 0.99999999999979006 6.479529084820215e-07 0
		 2.1435866332747531e-06 0.9590000748216303 -1.3580912621730362e-09 1;
	setAttr ".radi" 1.1;
createNode joint -n "Reference_Spine_1" -p "Reference_Pelvis";
	rename -uid "29880425-442D-9003-BBF8-12B4D705FF84";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.0015262621269999999 0.034083574640000003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999204 -86.834388706153362 -89.999999999999204 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.6062596584557177e-08 0.99847405241376141 0.055222881638327982 0
		 4.7123268843251628e-07 0.055222881638334199 -0.99847405241365028 0 -0.99999999999988898 6.473765773461811e-16 -4.7195286368256704e-07 0
		 2.1443069466260492e-06 0.99308365045056957 -0.0015262414005395059 1;
	setAttr ".radi" 1.0540203030448205;
createNode joint -n "Reference_Spine_2" -p "Reference_Spine_1";
	rename -uid "A8F33EEE-4BBB-0BD4-72E4-63BC3472679C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.144749139 0 0 ;
	setAttr ".r" -type "double3" -3.0332133116374176e-21 2.0853341517507255e-21 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 8.038 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -3.0332133116374176e-21 2.0853341517507255e-21 0 ;
	setAttr ".bps" -type "matrix" 4.0085846025787643e-08 0.99638639862845324 -0.084936120868684073 0
		 4.7024741417307473e-07 -0.084936120868693482 -0.99638639862834233 0 -0.99999999999988942 6.4737656370745694e-16 -4.7195286368256715e-07 0
		 2.1405344082103293e-06 1.1376119098513016 0.0064672231697074298 1;
	setAttr ".radi" 1.1300319085430464;
createNode joint -n "Reference_Spine_3" -p "Reference_Spine_2";
	rename -uid "021E2E1A-46CD-FDF1-4E41-829CA3B371B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.1318061733 0 0 ;
	setAttr ".r" -type "double3" -3.0332133116374191e-21 -2.009503818959789e-20 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.502 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -3.0332133116374191e-21 -2.009503818959789e-20 0 ;
	setAttr ".bps" -type "matrix" 8.4988721020795984e-08 0.98365218154093004 -0.18007883204242059 0
		 4.6423746389893589e-07 -0.18007883204244063 -0.98365218154082035 0 -0.99999999999988964 6.4737656539477105e-16 -4.7195286368256715e-07 0
		 2.1458179701784817e-06 1.2689417881826868 -0.0047278818969400879 1;
	setAttr ".radi" 1.4808243322106183;
createNode joint -n "Reference_Neck" -p "Reference_Spine_3";
	rename -uid "052818DB-428A-C93E-DCEA-09B34E6D8234";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.2609999999999999 5.5511151231257827e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.824000000000005 ;
	setAttr ".pa" -type "double3" -4.5498199674561264e-21 1.0047519094798945e-20 0 ;
	setAttr ".bps" -type "matrix" -7.7485595163366685e-08 0.9864302646493448 0.16418079358992416 -1.0757182024738734e-16
		 4.6554858836671963e-07 0.16418079358994248 -0.986430264649235 -2.7463705735790515e-17
		 -0.99999999999988987 6.4737656144432652e-16 -4.7195286368256726e-07 7.3468396926392969e-40
		 2.1680000263649091e-06 1.5256750075648693 -0.051728457060011925 1;
	setAttr ".radi" 0.93551839605165443;
createNode joint -n "Reference_Head" -p "Reference_Neck";
	rename -uid "6CD064B7-4D8C-BEAC-EC85-14BDFEFAADF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.094000000000000083 0 -1.6466478149260534e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -7.748559516336605e-08 0.98643026464934491 0.16418079358992416 -1.0444298717069946e-16
		 4.6554858836671968e-07 0.1641807935899425 -0.98643026464923489 -3.765121611501307e-17
		 -0.99999999999989009 6.4737655657331514e-16 -4.7195286368256736e-07 0 2.1607163968860317e-06 1.6183994524419081 -0.036295462462559117 1;
	setAttr ".radi" 1.2465017953717901;
createNode joint -n "Reference_Skull_Scale" -p "Reference_Head";
	rename -uid "2C25AF40-41B9-989A-7203-E2B61B40633B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.12834 -0.04414 2.5992711433983628e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 80.550326030152348 89.999986405363757 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99999999999984368 2.3405145540467115e-07 5.1090823150996196e-07 1.1537178196757911e-25
		 -2.3405122782456546e-07 0.99999999999987332 -4.459497861204986e-07 -5.328871758830803e-18
		 -5.1090833580570527e-07 4.4594966655542301e-07 0.99999999999976985 3.6718465406962236e-17
		 -4.6904856248581898e-07 1.7377509723779452 0.028316532467162273 1;
	setAttr ".radi" 1.2;
createNode joint -n "Reference_L_Clavicle" -p "Reference_Spine_3";
	rename -uid "6E2F7FF0-4770-4318-337F-E0948A7A41E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.182 -0.019 -0.080767098124145231 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -117.00697405269983 -72.042818900271271 -74.507699191676437 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95128731953254753 0.13450723826053568 0.27741708410281218 -1.2263347404264709e-17
		 0.27468530255212309 -0.038835848434604706 0.96074958310592762 1.3355743495998141e-17
		 0.14000150091492633 0.99015129133475754 -3.1112779184574371e-06 -1.0953166697439481e-16
		 0.080769250589541916 1.4513879830319423 -0.018812799761121823 1;
	setAttr ".radi" 1.1989134246320896;
createNode joint -n "Reference_L_Up_arm" -p "Reference_L_Clavicle";
	rename -uid "FFE45D61-4657-3284-6669-FE9BA7E4D537";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.145 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.26 -26 -6.463 ;
	setAttr ".bps" -type "matrix" -0.81599477220836703 0.55810875862614262 0.15055612001310981 0
		 0.12426878592730412 -0.084996553571936778 0.98860146405164073 0 0.56454388719812565 0.82540305271163072 1.2455205631353973e-06 0
		 0.21870591192176109 1.4318844334841645 -0.059038276956029562 1;
	setAttr ".radi" 1.821;
createNode joint -n "Reference_L_ForeArm" -p "Reference_L_Up_arm";
	rename -uid "7E7AE5E5-4CB8-CCF6-19E8-A998D6614BE9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.269 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.624 -1.336 146.311 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.76084642431130411 -0.49214288409871965 0.422975295074899 0
		 0.35515660399879206 -0.22972132444820101 -0.90614121401126579 0 0.54311739545769389 0.83965677197576305 5.1471042015601434e-06 0
		 0.43820850564581182 1.2817531774137321 -0.099537873239556096 1;
	setAttr ".radi" 1.6637163937552266;
createNode joint -n "Reference_L_Hand" -p "Reference_L_ForeArm";
	rename -uid "2ED83A9B-4AC2-B047-BD37-B5825FA6E39E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.243 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.8550000000000004 -4.649 -168.831 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.76852860596071959 0.59363998636570414 -0.23865319693605683 0
		 -0.24143333935799854 0.076354024692821515 0.96740891331414491 0 0.59251474620174593 0.80110026182802785 0.084644232128044075 0
		 0.62309418675345873 1.1621624565777431 0.0032451234636443615 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_1_01" -p "Reference_L_Hand";
	rename -uid "85E02F9D-4D8A-9966-D81A-C09A2E6D50E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.104 0.038 -0.022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.313 -35.199 0.9890000000000001 ;
	setAttr ".bps" -type "matrix" -0.2897824956877047 0.94786917917920088 -0.13255234571728153 0
		 -0.32895718255316786 0.031417622814600435 0.94382207275702257 0 0.89878433299634675 0.31710716191664257 0.3027040974639838 0
		 0.68081137046133122 1.0857011451738205 0.062964421544114801 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_1_02" -p "Reference_L_Toe_1_01";
	rename -uid "06AF4E8B-4FD8-A1A1-D12F-97BF875D9768";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.053 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.684 0 ;
	setAttr ".bps" -type "matrix" -0.27903236713494806 0.95158718809990028 -0.12892928889586339 0
		 -0.32895718255316786 0.031417622814600435 0.94382207275702257 0 0.90217964404975914 0.30576912273937162 0.30426490668732359 0
		 0.6961698427327796 1.0354640786773228 0.069989695867130719 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_2_01" -p "Reference_L_Hand";
	rename -uid "C82FBE4C-4D82-687D-E41D-439340610BA8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.106 -0.017 -0.02 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.09 -38.8 13.922 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.2553480547063478 0.9653451301160807 0.053908725813649749 0
		 0.10373693132829717 -0.028080608448209948 0.99420829231492913 0 0.96126792312875664 0.25946147920326351 -0.092971612728737038 0
		 0.69681229083034602 1.08191659436664 0.010403526169965038 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_2_02" -p "Reference_L_Toe_2_01";
	rename -uid "B5ADB4D0-42A2-6DD6-A62A-20887B7860A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.06 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.003 8.871 -1.902 ;
	setAttr ".bps" -type "matrix" -0.40379387311459575 0.91418144033485182 0.034968588510400661 0
		 0.14274118187704282 0.025201478630565106 0.98943915450682418 0 0.90364565125466068 0.40452092606208767 -0.14066754190790481 0
		 0.71213317411272692 1.0239958865596752 0.0071690026211460537 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_3_01" -p "Reference_L_Hand";
	rename -uid "BA9DBABF-483F-7FFC-0C5E-BEA38F41113F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.053 0.057 -0.045 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.167 -29.694 -28.745 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.19096386961488132 0.817078155964861 -0.54398169780496619 0
		 -0.97711335846345482 -0.21113963785520062 0.025875433110259874 0 -0.093713847503874459 0.53647305651955823 0.83869802337586563 0
		 0.62340133894689242 1.0990022049255903 0.067227060514399653 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Toe_3_02" -p "Reference_L_Toe_3_01";
	rename -uid "60592E79-4281-316C-8485-FC812B7FB4BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.038 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.19096386961488132 0.817078155964861 -0.54398169780496619 0
		 -0.97711335846345482 -0.21113963785520062 0.025875433110259874 0 -0.093713847503874459 0.53647305651955823 0.83869802337586563 0
		 0.63065796599225787 1.0679532349989256 0.087898365030988371 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Clavicle" -p "Reference_Spine_3";
	rename -uid "444A0781-405B-88EC-D5C0-6EA6C8A9CD90";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.18199725236618813 -0.018999476201046861 0.080767188680038585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -117.00701075142995 -72.042794177008616 105.49233571935288 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95128692464149955 -0.13450758637927465 -0.27741826942820885 1.2263383203420997e-17
		 0.27468648545594643 0.038835948954527064 -0.96074924084105406 -1.3355753833069972e-17
		 0.14000186325181802 -0.99015124010184596 3.2857231988398436e-06 1.0953166170580451e-16
		 -0.08076503621461445 1.4513851859908455 -0.018812896442986286 1;
	setAttr ".radi" 1.1989134246320896;
createNode joint -n "Reference_R_Up_arm" -p "Reference_R_Clavicle";
	rename -uid "13680C70-4A3B-959B-183B-EDB35B16D7E2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.145 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.26 -26 -6.463 ;
	setAttr ".bps" -type "matrix" -0.81599438037423422 -0.55810905723525472 -0.15055713676091667 0
		 0.12426998664305365 0.084996599047694466 -0.98860130920915767 0 0.56454418925129846 -0.82540284611957859 -5.4208584822025713e-07 0
		 -0.21870164028763167 1.4318815859658507 -0.059038545510076548 1;
	setAttr ".radi" 1.821;
createNode joint -n "Reference_R_ForeArm" -p "Reference_R_Up_arm";
	rename -uid "39F5B06A-4578-8A56-CE68-7F938F8C07BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.269 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.624 -1.336 146.311 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.76084677125028943 0.49214316252670665 -0.42297434704272779 0
		 0.35515539086056092 0.2297214544157519 0.90614165654371837 0 0.54311770273182303 -0.83965657322462695 -4.4703673795799702e-06 0
		 -0.43820412860830071 1.2817502495695672 -0.099538415298763144 1;
	setAttr ".radi" 1.6637163937552266;
createNode joint -n "Reference_R_Hand" -p "Reference_R_ForeArm";
	rename -uid "CD56CB24-4545-639A-548B-14B29500BC9B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.243 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.8550000000000013 -4.649 -168.831 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.76852868608781644 -0.59364026760489796 0.23865223933187876 0
		 -0.24143210600290826 -0.076354113043911778 -0.96740921414480985 0 0.59251514482849788 -0.80110004500016285 -0.08464349384094226 0
		 -0.623089894022121 1.1621594610755774 0.003244351032619705 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_1_01" -p "Reference_R_Hand";
	rename -uid "65E6CB61-49DA-D648-36B6-E18C471C9E24";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.104 -0.038 0.022 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.313 -35.199 0.9890000000000001 ;
	setAttr ".bps" -type "matrix" -0.28978231398273885 -0.94786928522361502 0.13255198464181167 0
		 -0.32895599503199402 -0.03141774319460941 -0.94382248264441593 0 0.89878482621555245 -0.31710683301094483 -0.30270297755794962 0
		 -0.68080712416091649 1.0856981285503331 0.062963577196137127 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_1_02" -p "Reference_R_Toe_1_01";
	rename -uid "BD8230D0-41EF-D943-3480-298B754BB1E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.053 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.28978231398273885 -0.94786928522361502 0.13255198464181167 0
		 -0.32895599503199402 -0.03141774319460941 -0.94382248264441593 0 0.89878482621555245 -0.31710683301094483 -0.30270297755794962 0
		 -0.69616558680200169 1.0354610564334814 0.069988832382153143 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_2_01" -p "Reference_R_Hand";
	rename -uid "298009A8-452B-D711-6A9E-07902EA5F0B0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.106 0.017 0.02 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.09 -38.8 13.922 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.25534763427143736 -0.9653452235593406 -0.053909043982873946 0
		 0.10373815985840353 0.028080646410443791 -0.9942081630555869 0 0.9612679022318249 -0.25946112743210448 0.092972810490425661 0
		 -0.69680797765290903 1.0819135718877084 0.01040266188451824 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_2_02" -p "Reference_R_Toe_2_01";
	rename -uid "5016FDD2-403C-E36F-85F7-848A01552498";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.06 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.003 8.871 -1.902 ;
	setAttr ".bps" -type "matrix" -0.40379349500249712 -0.91418158810112027 -0.034969091646518194 0
		 0.14274242396297393 -0.025201426394919436 -0.98943897664728997 0 0.90364562401133985 -0.40452059537751051 0.14066866787092769 0
		 -0.71212883570919527 1.023992858474148 0.0071681192455458039 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_3_01" -p "Reference_R_Hand";
	rename -uid "738CF215-44EF-062F-5D5A-63BF51A4EE96";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.053 -0.057 0.045 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.167 -29.694 -28.745 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.19096424842264914 -0.81707822584719847 0.54398145985940327 0
		 -0.97711340348674136 0.21113928028547208 -0.025876650615762539 0 -0.093712606147359878 -0.53647309081344186 -0.83869814014467836 0
		 -0.62339710282532712 1.0989992093110135 0.067226287700621043 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_R_Toe_3_02" -p "Reference_R_Toe_3_01";
	rename -uid "A2F5354B-40A6-9A54-6CCF-B3BA39414480";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.038 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.19096424842264914 -0.81707822584719847 0.54398145985940327 0
		 -0.97711340348674136 0.21113928028547208 -0.025876650615762539 0 -0.093712606147359878 -0.53647309081344186 -0.83869814014467836 0
		 -0.63065374426538778 1.0679502367288198 0.087897583175278363 1;
	setAttr ".radi" 0.88059310248425771;
createNode joint -n "Reference_L_Up_leg" -p "Reference_Pelvis";
	rename -uid "289328EE-4E41-1352-FE3E-B5BF5E1472F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.1081757408 0 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.906000000000017 -80.308 -156.805 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.15474385907457186 0.98572694207158462 0.066307870972541566 0
		 0.096212569296042022 -0.051761443956291821 0.99401403130389154 0 0.98325860260064046 0.16019721780905496 -0.086829556131969368 0
		 0.1181771436347073 0.91925156741837599 0.0024280787007782659 1;
	setAttr ".radi" 2;
createNode joint -n "Reference_L_leg" -p "Reference_L_Up_leg";
	rename -uid "54ABB6AE-4587-F664-64D1-BCACFE41938A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.404 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.395 2.532 3.208 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.19240940721643718 0.97325053674640516 0.12554685474934626 0
		 0.11144546743134283 -0.10543779281560633 0.98816131255740991 0 0.97496591109824415 0.20412316029546329 -0.088177137781648152 0
		 0.18069366270083417 0.52101788282145611 -0.024360301172128569 1;
	setAttr ".radi" 2;
createNode joint -n "Reference_L_foot" -p "Reference_L_leg";
	rename -uid "5C0DB026-41EB-201F-55D0-888F4265AA6F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.431 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.54 -11.286 -66.911 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.01627505767415835 0.50935442795883956 -0.86040292259872431 0
		 -0.15987557481426337 0.85077094853659241 0.50062819906988409 0 0.98700300054027812 0.12940965900917062 0.095279678209041152 0
		 0.26362211721111861 0.1015469014837555 -0.078470995569096813 1;
	setAttr ".radi" 1.1666001913027237;
createNode joint -n "Reference_L_toe" -p "Reference_L_foot";
	rename -uid "5F64B3DC-4893-3C19-346E-018F8758991C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.15165545459999999 -5.3261992330000001e-08 -6.1234823080000005e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -85.082 1.8630000000000002 -29.373000000000005 ;
	setAttr ".bps" -type "matrix" 0.060464520083992467 0.02235594727614966 -0.99791996344015421 0
		 -0.99710858096699662 -0.044747401342042137 -0.061417813662791948 0 -0.0460273785153546 0.99874815729217747 0.019585676717542206 0
		 0.26115332006665337 0.024300399601603281 0.052013715787983639 1;
	setAttr ".radi" 0.90867284863003894;
createNode joint -n "Reference_R_Up_leg" -p "Reference_Pelvis";
	rename -uid "128A404C-40F1-C3DC-E397-C5AE68582EE8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.10817548 0 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 162.09403312932716 80.308006372357255 156.80503265647187 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.15474373350917273 -0.98572696079551214 -0.066307885658379376 0
		 0.096213504244607992 0.05176131762101524 -0.99401394738660964 0 0.98325853087609461 -0.16019714341703759 0.086830505586493356 0
		 -0.11817259654026621 0.91925135482716369 0.0024279670437037841 1;
	setAttr ".radi" 2;
createNode joint -n "Reference_R_leg" -p "Reference_R_Up_leg";
	rename -uid "A09FD9FA-4D41-7D68-D791-F0B75C59A0B9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.404 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.395 2.532 3.208 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.19240922653210513 -0.97325056577211788 -0.1255469066507415 0
		 0.11144639342616718 0.1054376682335936 -0.98816122141569762 0 0.97496584090808924 -0.20412308625365139 0.088178085263104736 0
		 -0.18068906487797209 0.52101766266577709 -0.024360418762281521 1;
	setAttr ".radi" 2;
createNode joint -n "Reference_R_foot" -p "Reference_R_leg";
	rename -uid "4504887E-49BE-82A9-36C3-8696D970F6AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.431 6.9388939039072284e-18 -5.5511151231257827e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.54 -11.286 -66.911 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.01627427807692311 -0.50935431224452998 0.86040300584724694 0
		 -0.15987504791357629 -0.85077102547459793 -0.5006282365863246 0 0.98700309874270775 -0.12940960864944809 -0.095278729323443598 0
		 -0.26361744151330946 0.10154666881799429 -0.078471135528751124 1;
	setAttr ".radi" 1.1666001913027237;
createNode joint -n "Reference_R_toe" -p "Reference_R_foot";
	rename -uid "6BC4B631-46A9-BCF0-4A2A-30A31835B184";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.15165570149999999 4.3471307170000002e-07 4.8551875209999996e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -85.082 1.8630000000000002 -29.373000000000005 ;
	setAttr ".bps" -type "matrix" 0.060463579569841781 -0.022355810410354133 0.99792002349211251 0
		 -0.99710864179803915 0.04474734582357591 0.061416866522285535 0 -0.04602729621944289 -0.99874816284318757 -0.019585587049819525 0
		 -0.26114894474640798 0.024299750610422582 0.052013622006473442 1;
	setAttr ".radi" 0.90867284863003894;
createNode animCurveTU -n "UMA_Male_Rig_MaxHandle_thin_inputA";
	rename -uid "3ABBCAAC-4204-34C9-DAD3-F18087E01B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "Global_MaxHandle_thin_inputA";
	rename -uid "6AF9D6F4-4BF9-BFA2-B570-2F85963CC444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr -l on ".ktv[0]";
createNode animCurveTU -n "Position_MaxHandle_thin_inputA";
	rename -uid "436C55CA-47D6-6A4F-0201-5DA8FC055AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr -l on ".ktv[0]";
select -ne :time1;
	setAttr ".o" -5;
	setAttr ".unw" -5;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 98 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 106 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 125 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 90 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
	setAttr -s 3 ".t";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHideFaceDataSet;
	setAttr -s 6 ".dnsm";
connectAttr "UMA_Male_Rig_MaxHandle_thin_inputA.o" "Reference_UMA_Male_Rig.MaxHandle"
		;
connectAttr "Global_MaxHandle_thin_inputA.o" "Reference_Global.MaxHandle";
connectAttr "Position_MaxHandle_thin_inputA.o" "Reference_Position.MaxHandle";
connectAttr "Reference_Pelvis.s" "Reference_Spine_1.is";
connectAttr "Reference_Spine_1.s" "Reference_Spine_2.is";
connectAttr "Reference_Spine_2.s" "Reference_Spine_3.is";
connectAttr "Reference_Spine_3.s" "Reference_Neck.is";
connectAttr "Reference_Neck.s" "Reference_Head.is";
connectAttr "Reference_Head.s" "Reference_Skull_Scale.is";
connectAttr "Reference_Spine_3.s" "Reference_L_Clavicle.is";
connectAttr "Reference_L_Clavicle.s" "Reference_L_Up_arm.is";
connectAttr "Reference_L_Up_arm.s" "Reference_L_ForeArm.is";
connectAttr "Reference_L_ForeArm.s" "Reference_L_Hand.is";
connectAttr "Reference_L_Hand.s" "Reference_L_Toe_1_01.is";
connectAttr "Reference_L_Toe_1_01.s" "Reference_L_Toe_1_02.is";
connectAttr "Reference_L_Hand.s" "Reference_L_Toe_2_01.is";
connectAttr "Reference_L_Toe_2_01.s" "Reference_L_Toe_2_02.is";
connectAttr "Reference_L_Hand.s" "Reference_L_Toe_3_01.is";
connectAttr "Reference_L_Toe_3_01.s" "Reference_L_Toe_3_02.is";
connectAttr "Reference_Spine_3.s" "Reference_R_Clavicle.is";
connectAttr "Reference_R_Clavicle.s" "Reference_R_Up_arm.is";
connectAttr "Reference_R_Up_arm.s" "Reference_R_ForeArm.is";
connectAttr "Reference_R_ForeArm.s" "Reference_R_Hand.is";
connectAttr "Reference_R_Hand.s" "Reference_R_Toe_1_01.is";
connectAttr "Reference_R_Toe_1_01.s" "Reference_R_Toe_1_02.is";
connectAttr "Reference_R_Hand.s" "Reference_R_Toe_2_01.is";
connectAttr "Reference_R_Toe_2_01.s" "Reference_R_Toe_2_02.is";
connectAttr "Reference_R_Hand.s" "Reference_R_Toe_3_01.is";
connectAttr "Reference_R_Toe_3_01.s" "Reference_R_Toe_3_02.is";
connectAttr "Reference_Pelvis.s" "Reference_L_Up_leg.is";
connectAttr "Reference_L_Up_leg.s" "Reference_L_leg.is";
connectAttr "Reference_L_leg.s" "Reference_L_foot.is";
connectAttr "Reference_L_foot.s" "Reference_L_toe.is";
connectAttr "Reference_Pelvis.s" "Reference_R_Up_leg.is";
connectAttr "Reference_R_Up_leg.s" "Reference_R_leg.is";
connectAttr "Reference_R_leg.s" "Reference_R_foot.is";
connectAttr "Reference_R_foot.s" "Reference_R_toe.is";
// End of reference_human_male_skeleton.ma

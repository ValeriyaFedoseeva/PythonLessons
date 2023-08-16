import maya.cmds as cmds
from PySide2 import QtCore, QtGui, QtWidgets
import os
import json

USERAPPDIR = cmds.internalVar(userAppDir=True)
DIRECTORY = os.path.join(USERAPPDIR, 'scripts', 'AnimTransfer')



class anim_transfer(QtWidgets.QDialog):
    
    def __init__(self):

        super(anim_transfer, self).__init__()
        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("Animation Transfer")
        self.setObjectName("AnimationTransferID")
        self.setMinimumSize(400, 110)
        self.setMaximumSize(800, 220)
        self.resize(400, 110)
        
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(3, 3, 3, 3)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)

        self.btn_layout_A = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.btn_layout_A)

        self.radio_btn_layoutA = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.radio_btn_layoutA)

        self.radio_btn_layoutB = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.radio_btn_layoutB)     

        self.btn_layout_B = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.btn_layout_B)

        #UI content
        self.create_action_buttons()
        self.create_radio_buttonsA()
        self.create_radio_buttonsB()


    def create_radio_buttonsA(self):
        self.rbutton_human = QtWidgets.QRadioButton("Human")
        self.rbutton_human.setChecked(True)
        self.rbutton_eldar = QtWidgets.QRadioButton("Eldar")
        self.rbutton_spacemarine = QtWidgets.QRadioButton("Space Marine")

        self.radio_btn_layoutA.addWidget(self.rbutton_human)
        self.radio_btn_layoutA.addWidget(self.rbutton_eldar)
        self.radio_btn_layoutA.addWidget(self.rbutton_spacemarine)


    def create_radio_buttonsB(self):
        self.rbutton_male = QtWidgets.QRadioButton("Male")
        self.rbutton_male.setChecked(True)
        self.rbutton_female = QtWidgets.QRadioButton("Female")

        self.radio_btn_layoutB.addWidget(self.rbutton_male)
        self.radio_btn_layoutB.addWidget(self.rbutton_female)



    def create_action_buttons(self):
        '''
        In this function we create buttons that will operate the script.
        '''
        # Buttons
        self.btn_import_anim = QtWidgets.QPushButton("Import Animation")
        self.btn_import_anim.clicked.connect(self.open_anim)

        self.btn_import_rig = QtWidgets.QPushButton("Import Rig")
        self.btn_import_rig.clicked.connect(self.open_rig)

        self.btn_bake_anim = QtWidgets.QPushButton("Match Animation")
        self.btn_bake_anim.clicked.connect(self.match_process)

        self.btn_layout_A.addWidget(self.btn_import_anim)
        self.btn_layout_A.addWidget(self.btn_import_rig)
        self.btn_layout_B.addWidget(self.btn_bake_anim)



    def open_anim(self):
        '''
        In this function we specify which file we need to import.
        '''

        file_filter = "*.fbx"
        path = cmds.fileDialog2(fileFilter=file_filter, dialogStyle=2, fileMode=1)

        # Check if a file was selected
        if path and len(path) > 0:
            print(path[0])
            cmds.file(path, i=True)
            return path[0]
        else:
            return None

    def open_rig(self):
        '''
        In this function we specify which file we need to import.
        '''

        file_filter = "*.ma"
        path = cmds.fileDialog2(fileFilter=file_filter, dialogStyle=2, fileMode=1)

        # Check if a file was selected
        if path and len(path) > 0:
            print(path[0])
            cmds.file(path, i=True)
            return path[0]
        else:
            return None

    def import_ref_skeleton(self):
        for file_name in os.listdir(DIRECTORY):
            if file_name.endswith(".ma") or file_name.endswith(".mb"):
                try:
                    cmds.file(os.path.join(DIRECTORY, file_name), i=True)
                except Exception as e:
                    print("Error loading file {}: {}".format(file_name, str(e)))

    def jsonWr(self):
        sel = cmds.ls(sl=True, fl=True)  
        data = []
        
        for i in sel:
            p = i.split('Refrence_')[1]
            data.append(p)
                

        
        name = "ctrls"
        path = os.path.join(DIRECTORY, '%s.json' % name)
        
        
        with open(path, 'w') as f:
            data = json.dump(data, f, indent=4)

    def match_to_ref_skel(self):
        json_file_path_ref = os.path.join(USERAPPDIR, 'scripts', 'AnimTransfer', 'pins.json')
        json_file_path_ctrl = os.path.join(USERAPPDIR, 'scripts', 'AnimTransfer', 'ctrlsList.json')

        with open(json_file_path_ref, 'r') as json_file:
            ref = json.load(json_file)

        with open(json_file_path_ctrl, 'r') as json_file:
            ctrl = json.load(json_file)

        refSkel = []
        ctrlList = []
        pref = 'Reference_'
        toDel = None  # Initialize toDel here
        
        for obj in ref:
            o = pref + obj
            refSkel.append(o)

        for c in ctrl:
            ctrlList.append(c)

        cmds.select(cl=True)
        if not cmds.objExists('toDel_GP'):
            toDel = cmds.createNode('transform', n='toDel_GP_{}'.format(cmds.ls(assemblies=True, long=True)[-1]))  # Use a unique name
        else:
            pass

        for s, t in zip(refSkel, ctrlList):
            par = cmds.parentConstraint(s, t, mo=1)
            cmds.parent(par, toDel)

    def match_to_anim_skel(self):
        json_file_path = os.path.join(USERAPPDIR, 'scripts', 'AnimTransfer', 'pins.json')
        
        with open(json_file_path, 'r') as json_file:
            data = json.load(json_file)

        animSkel = []
        srcSkel = []
        
        toDel = None  # Initialize toDel here
        for name in data:
            matching_objects = cmds.ls(name)
            animSkel.append(matching_objects[0])
        
        for name in data:
            matching_objects = cmds.ls(name)
            pref = 'Reference_'
            obj = pref + matching_objects[0]
            srcSkel.append(obj)
            
        print("animSkel:", animSkel)
        print("srcSkel:", srcSkel)

        cmds.select(cl=True)
        if not cmds.objExists('toDel_GP'):
            toDel = cmds.createNode('transform', n='toDel_GP')

        else:
            pass
        
        for s, t in zip(animSkel, srcSkel):
            par = cmds.parentConstraint(s, t, mo=0)
            cmds.parent(par, toDel)
        
        an_for_IK = ['Reference_L_foot', 'Reference_R_foot']
        ctrl_IK = ['IKLeg_L', 'IKLeg_R']
        
        for s, t in zip(an_for_IK, ctrl_IK):
            par = cmds.pointConstraint(s, t, mo=0)
            parOr = cmds.orientConstraint(s, t, mo=1)
            cmds.parent(par, parOr, toDel)


    def match_process(self):

        self.import_ref_skeleton()
        self.match_to_ref_skel()
        self.match_to_anim_skel()

        json_file_path_ctrl = os.path.join(USERAPPDIR, 'scripts', 'AnimTransfer', 'ctrlsList.json')

        with open(json_file_path_ctrl, 'r') as json_file:
            ctrl = json.load(json_file)

        sel = cmds.ls(ctrl, 'IKLeg_R', 'IKLeg_L')

        startTime = cmds.playbackOptions(query=True, minTime=True)
        endTime = cmds.playbackOptions(query=True, maxTime=True)
        cmds.bakeResults(sel, simulation=True, t=(startTime, endTime))
        
        toDel_objects = cmds.ls("*toDel_*", type="transform")  # Find all transform nodes with "toDel_" in their name
        if toDel_objects:
            cmds.delete(toDel_objects)
            print("Deleted {} objects with 'toDel_' in their name.".format(len(toDel_objects)))
        else:
            print("No objects with 'toDel_' in their name found.")


        if cmds.objExists('Reference_UMA_Male_Rig'):
            cmds.delete('Reference_UMA_Male_Rig')
        else:
            pass

def clean_ui():
    if cmds.window("AnimationTransferID", exists=True):
        cmds.deleteUI("AnimationTransferID", window=True)

    if cmds.windowPref("AnimationTransferID", exists=True):
        cmds.windowPref("AnimationTransferID", remove=True)

clean_ui()
win = anim_transfer()
win.show()








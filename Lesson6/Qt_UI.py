import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore, QtGui

if cmds.window("MyQtUI", exists=True):
    cmds.deleteUI("MyQtUI", window=True)

if cmds.windowPref("MyQtUI", exists=True):
    cmds.windowPref("MyQtUI", remove=True)

class MyWindow(QtWidgets.QDialog):

    def __init__(self, parent=None):

        super(MyWindow, self).__init__()
        
        self.setup_UI()

    def setup_UI(self):
        self.setWindowTitle("Create Poly Primitives")
        self.setMinimumSize(300, 200)
        self.setMaximumSize(600, 800)
        self.resize(300, 200)

        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.setLayout(self.main_layout)

        self.text_field_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.text_field_layout)

        self.radio_btn_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.radio_btn_layout)

        self.check_box_layout = QtWidgets.QVBoxLayout()
        self.main_layout.addLayout(self.check_box_layout)

        self.chk_btn_xyz_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.chk_btn_xyz_layout)

        self.slider_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.slider_layout)

        self.btn_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.btn_layout)


        #UI content
        self.create_top_textfield()
        self.create_upper_radiobuttons()
        self.create_checkboxes()
        self.create_lower_radiobuttons()
        #self.create_slider()
        self.create_action_buttons()
        
        # Slider
        self.slider = QtWidgets.QSlider()
        self.slider_layout.addWidget(self.slider)
        self.slider.setOrientation(QtCore.Qt.Horizontal)
        self.slider.setTickInterval(10)
        self.slider.setMinimum(0)
        self.slider.setMaximum(10)
        self.slider.setMinimumWidth(200)

        self.show_set_number = QtWidgets.QLineEdit()
        self.slider_layout.addWidget(self.show_set_number)
        self.show_set_number.setMaximumWidth(50)
        
        
        default_value = 0  
        self.slider.setValue(default_value)
        self.update_line_edit(default_value)
        self.slider.valueChanged.connect(self.update_line_edit)

    def update_line_edit(self, value):
        self.show_set_number.setText(str(value))       

    def create_top_textfield(self):
        # Text Line
        self.nameLabel = QtWidgets.QLabel(self)
        self.nameLabel.setText('Name:')
        self.text_field_layout.addWidget(self.nameLabel)
        self.saveNameField = QtWidgets.QLineEdit()
        self.text_field_layout.addWidget(self.saveNameField)

    def create_upper_radiobuttons(self):
        # Radio Buttons
        self.rbutton_sphere = QtWidgets.QRadioButton("Sphere")
        self.rbutton_sphere.setChecked(True)
        self.rbutton_cube = QtWidgets.QRadioButton("Cube")
        self.rbutton_cone = QtWidgets.QRadioButton("Cone")

        self.radio_btn_layout.addWidget(self.rbutton_sphere)
        self.radio_btn_layout.addWidget(self.rbutton_cube)
        self.radio_btn_layout.addWidget(self.rbutton_cone)

    def create_checkboxes(self):
        # Check box
        self.chk_box_group = QtWidgets.QCheckBox("Group")
        self.chk_box_layer = QtWidgets.QCheckBox("Display Layer")
        self.chk_box_offset = QtWidgets.QCheckBox("Offset in:")

        self.check_box_layout.addWidget(self.chk_box_group)
        self.check_box_layout.addWidget(self.chk_box_layer)
        self.check_box_layout.addWidget(self.chk_box_offset)


    def create_lower_radiobuttons(self):
        # Radio Buttons
        self.chk_button_X = QtWidgets.QCheckBox("X")
        self.chk_button_X.setChecked(True)
        self.chk_button_Y = QtWidgets.QCheckBox("Y")
        self.chk_button_Z = QtWidgets.QCheckBox("Z")

        self.chk_btn_xyz_layout.addWidget(self.chk_button_X)
        self.chk_btn_xyz_layout.addWidget(self.chk_button_Y)
        self.chk_btn_xyz_layout.addWidget(self.chk_button_Z)



    def create_action_buttons(self):
        # Buttons
        self.button_create = QtWidgets.QPushButton("Create")
        self.button_create.clicked.connect(self.on_button_create_clicked)

        self.button_apply = QtWidgets.QPushButton("Apply")
        self.button_apply.clicked.connect(self.on_button_apply_clicked)

        self.button_close = QtWidgets.QPushButton("Close")
        self.button_close.clicked.connect(self.on_button_close_clicked)

        self.btn_layout.addWidget(self.button_create)
        self.btn_layout.addWidget(self.button_apply)
        self.btn_layout.addWidget(self.button_close)


    def operation(self):
        newName = cmds.textField("ItemName", q=True, text=True)

        radio_selection = cmds.radioCollection(radioCollection, query=True, sl=True)


    def on_button_create_clicked(self):
        suffix = '_Geo'
        gp = '_Grp'
        lyr = '_Layer'
        name = self.saveNameField.text()
    
        if self.rbutton_sphere.isChecked():
            obj = cmds.polySphere(name='{}{}'.format(name, suffix))[0]
            if self.chk_box_group.isChecked():
                grp = cmds.group(obj, n="{}{}".format(name, gp))
                if self.chk_box_layer.isChecked():
                    layer = cmds.createDisplayLayer(n="{}{}".format(name, lyr))
                    cmds.editDisplayLayerMembers(layer, obj)
    
            if self.chk_box_offset.isChecked():
                offset = float(self.show_set_number.text())
                if self.chk_button_X.isChecked():
                    cmds.move(offset, 0, 0, obj, r=True)
                if self.chk_button_Y.isChecked():
                    cmds.move(0, offset, 0, obj, r=True)
                if self.chk_button_Z.isChecked():
                    cmds.move(0, 0, offset, obj, r=True)
    
        elif self.rbutton_cube.isChecked():
            obj = cmds.polyCube(name='{}{}'.format(name, suffix))[0]
            if self.chk_box_group.isChecked():
                grp = cmds.group(obj, n="{}{}".format(name, gp))
                if self.chk_box_layer.isChecked():
                    layer = cmds.createDisplayLayer(n="{}{}".format(name, lyr))
                    cmds.editDisplayLayerMembers(layer, obj)
    
            if self.chk_box_offset.isChecked():
                offset = float(self.show_set_number.text())
                if self.chk_button_X.isChecked():
                    cmds.move(offset, 0, 0, obj, r=True)
                if self.chk_button_Y.isChecked():
                    cmds.move(0, offset, 0, obj, r=True)
                if self.chk_button_Z.isChecked():
                    cmds.move(0, 0, offset, obj, r=True)
    
        elif self.rbutton_cone.isChecked():
            obj = cmds.polyCone(name='{}{}'.format(name, suffix))[0]
            if self.chk_box_group.isChecked():
                grp = cmds.group(obj, n="{}{}".format(name, gp))
                if self.chk_box_layer.isChecked():
                    layer = cmds.createDisplayLayer(n="{}{}".format(name, lyr))
                    cmds.editDisplayLayerMembers(layer, obj)
    
            if self.chk_box_offset.isChecked():
                offset = float(self.show_set_number.text())
                if self.chk_button_X.isChecked():
                    cmds.move(offset, 0, 0, obj, r=True)
                if self.chk_button_Y.isChecked():
                    cmds.move(0, offset, 0, obj, r=True)
                if self.chk_button_Z.isChecked():
                    cmds.move(0, 0, offset, obj, r=True)


    def on_button_apply_clicked(self):
        print("Apply is clicked")
        

    def on_button_close_clicked(self):
        print("Close is clicked")
        self.close()





win = MyWindow()
win.show()

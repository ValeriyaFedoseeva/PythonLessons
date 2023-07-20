import maya.cmds as cmds
from PySide2 import QtWidgets, QtCore, QtGui


class MyWindow(QtWidgets.QDialog):

    def __init__(self):

        super(MyWindow, self).__init__()

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

        self.radio_btn_xyz_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.radio_btn_xyz_layout)

        self.slider_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.slider_layout)

        self.btn_layout = QtWidgets.QHBoxLayout()
        self.main_layout.addLayout(self.btn_layout)

        # Text Line
        self.nameLabel = QtWidgets.QLabel(self)
        self.nameLabel.setText('Name:')
        self.text_field_layout.addWidget(self.nameLabel)
        self.saveNameField = QtWidgets.QLineEdit()
        self.text_field_layout.addWidget(self.saveNameField)

        # Radio Buttons
        self.rbutton_sphere = QtWidgets.QRadioButton("Sphere")
        self.rbutton_sphere.setChecked(True)
        self.rbutton_cube = QtWidgets.QRadioButton("Cube")
        self.rbutton_cone = QtWidgets.QRadioButton("Cone")

        self.radio_btn_layout.addWidget(self.rbutton_sphere)
        self.radio_btn_layout.addWidget(self.rbutton_cube)
        self.radio_btn_layout.addWidget(self.rbutton_cone)

        # Check box
        self.chk_box_group = QtWidgets.QCheckBox("Group")
        self.chk_box_layer = QtWidgets.QCheckBox("Display Layer")
        self.chk_box_offset = QtWidgets.QCheckBox("Offset in:")

        self.check_box_layout.addWidget(self.chk_box_group)
        self.check_box_layout.addWidget(self.chk_box_layer)
        self.check_box_layout.addWidget(self.chk_box_offset)

        # Radio Buttons
        self.rbutton_X = QtWidgets.QCheckBox("X")
        self.rbutton_X.setChecked(True)
        self.rbutton_Y = QtWidgets.QCheckBox("Y")
        self.rbutton_Z = QtWidgets.QCheckBox("Z")

        self.radio_btn_xyz_layout.addWidget(self.rbutton_X)
        self.radio_btn_xyz_layout.addWidget(self.rbutton_Y)
        self.radio_btn_xyz_layout.addWidget(self.rbutton_Z)

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

        # Buttons
        self.button_OK = QtWidgets.QPushButton("OK")
        self.button_OK.clicked.connect(self.on_button_OK_clicked)

        self.button_Apply = QtWidgets.QPushButton("Apply")
        self.button_Apply.clicked.connect(self.on_button_Apply_clicked)

        self.button_Cancel = QtWidgets.QPushButton("Close")
        self.button_Cancel.clicked.connect(self.on_button_Close_clicked)

        self.btn_layout.addWidget(self.button_OK)
        self.btn_layout.addWidget(self.button_Apply)
        self.btn_layout.addWidget(self.button_Cancel)

    def on_button_OK_clicked(self):
        if self.rbutton_sphere.isChecked():
            cmds.polySphere()

    def on_button_Apply_clicked(self):
        print("Apply is clicked")

    def on_button_Close_clicked(self):
        print("Close is clicked")
        if cmds.window("MyQtUI", query=True, exists=True):
            cmds.deleteUI('MyQtUI')
        if cmds.windowPref("MyQtUI", exists=True):
            cmds.windowPref("MyQtUI", remove=1)


if cmds.window("MyQtUI", query=True, exists=True):
    cmds.deleteUI('MyQtUI')
if cmds.windowPref("MyQtUI", exists=True):
    cmds.windowPref("MyQtUI", remove=1)

win = MyWindow()
win.show()

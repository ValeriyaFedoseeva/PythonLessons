import maya.cmds as cmds
import random
from PySide2 import QtCore, QtGui, QtWidgets

class base_btn(QtWidgets.QWidget):
    def __init__(self, parent=None, label="Test"):
        super(base_btn, self).__init__()
        self.setFixedSize(250, 60)
        self.setAutoFillBackground(True)
        self.p = self.palette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(100, 100, 100))
        self.setPalette(self.p)
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setContentsMargins(2, 2, 2, 2)
        self.setLayout(self.main_layout)
        self.label = QtWidgets.QLabel(label)
        self.main_layout.addWidget(self.label)

class button_A(base_btn):
    def __init__(self, other_button, label="Test"):
        super(button_A, self).__init__(label=label)
        self.other_button = other_button

    def mousePressEvent(self, event):
        super(button_A, self).mousePressEvent(event)
        self.other_button.setRandomBackgroundColor()

class button_B(base_btn):
    def __init__(self, label="Test"):
        super(button_B, self).__init__(label=label)

    def setRandomBackgroundColor(self):
        red = random.randint(0, 255)
        green = random.randint(0, 255)
        blue = random.randint(0, 255)
        color = "#{:02x}{:02x}{:02x}".format(red, green, blue)
        self.setStyleSheet("background-color: {};".format(color))

class ToolSet(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(ToolSet, self).__init__()
        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("My Window")
        self.setObjectName("MyWindowID")
        self.setMinimumSize(260, 150)
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(3, 3, 3, 3)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)
        self.btn_layout = QtWidgets.QVBoxLayout()
        self.main_layout.addLayout(self.btn_layout)

        # Create an instance of button_B and add it to the button layout
        button_b = button_B(label="Button B")

        # Create an instance of button_A and pass button_b as the other_button parameter
        button_a = button_A(other_button=button_b, label="Button A")
        self.btn_layout.addWidget(button_a)
        self.btn_layout.addWidget(button_b)
        
def main():
    if cmds.window("MyWindowID", exists=True):
        cmds.deleteUI("MyWindowID", window=True)

    if cmds.windowPref("MyWindowID", exists=True):
        cmds.windowPref("MyWindowID", remove=True)

    global myUI
    myUI = ToolSet()
    myUI.show()

main()

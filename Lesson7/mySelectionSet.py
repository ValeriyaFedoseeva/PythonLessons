import maya.cmds as cmds
import random
from PySide2 import QtCore, QtGui, QtWidgets


class ObjectWidget(QtWidgets.QWidget):
    def __init__(self, object_path):
        super(ObjectWidget, self).__init__()

        self.object_path = object_path
        self.display_name = self.object_path.split("|")[-1]

        self.random_color = self.generate_random_color()

        self.setup_ui()

    def setup_ui(self):
        self.setMinimumSize(250, 50)
        self.setMaximumHeight(50)

        self.setAutoFillBackground(True)
        self.set_background()

        # layout 
        self.main_layout = QtWidgets.QHBoxLayout()
        self.setLayout(self.main_layout)


    def generate_random_color(self):
        hue = random.uniform(0.0, 1.0)
        color = QtGui.QColor.fromHsvF(hue, 1.0, 1.0)
        return color


    def set_background(self):
        palette = self.palette()
        palette.setColor(QtGui.QPalette.Background, self.random_color)
        self.setPalette(palette)
    
    def enterEvent(self, event):
        self.setCursor(QtCore.Qt.PointingHandCursor)
        self.set_background(160, 25, 150)

    def leaveEvent(self, event):
        self.setCursor(QtCore.Qt.ArrowCursor)
        self.set_background()

    def mousePressEvent(self, event):
        self.set_background(160, 10, 150)

    def mouseReleaseEvent(self, event):
        #self.set_background(160, 50, 150)    
        state = self.checkbox1.isChecked()


class MyCustomWidget(QtWidgets.QDialog):
    def __init__(self):
        super(MyCustomWidget, self).__init__()

        self.selection = []


        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("My Selection Set Tool")
        self.setObjectName("MySelectionSetWindowID")
        self.setMinimumSize(300, 500)
        
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(5, 5, 5, 5)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)


  
        # scroll area
        self.scrollArea = QtWidgets.QScrollArea()
        self.scrollArea.setMinimumHeight(490)
        self.scrollArea.setWidgetResizable(True)
        self.scrollArea.setMinimumWidth(300)
        self.scrollArea.setFocusPolicy( QtCore.Qt.NoFocus )
        self.scrollArea.setFrameShape(QtWidgets.QFrame.NoFrame)

        self.scroll_area_widget = QtWidgets.QWidget()
        self.scrollArea.setWidget(self.scroll_area_widget)

        self.scroll_layout = QtWidgets.QVBoxLayout()
        self.scroll_layout.setAlignment(QtCore.Qt.AlignTop)
        self.scroll_layout.setContentsMargins(0,0,5,0)
        self.scroll_layout.setSpacing(5) #layout
        self.scroll_area_widget.setLayout(self.scroll_layout)

        self.main_layout.addWidget(self.scrollArea) #add to main layout


        self.btn_new = QtWidgets.QPushButton("Create New Set")
        self.btn_new.setMinimumHeight(80)
        self.btn_new.clicked.connect(self.on_button_new_clicked)
        self.main_layout.addWidget(self.btn_new)

    def on_button_new_clicked(self):
        pass


def clean_ui():
    if cmds.window("MyCustomWidgetUIId", exists=True):
        cmds.deleteUI("MyCustomWidgetUIId", window=True)

    if cmds.windowPref("MyCustomWidgetUIId", exists=True):
        cmds.windowPref("MyCustomWidgetUIId", remove=True)

clean_ui()
myUI = MyCustomWidget()
myUI.show()
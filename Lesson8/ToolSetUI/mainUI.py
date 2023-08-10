from PySide2 import QtWidgets, QtCore, QtGui
import maya.cmds as cmds 
from optionsUI import OptionsUI
import os
import json

ROOT_DIR = str(os.path.dirname(__file__))
DIR = os.path.join(ROOT_DIR, 'Settings')


class base_tool_btn(QtWidgets.QWidget):

    def __init__(self, parent = None, label="Test"):
        super(base_tool_btn, self).__init__()
        self.setFixedSize(290, 40)

        # SET BG
        self.setAutoFillBackground(True)
        self.p = self.palette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(100, 100, 100))
        self.setPalette(self.p)

        # MAIN LAYOUT
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setContentsMargins(2, 2, 2, 2)
        self.setLayout(self.main_layout)

        # LABEL
        self.label = QtWidgets.QLabel(label)
        self.main_layout.addWidget(self.label)

    def mousePressEvent(self, event):
        pass

class sphere_tool(base_tool_btn):

    def __init__(self, label="Test"):

        super(sphere_tool, self).__init__(label=label)
        self.name = "Sphere"
        self.suffix = "_Geo"
    def mousePressEvent(self, event):

        obj = cmds.polySphere(n="{}{}".format(self.name, self.suffix), ch=False)[0]
        super(sphere_tool, self).mousePressEvent(event)

class cube_tool(base_tool_btn):

    def __init__(self, label="Test"):

        super(cube_tool, self).__init__(label=label)
        self.name = "Cube"
        self.suffix = "_Geo"
        
    def mousePressEvent(self, event):
        obj = cmds.polyCube(n="{}{}".format(self.name, self.suffix), ch=False)[0]
        super(cube_tool, self).mousePressEvent(event)

class cone_tool(base_tool_btn):

    def __init__(self, label="Test"):

        super(cone_tool, self).__init__(label=label)
        self.name = "Cone"
        self.suffix = "_Geo"

    def mousePressEvent(self, event):
        obj = cmds.polyCone(n="{}{}".format(self.name, self.suffix), ch=False)[0]
        super(cone_tool, self).mousePressEvent(event)

class torus_tool(base_tool_btn):

    def __init__(self, label="Test"):

        super(torus_tool, self).__init__(label=label)
        self.name = "Torus"
        self.suffix = "_Geo"

    def mousePressEvent(self, event):
        obj = cmds.polyTorus(n="{}{}".format(self.name, self.suffix), ch=False)[0]
        super(torus_tool, self).mousePressEvent(event)


GLOBAL_LIST = [
    "sphere_tool",
    "cube_tool",
    "cone_tool",
    "torus_tool"]


class ToolSet(QtWidgets.QDialog):

    update_list = QtCore.Signal()

    def __init__(self, parent=None):

        super(ToolSet,self).__init__()

        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        self.setup_ui()

        # Initialize classList with GLOBAL_LIST
        self.classList = GLOBAL_LIST
        self.read_json_data()

    def setup_ui(self):
        self.setWindowTitle("My Tool Set")
        self.setObjectName("MyToolsSetID")
        self.setMinimumSize(300, 600)
        
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(3, 3, 3, 3)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)

        # scroll area
        self.scrollArea = QtWidgets.QScrollArea()
        self.scrollArea.setMinimumHeight(600)
        self.scrollArea.setWidgetResizable(True)
        self.scrollArea.setMinimumWidth(300)
        self.scrollArea.setFocusPolicy( QtCore.Qt.NoFocus )
        self.scrollArea.setFrameShape(QtWidgets.QFrame.NoFrame)

        self.scroll_area_widget = QtWidgets.QWidget()
        self.scrollArea.setWidget(self.scroll_area_widget)

        self.scroll_layout = QtWidgets.QVBoxLayout()
        self.scroll_layout.setAlignment(QtCore.Qt.AlignTop)
        self.scroll_layout.setContentsMargins(3,0,3,0)
        self.scroll_layout.setSpacing(5)
        self.scroll_area_widget.setLayout(self.scroll_layout)

        self.main_layout.addWidget(self.scrollArea) 

        self.btn_options = QtWidgets.QPushButton("Options")
        self.btn_options.setStyleSheet("""
            QPushButton {
                background-color: rgb(100, 100, 100);
                border-radius: 5px;
                min-width: 160px;
                min-height: 60px;
                font-weight: 600;
                font-size: 18px;
            }
            QPushButton:hover {
                background-color: rgb(100, 100, 100);
            }
        """) 

        self.btn_options.clicked.connect(self.openOptionsUI)
        self.main_layout.addWidget(self.btn_options)

        #TEST


        '''
        self.btnA = sphere_tool(label="Create Sphere")
        self.btnB = cube_tool(label="Create Cube")
        self.btnC = cone_tool(label="Create Cone")
        self.btnD = torus_tool(label="Create Torus")        
        '''

    def read_json_data(self, directory=DIR):

        #CLEAN UP
        if self.scroll_layout.count():
            for i in range(self.scroll_layout.count()):
                item = self.scroll_layout.itemAt(i)
                widget = item.widget()

                widget.deleteLater()

        name = "settings"
        path = os.path.join(directory, '%s.json' % name)
        data = []

        if os.path.isfile(path):
            with open(path, 'r') as f:
                data = json.load(f)
            
        for i in data:
            exec("btn = {0}(label = '{0}')".format(i))
            self.scroll_layout.addWidget(btn)

    def openOptionsUI(self):

        if cmds.window('myOptionsUI', q=1, exists=1):
            cmds.deleteUI('myOptionsUI')

        if cmds.windowPref('myOptionsUI', exists = 1):
            cmds.windowPref('myOptionsUI', remove = 1)

        self.myUI = OptionsUI(classList = GLOBAL_LIST)
        self.myUI.update_list.connect(self.read_json_data)
        self.myUI.show()


def main():
    if cmds.window("MyToolsSetID", exists=True):
        cmds.deleteUI("MyToolsSetID", window=True)

    if cmds.windowPref("MyToolsSetID", exists=True):
        cmds.windowPref("MyToolsSetID", remove=True)

    global myUI
    myUI = ToolSet()
    myUI.show()

main()


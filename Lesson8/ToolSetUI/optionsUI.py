import maya.cmds as cmds
import os
import json
from PySide2 import QtCore, QtGui, QtWidgets

ROOT_DIR = str(os.path.dirname(__file__))
DIR = os.path.join(ROOT_DIR, 'Settings')

class MyMIME(QtCore.QMimeData):
    def __init__(self):
        super(MyMIME, self).__init__()
        self.toolName = None

class ButtonWidget(QtWidgets.QWidget):

    def __init__(self, parent = None, label="Test"):
        super(ButtonWidget, self).__init__()
        self.setMinimumHeight(50)

        # SET BG
        self.setAutoFillBackground(True)
        self.p = self.palette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(80, 80, 80))
        self.setPalette(self.p)

        # MAIN LAYOUT
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setContentsMargins(2, 2, 2, 2)
        self.setLayout(self.main_layout)

        # LABEL
        self.label = QtWidgets.QLabel(label)
        self.main_layout.addWidget(self.label)

    def addLabel(self, text):
        self.label.setText(text)

    def mousePressEvent(self, event):
        if event.buttons() != QtCore.Qt.LeftButton:
            return

        #Mime Data
        mime_data = MyMIME() 
        mime_data.toolName = self.label.text()


        # Create ghost image behind the cursor
        pixmap = self.grab()
        painter = QtGui.QPainter(pixmap)
        painter.setCompositionMode(painter.CompositionMode_DestinationIn)
        painter.fillRect(pixmap.rect(), QtGui.QColor(80, 80, 80, 127))
        painter.end()

        drag = QtGui.QDrag(self)
        drag.setMimeData(mime_data)
        drag.setPixmap(pixmap)
        drag.setHotSpot(event.pos())

        drag.exec_(QtCore.Qt.LinkAction | QtCore.Qt.MoveAction)

        """
        Qt::MoveAction 0x2 (2) Move the data from source to the target.
        Qt::LinkAction 0x4 (4) Create a link from the source to the target.
        """

class FieldWidget(QtWidgets.QWidget):

    def __init__(self):
        super(FieldWidget, self).__init__()

        self.button_list = []

        self.setMinimumWidth(240)
        self.setMinimumHeight(500)
        self.setAcceptDrops(True)

        # SET BG
        self.setAutoFillBackground(True)
        self.p = self.palette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(40, 40, 40))
        self.setPalette(self.p)

        # MAIN LAYOUT
        self.mainLayout = QtWidgets.QVBoxLayout()
        self.setLayout(self.mainLayout)

        # SCROLL
        self.scroll_area = QtWidgets.QScrollArea()
        self.scroll_area.setMinimumHeight(200)
        self.scroll_area.setWidgetResizable(True)
        self.scroll_area.setFocusPolicy(QtCore.Qt.NoFocus)
        self.scroll_area.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.scroll_area.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)

        self.scroll_area_wigdget = QtWidgets.QWidget()
        self.scroll_area.setWidget(self.scroll_area_wigdget)

        self.scroll_layout = QtWidgets.QGridLayout()
        self.scroll_layout.setAlignment(QtCore.Qt.AlignTop)
        self.scroll_layout.setContentsMargins(0, 0, 7, 0)
        self.scroll_layout.setSpacing(5)
        self.scroll_area_wigdget.setLayout(self.scroll_layout)

        self.mainLayout.addWidget(self.scroll_area)

    def tool_btns(self, label): 
        button = ButtonWidget(label=label) 
        self.scroll_layout.addWidget(button)      

    def dragEnterEvent(self, event):
        event.acceptProposedAction()

    def dragMoveEvent(self, event):
        event.acceptProposedAction()

    def dropEvent(self, event):
        mime_data = event.mimeData()
        label = mime_data.toolName

        new_button = ButtonWidget(label=label)
        self.scroll_layout.addWidget(new_button)

        event.source().deleteLater()


    def createWidget(self, label):
        btn = ButtonWidget(label=label)
        self.scroll_layout.addWidget(btn)


class OptionsUI(QtWidgets.QDialog):

    update_list = QtCore.Signal()

    def __init__(self, classList = []):
        super(OptionsUI, self).__init__()

        self.classList = classList

        self.setObjectName('myOptionsUI')
        self.setWindowTitle('My Options UI')
        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        self.setMinimumSize(500, 600)# Width , Height in pixels
        self.createUI()
        self.read_data()

    def createUI(self):
        self.mainLayout = QtWidgets.QVBoxLayout()
        self.mainLayout.setAlignment(QtCore.Qt.AlignTop)
        self.setLayout( self.mainLayout )

        # Tool Fields
        self.fieldLayout = QtWidgets.QHBoxLayout()

        self.leftField = FieldWidget()

        self.rightField = FieldWidget()

        self.fieldLayout.addWidget(self.leftField)
        self.fieldLayout.addWidget(self.rightField)

        self.mainLayout.addLayout(self.fieldLayout)

        # Button 
        self.btn_save = QtWidgets.QPushButton("Save")
        self.btn_save.setStyleSheet("""
            QPushButton {
                background-color: rgb(100, 100, 100);
                border-radius: 5px;
                min-width: 150px;
                min-height: 80px;
                font-size: 16px;
            }
            QPushButton:hover {
                background-color: rgb(100, 100, 100);
            }
        """) 
 
        self.btn_save.clicked.connect(self.save_data)
        self.mainLayout.addWidget(self.btn_save)

    def createDIR(self, directory=DIR):
        '''
        Creates a given DIR if it doesn't exist
        Args:
            DIR(str):The DIR to create
        '''

        if not os.path.exists(DIR):
            os.mkdir(DIR)
        return DIR

    def save_data(self, directory=DIR):
        self.createDIR(directory)
        name = "settings"
        path = os.path.join(directory, '%s.json' % name)

        data = []

        if self.rightField.scroll_layout.count():
            for i in range(self.rightField.scroll_layout.count()):
                item = self.rightField.scroll_layout.itemAt(i)
                widget = item.widget()
                label = widget.label.text()

                data.append(label)


        with open(path, 'w') as f:
            data = json.dump(data, f, indent=4)
        
        self.update_list.emit()

        self.close()        

    def read_data(self, directory=DIR):
        name = "settings"
        path = os.path.join(directory, '%s.json' % name)
        data = []

        if os.path.isfile(path):
            with open(path, 'r') as f:
                data = json.load(f)
            
        for i in self.classList:
            if i in data:
                self.rightField.createWidget(label=i)
            else:
                self.leftField.createWidget(label=i)


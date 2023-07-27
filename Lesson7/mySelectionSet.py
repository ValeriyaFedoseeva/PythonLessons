import maya.cmds as cmds
import random
from PySide2 import QtCore, QtGui, QtWidgets



class Selection_Set_Widget(QtWidgets.QWidget):
    def __init__(self, set_count):
        super(Selection_Set_Widget, self).__init__()

        self.get_selected()

        self.setMinimumWidth(275)
        self.setMinimumHeight(50)
        self.setMaximumHeight(50)
        self.setAutoFillBackground(True)

        self.set_count = set_count 

        self.set_background()

        self.setup_ui()

        # Context menu

        self.popMenu = QtWidgets.QMenu(self)

        self.popMenuAdd = QtWidgets.QAction('Add selected object to set', self)
        self.popMenu.addAction(self.popMenuAdd)
        self.popMenuAdd.triggered.connect(self.cont_add_obj)

        self.popMenuDel = QtWidgets.QAction('Delete selected object from set', self)
        self.popMenu.addAction(self.popMenuDel)
        self.popMenuDel.triggered.connect(self.cont_del_obj)   

        self.popMenuDel = QtWidgets.QAction('Select all objects in this set', self)
        self.popMenu.addAction(self.popMenuDel)
        self.popMenuDel.triggered.connect(self.cont_sel_obj)         

        self.popMenuDel = QtWidgets.QAction('Delete set', self)
        self.popMenu.addAction(self.popMenuDel)
        self.popMenuDel.triggered.connect(self.cont_del_set)   

        # attributes
        self.setMouseTracking(True)  
        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.customContextMenuRequested.connect(self.onContextMenu)


    def onContextMenu(self, point):

        self.popMenu.exec_(self.mapToGlobal(point))


    def cont_add_obj(self):
        sel = cmds.ls(sl=True, l=True)
        if not sel:
            raise RuntimeError("No objects selected. Please select some objects.")
 
        for obj in sel:
            if obj not in self.selection:
                self.selection.append(obj)

    def cont_del_obj(self):
        sel = cmds.ls(sl=True, l=True)
        if not sel:
            raise RuntimeError("No objects selected. Please select some objects.")
        
        for obj in sel:
            if obj in self.selection:
                self.selection.remove(obj)

    def cont_sel_obj(self):
        cmds.select(self.selection)     

    def cont_del_set(self):
        self.deleteLater()


    def setup_ui(self):
        # layout 
        self.main_layout = QtWidgets.QHBoxLayout()
        self.setLayout(self.main_layout)

        #Naming
        self.lable = QtWidgets.QLabel("SET {}".format(self.set_count))
        self.font = self.lable.font()
        self.font.setPointSize(10)
        self.font.setBold(True)
        self.lable.setFont(self.font)
        self.main_layout.addWidget(self.lable)
        

    def get_selected(self):
        self.selection = cmds.ls(sl=1, l=1)
        return self.selection

    def selectObjects(self):
        cmds.ls(self.selection)


    def set_background(self, r=None, g=75, b=150):
        #set Background

        if r is None:
            r = random.randint(0, 255)

        self.p = QtGui.QPalette()
        self.color = QtGui.QColor()
        self.color.setHsv(r, g, b)
        self.p.setColor(self.backgroundRole(), self.color)
        self.setPalette(self.p)


    def enterEvent(self, event):
        self.setCursor(QtCore.Qt.PointingHandCursor)
        self.set_background(160, 25, 150)

    def leaveEvent(self, event):
        self.setCursor(QtCore.Qt.ArrowCursor)
        self.set_background()

    def mousePressEvent(self, event):
        self.set_background(160, 10, 150)

    def mouseReleaseEvent(self, event):
        self.set_background(160, 25, 150)

        if event.button() == QtCore.Qt.LeftButton:
            cmds.select(self.selection) 

        elif event.button() == QtCore.Qt.RightButton:
            self.onContextMenu(event.pos())
            

class MyCustomWidget(QtWidgets.QDialog):
    def __init__(self):
        super(MyCustomWidget, self).__init__()

        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)

        self.selection = []

        self.set_count = 0
        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("My Selection Set Tool")
        self.setObjectName("MySelectionSetWindowID")
        self.setMinimumSize(300, 500)
        
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(3, 3, 3, 3)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)


        # scroll area
        self.scrollArea = QtWidgets.QScrollArea()
        self.scrollArea.setMinimumHeight(500)
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


        self.btn_new = QtWidgets.QPushButton("Create New Set")
        self.font = self.btn_new.font()
        self.font.setPointSize(15)
        self.btn_new.setFont(self.font)
        self.btn_new.setMinimumHeight(80)
        self.btn_new.clicked.connect(self.create_new_selection_set)
        self.main_layout.addWidget(self.btn_new)

    def create_new_selection_set(self):
        self.set_count += 1  
        btn = Selection_Set_Widget(self.set_count)
        self.scroll_layout.addWidget(btn)


def clean_ui():
    if cmds.window("MyCustomWidgetUIId", exists=True):
        cmds.deleteUI("MyCustomWidgetUIId", window=True)

    if cmds.windowPref("MyCustomWidgetUIId", exists=True):
        cmds.windowPref("MyCustomWidgetUIId", remove=True)

clean_ui()
myUI = MyCustomWidget()
myUI.show()
import maya.cmds as cmds
import uuid
from PySide2 import QtCore, QtGui, QtWidgets
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin


button2Style = """
    QPushButton#MyCustomButtonWidgetID{
        background-color: rgb(109,113,168);
        border-radius: 10px;
        min-width: 30px;
        min-height: 30px;
        font-weight: 900;


    }
    QPushButton#MyCustomButtonWidgetID:hover {
        background-color: rgb(255,133,198);
        min-width: 30px;
        min-height: 30px;  
    }
    """




class ObjectWidget(QtWidgets.QWidget):
    def __init__(self, object_path):
        super(ObjectWidget, self).__init__()

        self.object_path = object_path
        self.display_name = self.object_path.split("|")[-1]

        self.setup_ui()

    def setup_ui(self):
        self.setMinimumSize(250, 50)
        self.setMaximumHeight(50)

        self.setAutoFillBackground(True)
        self.set_background()

        # layout 
        self.main_layout = QtWidgets.QHBoxLayout()
        self.setLayout(self.main_layout)

        #checkbox
        self.checkbox1 = QtWidgets.QCheckBox(self.display_name)
        visibility_state = cmds.getAttr(self.object_path + ".visibility")
        self.checkbox1.setChecked(visibility_state)
        self.checkbox1.toggled.connect(self.on_checkbox_toggled)
        self.main_layout.addWidget(self.checkbox1)

        #Button

        self.btn_delete = QtWidgets.QPushButton("Delete")
        self.btn_delete.setObjectName("MyCustomButtonWidgetID")
        self.btn_delete.setMaximumWidth(50)
        #self.btn_delete.setStyleSheet(button2Style)
        self.btn_delete.clicked.connect(self.on_btn_del_clicked)
        self.main_layout.addWidget(self.btn_delete)
    
    def set_background(self, r=160, g=75, b=150):
        #set Background
        self.p = QtGui.QPalette()
        self.color = QtGui.QColor()
        self.color.setHsv(r, g, b)
        self.p.setColor(self.backgroundRole(), self.color)
        self.setPalette(self.p)

    def on_checkbox_toggled(self, state):
        cmds.setAttr(self.object_path + ".visibility", state)
        print("Checkbox state:", state)

    def on_btn_del_clicked(self):
        cmds.delete(self.object_path)
        self.deleteLater()
        
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

        self.checkbox1.setChecked(not state)    




class MyCustomWidget(MayaQWidgetDockableMixin, QtWidgets.QDockWidget):
    def __init__(self):
        super(MyCustomWidget, self).__init__()

        self.selection = []
        self.get_selected()
        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("My Custom UI")
        self.setObjectName("MyCustomWidgetUIId")
        self.setMinimumSize(300, 1000)



        self.main_widget = QtWidgets.QWidget()
        self.setLayout(QtWidgets.QVBoxLayout())
        self.layout().addWidget(self.main_widget)

        self.main_layout = QtWidgets.QVBoxLayout(self.main_widget)
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(5, 5, 0, 5)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)

        # scroll area
        self.scrollArea = QtWidgets.QScrollArea()
        self.scrollArea.setMinimumHeight(1000)
        self.scrollArea.setWidgetResizable(True)
        self.scrollArea.setMinimumWidth(250)
        self.scrollArea.setFocusPolicy( QtCore.Qt.NoFocus )
        self.scrollArea.setFrameShape(QtWidgets.QFrame.NoFrame)
        #self.scrollArea.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)

        self.scroll_area_widget = QtWidgets.QWidget()
        self.scrollArea.setWidget(self.scroll_area_widget)

        self.scroll_layout = QtWidgets.QVBoxLayout()
        self.scroll_layout.setAlignment(QtCore.Qt.AlignTop)
        self.scroll_layout.setContentsMargins(0,0,5,0)
        self.scroll_layout.setSpacing(5) #layout
        self.scroll_area_widget.setLayout(self.scroll_layout)

        self.main_layout.addWidget(self.scrollArea) #add to main layout
         
            
        self.populate_selection()
        #create custom widget in a cycle


        #update button
        self.btn_update = QtWidgets.QPushButton("Update")
        self.btn_update.clicked.connect(self.on_button_update_clicked)
        self.main_layout.addWidget(self.btn_update)


    def on_button_update_clicked(self):
        if self.scroll_layout.count(): # if layout has any children
            for i in range(self.scroll_layout.count()): #[0,1,2,3,4]
                item = self.scroll_layout.itemAt(i)
                widget = item.widget()
                if widget:
                    widget.deleteLater()

        self.get_selected()
        self.populate_selection()


    def get_selected(self):
        self.selection = cmds.ls(sl=1, l=1)

    def populate_selection(self):
        for i in self.selection:
            self.object_wgt = ObjectWidget(i)
            self.scroll_layout.addWidget(self.object_wgt)

def clean_ui():
    if cmds.window("MyCustomWidgetUIId", exists=True):
        cmds.deleteUI("MyCustomWidgetUIId", window=True)

    if cmds.windowPref("MyCustomWidgetUIId", exists=True):
        cmds.windowPref("MyCustomWidgetUIId", remove=True)

clean_ui()
#myUI = MyCustomWidget()
#myUI.show()

def create_dockable_widget():
    if cmds.workspaceControl('MyCustomWidgetUIIdWorkspaceControl', exists=True):
        cmds.deleteUI('MyCustomWidgetUIIdWorkspaceControl', control = True)
        
    if cmds.workspaceControlState('MyCustomWidgetUIIdWorkspaceControl', exists=True):
        cmds.workspaceControlState('MyCustomWidgetUIIdWorkspaceControl', remove=1)
        
    myUI = MyCustomWidget()
    myUI.show(dockable = True, area='right', allowedArea='right', floating=False)
    
    cmds.workspaceControl('MyCustomWidgetUIIdWorkspaceControl',
                            label = 'MyWidget',
                            edit = 1,
                            r = 1,
                            tabToControl = ['AttributeEditor', -1],
                            widthProperty = 'fixed',
                            initialWidth = 300,
                            minimumWidth = 300)

# Call this function to create a dockable widget next to the Attribute Editor
create_dockable_widget()
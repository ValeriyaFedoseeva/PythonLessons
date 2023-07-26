import maya.cmds as cmds
from PySide2 import QtCore, QtGui, QtWidgets


class ObjectWidget(QtWidgets.QWidget):
    def __init__(self):
        super(ObjectWidget, self).__init__()

        self.setMinimumSize(300, 50)
        self.setMaximumHeight(50)

        self.setAutoFillBackground(True)
        
        #set Background
        self.p = QtGui.QPalette()
        self.color = QtGui.QColor()
        self.color.setHsv(162, 50, 150)
        self.p.setColor(self.backgroundRole(), self.color)
        self.setPalette(self.p)

        # layout 
        self.main_layout = QtWidgets.QHBoxLayout()
        self.setLayout(self.main_layout)

        #checkbox
        self.checkbox1 = QtWidgets.QCheckBox("Test")
        self.main_layout.addWidget(self.checkbox1)

        #Button

        self.btn_delete = QtWidgets.QPushButton("Delete")
        self.btn_delete.setMaximumWidth(50)
        self.main_layout.addWidget(self.btn_delete)



class MyCustomWidget(QtWidgets.QDialog):
    def __init__(self):
        super(MyCustomWidget, self).__init__()

        self.setup_ui()


    def setup_ui(self):
        self.setWindowTitle("My Custon UI")
        self.setObjectName("MyCustomWidgetUIId")
        self.setMinimumSize(300, 500)

        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(5,5,5,5)#
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)




        # Custom Widget
        self.owg1 = ObjectWidget()
        self.main_layout.addWidget(self.owg1)

        self.owg2 = ObjectWidget()
        self.main_layout.addWidget(self.owg2)

    def get_selected(self):
        print (test)





win = MyCustomWidget()
win.show()
import maya.cmds as cmds
from PySide2 import QtCore, QtGui, QtWidgets


class ObjectWidget(QtWidgets.QWidget):
    def __init__(self):
        super(ObjectWidget, self).__init__()

        self.setMinimumSize(300, 30)
        self.setMaximumHeight(30)

        self.setAutoFillBackground(True)
        #set Background

        self.p = QtGui.QPalette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(100,100,100))
        self.setPalette(self.p)


class MyCustomWidget(QtWidgets.QDialog):
    def __init__(self):
        super(MyCustomWidget, self).__init__()

        self.setWindowTitle("My Custon UI")
        self.setObjectName("MyCustomWidgetUIId")
        self.setMinimumSize(300, 500)

        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(5,5,5,5)
        self.setLayout(self.main_layout)

        # test buttons

        self.btn1 = QtWidgets.QPushButton("Test")
        self.main_layout.addWidget(self.btn1)

        self.owg1 = ObjectWidget()
        self.main_layout.addWidget(self.owg1)


win = MyCustomWidget()
win.show()
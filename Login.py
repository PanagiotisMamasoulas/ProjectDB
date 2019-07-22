# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'D:\Documents\CEID\Βασεις Δεδομενων\ProjectDB\login.ui'
#
# Created by: PyQt5 UI code generator 5.11.3
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_LoginScreen(object):
    def setupUi(self, LoginScreen):
        LoginScreen.setObjectName("LoginScreen")
        LoginScreen.resize(600, 350)
        LoginScreen.setMinimumSize(QtCore.QSize(200, 200))
        LoginScreen.setMaximumSize(QtCore.QSize(16777215, 16777215))
        LoginScreen.setToolButtonStyle(QtCore.Qt.ToolButtonIconOnly)
        LoginScreen.setTabShape(QtWidgets.QTabWidget.Rounded)
        LoginScreen.setUnifiedTitleAndToolBarOnMac(False)
        self.centralwidget = QtWidgets.QWidget(LoginScreen)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout.setContentsMargins(10, 10, 10, 10)
        self.gridLayout.setSpacing(5)
        self.gridLayout.setObjectName("gridLayout")
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout.addItem(spacerItem, 7, 1, 1, 2)
        self.password = QtWidgets.QLineEdit(self.centralwidget)
        self.password.setEchoMode(QtWidgets.QLineEdit.Password)
        self.password.setObjectName("password")
        self.gridLayout.addWidget(self.password, 2, 1, 1, 2)
        self.remember = QtWidgets.QCheckBox(self.centralwidget)
        self.remember.setObjectName("remember")
        self.gridLayout.addWidget(self.remember, 3, 1, 1, 2)
        self.autom = QtWidgets.QCheckBox(self.centralwidget)
        self.autom.setObjectName("autom")
        self.gridLayout.addWidget(self.autom, 4, 1, 1, 2)
        self.warning = QtWidgets.QLabel(self.centralwidget)
        self.warning.setEnabled(True)
        self.warning.setLineWidth(0)
        self.warning.setTextFormat(QtCore.Qt.RichText)
        self.warning.setScaledContents(False)
        self.warning.setAlignment(QtCore.Qt.AlignCenter)
        self.warning.setWordWrap(False)
        self.warning.setIndent(0)
        self.warning.setObjectName("warning")
        self.gridLayout.addWidget(self.warning, 5, 1, 1, 2)
        self.username = QtWidgets.QLineEdit(self.centralwidget)
        self.username.setObjectName("username")
        self.gridLayout.addWidget(self.username, 1, 1, 1, 2)
        self.login = QtWidgets.QPushButton(self.centralwidget)
        self.login.setCheckable(False)
        self.login.setAutoDefault(False)
        self.login.setDefault(True)
        self.login.setFlat(False)
        self.login.setObjectName("login")
        self.gridLayout.addWidget(self.login, 6, 1, 1, 1)
        self.exit = QtWidgets.QPushButton(self.centralwidget)
        self.exit.setObjectName("exit")
        self.gridLayout.addWidget(self.exit, 6, 2, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem1, 1, 3, 6, 1)
        spacerItem2 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout.addItem(spacerItem2, 0, 1, 1, 2)
        spacerItem3 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem3, 1, 0, 6, 1)
        LoginScreen.setCentralWidget(self.centralwidget)

        self.retranslateUi(LoginScreen)
        QtCore.QMetaObject.connectSlotsByName(LoginScreen)
        LoginScreen.setTabOrder(self.username, self.password)
        LoginScreen.setTabOrder(self.password, self.remember)
        LoginScreen.setTabOrder(self.remember, self.autom)
        LoginScreen.setTabOrder(self.autom, self.login)
        LoginScreen.setTabOrder(self.login, self.exit)

    def retranslateUi(self, LoginScreen):
        _translate = QtCore.QCoreApplication.translate
        LoginScreen.setWindowTitle(_translate("LoginScreen", "Είσοδος"))
        self.password.setPlaceholderText(_translate("LoginScreen", "Password"))
        self.remember.setText(_translate("LoginScreen", "Remember me"))
        self.autom.setText(_translate("LoginScreen", "Log in automaricaly"))
        self.warning.setText(_translate("LoginScreen", "<html><head/><body><p>Hello</p></body></html>"))
        self.username.setPlaceholderText(_translate("LoginScreen", "Username"))
        self.login.setText(_translate("LoginScreen", "Log in"))
        self.exit.setText(_translate("LoginScreen", "Exit"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    LoginScreen = QtWidgets.QMainWindow()
    ui = Ui_LoginScreen()
    ui.setupUi(LoginScreen)
    LoginScreen.show()
    sys.exit(app.exec_())


# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'D:\Documents\CEID\Βασεις Δεδομενων\ProjectDB\Recruit.ui'
#
# Created by: PyQt5 UI code generator 5.11.3
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_RecruitWindow(object):
    def setupUi(self, RecruitWindow):
        RecruitWindow.setObjectName("RecruitWindow")
        RecruitWindow.resize(650, 350)
        RecruitWindow.setMinimumSize(QtCore.QSize(650, 350))
        font = QtGui.QFont()
        font.setFamily("Bahnschrift Light")
        RecruitWindow.setFont(font)
        self.centralwidget = QtWidgets.QWidget(RecruitWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout.setObjectName("gridLayout")
        self.Reset = QtWidgets.QPushButton(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Reset.sizePolicy().hasHeightForWidth())
        self.Reset.setSizePolicy(sizePolicy)
        self.Reset.setObjectName("Reset")
        self.gridLayout.addWidget(self.Reset, 2, 3, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridLayout.addItem(spacerItem, 2, 1, 1, 1)
        self.Save = QtWidgets.QPushButton(self.centralwidget)
        self.Save.setObjectName("Save")
        self.gridLayout.addWidget(self.Save, 2, 2, 1, 1)
        self.Exit = QtWidgets.QPushButton(self.centralwidget)
        self.Exit.setObjectName("Exit")
        self.gridLayout.addWidget(self.Exit, 2, 0, 1, 1)
        self.Tabs = QtWidgets.QTabWidget(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Tabs.sizePolicy().hasHeightForWidth())
        self.Tabs.setSizePolicy(sizePolicy)
        self.Tabs.setMaximumSize(QtCore.QSize(16777215, 16777215))
        font = QtGui.QFont()
        font.setFamily("Bahnschrift Light")
        font.setBold(False)
        font.setWeight(50)
        self.Tabs.setFont(font)
        self.Tabs.setTabPosition(QtWidgets.QTabWidget.North)
        self.Tabs.setTabShape(QtWidgets.QTabWidget.Rounded)
        self.Tabs.setIconSize(QtCore.QSize(16, 16))
        self.Tabs.setElideMode(QtCore.Qt.ElideNone)
        self.Tabs.setUsesScrollButtons(False)
        self.Tabs.setDocumentMode(False)
        self.Tabs.setTabsClosable(False)
        self.Tabs.setTabBarAutoHide(False)
        self.Tabs.setObjectName("Tabs")
        self.ACCOUNT = QtWidgets.QWidget()
        self.ACCOUNT.setObjectName("ACCOUNT")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.ACCOUNT)
        self.gridLayout_2.setContentsMargins(10, 10, 10, 10)
        self.gridLayout_2.setSpacing(5)
        self.gridLayout_2.setObjectName("gridLayout_2")
        spacerItem1 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_2.addItem(spacerItem1, 3, 0, 1, 4)
        self._email = QtWidgets.QLabel(self.ACCOUNT)
        self._email.setObjectName("_email")
        self.gridLayout_2.addWidget(self._email, 2, 2, 1, 1)
        self._regdate = QtWidgets.QLabel(self.ACCOUNT)
        self._regdate.setObjectName("_regdate")
        self.gridLayout_2.addWidget(self._regdate, 2, 0, 1, 1)
        self.Email = QtWidgets.QLineEdit(self.ACCOUNT)
        self.Email.setObjectName("Email")
        self.gridLayout_2.addWidget(self.Email, 2, 3, 1, 1)
        self.Regdate = QtWidgets.QDateTimeEdit(self.ACCOUNT)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Regdate.sizePolicy().hasHeightForWidth())
        self.Regdate.setSizePolicy(sizePolicy)
        self.Regdate.setFrame(True)
        self.Regdate.setReadOnly(False)
        self.Regdate.setButtonSymbols(QtWidgets.QAbstractSpinBox.PlusMinus)
        self.Regdate.setProperty("showGroupSeparator", False)
        self.Regdate.setDisplayFormat("dd-MM-yyyy HH:mm:ss")
        self.Regdate.setObjectName("Regdate")
        self.gridLayout_2.addWidget(self.Regdate, 2, 1, 1, 1)
        self.Username = QtWidgets.QLineEdit(self.ACCOUNT)
        self.Username.setEnabled(True)
        self.Username.setReadOnly(True)
        self.Username.setObjectName("Username")
        self.gridLayout_2.addWidget(self.Username, 0, 1, 1, 1)
        self._password = QtWidgets.QLabel(self.ACCOUNT)
        self._password.setObjectName("_password")
        self.gridLayout_2.addWidget(self._password, 0, 2, 1, 1)
        self.Name = QtWidgets.QLineEdit(self.ACCOUNT)
        self.Name.setObjectName("Name")
        self.gridLayout_2.addWidget(self.Name, 1, 1, 1, 1)
        self.Password = QtWidgets.QLineEdit(self.ACCOUNT)
        self.Password.setEchoMode(QtWidgets.QLineEdit.PasswordEchoOnEdit)
        self.Password.setObjectName("Password")
        self.gridLayout_2.addWidget(self.Password, 0, 3, 1, 1)
        self._surname = QtWidgets.QLabel(self.ACCOUNT)
        self._surname.setObjectName("_surname")
        self.gridLayout_2.addWidget(self._surname, 1, 2, 1, 1)
        self._name = QtWidgets.QLabel(self.ACCOUNT)
        self._name.setObjectName("_name")
        self.gridLayout_2.addWidget(self._name, 1, 0, 1, 1)
        self.Surname = QtWidgets.QLineEdit(self.ACCOUNT)
        self.Surname.setObjectName("Surname")
        self.gridLayout_2.addWidget(self.Surname, 1, 3, 1, 1)
        self._username = QtWidgets.QLabel(self.ACCOUNT)
        self._username.setObjectName("_username")
        self.gridLayout_2.addWidget(self._username, 0, 0, 1, 1)
        self.Tabs.addTab(self.ACCOUNT, "")
        self.WORKPOS = QtWidgets.QWidget()
        self.WORKPOS.setObjectName("WORKPOS")
        self.gridLayout_3 = QtWidgets.QGridLayout(self.WORKPOS)
        self.gridLayout_3.setContentsMargins(10, 10, 10, 10)
        self.gridLayout_3.setSpacing(5)
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.J_position = QtWidgets.QLabel(self.WORKPOS)
        self.J_position.setObjectName("J_position")
        self.gridLayout_3.addWidget(self.J_position, 2, 0, 1, 1)
        self.JSalary = QtWidgets.QSpinBox(self.WORKPOS)
        self.JSalary.setButtonSymbols(QtWidgets.QAbstractSpinBox.NoButtons)
        self.JSalary.setMaximum(1000000000)
        self.JSalary.setObjectName("JSalary")
        self.gridLayout_3.addWidget(self.JSalary, 5, 1, 1, 1)
        self.J_recruiter = QtWidgets.QLabel(self.WORKPOS)
        self.J_recruiter.setObjectName("J_recruiter")
        self.gridLayout_3.addWidget(self.J_recruiter, 2, 3, 1, 1)
        self.JTitle = QtWidgets.QLineEdit(self.WORKPOS)
        self.JTitle.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.JTitle.setObjectName("JTitle")
        self.gridLayout_3.addWidget(self.JTitle, 2, 1, 1, 1)
        self.J_salary = QtWidgets.QLabel(self.WORKPOS)
        self.J_salary.setObjectName("J_salary")
        self.gridLayout_3.addWidget(self.J_salary, 5, 0, 1, 1)
        self.JRecruiter = QtWidgets.QLineEdit(self.WORKPOS)
        self.JRecruiter.setReadOnly(True)
        self.JRecruiter.setObjectName("JRecruiter")
        self.gridLayout_3.addWidget(self.JRecruiter, 2, 4, 1, 1)
        self.J_subdate = QtWidgets.QLabel(self.WORKPOS)
        self.J_subdate.setObjectName("J_subdate")
        self.gridLayout_3.addWidget(self.J_subdate, 5, 3, 1, 1)
        self.J_startdate = QtWidgets.QLabel(self.WORKPOS)
        self.J_startdate.setObjectName("J_startdate")
        self.gridLayout_3.addWidget(self.J_startdate, 6, 0, 1, 1)
        self._antikeim = QtWidgets.QLabel(self.WORKPOS)
        self._antikeim.setObjectName("_antikeim")
        self.gridLayout_3.addWidget(self._antikeim, 6, 3, 1, 1)
        self.JStartdate = QtWidgets.QDateEdit(self.WORKPOS)
        self.JStartdate.setDisplayFormat("dd-MM-yyyy")
        self.JStartdate.setObjectName("JStartdate")
        self.gridLayout_3.addWidget(self.JStartdate, 6, 1, 1, 1)
        self.JAnndate = QtWidgets.QDateTimeEdit(self.WORKPOS)
        self.JAnndate.setReadOnly(True)
        self.JAnndate.setButtonSymbols(QtWidgets.QAbstractSpinBox.NoButtons)
        self.JAnndate.setDisplayFormat("dd-MM-yyyy HH:mm:ss")
        self.JAnndate.setObjectName("JAnndate")
        self.gridLayout_3.addWidget(self.JAnndate, 4, 1, 1, 1)
        self.J_edra = QtWidgets.QLabel(self.WORKPOS)
        self.J_edra.setObjectName("J_edra")
        self.gridLayout_3.addWidget(self.J_edra, 4, 3, 1, 1)
        self.JEdra = QtWidgets.QLineEdit(self.WORKPOS)
        self.JEdra.setObjectName("JEdra")
        self.gridLayout_3.addWidget(self.JEdra, 4, 4, 1, 1)
        self.J_anndate = QtWidgets.QLabel(self.WORKPOS)
        self.J_anndate.setObjectName("J_anndate")
        self.gridLayout_3.addWidget(self.J_anndate, 4, 0, 1, 1)
        self._idpos = QtWidgets.QLabel(self.WORKPOS)
        self._idpos.setObjectName("_idpos")
        self.gridLayout_3.addWidget(self._idpos, 1, 0, 1, 3)
        self.J_state = QtWidgets.QLabel(self.WORKPOS)
        self.J_state.setStatusTip("")
        self.J_state.setText("<html><head/><body><p><br/></p></body></html>")
        self.J_state.setObjectName("J_state")
        self.gridLayout_3.addWidget(self.J_state, 7, 0, 1, 1)
        self.JIDPos = QtWidgets.QComboBox(self.WORKPOS)
        self.JIDPos.setObjectName("JIDPos")
        self.gridLayout_3.addWidget(self.JIDPos, 1, 3, 1, 2)
        self.JSubdate = QtWidgets.QDateEdit(self.WORKPOS)
        self.JSubdate.setDisplayFormat("dd-MM-yyyy")
        self.JSubdate.setObjectName("JSubdate")
        self.gridLayout_3.addWidget(self.JSubdate, 5, 4, 1, 1)
        spacerItem2 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_3.addItem(spacerItem2, 8, 0, 1, 4)
        self.JAntikeim = QtWidgets.QListWidget(self.WORKPOS)
        self.JAntikeim.setObjectName("JAntikeim")
        self.gridLayout_3.addWidget(self.JAntikeim, 6, 4, 3, 1)
        self.Tabs.addTab(self.WORKPOS, "")
        self.FIRM = QtWidgets.QWidget()
        self.FIRM.setObjectName("FIRM")
        self.gridLayout_4 = QtWidgets.QGridLayout(self.FIRM)
        self.gridLayout_4.setContentsMargins(10, 10, 10, 10)
        self.gridLayout_4.setSpacing(5)
        self.gridLayout_4.setObjectName("gridLayout_4")
        self.EName = QtWidgets.QLineEdit(self.FIRM)
        self.EName.setEnabled(True)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.EName.sizePolicy().hasHeightForWidth())
        self.EName.setSizePolicy(sizePolicy)
        self.EName.setReadOnly(True)
        self.EName.setObjectName("EName")
        self.gridLayout_4.addWidget(self.EName, 0, 1, 1, 3)
        self.E_adress = QtWidgets.QLabel(self.FIRM)
        self.E_adress.setObjectName("E_adress")
        self.gridLayout_4.addWidget(self.E_adress, 3, 0, 1, 1)
        self.ETel = QtWidgets.QDoubleSpinBox(self.FIRM)
        self.ETel.setButtonSymbols(QtWidgets.QAbstractSpinBox.NoButtons)
        self.ETel.setDecimals(0)
        self.ETel.setMaximum(99999999999.0)
        self.ETel.setObjectName("ETel")
        self.gridLayout_4.addWidget(self.ETel, 2, 6, 1, 1)
        self.ERoad = QtWidgets.QLineEdit(self.FIRM)
        self.ERoad.setObjectName("ERoad")
        self.gridLayout_4.addWidget(self.ERoad, 3, 1, 1, 1)
        spacerItem3 = QtWidgets.QSpacerItem(20, 178, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridLayout_4.addItem(spacerItem3, 4, 2, 1, 2)
        self.E_tel = QtWidgets.QLabel(self.FIRM)
        self.E_tel.setObjectName("E_tel")
        self.gridLayout_4.addWidget(self.E_tel, 2, 4, 1, 1)
        self.ECity = QtWidgets.QLineEdit(self.FIRM)
        self.ECity.setObjectName("ECity")
        self.gridLayout_4.addWidget(self.ECity, 3, 3, 1, 3)
        self.E_name = QtWidgets.QLabel(self.FIRM)
        self.E_name.setObjectName("E_name")
        self.gridLayout_4.addWidget(self.E_name, 0, 0, 1, 1)
        self.ECountry = QtWidgets.QLineEdit(self.FIRM)
        self.ECountry.setObjectName("ECountry")
        self.gridLayout_4.addWidget(self.ECountry, 3, 6, 1, 1)
        self.EDoy = QtWidgets.QLineEdit(self.FIRM)
        self.EDoy.setReadOnly(True)
        self.EDoy.setObjectName("EDoy")
        self.gridLayout_4.addWidget(self.EDoy, 2, 1, 1, 3)
        self.EAFM = QtWidgets.QSpinBox(self.FIRM)
        self.EAFM.setReadOnly(True)
        self.EAFM.setButtonSymbols(QtWidgets.QAbstractSpinBox.NoButtons)
        self.EAFM.setMaximum(1000000000)
        self.EAFM.setObjectName("EAFM")
        self.gridLayout_4.addWidget(self.EAFM, 0, 6, 1, 1)
        self.E_doy = QtWidgets.QLabel(self.FIRM)
        self.E_doy.setObjectName("E_doy")
        self.gridLayout_4.addWidget(self.E_doy, 2, 0, 1, 1)
        self.E_afm = QtWidgets.QLabel(self.FIRM)
        self.E_afm.setObjectName("E_afm")
        self.gridLayout_4.addWidget(self.E_afm, 0, 4, 1, 1)
        self.ENum = QtWidgets.QSpinBox(self.FIRM)
        self.ENum.setButtonSymbols(QtWidgets.QAbstractSpinBox.NoButtons)
        self.ENum.setMaximum(99999999)
        self.ENum.setObjectName("ENum")
        self.gridLayout_4.addWidget(self.ENum, 3, 2, 1, 1)
        self.Tabs.addTab(self.FIRM, "")
        self.gridLayout.addWidget(self.Tabs, 0, 0, 1, 4)
        RecruitWindow.setCentralWidget(self.centralwidget)
        self._email.setBuddy(self.Email)
        self._regdate.setBuddy(self.Regdate)
        self._password.setBuddy(self.Password)
        self._surname.setBuddy(self.Surname)
        self._name.setBuddy(self.Name)
        self._username.setBuddy(self.Username)
        self.J_position.setBuddy(self.JTitle)
        self.J_recruiter.setBuddy(self.JRecruiter)
        self.J_salary.setBuddy(self.JSalary)
        self.J_subdate.setBuddy(self.JSubdate)
        self.J_startdate.setBuddy(self.JStartdate)
        self._antikeim.setBuddy(self.JAntikeim)
        self.J_edra.setBuddy(self.JEdra)
        self.J_anndate.setBuddy(self.JAnndate)
        self._idpos.setBuddy(self.JIDPos)
        self.E_adress.setBuddy(self.ERoad)
        self.E_tel.setBuddy(self.ETel)
        self.E_name.setBuddy(self.EName)
        self.E_doy.setBuddy(self.EDoy)
        self.E_afm.setBuddy(self.EAFM)

        self.retranslateUi(RecruitWindow)
        self.Tabs.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(RecruitWindow)
        RecruitWindow.setTabOrder(self.Tabs, self.Username)
        RecruitWindow.setTabOrder(self.Username, self.Password)
        RecruitWindow.setTabOrder(self.Password, self.Name)
        RecruitWindow.setTabOrder(self.Name, self.Surname)
        RecruitWindow.setTabOrder(self.Surname, self.Regdate)
        RecruitWindow.setTabOrder(self.Regdate, self.Email)
        RecruitWindow.setTabOrder(self.Email, self.JIDPos)
        RecruitWindow.setTabOrder(self.JIDPos, self.JTitle)
        RecruitWindow.setTabOrder(self.JTitle, self.JRecruiter)
        RecruitWindow.setTabOrder(self.JRecruiter, self.JAnndate)
        RecruitWindow.setTabOrder(self.JAnndate, self.JEdra)
        RecruitWindow.setTabOrder(self.JEdra, self.JSalary)
        RecruitWindow.setTabOrder(self.JSalary, self.JSubdate)
        RecruitWindow.setTabOrder(self.JSubdate, self.JStartdate)
        RecruitWindow.setTabOrder(self.JStartdate, self.JAntikeim)
        RecruitWindow.setTabOrder(self.JAntikeim, self.EName)
        RecruitWindow.setTabOrder(self.EName, self.EAFM)
        RecruitWindow.setTabOrder(self.EAFM, self.EDoy)
        RecruitWindow.setTabOrder(self.EDoy, self.ETel)
        RecruitWindow.setTabOrder(self.ETel, self.ERoad)
        RecruitWindow.setTabOrder(self.ERoad, self.ENum)
        RecruitWindow.setTabOrder(self.ENum, self.ECity)
        RecruitWindow.setTabOrder(self.ECity, self.ECountry)
        RecruitWindow.setTabOrder(self.ECountry, self.Reset)
        RecruitWindow.setTabOrder(self.Reset, self.Save)
        RecruitWindow.setTabOrder(self.Save, self.Exit)

    def retranslateUi(self, RecruitWindow):
        _translate = QtCore.QCoreApplication.translate
        RecruitWindow.setWindowTitle(_translate("RecruitWindow", "MainWindow"))
        self.Reset.setText(_translate("RecruitWindow", "Reset"))
        self.Save.setText(_translate("RecruitWindow", "Save"))
        self.Exit.setText(_translate("RecruitWindow", "Log out"))
        self._email.setText(_translate("RecruitWindow", "E-Mail"))
        self._regdate.setText(_translate("RecruitWindow", "Register date"))
        self._password.setText(_translate("RecruitWindow", "Password"))
        self._surname.setText(_translate("RecruitWindow", "Surname"))
        self._name.setText(_translate("RecruitWindow", "Name"))
        self._username.setText(_translate("RecruitWindow", "Username"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.ACCOUNT), _translate("RecruitWindow", "My Account"))
        self.J_position.setText(_translate("RecruitWindow", "Title"))
        self.J_recruiter.setText(_translate("RecruitWindow", "Recruiter"))
        self.J_salary.setText(_translate("RecruitWindow", "Salary"))
        self.J_subdate.setText(_translate("RecruitWindow", "Expiration of applications date"))
        self.J_startdate.setText(_translate("RecruitWindow", "Starting Date"))
        self._antikeim.setText(_translate("RecruitWindow", "Subjects"))
        self.J_edra.setText(_translate("RecruitWindow", "Headquarters"))
        self.J_anndate.setText(_translate("RecruitWindow", "Posting date"))
        self._idpos.setText(_translate("RecruitWindow", "Choose job to edit:"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.WORKPOS), _translate("RecruitWindow", "Jobs"))
        self.E_adress.setText(_translate("RecruitWindow", "Adress"))
        self.ERoad.setPlaceholderText(_translate("RecruitWindow", "Street"))
        self.E_tel.setText(_translate("RecruitWindow", "Phone"))
        self.ECity.setPlaceholderText(_translate("RecruitWindow", "City"))
        self.E_name.setText(_translate("RecruitWindow", "Brand"))
        self.ECountry.setPlaceholderText(_translate("RecruitWindow", "Country"))
        self.E_doy.setText(_translate("RecruitWindow", "DOY"))
        self.E_afm.setText(_translate("RecruitWindow", "AFM"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.FIRM), _translate("RecruitWindow", "Firm"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    RecruitWindow = QtWidgets.QMainWindow()
    ui = Ui_RecruitWindow()
    ui.setupUi(RecruitWindow)
    RecruitWindow.show()
    sys.exit(app.exec_())

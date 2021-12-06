# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'SSM.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_space_switch_main(object):
    def setupUi(self, space_switch_main):
        if not space_switch_main.objectName():
            space_switch_main.setObjectName(u"space_switch_main")
        space_switch_main.resize(255, 255)
        space_switch_main.setMinimumSize(QSize(255, 255))
        font = QFont()
        font.setFamily(u"Calibri")
        font.setPointSize(12)
        space_switch_main.setFont(font)
        self.main_layout = QVBoxLayout(space_switch_main)
        self.main_layout.setObjectName(u"main_layout")
        self.add_space_switch_grid = QGridLayout()
        self.add_space_switch_grid.setObjectName(u"add_space_switch_grid")
        self.add_SR = QPushButton(space_switch_main)
        self.add_SR.setObjectName(u"add_SR")
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.add_SR.sizePolicy().hasHeightForWidth())
        self.add_SR.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_SR, 1, 1, 1, 1)

        self.add_ST = QPushButton(space_switch_main)
        self.add_ST.setObjectName(u"add_ST")
        sizePolicy.setHeightForWidth(self.add_ST.sizePolicy().hasHeightForWidth())
        self.add_ST.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_ST, 1, 0, 1, 1)

        self.add_RT = QPushButton(space_switch_main)
        self.add_RT.setObjectName(u"add_RT")
        sizePolicy.setHeightForWidth(self.add_RT.sizePolicy().hasHeightForWidth())
        self.add_RT.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_RT, 1, 2, 1, 1)

        self.add_T = QPushButton(space_switch_main)
        self.add_T.setObjectName(u"add_T")
        sizePolicy.setHeightForWidth(self.add_T.sizePolicy().hasHeightForWidth())
        self.add_T.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_T, 2, 0, 1, 1)

        self.add_R = QPushButton(space_switch_main)
        self.add_R.setObjectName(u"add_R")
        sizePolicy.setHeightForWidth(self.add_R.sizePolicy().hasHeightForWidth())
        self.add_R.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_R, 2, 1, 1, 1)

        self.add_S = QPushButton(space_switch_main)
        self.add_S.setObjectName(u"add_S")
        sizePolicy.setHeightForWidth(self.add_S.sizePolicy().hasHeightForWidth())
        self.add_S.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_S, 2, 2, 1, 1)

        self.add_SRT = QPushButton(space_switch_main)
        self.add_SRT.setObjectName(u"add_SRT")
        sizePolicy.setHeightForWidth(self.add_SRT.sizePolicy().hasHeightForWidth())
        self.add_SRT.setSizePolicy(sizePolicy)

        self.add_space_switch_grid.addWidget(self.add_SRT, 0, 0, 1, 3)


        self.main_layout.addLayout(self.add_space_switch_grid)

        self.remove_space = QPushButton(space_switch_main)
        self.remove_space.setObjectName(u"remove_space")

        self.main_layout.addWidget(self.remove_space)

        self.delete_space_switch = QPushButton(space_switch_main)
        self.delete_space_switch.setObjectName(u"delete_space_switch")

        self.main_layout.addWidget(self.delete_space_switch)


        self.retranslateUi(space_switch_main)

        QMetaObject.connectSlotsByName(space_switch_main)
    # setupUi

    def retranslateUi(self, space_switch_main):
        space_switch_main.setWindowTitle(QCoreApplication.translate("space_switch_main", u"SSM", None))
        self.add_SR.setText(QCoreApplication.translate("space_switch_main", u"SR", None))
        self.add_ST.setText(QCoreApplication.translate("space_switch_main", u"ST", None))
        self.add_RT.setText(QCoreApplication.translate("space_switch_main", u"RT", None))
        self.add_T.setText(QCoreApplication.translate("space_switch_main", u"T", None))
        self.add_R.setText(QCoreApplication.translate("space_switch_main", u"R", None))
        self.add_S.setText(QCoreApplication.translate("space_switch_main", u"S", None))
        self.add_SRT.setText(QCoreApplication.translate("space_switch_main", u"SRT", None))
        self.remove_space.setText(QCoreApplication.translate("space_switch_main", u"Remove Space", None))
        self.delete_space_switch.setText(QCoreApplication.translate("space_switch_main", u"Delete Space Switch", None))
    # retranslateUi


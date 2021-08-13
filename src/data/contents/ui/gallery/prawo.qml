/*
 *   Copyright 2021 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.6
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage {
    id: page
    title: qsTr("Prawo harcerskie")

    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }

ColumnLayout
{
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/zhp.svg"
        header: "ZHP"
        opis: ""
        adres: "prawoZHP.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }

KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/zhr.svg"
        header: "ZHR"
        opis: ""
        adres: "prawoZHR.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }

KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/fse.svg"
        header: "SHK „Zawisza”"
        opis: ""
        adres: "prawoFSE.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/sh.svg"
        header: "Stowarzyszenie Harcerskie"
        opis: ""
        adres: "prawoSH.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/RR.svg"
        header: "Royal Rangers"
        opis: ""
        adres: "prawoRR.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/rodlo.svg"
        header: "Organizacja Harcerska „Rodło”"
        opis: ""
        adres: "prawoOH.qml"
    }
 HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/tarcza.svg"
        header: "Skauci Króla"
        opis: ""
        adres: "prawoSK.qml"
    }


        }
    }

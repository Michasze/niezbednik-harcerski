/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: qsTr("Roty Przyrzeczenia")
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            ListModel {
                id: przyrzeczenia
                ListElement { icon: "qrc:/contents/ui/img/RR.svg"; title: "Royal Rangers"; address: "przyrzeczenieRR.qml" }
                ListElement { icon: "qrc:/contents/ui/img/zhp.svg"; title: "Związek Harcerstwa Polskiego"; address: "przyrzeczenieZHP.qml" }
                ListElement { icon: "qrc:/contents/ui/img/zhr.svg"; title: "Związek Harcerstwa Rzeczypospolitej"; address: "przyrzeczenieZHP.qml" }
                ListElement { icon: "qrc:/contents/ui/img/fse.svg"; title: "SHK „Zawisza”"; address: "przyrzeczenieFSE.qml" }
                ListElement { icon: "qrc:/contents/ui/img/rodlo.svg"; title: "Organizacja Harcerska „Rodło”"; address: "przyrzeczenieOH.qml" }
                ListElement { icon: "qrc:/contents/ui/img/tarcza.svg"; title: "Skauci Króla"; address: "przyrzeczenieSK.qml" }
            }
            Repeater {
                model: przyrzeczenia
                delegate: KartaStronaNoLayout {
                    ikona: icon
                    header: title
                    opis: ""
                    isVector: true
                    adres: address
                }
            }
        }
    }
}

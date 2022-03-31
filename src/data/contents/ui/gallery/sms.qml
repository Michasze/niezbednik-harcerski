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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: "Generator SMS-ów"
    Controls.Pane {
        Column {
            width: parent.width
            spacing: 10
            ElementListyNoLayout {
                color: "transparent"
                header: "Powitanie"
            }
            ListView {
                width: page.width / 2
                height: page.height / 8
                anchors.horizontalCenter: parent.horizontalCenter
                Controls.ScrollBar.vertical: Controls.ScrollBar {
                    active: true
                }
                model: ["Czuwaj!",
                       "Dzień dobry"]
                delegate: ListDelegate {
                    tresc: modelData
                }
                highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                focus: true
            }
            ElementListyNoLayout {
                color: "transparent"
                header: "O czym będzie sms"
            }
            ListView {
                id: list
                clip: true
                width: page.width / 2
                height: page.height / 7
                anchors.horizontalCenter: parent.horizontalCenter
                highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                focus: true
                Rectangle {anchors.fill: parent; border.color: "white"; border.width: 1; color: "transparent"}
                Controls.ScrollBar.vertical: Controls.ScrollBar {
                    active: true
                }
                model: ["Zbiórka",
                        "Wędrówka",
                        "Biwak",
                        "Rajd",
                        "Obóz",
                       "Zebranie z rodzicami"]
                delegate: ListDelegate {
                    tresc: modelData
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: list.currentIndex = index
                    }
                }
            }
        ElementListyNoLayout {
            id: wiadomosc
            color: "black"
            textSize: invisibleSlider.value
            border.color: "grey"
            border.width: 1
            width: parent.width
            height: (page.height / 2) - 90
            header: ""
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onPressAndHold:
                {
                    clipboard.paste = wiadomosc.header
                    showPassiveNotification("Tekst skopiowany do schowka", 2000)
                }
            }
        }

        }
    }
}

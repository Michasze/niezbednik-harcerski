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
    property var licznik: 0
    property var zbiorka: false
    property var rajd: false
    property string last: ""
    property string last2: ""
    Controls.Pane {
        Column {
            width: parent.width
            spacing: 10
            ElementListyNoLayout {
                visible: page.licznik == 0
                color: "transparent"
                header: "Powitanie"
            }
            HPSListView {
                visible: page.licznik == 0
                model: ["Czuwaj!",
                        "Dzień dobry"]
            }
            ElementListyNoLayout {
                visible: page.licznik == 1
                color: "transparent"
                header: "O czym będzie sms"
            }
            HPSListView {
                visible: page.licznik == 1
                width: page.width / 2
                model: ["Zbiórka",
                        "Wędrówka",
                        "Biwak",
                        "Rajd",
                        "Obóz",
                        "Zebranie z rodzicami"]
            }
            ElementListyNoLayout {
                visible: page.licznik == 2 && last2.includes("Biwak ")
                color: "transparent"
                header: "Biwak"
            }
            HPSListView {
                visible: page.licznik == 2 && last2.includes("Biwak ")
                width: page.width / 2
                model: ["Drużyny",
                        "Szczepu",
                        "Hufca",
                        "(pomiń)"]
            }
            ElementListyNoLayout {
                visible: page.licznik == 2 && last2 == "Zbiórka "
                color: "transparent"
                header: "Zbiórka"
            }
            HPSListView {
                visible: page.licznik == 2 && last2 == "Zbiórka "
                width: page.width / 2
                model: ["Drużyny",
                        "Szczepu",
                        "Zastępu"]
            }
            ElementListyNoLayout {
                visible: page.licznik == 2 && last2 == "Rajd "
                color: "transparent"
                header: "Rajd"
            }
            HPSListView {
                visible: page.licznik == 2 && last2 == "Rajd "
                width: page.width / 2
                model: ["Górski",
                        "(pomiń)"]
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Controls.RoundButton {
                    visible: page.licznik > 0
                    radius: 4
                    text: qsTr("Cofnij")
                    highlighted: true
                    onClicked: {
                        page.licznik--
                        wiadomosc.header = wiadomosc.header.replace(last2, '')
                        console.log(page.licznik)
                        console.log(last2)
                    }
                }
                Controls.RoundButton {
                    radius: 4
                    text: qsTr("Dalej")
                    highlighted: last != ""
                    onClicked: {
                        page.licznik++
                        if(last != "")
                        {
                        last2 = last
                        last = ""
                        console.log(page.licznik)
                        }
                    }
                }
            }
            ElementListyNoLayout {
                id: wiadomosc
                color: "black"
                textSize: invisibleSlider.value
                align: Text.AlignTop
                alignH: Text.AlignLeft
                border.color: "grey"
                format: Text.PlainText
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

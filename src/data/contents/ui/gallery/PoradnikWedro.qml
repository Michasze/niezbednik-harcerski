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
    title: qsTr("Dla zastępów wędrowniczych")
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout {
                color: "Green"
                format: Text.PlainText
                header: "Druhno zastępowa! Druhu zastępowy!
Trzymasz w rękach wędrownictwo przelane na papier.
Ten styl życia jednak jest praktyką — żywą służbą i aktywną pracą nad sobą.\n
Życzę Tobie i Twoim wędrownikom, abyście to, co jest zawarte w tym poradniku — wcielili w życie, a wędrując Jego krętymi drogami, zawsze mieli przed sobą harcerskie ideały.\n
Czuwaj!
drużynowa 316 RwDW
Kinga Żeglińska HO \n\n
Co znajdziesz w Poradniku?"
            }
            ListModel {
                id: mainList
                ListElement { title: "1. Filary wędrownictwa"; adres: "filary.qml" }
                ListElement { title: "2. Zbiórka od kuchni"; adres: "zbiorka.qml" }
                ListElement { title: "3. Inspiracje programowe"; adres: "inspiracje.qml" }
                ListElement { title: "4. Jaki jest zastępowy wędrowniczy?"; adres: "zastepowy.qml" }
                ListElement { title: "5. Wędrownicze formy pracy"; adres: "formy.qml" }
                ListElement { title: "6. Instrumenty metodyczne"; adres: "instrumenty.qml" }
                ListElement { title: "7. Rys historyczny wędrownictwa"; adres: "rys.qml" }
            }
            Repeater {
                model: mainList
                delegate: ElementListyNoLayout {
                    header: title
                    MouseArea {
                        anchors.fill: parent
                        onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/" + adres))
                    }
                }
            }
        }
    }
}

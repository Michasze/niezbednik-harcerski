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
import QtQuick.Layouts 1.2

HPSPage
{
    id: page
    title: qsTr("Szyfrowanie")
    Component.onCompleted: {
        if(!hpsSettings.neverShow4IsToggled)
        {
            mediaPlayer3.play()
            aboutDialog4.open()
        }
    }
    ColumnLayout {
        ListModel {
            id: mainList
            ListElement { title: "Kod Morse'a"; address: "morse.qml"}
            ListElement { title: "Cezar"; address: "cezar.qml"}
            ListElement { title: "GA-DE-RY-PO-LU-KI"; address: "gade.qml"}
            ListElement { title: "Kaczor"; address: "kaczor.qml"}
            ListElement { title: "Mafeking"; address: "mafeking.qml"}
            ListElement { title: "Szyfr Bacona"; address: "bacon.qml"}
            ListElement { title: "Szyfr alfabetyczno-Liczbowy"; address: "alfa-liczbowy.qml"}
            ListElement { title: "Szyfr rozbieżny"; address: "rozbiezny.qml"}
        }
        Repeater {
            model: mainList
            delegate: ElementListyNoImage {
                header: title
                kolor: "Brown"
                MouseArea {
                    anchors.fill: parent
                    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/" + address))
                }
            }
        }
    }
}

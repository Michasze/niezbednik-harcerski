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
import QtQuick 2.15
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage
{
 id: page
 title: qsTr("Szyfrowanie")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    Component.onCompleted: {
        if(!hpsSettings.neverShow4IsToggled)
        {
            aboutDialog4.open()
        }
    }

    ColumnLayout {
     id: mainList
                ElementListyNoImage {
    header: "Kod Morse'a"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/morse.qml"))
    }
        }
                ElementListyNoImage {
    header: "Cezar"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/cezar.qml"))
    }
        }
                ElementListyNoImage {
    header: "GA-DE-RY-PO-LU-KI"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/gade.qml"))
    }
        }
                ElementListyNoImage {
    header: "Kaczor"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/kaczor.qml"))
    }
                }
                ElementListyNoImage {
    header: "Mafeking"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/mafeking.qml"))
    }
                }
                ElementListyNoImage {
    header: "Szyfr Bacona"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("szyfrator/bacon.qml"))
    }

        }
    }
}

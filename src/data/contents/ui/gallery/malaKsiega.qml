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
 title: qsTr("Mała księga szyfrów")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList

        ElementListyNoImage {
    header: "Przedmowa"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/przedmowa.qml"))
    }
        }
        ElementListyNoImage {
    header: "Czekoladka"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/czeko.qml"))
    }
        }
                ElementListyNoImage {
    header: "GA-DE-RY-PO-LU-KI"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/gade.qml"))
    }
        }
            ElementListyNoImage {
    header: "Kaczor"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/kaczor.qml"))
    }
        }
        ElementListyNoImage {
    header: "Ułamkowy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/ulamkowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Liczbowy | Matematyczny"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/liczbowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Cezar"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/cezar.qml"))
    }
        }
    ElementListyNoImage {
    header: "Alfabetyczno-Liczbowy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/alfa-liczbowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Grupowy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/grupowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Mafeking"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/mafeking.qml"))
    }
        }
        ElementListyNoImage {
    header: "Szyfr Bacona"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/bacon.qml"))
    }
        }
        ElementListyNoImage {
    header: "Szyfr Ottendorfa | książkowy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/ksiazkowy.qml"))
    }
    }
        ElementListyNoImage {
    header: "Wsteczny"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/wsteczny.qml"))
    }
        }
     ElementListyNoImage {
    header: "Rozbieżny"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/rozbiezny.qml"))
    }
        }
    }
}

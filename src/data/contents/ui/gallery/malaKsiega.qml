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
import QtQuick.Layouts 1.2

HPSPage
{
 id: page
 title: qsTr("Mała księga szyfrów")
    ColumnLayout {
     id: mainList

        ElementListyNoImage {
    header: "Przedmowa"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/przedmowa.qml"))
    }
        }
        ElementListyNoImage {
    header: "Czekoladka"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/czeko.qml"))
    }
        }
                ElementListyNoImage {
    header: "GA-DE-RY-PO-LU-KI"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/gade.qml"))
    }
        }
            ElementListyNoImage {
    header: "Kaczor"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/kaczor.qml"))
    }
        }
        ElementListyNoImage {
    header: "Ułamkowy"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/ulamkowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Liczbowy | Matematyczny"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/liczbowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Cezar"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/cezar.qml"))
    }
        }
    ElementListyNoImage {
    header: "Alfabetyczno-Liczbowy"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/alfa-liczbowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Grupowy"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/grupowy.qml"))
    }
        }
        ElementListyNoImage {
    header: "Mafeking"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/mafeking.qml"))
    }
        }
        ElementListyNoImage {
    header: "Alfabet Morse’a"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/morse.qml"))
    }
        }
        ElementListyNoImage {
    header: "Szyfr Bacona"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/bacon.qml"))
    }
        }
        ElementListyNoImage {
    header: "Szyfr Ottendorfa | książkowy"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/ksiazkowy.qml"))
    }
    }
        ElementListyNoImage {
    header: "Wsteczny"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/wsteczny.qml"))
    }
        }
     ElementListyNoImage {
    header: "Rozbieżny"
    kolor: "Brown"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("malaKsiega/rozbiezny.qml"))
    }
        }
    }
}

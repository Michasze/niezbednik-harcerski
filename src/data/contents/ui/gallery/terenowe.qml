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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    title: qsTr("Jak organizować gry terenowe?")
    ColumnLayout {
        id: mainList
        ListModel {
            id: naglowki
            ListElement { tytul: "Najczęściej popełniane błędy"; link: "bledy.qml"; obraz: "image://icons/bledy.svg,white"}
            ListElement { tytul: "Jak tłumaczyć zasady gry?"; link: "jakTlumaczyc.qml"; obraz: "image://icons/pytajnik.svg,white"}
            ListElement { tytul: "Fabuła - inspiracje"; link: "inspiracje.qml"; obraz: "image://icons/miecz.svg,white"}
            ListElement { tytul: "Jak budować fabułę?"; link: "jakBudowac.qml"; obraz: "image://icons/miecz.svg,white"}
            ListElement { tytul: "Mechanika"; link: "mechanika.qml"; obraz: "image://icons/settings_thin.svg,white"}
            ListElement { tytul: "Jak tworzyć punkty?"; link: "punkty.qml"; obraz: "image://icons/flaga.svg,white"}
            ListElement { tytul: "Dodatkowe pomysły"; link: "dodatkowe.qml"; obraz: "image://icons/zarowka_thick.svg,white"}
        }
        Repeater {
            model: naglowki
            delegate: ElementListy {
                header: tytul
                odnosnik: link
                ikona: obraz
                Layout.maximumHeight: 80
            }
        }
        /* ElementListyNoImage { */
        /*     header: "Najczęściej popełniane błędy" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/bledy.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Jak tłumaczyć zasady gry? " */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/jakTlumaczyc.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Fabuła - inspiracje" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/inspiracje.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Jak budować fabułę?" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/jakBudowac.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Mechanika" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/mechanika.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Jak tworzyć punkty?" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/punkty.qml")) */
        /*     } */
        /* } */
        /* ElementListyNoImage { */
        /*     header: "Dodatkowe pomysły" */
        /*     MouseArea { */
        /*         anchors.fill: parent */
        /*         onClicked: pageStack.push(Qt.resolvedUrl("terenowe/dodatkowe.qml")) */
        /*     } */
        /* } */
    }
}

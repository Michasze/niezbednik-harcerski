/*
 *   Copyright 2022 Harcerze - Poznajemy Się! <aplikacjahps@gmail.com>
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
import QtQuick.Layouts 1.2
import Data 1.0
import Filter 1.0
import HPSCardModel 1.0
import "gallery"

HPSPage {
    id: pageRoot
    HPSSettings {
        id: hpsSettings
    }
    title: "Niezbędnik Harcerski"
    ListModel {
        id: galleryModel
        ListElement {
            title: qsTr("Historia")
            img: "image://icons/krzyz.svg"
            targetPage: "gallery/historyczne.qml"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Pomysły na zbiórki")
            img: "image://icons/zarowka.svg"
            targetPage: "gallery/pomysly.qml"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Poradniki harcerskie")
            img: "image://icons/ognisko.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Szyfry")
            targetPage: "gallery/szyfry.qml"
            img: "image://icons/szyfry.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Symbolika")
            targetPage: "gallery/symbolika.qml"
            img: "image://icons/wosm.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Cytaty")
            targetPage: "gallery/cytaty.qml"
            img: "image://icons/cytaty.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Książki")
            img: "image://icons/ksiazki.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Filmy")
            targetPage: "gallery/filmy.qml"
            img: "image://icons/filmy.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Śpiewnik")
            targetPage: "gallery/Spiewniki.qml"
            img: "image://icons/spiewnik.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Artykuły")
            img: "image://icons/Artykuly.svg"
            kolor: ",white"
        }
        ListElement {
            title: qsTr("Poradnik zastępowego")
            img: "image://icons/sznur.svg"
            kolor: ",#574136"
        }
        ListElement {
            title: qsTr("Poradniki wyboru sprzętu")
            kolor: ",white"
            img: "image://icons/sprzet.svg"
        }
        ListElement {
            title: qsTr("Kącik drużynowego")
            targetPage: "gallery/poradnikiDruzynowy.qml"
            img: "image://icons/sznur.svg"
            kolor: ",#0000cd"
        }
        ListElement {
            title: qsTr("Listy rzeczy do spakowania")
            kolor: ",white"
            targetPage: "gallery/poradnikiPakowanie.qml"
            img: "image://icons/plecak.svg"
        }
        ListElement {
            title: qsTr("Stopnie")
            kolor: ",white"
            img: "image://icons/hrS.svg"
        }
        ListElement {
            title: qsTr("Prawo harcerskie")
            kolor: ",white"
            img: "image://icons/zwoj.svg"
        }
        ListElement {
            title: qsTr("Roty Przyrzeczenia")
            kolor: ",white"
            img: "image://icons/zwoj.svg"
        }
        ListElement {
            title: qsTr("Gawędy")
            kolor: ",white"
            img: "image://icons/ognisko.svg"

        }
        ListElement {
            title: qsTr("Archiwum")
            kolor: ",white"
            img: "image://icons/folder.svg"

        }
        /*        ListElement {
                  title: "Lista miejsc obozowych"
                  targetPage: "gallery/mapa.qml"
                  }
                  ListElement {
                  title: "Kuchnia polowa"
                  targetPage: "gallery/blank.qml"
                  }
                  ListElement {
                  title: "Ekologia"
                  targetPage: "gallery/blank.qml"
                  }
                  ListElement {
                  title: "Opowiadania"
                  targetPage: "gallery/blank.qml"
                  }
        */
    }
    header: Controls.ToolBar {
        id: toolbar
        background: Rectangle {
            radius: 10
            anchors.fill: parent
            color: "Green"
        }
        Controls.TextField {
            id: searchField
            inputMethodHints: Qt.ImhNoPredictiveText
            placeholderText: qsTr("Szukaj...")
            leftPadding: 10
            color: "White"
            placeholderTextColor: "White"
            width: parent.width
        }
        Shortcut {
            id: focusShortcut
            enabled: true
            sequence: "/"
            onActivated: {
                searchField.forceActiveFocus()
                searchField.selectAll()
            }
        }
        Shortcut {
            id: deactivateFocusShortcut
            enabled: true
            sequence: "Esc"
            onActivated: {
                invisibleSlider.forceActiveFocus()
            }
        }
    }
    HPSFilter {
        id: filteredModel
        sourceModel: hpsModel
        filterRole: "HeaderRole"
        secondRole: "category"
        filterRegularExpression: {
            if (searchField.text === "") return new RegExp()
            return new RegExp("%1".arg(searchField.text), "i")
        }
    }
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            Repeater {
                focus: true
                visible: searchField.text === "" ? false : true
                model: searchField.text === "" ? 0 : filteredModel
                delegate: KartaStronaNoLayout {
                    header: model.header
                    ikona: model.image
                    opis: model.category
                    adres: "gallery/" + model.address
                }
            }
            GridLayout {
                columns: 2
                anchors.horizontalCenter: parent.horizontalCenter
                visible: !root.pageStack.wideMode && searchField.text === ""
                Repeater {
                    focus: true
                    model: galleryModel
                    delegate: KartaMain {
                        id: listItem
                        visible: searchField.text === ""
                        header: title
                        query: header.toLowerCase()
                        adres: targetPage ? targetPage : ""
                        ikona: img
                        kolor_ikony: kolor
                    }
                }
            }
        }
    }
}

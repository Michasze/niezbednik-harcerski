/*
 *   Copyright 2021 Harcerze - Poznajemy Się! <aplikacjahps@gmail.com>
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

import QtQuick 2.3
import QtQuick.Controls 2.0 as QQC2
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.11 as Kirigami
import Data 1.0
import Filter 1.0
import "gallery"

Kirigami.ScrollablePage {
    id: pageRoot

    HPSSettings
    {
        id: hpsSettings
    }

background: Rectangle {
              anchors.fill: parent
              color: invisibleCheckbox.checked ? "Black" : "grey"
    }
    leftPadding: 0
    rightPadding: 0
    bottomPadding: 0
    topPadding: 0
    title: qsTr("Niezbędnik Harcerski")

   
    Kirigami.PagePool {
        id: mainPagePool
    }
    ListModel {
        id: searchModel
        ListElement {
            title: "Harcerstwo Związku Narodowego Polskiego"
            tags: "HZNP, historyczne, organizacje, ciekawostki"
            targetPage: "gallery/HZNP.qml"
        }
        ListElement {
            title: "Zbiórki w terenie"
            tags: "artykuły, terenie, zbiórki"
            targetPage: "gallery/zbiorkiWTerenie.qml"
        }
        ListElement {
            title: "Księga szyfrów - szyfr Bacona"
            tags: "szyfry, księga, bacon"
            targetPage: "gallery/malaKsiega/bacon.qml"
        }
        ListElement {
            title: "Szyfrator - szyfr Bacona"
            tags: "szyfry, szyfrator, bacon"
            targetPage: "gallery/szyfrator/bacon.qml"
        }
         ListElement {
            title: "Harcerz - skąd pochodzi ten wyraz?"
            tags: "harcerz, historyczne, ciekawostki, wyraz"
            targetPage: "gallery/harcerz.qml"
        }
         ListElement {
            title: "Zlot ZHP w Spale"
            tags: "Spała, ZHP, ciekawostki, zlot"
            targetPage: "gallery/spala.qml"
        }
         ListElement {
            title: "Kamień pamiątkowy ku czci poległych harcerzy"
            tags: "kamień, pamiątkowy, ciekawostki, czci, poległych, Wrocław"
            targetPage: "gallery/kamien.qml"
        }
         ListElement {
            title: "Wyjątkowe krzyże harcerskie"
            tags: "wyjątkowe, krzyże, harcerskie, historyczne, ciekawostki"
            targetPage: "gallery/wyjatkowe.qml"
        }
         ListElement {
            title: "Dzień Myśli braterskiej"
            tags: "DMB, święto, dzień, myśli, braterskiej, historyczne, ciekawostki"
            targetPage: "gallery/DMB.qml"
        }
         ListElement {
            title: "Najważniejsze daty w historii harcerstwa"
            tags: "daty, najważniejsze, Brownsea, 1907, historyczne, ciekawostki"
            targetPage: "gallery/daty.qml"
        }
         ListElement {
            title: "Dawne roty przyrzeczenia"
            tags: "dawne, przyrzeczenie, roty, historyczne, ciekawostki"
            targetPage: "gallery/histPrzyrzeczenia.qml"
        }
         ListElement {
            title: "Historyczne prawa harcerskie"
            tags: "dawne, prawo, harcerskie, historyczne, ciekawostki"
            targetPage: "gallery/histPrawa.qml"
        }
         ListElement {
            title: "Lista znanych osób, które były w harcerstwie"
            tags: "lista, znani, ludzie, historyczne, ciekawostki"
            targetPage: "gallery/histPrawa.qml"
        }
         ListElement {
            title: "Zbiórka fotograficzna"
            tags: "zbiórka, pomysły, fotograf, zdjęcia"
            targetPage: "gallery/fotograficzna.qml"
        }
         ListElement {
            title: "Ekosystem w słoiku"
            tags: "słoik, ekosystem, rośliny, zbiórka, pomysł"
            targetPage: "gallery/ekosystem.qml"
        }
    }
    ListModel {
        id: galleryModel
        ListElement {
            title: "Historia"
            targetPage: "gallery/Historyczne.qml"
            img: "img/krzyz.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Pomysły na zbiórki"
            targetPage: "gallery/Pomysly.qml"
            img: "img/zarowka.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Artykuły"
            targetPage: "gallery/Artykuly.qml"
            img: "img/Artykuly.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Szyfry"
            targetPage: "gallery/szyfry.qml"
            img: "img/szyfry.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Symbolika"
            targetPage: "gallery/symbolika.qml"
            img: "img/wosm.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Książki"
            targetPage: "gallery/ksiazki.qml"
            img: "img/ksiazki.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Cytaty"
            targetPage: "gallery/cytaty.qml"
            img: "img/cytaty.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Śpiewnik"
            targetPage: "gallery/Spiewniki.qml"
            img: "img/spiewnik.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Poradnik zastępowego"
            targetPage: "gallery/Poradniki.qml"
            img: "img/sznur.svg"
            kolor: "#574136"
        }
        ListElement {
            title: "Poradniki harcerskie"
            targetPage: "gallery/harcerskie.qml"
            img: "img/ognisko.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Poradniki wyboru sprzętu"
            targetPage: "gallery/Sprzet.qml"
            img: "img/sprzet.svg"
            kolor: "#ffffff"
        }
        ListElement {
            title: "Kącik drużynowego"
            targetPage: "gallery/poradnikiDruzynowy.qml"
            img: "img/sznur.svg"
            kolor: "#0000cd"
        }
        ListElement {
            title: "Listy rzeczy do spakowania"
            targetPage: "gallery/poradnikiPakowanie.qml"
            img: "img/plecak.svg"
        }
        ListElement {
            title: "Stopnie harcerskie"
            img: "img/hrS.svg"
            targetPage: "gallery/stopnie.qml"
        }
        ListElement {
            title: "Prawo harcerskie"
            img: "img/zwoj.svg"
            targetPage: "gallery/prawo.qml"
        }
        ListElement {
            title: "Roty Przyrzeczenia"
            img: "img/zwoj.svg"
            targetPage: "gallery/przyrzeczenia.qml"
        }


 /*       ListElement {
            title: "Gawędy"
            targetPage: "gallery/gawedy.qml"
            img: "img/ognisko.svg"
            kolor: "#ffffff"

        }
        ListElement {
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
        ListElement {
            title: "Filmy"
            targetPage: "gallery/blank.qml"
        }
*/
            }
    header: QQC2.ToolBar {
        id: toolbar
        background: Rectangle {
              radius: 10
              anchors.fill: parent
              color: "Green"
    }

        RowLayout {
            anchors.fill: parent
            Kirigami.SearchField {
                id: searchField
                inputMethodHints: Qt.ImhNoPredictiveText
                placeholderText: "Szukaj..."
                color: "White"
                placeholderTextColor: "White"
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.maximumWidth: Kirigami.Units.gridUnit*30
            }
        }
    }
    HPSFilter {
        id: filteredModel
        sourceModel: searchModel
        filterRole: "tags"
        filterRegularExpression: {
            if (searchField.text === "") return new RegExp()
            return new RegExp("%1".arg(searchField.text), "i")
        }
    }
    ColumnLayout {
        spacing: 0
        Repeater {
            focus: true
            visible: searchField.text === "" ? false : true
                model: searchField.text === "" ? 0 : filteredModel
            delegate: ElementListyNoImage {
                header: title
                textSize: invisibleSlider.value + 2
                MouseArea {
                    anchors.fill: parent
                    onClicked: pageStack.push(Qt.resolvedUrl(targetPage))
                }
            }
        }
        GridLayout {
            columns: 2
            Layout.alignment: Qt.AlignHCenter
            visible: !root.pageStack.wideMode
            Layout.topMargin: Kirigami.Units.largeSpacing
            Layout.leftMargin: Kirigami.Units.gridUnit
            Layout.rightMargin: Kirigami.Units.gridUnit
            Repeater {
                focus: true
                model: searchField.text === "" ? galleryModel : 0
                delegate: KartaMain {
                    id: listItem
                    header: title
                    ikona: img
                    adres: targetPage
                    kolor_ikony: kolor
                                        Kirigami.PagePoolAction {
                        id: action
                        pagePool: mainPagePool
                        basePage: pageRoot
                        page: targetPage
                    }
                }

            }
        }
    }
}


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

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.15

HPSPage {
    id: page
    title: qsTr("HZNP")
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        Controls.TabButton {
            text: "O organizacji"
        }
        Controls.TabButton {
            text: "Umundurowanie"
        }
        Controls.TabButton {
            text: "Kursy"
        }
    }
    Controls.SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        clip: true
        Controls.Pane {
            width: swipeView.width
            height: swipeView.height
            Column
            {
                spacing: 10
                width: parent.width
                id: highest
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    color: "Black"
                    header: "Harcerstwo Związku Narodowego Polskiego było w latach międzywojennych liczną i silną organizacją w Stanach Zjednoczonych. Organizacja pozostaje dla nas dość tajemnicza, ponieważ nie zachowało się o niej zbyt wiele źródeł. Pozostały podręcznik dla drużynowych, śpiewnik harcerski oraz zdjęcia.
Organizacja działała prawdopodobnie jeszcze w czasach po II Wojnie Światowej, prawdopodobnie jej miejsce zostało zajęte przez Oddział Związku Harcerstwa Polskiego na Obczyźnie.
Informacje zaczerpnięte ze strony czasopisma internetowego Harcerz Rzeczypospolitej. <br>"
                }
                Image {
                    source: "image://images/oHZNP.jpg"
                    sourceSize.width: isHorizontal ? page.width / 2 : page.width - 50
                    width: isHorizontal ? page.width / 2 : page.width - 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    color: "Black"
                    header: "Kurs na stopień ćwika dla instruktorów Harcerstwa Związku Narodowego Polskiego w Kolegium Związku w Cambridge Springs, w Pensylwanii w Stanach Zjednoczonych.
Harcerze przed szałasem. Na lewym rękawie mundurów naszywki z emblematem \"Harcerstwo ZNP\".1934/08/15."
                }
            }
        }
        Controls.Pane
        {
            width: root.width
            height: highest.height
            Column
            {
                spacing: 20
                width: parent.width
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    width: parent.width
                    format: Text.PlainText
                    color: "Black"
                    header: "Mundury tej organizacji wskazują na jej wojskowy charakter. Instruktorzy noszą umundurowanie przypominające mundury oficerskie, Rogatki przypominają wzór rogatywek noszonych w Drużynach Polowych “Sokół”. Najwyżsi instruktorzy nosili na rogatywkach wężyki przypominające wojskowe wężyki generalskie. Pomimo tego, organizacja wykorzystywała również symbole i emblematy z ZHP np. pojawiał się tam wzór krzyża obowiązujący w tym czasie w ZHP. Chociaż HZNP miał również własny krzyż harcerski.
Informacje zaczerpnięte ze strony czasopisma internetowego Harcerz Rzeczypospolitej."
                }
                Image {
                    source: "image://images/oHZNP_Mundury.jpg"
                    sourceSize.width: isHorizontal ? page.width / 2 : page.width - 50
                    width: isHorizontal ? page.width / 2 : page.width - 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    width: parent.width
                    color: "Black"
                    header: "Uroczystość w Chicago związana z wręczeniem sztandaru pierwszej drużynie harcerstwa Związku Narodowego Polskiego przez konsula generalnego RP w Chicago Tytusa Zbyszewskiego. Naczelnicy harcerstwa ZNP, na czele defilady."
                }
            }
        }
        Controls.Pane
        {
            width: root.width
            height: highest.height
            Column
            {
                spacing: 20
                width: parent.width
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    color: "Black"
                    header: "Harcerstwo Związku Narodowego Polskiego przeprowadziło również co najmniej dwa kursy na stopień ćwika, podczas których szkolili się instruktorzy oraz kurs samarytański dla instruktorek. Podczas kursów uczestnicy wykonywali zaawansowane konstrukcje pionierskie (przynajmniej jak na obecne standardy), budowali szałasy, ćwiczyli musztrę, przygotowywali posiłki i nadawali chorągiewkami.
Informacje zaczerpnięte ze strony czasopisma internetowego Harcerz Rzeczypospolitej.
"
                }
                Image {
                    source: "image://images/oHZNP_kursy.jpg"
                    sourceSize.width: isHorizontal ? page.height / 3 : page.width / 2
                    width: isHorizontal ? page.width / 3 : page.width / 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    width: parent.width
                    color: "Black"
                    header: "Kurs na stopień ćwika dla instruktorów Harcerstwa Związku Narodowego Polskiego w Kolegium Związku w Cambridge Springs, w Pensylwanii w Stanach Zjednoczonych.\n 1934 r."
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    header: "Juliusz Idzikowski"
                }
            }
        }
    }

    footer: RowLayout {
        Controls.PageIndicator {
            id: indicator
            count: swipeView.count
            currentIndex: swipeView.currentIndex
            Layout.alignment: Qt.AlignHCenter
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
            }
        }
    }
}

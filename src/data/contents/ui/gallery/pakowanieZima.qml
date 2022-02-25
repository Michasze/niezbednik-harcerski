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
import QtQuick.Controls 2.15 as Controls
import Data 1.0

HPSPage {
    id: page
    title: "Pakowanie na zimowy biwak"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout {
                color: "black"
                header: "Biwak zimą trwający 3 dni. Podczas biwaku dużo wędrówek po okolicznych lasach i terenach pogórza. Nocleg w schronisku dla młodzieży. Na miejsce biwaku przejazd pociągiem."
            }
            ElementListyNoLayout {
                color: "indianred"
                align: 1
                header: "Ważne:"
            }
            Repeater
            {
                model: ["Podbita i podpisana legitymacja",
                        "Maseczki",
                        "Leki przyjmowane stale (trzeba o nich poinformować drużynowego)",
                        "Mniejszy plecak podręczny (spakowany do większego plecaka)",
                        "Latarka i baterie zapasowe",
                        "Notatnik i ołówek",
                        "Nóż",
                        "Kieszonkowe wedle uznania",
                        "*jeśli ktoś posiada to zabiera wielorazowe ogrzewacze chemiczne"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout {
                color: "Brown"
                align: 1
                header: "Jedzenie:"
            }
            Repeater
            {
                model: ["Menażka",
                        "Sztućce",
                        "Termos",
                        "Produkty na jedną kolację i jedno śniadanie",
                        "słodycze (z umiarem)"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout {
                color: "royalblue"
                align: 1
                header: "Spanie:"
            }
            Repeater
            {
                model: ["Śpiwór (najlepiej zimowy)",
                        "Ciepłe ubranie do spania"]
                delegate: przedmiotComponent
            }
            Component {
                id: przedmiotComponent
                HPSCheckable
                {}
            }
            ElementListyNoLayout {
                color: "darkolivegreen"
                align: 1
                header: "Odzież:"
            }
            Repeater
            {
                model: ["Pełen mundur",
                        "Spodnie mundurowe",
                        "Spodnie na zmianę",
                        "Koszulki",
                        "Ciepła bluza",
                        "Ciepła kurtka",
                        "Bielizna",
                        "Ciepła czapka, szalik i rękawiczki (obowiązkowo!)",
                        "Rozchodzone buty trekkingowe",
                        "*jeśli ktoś ma to świetnie sprawdzi się odzież termoaktywna"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout {
                color: "plum"
                align: 1
                header: "Higiena:"
            }
            Repeater
            {
                model: ["Ręcznik",
                        "Mydło",
                        "Klapki",
                        "Szczoteczka i pasta",
                        "Chusteczki"]
                delegate: przedmiotComponent
            }
        }
    }
}

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
import Data 1.0

HPSPage {
    id: page
    title: "Pakowanie na biwak"
    HPSSettings
    {
        id: hpsSettings
    }
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout
            {
                color: "royalblue"
                align: 1
                header: "Spanie:"
            }
            Repeater
            {
                model: ["hamak",
                        "śpiwór",
                        "karimata/mata/materac",
                        "koc",
                        "trap",
                        "linka zapasowa np. dyneema"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "crimson"
                align: 1
                header: "Ogrzewanie:"
            }
            Repeater
            {
                model: ["termofor",
                        "ogrzewacz chemiczny"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "darkseagreen"
                align: 1
                header: "Sprzęt:"
            }
            Repeater
            {
                model: ["plecak",
                        "nóż",
                        "sznurek/linka",
                        "apteczka",
                        "zapałki",
                        "zapalniczka",
                        "worek na śmieci",
                        "zapasowy karabińczyk"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "brown"
                align: 1
                header: "Jedzenie:"
            }
            Repeater
            {
                model: ["termos z herbatą",
                        "menażka",
                        "batoniki z czekoladą/czekolada",
                        "produkty na śniadanie i kolację",
                        "woda (w tym na herbatę)",
                        "herbata",
                        "cukier",
                        "dodatkowe przekąski"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "darkolivegreen"
                align: 1
                header: "Ubrania do spania:"
            }
            Repeater
            {
                model: ["czapka",
                        "odzież termoaktywna lub inne ciepłe ubrania",
                        "gruba bluza",
                        "rękawiczki",
                        "grube skarpety"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "olive"
                align: 1
                header: "Ubrania na wyjście:"
            }
            Repeater
            {
                model: ["odzież termoaktywna lub inne ciepłe ubranie",
                        "bluza polarowa",
                        "wygodne spodnie do pracy w lesie",
                        "wysokie skarpety za kostkę",
                        "buty za kostkę",
                        "rękawiczki do prac obozowych",
                        "kurtka przeciwdeszczowa"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "plum"
                align: 1
                header: "Higiena:"
            }
            Repeater
            {
                model: ["pasta",
                        "szczoteczka",
                        "papier toaletowy",
                        "chusteczki higieniczne"]
                delegate: przedmiotComponent
            }
            Component {
                id: przedmiotComponent
                HPSCheckable
                {}
            }
        }
    }
}

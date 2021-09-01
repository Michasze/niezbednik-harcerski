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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import Data 1.0

HPSPage

{
    id: page
    title: "Pakowanie na biwak"
    HPSSettings
    {
        id: hpsSettings
    }
        ColumnLayout {
                ElementListyNoImage
        {
            color: "green"
            header: "<b>Biwak trzydniowy w budynku. Latem lub wiosną.<br><br>
Lista potrzebnych rzeczy:</b>"
        }
                ElementListyNoImage
        {
            color: "Brown"
            align: 1
            header: "Jedzenie:"
        }

            Repeater
            {
                model: ["menażka",
                        "kubek",
                        "bidon",
                        "sztućce"]
                delegate: przedmiotComponent
            }
                ElementListyNoImage
        {
            color: "royalblue"
            align: 1
            header: "Spanie:"
        }

            Repeater
            {
                model: ["śpiwór",
                        "karimata",
                        "ciepłe ubranie do spania",
                        "*nie zabieramy poduszki, zamiast niej składamy bluzę pod głowę"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "darkolivegreen"
            align: 1
            header: "Ubrania:"
        }
Repeater
            {
                model: ["mundur (koszula, pas, nakrycie głowy)",
                        "spodnie mundurowe",
                        "spodnie na zmianę",
                        "ciepła bluza",
                        "bielizna",
                        "odzież przeciwdeszczowa",
                        "czapka lub kapelusz",
                        "buty za kostkę",
                        "buty do chodzenia w pomieszczeniach i na zajęcia sportowe"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "plum"
            align: 1
            header: "Higiena:"
        }
Repeater
            {
                model: ["ręcznik (najlepiej szybkoschnący)",
                        "mydło",
                        "klapki",
                        "szczoteczka",
                        "pasta",
                        "spray na kleszcze",
                        "chusteczki higieniczne"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "lightseagreen"
            align: 1
            header: "Leki:"
        }
                HPSLista {
            label: "*należy zgłosić konieczność ich przyjmowania drużynowemu"
        }
ElementListyNoImage
        {
            color: "indianred"
            align: 1
            header: "Ważne:"
        }
Repeater
            {
                model: ["mały plecak na gry terenowe",
                        "latarka i zapasowy komplet baterii",
                        "nóż",
                        "notatnik",
                        "długopis",
                        "linijka",
                        "ołówek",
                        "legitymacja",
                        "śpiewnik",
                        "gitara jeśli posiadamy"]
                delegate: przedmiotComponent
            }


    Component {
        id: przedmiotComponent
        HPSCheckable
        {}
    }

                        }
}

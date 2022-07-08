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

HPSPage {
    id: page
    title: "Pakowanie na obóz"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout {
                color: "black"
                header: "Lista ta jest wykorzystywana na obóz trwający 3 tygodnie. Leśny bez dostępu do bieżącej wody lub prądu. Cały obóz jest postawiony przez drużynę/szczep. Obóz odbywa się pod namiotami gdzie śpimy na kanadyjkach."
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "<b>Lista potrzebnych rzeczy:</b>"
            }
            ElementListyNoLayout
            {
                color: "Brown"
                align: 1
                header: "Jedzenie:"
            }
            Repeater
            {
                model: ["menażka",
                        "manierki/camelbak/bidon/kubek",
                        "sztućce/niezbędniki",
                        "zapas słodyczy ku pokrzepieniu serc"]
                delegate: przedmiotComponent
            }

            ElementListyNoLayout
            {
                color: "royalblue"
                align: 1
                header: "Spanie:"
            }
            Repeater
            {
                model: ["śpiwór",
                        "karimata",
                        "ciepłe ubranie do spania"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "darkolivegreen"
                align: 1
                header: "Ubrania:"
            }
            Repeater
            {
                model: ["kurtki ciepłe",
                        "spodnie mundurowe",
                        "pałatki/poncho/kurtki przeciwdeszczowe",
                        "bluzy/polary",
                        "buty za kostkę (trekkingowe lub wojskowe, nadające się do dłuższych marszów, czarne lub brązowe, nadające się do munduru)",
                        "buty sportowe",
                        "spodnie",
                        "mundur",
                        "bielizna",
                        "agrafki, igła, nitki (zielone i czarne do munduru itd)",
                        "spinacze do prania",
                        "reklamówki na bieliznę",
                        "worki na śmieci",
                        "zapasowe sznurówki",
                        "strój kąpielowy",
                        "krótkie spodenki szczególnie takie szybkoschnące",
                        "czapki/kapelusze",
                        "płyn do prania (nieduża ilość)",
                        "plastikowy wieszak na mundur",
                        "okulary przeciwsłoneczne"]
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
                model: ["mydło w płynie najlepiej",
                        "środek na komary (np. Mugga, Ultrathon)",
                        "szampon",
                        "szczoteczka",
                        "pasta",
                        "ręczniki",
                        "chusteczki higieniczne",
                        "krem do opalania",
                        "inne potrzebne rzeczy"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout

            {
                color: "darkkhaki"
                align: 1
                header: "Obozowe/Biegowe/Pionierskie:"
            }
            Repeater
            {
                model: ["scyzoryk/nóż/multitool",
                        "kompas/busola (jeśli ktoś posiada)",
                        "latarka + baterie (co najmniej dwa komplety)",
                        "zapałki (dobrze zabezpieczone przed zamoknięciem)",
                        "nożyczki",
                        "pudełko plastikowe wodoszczelne (na ważne rzeczy)",
                        "taśma izolacyjna lub silver tape",
                        "rękawiczki (do pracy)"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "lightseagreen"
                align: 1
                header: "Apteczka:"
            }
            Repeater
            {
                model: ["leki stale przyjmowane",
                        "plastry (można wziąć np. compeed na odciski)"]
                delegate: przedmiotComponent
            }
            ElementListyNoLayout
            {
                color: "indianred"
                align: 1
                header: "Inne:"
            }
            Repeater
            {
                model: ["legitymacje",
                        "śpiewniki",
                        "piórniki",
                        "notatnik",
                        "zeszyt",
                        "linijka",
                        "poradniki harcerskie",
                        "pieniądze"]
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

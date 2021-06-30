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
import org.kde.kirigami 2.4 as Kirigami

HPSPage

{
    id: page
    title: "Pakowanie na obóz"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
    ElementListyNoImage {
        color: "black"
        header: "Lista ta jest wykorzystywana na obóz trwający 3 tygodnie. Leśny bez dostępu do bieżącej wody lub prądu. Cały obóz jest postawiony przez drużynę/szczep. Obóz odbywa się pod namiotami gdzie śpimy na kanadyjkach."
    }
                ElementListyNoImage
        {
            color: "green"
            header: "<h3>Lista potrzebnych rzeczy:</h3>"
        }
                ElementListyNoImage
        {
            color: "Brown"
            align: 1
            header: "<p>Jedzenie:</p>"
        }
Repeater
            {
                model: ["menażka",
                        "manierki/camelbak/bidon/kubek",
                        "sztućce/niezbędniki",
                        "zapas słodyczy ku pokrzepieniu serc"]
                delegate: przedmiotComponent
            }

                ElementListyNoImage
        {
            color: "royalblue"
            align: 1
            header: "<p>Spanie:</p>"
        }
Repeater
            {
                model: ["śpiwór",
                        "karimata",
                        "ciepłe ubranie do spania"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "darkolivegreen"
            align: 1
            header: "<p>Ubrania:</p>"
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
                        "okulary przeciwsłoneczne"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "plum"
            align: 1
            header: "<p>Higiena:</p>"
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
ElementListyNoImage

        {
            color: "darkkhaki"
            align: 1
            header: "<p>Obozowe/Biegowe/Pionierskie:</p>"
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
ElementListyNoImage
        {
            color: "lightseagreen"
            align: 1
            header: "<p>Apteczka:</p>"
        }
Repeater
            {
                model: ["leki stale przyjmowane",
                        "plastry (można wziąć np. compeed na odciski)"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "indianred"
            align: 1
            header: "<p>Inne:</p>"
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

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
import org.kde.kirigami 2.14 as Kirigami
import Data 1.0

HPSPage

{
    id: page
    title: "Pakowanie na biwak"
    HPSSettings
    {
        id: hpsSettings
    }
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
        width: pageFoto.width
        spacing: 20
                ElementListyNoImage
        {
            color: "green"
            header: "<h4>Biwak trzydniowy w budynku. Latem lub wiosną.<br><br>
Lista potrzebnych rzeczy:</h4>"
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
                        "kubek",
                        "bidon",
                        "sztućce"]
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
                        "ciepłe ubranie do spania",
                        "*nie zabieramy poduszki, zamiast niej składamy bluzę pod głowę"]
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
            header: "<p>Higiena:</p>"
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
            header: "<p>Leki:</p>"
        }
                HPSLista {
            label: "*należy zgłosić konieczność ich przyjmowania drużynowemu"
        }
ElementListyNoImage
        {
            color: "indianred"
            align: 1
            header: "<p>Ważne:</p>"
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

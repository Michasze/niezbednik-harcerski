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
import Data 1.0

HPSPage

{
    id: page
    title: "Pakowanie na wyjazd rowerowy"
    HPSSettings
    {
        id: hpsSettings
    }
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: !Kirigami.Settings.isMobile ? true : false
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
    ElementListyNoImage {
        color: "black"
        header: "Obóz kolarski z Polski do Toskanii na około 2-4 tygodnie. Sprawdzi się również na obóz w Polsce, chociaż wtedy nie będzie potrzebny paszport."
    }
                ElementListyNoImage
        {
            color: "Darkolivegreen"
            align: 1
            header: "<p>Coś do ubrania i nie tylko:</p>"
        }
            Repeater
            {
                model: ["regulaminowy mundur",
                        "przynajmniej trzy podkoszulki do jazdy w tym jeden z długimi rękawami",
                        "krótkie spodenki do jazdy (najlepiej kolarki) oraz inne do chodzenia lub wyjątkowo do jazdy",
                        "długie spodnie",
                        "sweter lub ciepła kurtka",
                        "coś od deszczu (najlepiej foliowe ponczo lub pelerynka kolarska)",
                        "czapka na głowę",
                        "strój kąpielowy",
                        "przynajmniej trzy zmiany bielizny",
                        "skarpety ciepłe oraz elastyczne (przynajmniej trzy pary)",
                        "cienki dres",
                        "buty do jazdy i na przebranie",
                        "sandałki lub klapki",
                        "przybory toaletowe, (+ sanitaria dla dziewcząt)",
                        "dwa ręczniki (duży i mały)",
                        "krem do opalania (wysoki filtr) i coś przeciw komarom",
                        "igła z nićmi (najlepiej szara i czarna)",
                        "zeszyt i coś do pisania oraz ulubione śpiewniki",
                        "co się jeszcze zmieści",
                        "długie spodnie"]
                delegate: przedmiotComponent
            }
                ElementListyNoImage
        {
            color: "royalblue"
            align: 1
            header: "<p>Sprzęt turystyczny:</p>"
        }
            Repeater
            {
                model: ["rower z przerzutkami, bagażnikiem i bidonem (gdy jest szansa założenia błotników to warto założyć)",
                        "hełm (kask rowerowy)",
                        "śpiwór oraz karimata lub materac",
                        "sakwy rowerowe oraz podłużna torba turystyczna (jamnik) lub mały plecak bez stelaża (niczego nie wozimy na plecach)",
                        "menażka oraz sztućce (niezbędnik + nóż)",
                        "ekspandory (dwie/trzy gumy do upinania bagażu)",
                        "dużo worków nylonowych (do pakowania ubrań w sakwach i okrycia śpiwora, a nawet całego bagażu)",
                        "światła do roweru (koniecznie diodowe białe przednie i czerwone tylne) oraz światła odblaskowe (białe do przodu i czerwone do tyłu)",
                        "kamizelka odblaskowa (do jazdy na rowerze, w trudnych warunkach)",
                        "latarka (może być przednia od roweru)",
                        "długie spodnie"]
                delegate: przedmiotComponent
            }
                Kirigami.BasicListItem {
             Controls.Label {
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "torebka lub trójkąt podsiodłowy, a w nim:"
             }
                }
            Repeater
            {
                model: ["a) Octenisept,,",
                        "b) opatrunki prowizoryczne,",
                        "c) zapasowa dętka lub łatki,",
                        "d) rękawiczki cienkie gumowe lub foliowe",
                        "e) chusteczki higieniczne"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "Indianred"
            align: 1
            header: "<p>Legitymacje:</p>"
        }
            Repeater
            {
                model: ["Paszport i legitymacja szkolna z potwierdzonym przez szkołę nr PESEL",
                        "karta rowerowa (może być potrzebna, gdyby ktoś chciał się na chwilkę, odłączyć się od kolumny)"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "Green"
            align: 1
            header: "<p>To wszystko z powodzeniem mieści się w sakwach i w jamniku, na bagażniku roweru (niczego nie wieziemy na plecach), gdyby jednak były problemy pomożemy się zapakować</p>"
        }
    Component {
        id: przedmiotComponent
        HPSCheckable
        {}
    }
        }
}

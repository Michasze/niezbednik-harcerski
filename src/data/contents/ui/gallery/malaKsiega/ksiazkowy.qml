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

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami
import ".."

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Szyfr Ottendorfa | szyfr ksiązkowy"

    actions {
        main: Kirigami.Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.layers.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
       /* Image {
         source: ""
          Layout.fillWidth: true
         Layout.minimumHeight: 200

         fillMode: Image.PreserveAspectFit
         anchors.horizontalCenter: opis.horizontalCenter
        }*/
                              ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: ***"
        }
                       ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignJustify
            header: "Szyfr, w którym każda z liter zastąpiona jest szeregiem liczb będących kluczem wskazującym jej miejsce we wcześniej ustalonym tekście."
        }
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignJustify
            header: "<p>Klucz zapisujemy w następujący sposób:</p>"
        }
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            textSize: 18
            header: "<p><font color=\"#1B95E2\">W</font>  -  <font color=\"#7fff00\">X</font>  - <font color=\"#9370db\">Y</font>  -  <font color=\"#E2E11B\">Z</font> np.:</p>
<p><font color=\"#1B95E2\">1</font>  -  <font color=\"#7fff00\">10</font>  - <font color=\"#9370db\">5</font>  -  <font color=\"#E2E11B\">4</font> gdzie:</p>
<p><font color=\"#1B95E2\">W</font> (<font color=\"#1B95E2\">1</font>) oznacza: numer strony, na której znajduje się poszukiwana literka (w przypadku, gdy jest tylko jedna strona wpisujemy „1”, w innych przypadkach oznaczamy właściwym numerem)</p>
<p><font color=\"#7fff00\">X</font> (<font color=\"#7fff00\">10</font>) oznacza: numer linijki na danej stronie</p>
<p><font color=\"#9370db\">Y</font> (<font color=\"#9370db\">5</font>) oznacza: wyraz w danej linijce</p>
<p><font color=\"#E2E11B\">Z</font> (<font color=\"#E2E11B\">4</font>) oznacza: numer litery w danym wyrazie</p>"
}
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            header: "<p>Przykład:</p>
<p>„Testament mój” autorstwa Juliusza Słowackiego (fragment)</p>"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignHCenter
            header:"<p><i>Żyłem z wami, cierpiałem i płakałem z wami;</p>
<p>Nigdy mi, kto szlachetny, nie był obojętny:</p>
<p>Dziś was rzucam i dalej idę w cień — z duchami,</p>
<p>A jak gdyby tu szczęście było, idę smętny.</p>
<p>Nie zostawiłem tutaj żadnego dziedzica</p>
<p>Ani dla mojej lutni, ani dla imienia:</p>
<p>Imię moje tak przeszło, jako błyskawica,</p>
<p>I będzie, jak dźwięk pusty, trwać przez pokolenia.
</i></p>"
        }
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            header: "<p>Poszukiwane słowo: Harcerz</p>
<p>Klucz:</p>"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignHCenter
            textSize: 18
            header: "<p>1 – 2 – 4 - 6</p>
<p>1 – 1 – 3 - 2</p>
<p>1 – 8 – 6 - 2</p>
<p>1 – 4 – 5 - 3</p>
<p>1 – 6 – 3 - 4</p>
<p>1 – 8 – 6 - 2</p>
<p>1 – 7 – 4 - 6</p>"
        }
        }
}

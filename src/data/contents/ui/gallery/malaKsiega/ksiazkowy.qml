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
import ".."

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Szyfr Ottendorfa | szyfr ksiązkowy"


    ColumnLayout {
        width: page.width
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
            header: "Klucz zapisujemy w następujący sposób:"
        }
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            textSize: 18
            header: "<font color=\"#1B95E2\">W</font>  -  <font color=\"#7fff00\">X</font>  - <font color=\"#9370db\">Y</font>  -  <font color=\"#E2E11B\">Z</font> np.:<br><br>
<font color=\"#1B95E2\">1</font>  -  <font color=\"#7fff00\">10</font>  - <font color=\"#9370db\">5</font>  -  <font color=\"#E2E11B\">4</font> gdzie:<br><br>
<font color=\"#1B95E2\">W</font> (<font color=\"#1B95E2\">1</font>) oznacza: numer strony, na której znajduje się poszukiwana literka (w przypadku, gdy jest tylko jedna strona wpisujemy „1”, w innych przypadkach oznaczamy właściwym numerem)<br><br>
<font color=\"#7fff00\">X</font> (<font color=\"#7fff00\">10</font>) oznacza: numer linijki na danej stronie<br><br>
<font color=\"#9370db\">Y</font> (<font color=\"#9370db\">5</font>) oznacza: wyraz w danej linijce<br><br>
<font color=\"#E2E11B\">Z</font> (<font color=\"#E2E11B\">4</font>) oznacza: numer litery w danym wyrazie"
}
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            header: "Przykład:<br><br>
„Testament mój” autorstwa Juliusza Słowackiego (fragment)"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignHCenter
            header:"<i>Żyłem z wami, cierpiałem i płakałem z wami;<br><br>
Nigdy mi, kto szlachetny, nie był obojętny:<br><br>
Dziś was rzucam i dalej idę w cień — z duchami,<br><br>
A jak gdyby tu szczęście było, idę smętny.<br><br>
Nie zostawiłem tutaj żadnego dziedzica<br><br>
Ani dla mojej lutni, ani dla imienia:<br><br>
Imię moje tak przeszło, jako błyskawica,<br><br>
I będzie, jak dźwięk pusty, trwać przez pokolenia.</i>"
        }
        ElementListyNoImage
        {
            color: "brown"
            alignH: Text.AlignHCenter
            header: "Poszukiwane słowo: Harcerz<br><br>
Klucz:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignHCenter
            textSize: 18
            header: "1 – 2 – 4 - 6<br><br>
1 – 1 – 3 - 2<br><br>
1 – 8 – 6 - 2<br><br>
1 – 4 – 5 - 3<br><br>
1 – 6 – 3 - 4<br><br>
1 – 8 – 6 - 2<br><br>
1 – 7 – 4 - 6"
        }
        }
}

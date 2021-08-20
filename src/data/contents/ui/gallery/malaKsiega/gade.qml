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

    title: "GA-DE-RY-PO-LU-KI"

    ColumnLayout {
        width: page.width
                             ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: **"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Szyfr ten wykorzystuje technikę zamiany danej litery. Jego specyfiką jest to, że słowo-klucz – Gaderypoluki – składa się z dwunastu liter, w tym żadna się nie powtarza. Pozwala to na zastosowanie techniki zamiany: dzielimy słowo na 6 grup po 2 litery każda i za każdym razem, gdy w zaszyfrowanej wiadomości pojawia się litera ze słowa-klucz zamieniamy ją na tę, która występuje w danej grupie obok. Przykład: Zdanie „Pinokio ma długi nos” w szyfrze GA-DE-RY-PO-LU-KI będzie brzmieć: „Oknpikp mg eulak nps” (polskie znaki w szyfrze nie występują, co pozwala go bardziej komplikować).
"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "GA-DE-RY-<font color=\"#E2E11B\">P</font><font color=\"#1B95E2\">O</font>-LU-<font color=\"#9370db\">K</font><font color=\"#7fff00\">I</font> <br>
<font color=\"#E2E11B\">P</font> <font color=\"#7fff00\">I</font> N <font color=\"#1B95E2\">O</font> <font color=\"#9370db\">K</font> <font color=\"#7fff00\">I</font> <font color=\"#1B95E2\">O</font> = <font color=\"#1B95E2\">O</font> <font color=\"#9370db\">K</font> N <font color=\"#E2E11B\">P</font> <font color=\"#7fff00\">I</font> <font color=\"#9370db\">K</font> <font color=\"#E2E11B\">P</font>
"
        }
    }
}

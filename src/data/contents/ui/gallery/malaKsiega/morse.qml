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

    title: "Alfabet Morse'a"


    ColumnLayout {
        width: page.width
                             ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: ****"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Powstał w 1838 roku. Jest to sposób prezentacji m.in. liter alfabetu za pomocą dźwięków, błysków światła lub też znaków popularnie zwanych „kropką i kreską” w przypadku przekazywania wiadomości inaczej niżeli pismem „kropka” oznacza sygnał krótki, a „kreska” długi, przyjęło się, że „kreska” trwa co najmniej tyle czasu ile trzy „kropki” Odstęp pomiędzy literami w danym słowie ok. 3 „kropki” Odstęp między słowami ok. 7 „kropek” "
        }
            HPSIcon
 {
     source: "image://icons/szyfry/morse.svg,white"
     Layout.fillWidth: !isHorizontal
     sourceSize.width: isHorizontal ? page.width / 2 : page.width
 }
   }
}

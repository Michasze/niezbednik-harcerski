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

    title: "Alfabetyczno-Liczbowy"

    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: *"
        }
        ElementListyNoImage
        {
            color: "brown"
            header: "Każda literka odpowiada danej cyfrze: „A”to 1, „B” to 2, „C” to 3... <br> <br>
<b>Harcerz → 8-1-17-3-5-17-24 </b>
"
        }
        HPSIcon
 {
     sourceSize.width: isHorizontal ? page.width / 2 : page.width
     Layout.fillWidth: !isHorizontal
     fillMode: Image.PreserveAspectFit
     source: "image://icons/szyfry/alfa-liczbowy.svg,white"
 }
   }
}

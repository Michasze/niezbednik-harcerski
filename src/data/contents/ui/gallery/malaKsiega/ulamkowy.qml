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
import ".."

HPSPage {
    id: page
    title: "Szyfr ułamkowy"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout
            {
                color: "brown"
                header: "Trudność: *"
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "Szyfr składa się z 24 liter podzielonych na 8 grup po trzy sztuki każda. Cały szyfr opiera się na ułamkach – licznik obrazuje numer litery, a mianownik grupę, w której należy jej szukać."
            }
            HPSIconNoLayout
            {
                source: "image://icons/szyfry/ulamkowy.svg,white"
                sourceSize.width: isHorizontal ? page.width / 3 : page.width
            }
        }
    }
}

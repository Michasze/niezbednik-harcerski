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
    title: "Mafeking"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout
            {
                color: "brown"
                header: "Trudność: **"
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "Zasada działania podobna do Kaczora czy Liczbowego – po prostu lokalizujemy daną literkę w tabeli."
            }
            HPSIconNoLayout
            {
                anchors.horizontalCenter: parent.horizontalCenter
                source: "image://icons/szyfry/mafeking.svg,white"
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "Dla zobrazowania: <b>G1-M1-M3-F1-K1-M3-G3</b>
oznacza „Harcerz”; <b>G1-M1-M3-F1-K1-M3-G3 | A2-K1-A3-F3 |  N2-E1-K3-M1-G3-I2-N3</b>
natomiast „Harcerz jest odważny”."
            }
        }
    }
}

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

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage
{
    id: page
    Layout.fillWidth: true
    title: qsTr("Symbolika lilijki")
    ColumnLayout {
        HPSIcon
        {
            source: "image://icons/lilijka.svg,white"
        }
        ElementListy
        {
            ikona: "image://icons/lilijka_ONC.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Ojczyzna Nauka Cnota - hasło Filaretów."
        }
        ElementListy
        {
            ikona: "image://icons/lilijka_pusta.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Lilijka - czystość"
        }
        ElementListy
        {
            ikona: "image://icons/lilijka_igla.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Igła magnetyczna - podążanie w dobrym kierunku, czyli zgodnie z ideałami Prawa i Przyrzeczenia Harcerskiego "
        }
        ElementListy
        {
            ikona: "image://icons/lilijka_ramiona.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Trzy ramiona - trzy służby: Bogu, Ojczyźnie i bliźnim"
        }
        ElementListy
        {
            color: "steelblue"
            ikona: "image://icons/lilijka_wezel.svg,white"
            symbolika: true
            header: "Węzeł - codzienne wykonywanie jednego dobrego uczynku"
        }
    }
}

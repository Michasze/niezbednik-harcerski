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
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: "Prawo Harcerskie"
    Controls.Pane {
        Column {
            width: parent.width
            spacing: 10
            Repeater {
                model: ["<b>1.</b> Czerwony Harcerz uważa się za członka klasy robotniczej i walczy o jej wyzwolenie.",
                        "<b>2.</b> Jest zawsze wierny swoim towarzyszom.",
                        "<b>3.</b> W każdym pracującym widzi towarzysza i brata.",
                        "<b>4.</b> Staje w obronie słabszych i jest gotów do niesienia pomocy.",
                        "<b>5.</b> Jest odważny i nigdy nie rozpacza.",
                        "<b>6.</b> Jest punktualny, karny i obowiązkowy.",
                        "<b>7.</b> Mówi prawdę, na jego słowie można polegać.",
                        "<b>8.</b> Hartuje się i dba o swoje ciało.",
                        "<b>9.</b> Jest miłośnikiem i obrońcą przyrody.",
                        "<b>10.</b> Jest czysty w myśli, słowach i uczynkach, nie pali, zwalcza alkohol i gry hazardowe."]
                delegate: ElementListyNoLayout {
                    color: "royalblue"
                    header: modelData
                    width: parent.width
                }
            }
        }
    }
}

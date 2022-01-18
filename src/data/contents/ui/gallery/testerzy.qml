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
import org.kde.kirigami 2.4

HPSPage {
    id: page
    title: "Testerzy"
    globalToolBarStyle: ApplicationHeaderStyle.None
    Controls.Pane
    {
        Column
        {
            spacing: 10
            anchors.fill: parent
            Repeater
            {
                model: ["Julia Inka Karpowicz",
                        "Olga Bajer",
                        "Gabriela Figarska",
                        "Szymon Kochaniak",
                        "Szymon Chmielewski",
                        "Oliwier Korolski",
                        "Bartek Muszek",
                        "Gabrysia Salej",
                        "Klara Świątek",
                        "Klaudia Śliwa",
                        "Maciej Lorek",
                        "Alicja Kowalska"]
                delegate: ElementListyImageNoLayout {
                    ikona: "qrc:/contents/ui/img/user.svg"
                    header: modelData
                }
            }
        }
    }
}

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
    title: "Pomocne dłonie"
    Controls.Pane {
        Column
        {
            spacing: 10
            width: parent.width
            Repeater
            {
                model: ["Julia Inka Karpowicz",
                        "Kinga Żeglińska HO",
                        "Piotr Parkita HO",
                        "Antoni Łasica",
                        "Jakub Gałaszewski",
                        "Bartosz Ostański",
                        "Weronika Pawlak"]
                delegate: ElementListyImageNoLayout {
                    ikona: "qrc:/contents/ui/img/user.svg"
                    header: modelData
                }
            }
        }
    }
}

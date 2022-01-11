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

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Stopnie Harcerskie - ZHR"
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Zuchy"
        }
        Controls.TabButton {
            text: "Harcerze"
        }
    }
    Controls.SwipeView {
        id: swipeView
        Layout.fillHeight: true
        Layout.fillWidth: true
        height: root.height * 1.5
        currentIndex: tabBar.currentIndex
        clip: true
        Item {
            width: root.width
            height: root.height
            ColumnLayout {
                ElementListy
                {
                    ikona: "qrc:/contents/ui/img/ho.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: "Zuch pierwszej gwiazdki/\nZuch wtajemniczony"
                }
                ElementListy
                {
                    ikona: "qrc:/contents/ui/img/hr.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: "Zuch drugiej gwiazdki/\nZuch zaradny"
                }
                ElementListy
                {
                    ikona: "qrc:/contents/ui/img/zuchG.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: "Zuch trzeciej gwiazdki/\nZuch opiekuńczy"
                }
            }
        }
        Item {
            width: root.width
            GridLayout {
                columns: 2
                StopienRectangle
                {
                    width: (page.width / 2) - 25
                    header: "Młodzik/\n Ochotniczka"
                }
                StopienRectangle
                {
                    width: (page.width / 2) - 25
                    ikona: "image://icons/krzyz_lilijka_srebrna.svg"
                    header: "Wywiadowca/\n Tropicielka"
                }
                StopienRectangle
                {
                    width: (page.width / 2) - 25
                    ikona: "image://icons/krzyz_lilijka_zlota.svg"
                    header: "Ćwik/\n Samarytanka"
                }
                StopienRectangle
                {
                    width: (page.width / 2) - 25
                    ikona: "image://icons/krzyz_lilijka_okrag.svg"
                    divider: 2.35
                    header: "Harcerz orli/\n Wędrowniczka"
                }
                StopienRectangle
                {
                    width: (page.width / 2) - 25
                    ikona: "image://icons/krzyz_wieniec.svg"
                    divider: 1.0
                    header: "Harcerz Rzeczypospolitej/\n Harcerka Rzeczypospolitej"
                }
            }
        }
    }
}

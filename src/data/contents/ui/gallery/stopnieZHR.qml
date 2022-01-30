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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
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
        height: root.height * 1.5
        currentIndex: tabBar.currentIndex
        clip: true
        Controls.Pane {
            Column {
                anchors.fill:parent
                spacing: 10
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/ho.svg"
                    color: "steelblue"
                    header: "Zuch pierwszej gwiazdki/\nZuch wtajemniczony"
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/hr.svg"
                    color: "steelblue"
                    header: "Zuch drugiej gwiazdki/\nZuch zaradny"
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/zuchG.svg"
                    color: "steelblue"
                    header: "Zuch trzeciej gwiazdki/\nZuch opiekuńczy"
                }
            }
            }
        Controls.Pane {
            Grid {
                anchors.fill: parent
                spacing: 20
                columns: 2
                StopienRectangle
                {
                    ikona: "image://icons/blank.svg,transparent"
                    header: "Młodzik/\n Ochotniczka"
                }
                StopienRectangle
                {
                    ikona: "image://icons/krzyz_lilijka_srebrna.svg"
                    header: "Wywiadowca/\n Tropicielka"
                }
                StopienRectangle
                {
                    ikona: "image://icons/krzyz_lilijka_zlota.svg"
                    header: "Ćwik/\n Samarytanka"
                }
                StopienRectangle
                {
                    ikona: "image://icons/krzyz_lilijka_okrag.svg"
                    divider: 2.1
                    header: "Harcerz orli/\n Wędrowniczka"
                }
                StopienRectangle
                {
                    ikona: "image://icons/krzyz_wieniec.svg"
                    divider: 0.90
                    header: "Harcerz Rzeczypospolitej/\n Harcerka Rzeczypospolitej"
                }
            }
        }
    }
}

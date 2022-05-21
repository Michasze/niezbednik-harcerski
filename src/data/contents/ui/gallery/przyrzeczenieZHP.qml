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

HPSPage {
    id: page
    title: "Przyrzeczenie ZHP/ZHR"
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Harcerze"
        }
        Controls.TabButton {
            text: "Zuchy"
        }
    }
    Controls.SwipeView {
        id: swipeView
        height: root.height
        currentIndex: tabBar.currentIndex
        clip: true
        Controls.Pane {
            Column {
                spacing: 10
                width: parent.width
                ElementListyNoLayout {
                    header: "Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłusznym Prawu Harcerskiemu."
                    color: "brown"
                    width: parent.width
                }
                ElementListyNoLayout {
                    header: "Alternatywna wersja przyrzeczenia dopuszczona 20.05.2022:"
                    color: "transparent"
                    width: parent.width
                }
                ElementListyNoLayout {
                    header: "Mam szczerą wolę całym życiem pełnić służbę Polsce, stać na straży harcerskich zasad, nieść chętną pomoc bliźnim i być posłusznym/posłuszną Prawu Harcerskiemu"
                    color: "brown"
                    width: parent.width
                }
            }
        }
        PromisePane {
            tresc: "Obiecuję być dobrym zuchem, zawsze przestrzegać Prawa Zucha."
        }
    }
}

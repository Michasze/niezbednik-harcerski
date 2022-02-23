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
    title: "Przyrzeczenie SHK „Zawisza”"
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Harcerze"
        }
        Controls.TabButton {
            text: "Wilczki"
        }
    }
    Controls.SwipeView {
        id: swipeView
        height: root.height
        currentIndex: tabBar.currentIndex
        clip: true
        PromisePane {
            tresc: "Na mój honor, z Łaską Bożą, przyrzekam całym życiem służyć Bogu, Kościołowi, mojej Ojczyźnie i Europie chrześcijańskiej, nieść w każdej potrzebie pomoc bliźnim i przestrzegać Prawa Harcerskiego."
        }
        PromisePane {
            tresc: "Obiecuję - ze wszystkich sił:<br>
starać się być wiernym Bogu,<br>
moim rodzicom,<br>
mojej Ojczyźnie,<br>
Prawu Gromady i Wilczka<br>
oraz każdego dnia czynić komuś dobry uczynek."
        }
    }
}

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
    title: "Stopnie Harcerskie - Zawisza"
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Męskie"
        }
        Controls.TabButton {
            text: "Żeńskie"
        }
    }
    Controls.SwipeView {
        id: swipeView
        Layout.fillHeight: true
        Layout.fillWidth: true
        height: root.height
        currentIndex: tabBar.currentIndex
        clip: true
        Item {
            width: root.width
            height: root.height
            ColumnLayout {
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Wywiadowca"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Ćwik"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Harcerz orli"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Harcerz Rzeczypospolitej"
                }
            }
        }
        Item {
            width: root.width
            height: root.height
            ColumnLayout {
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Tropicielka"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Pionierka"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Samarytanka"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Wędrowniczka"
                }
                ElementListyNoImage
                {
                    wysokosc: 120
                    width: page.width - 50
                    color: "steelblue"
                    header: "Harcerka Rzeczypospolitej"
                }

            }
        }
    }
}

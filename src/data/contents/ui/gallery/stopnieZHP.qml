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
    title: qsTr("Stopnie Harcerskie - ZHP")
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: qsTr("Zuchy")
        }
        Controls.TabButton {
            text: qsTr("Harcerze")
        }
    }
    Controls.SwipeView {
        id: swipeView
        height: highest.height + 50
        currentIndex: tabBar.currentIndex
        clip: true
        Controls.Pane {
            height: highest.height
            Column {
                spacing: 10
                anchors.fill: parent
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/ho.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: qsTr("Zuch Ochoczy")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/hr.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: qsTr("Zuch Sprawny")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/zuchG.svg"
                    width: page.width - 50
                    color: "steelblue"
                    header: qsTr("Zuch Zaradny")
                }
            }
        }
        Controls.Pane {
            height: highest.height + 50
            Column {
                id: highest
                spacing: 10
                width: parent.width
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/mlodzik.svg"
                    color: "steelblue"
                    header: qsTr("Młodzik/\nOchotniczka")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/wywiadowca.svg"
                    color: "steelblue"
                    header: qsTr("Wywiadowca/\nTropicielka")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/odkrywca.svg"
                    color: "steelblue"
                    header: qsTr("Odkrywca/\nPionierka")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/cwik.svg"
                    color: "steelblue"
                    header: qsTr("Ćwik/\nSamarytanka")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/ho.svg"
                    color: "steelblue"
                    header: qsTr("Harcerz Orli/\nHarcerka Orla")
                }
                ElementListyImageNoLayout
                {
                    ikona: "qrc:/contents/ui/img/hr.svg"
                    color: "steelblue"
                    header: qsTr("Harcerz Rzeczypospolitej/\n Harcerka Rzeczypospolitej")
                }
            }
        }
    }
}

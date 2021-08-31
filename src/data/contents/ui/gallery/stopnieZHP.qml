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

    title: "Stopnie Harcerskie - ZHP"

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
        currentIndex: tabBar.currentIndex
        clip: true

                     ColumnLayout {
        Layout.fillHeight: true
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/ho.svg"
            color: "steelblue"
            header: "Zuch Ochoczy"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/hr.svg"
            color: "steelblue"
            header: "Zuch Sprawny"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/zuchG.svg"
            color: "steelblue"
            header: "Zuch Gospodarny"
                         }
        //HACK: ukryte prostokąty sprawiają że obydwie strony są takiej samej wysokości
        // przez co layout nie rozjeżdża się przy przesuwaniu
                         Repeater
                         {
                             model: 3
                             Rectangle
                             {
                                 Layout.leftMargin: 10
                                 Layout.topMargin: 10
                                 Layout.fillWidth: true
                                 color: "Transparent"
                                 height: 120
                                 radius: 10
                             }
                         }
                     }
    ColumnLayout {
        width: page.width
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/mlodzik.svg"
            color: "steelblue"
            header: "Młodzik/\nOchotniczka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/wywiadowca.svg"
            color: "steelblue"
            header: "Wywiadowca/\nTropicielka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/odkrywca.svg"
            color: "steelblue"
            header: "Odkrywca/\nPionierka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/cwik.svg"
            color: "steelblue"
            header: "Ćwik/\nSamarytanka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/ho.svg"
            color: "steelblue"
            header: "Harcerz Orli/\nHarcerka Orla"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/hr.svg"
            color: "steelblue"
            header: "Harcerz Rzeczypospolitej/\n Harcerka Rzeczypospolitej"
        }

    }
                 }

}

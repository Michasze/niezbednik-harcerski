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
import org.kde.kirigami 2.13

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Stopnie Harcerskie - Zawisza"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        }
    }
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
        currentIndex: tabBar.currentIndex
        clip: true

                     ColumnLayout {
        Layout.fillHeight: true
                         ElementListyNoImage
                         {
            wysokosc: 120
            color: "steelblue"
            header: "Wywiadowca"
                         }
                         ElementListyNoImage
                         {
            wysokosc: 120
            color: "steelblue"
            header: "Ćwik"
                         }
                         ElementListyNoImage
                         {
            wysokosc: 120
            color: "steelblue"
            header: "Harcerz orli"
                         }
                         ElementListyNoImage
                         {
            wysokosc: 120
            color: "steelblue"
            header: "Harcerz Rzeczypospolitej"
                         }
        //HACK: ukryte prostokąty sprawiają że obydwie strony są takiej samej wysokości
        // przez co layout nie rozjeżdża się przy przesuwaniu
                         Repeater
                         {
                             model: 1
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
        spacing: Units.smallSpacing
        ElementListyNoImage
        {
            wysokosc: 120
            color: "steelblue"
            header: "Tropicielka"
        }
        ElementListyNoImage
        {
            wysokosc: 120
            color: "steelblue"
            header: "Pionierka"
        }
        ElementListyNoImage
        {
            wysokosc: 120
            color: "steelblue"
            header: "Samarytanka"
        }
        ElementListyNoImage
        {
            wysokosc: 120
            color: "steelblue"
            header: "Wędrowniczka"
        }
        ElementListyNoImage
        {
            wysokosc: 120
            color: "steelblue"
            header: "Harcerka Rzeczypospolitej"
        }

    }
                 }

}

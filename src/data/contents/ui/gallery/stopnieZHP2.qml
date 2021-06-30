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

    title: "Stopnie Harcerskie - ZHP"

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
            header: "Zuch Ochoczy"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/hr.svg"
            header: "Zuch Sprawny"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/zuchG.svg"
            header: "Zuch Gospodarny"
                         }
                     }
    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/mlodzik.svg"
            header: "Młodzik/Ochotniczka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/wywiadowca.svg"
            header: "Wywiadowca/Tropicielka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/odkrywca.svg"
            header: "Odkrywca/Pionierka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/cwik.svg"
            header: "Ćwik/Samarytanka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/ho.svg"
            header: "Harcerz Orli/Harcerka Orla"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/hr.svg"
            header: "Harcerz Rzeczypospolitej/Harcerka Rzeczypospolitej"
        }

    }
                 }

}

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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

         Controls.RadioButton {
             property int rozmiar: invisibleSlider.value - 5
                id: control2
                text: qsTr("Kaczor Y")
                checked: false
        indicator: Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        x: control2.leftPadding
        y: parent.height / 2 - height / 2
        radius: 13
        color: "black"
        border.color: control2.down ? "white" : "brown"

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 7
            color: control2.down ? "#17a81a" : "brown"
            visible: control2.checked
        }
    }
             contentItem: Controls.Label
             {
                 text: control2.text
                 leftPadding: control2.indicator.width + 5
                 verticalAlignment: Text.AlignVCenter
                 font.pointSize: control2.rozmiar
             }
            }

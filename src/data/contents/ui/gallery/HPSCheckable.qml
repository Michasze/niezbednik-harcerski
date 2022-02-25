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

import QtQuick 2.8
import QtQuick.Controls 2.0 as Controls
import Data 1.0

Controls.CheckDelegate {
    id: przedmiot
    width: parent.width
    text: modelData
    contentItem: Controls.Label
    {
        rightPadding: 30
        font.pointSize: invisibleSlider.value
        wrapMode: Text.WordWrap
        text: modelData
    }
    indicator: Rectangle {
        border.color: "brown"
        color: "transparent"
        implicitWidth: 26
        implicitHeight: 26
        x: page.width - 70
        y: parent.height / 2 - height / 2
        radius: 3
        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 2
            color: "Brown"
            visible: przedmiot.checked
        }
    }
    Component.onCompleted: {
        hpsSettings.pakowanieId = page.title + " - " + przedmiot.text
        przedmiot.checked = hpsSettings.pakowanieIsToggled
    }

    onToggled:
    {
        hpsSettings.pakowanieId = page.title + " - " + przedmiot.text
        console.log(przedmiot.checked)
        hpsSettings.pakowanieIsToggled = przedmiot.checked
    }
}

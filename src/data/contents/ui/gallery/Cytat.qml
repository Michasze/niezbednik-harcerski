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
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.15 as Controls

Controls.Control {
    id: control
    property string tresc: "Brak treści"
    property string autor: ""
    property bool isAuthorNeeded: false
    width: parent.width
    height: isAuthorNeeded ? contentText.height + authorText.height + 20 : contentText.height
    hoverEnabled: true
    contentItem: Rectangle {
        id: listItem
        color: (control.hovered || control.wheel) ? "#3873a6" : (control.pressed ? "#61b6ff" : "transparent")
        border.width: 1
        border.color: "Grey"
        Controls.Label {
            id: contentText
            width: parent.width
            topPadding: 10
            bottomPadding: 10
            leftPadding: 10
            rightPadding: 10
            anchors.top: parent.top
            wrapMode: Text.WordWrap
            font.pointSize: invisibleSlider.value - 2
            text: control.tresc
        }
        Controls.Label {
            id: authorText
            visible: isAuthorNeeded
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            rightPadding: 10
            wrapMode: Text.WordWrap
            font.pointSize: invisibleSlider.value - 2
            text: control.autor
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onPressed: listItem.color = "#61b6ff"
            onReleased: listItem.color = "transparent"
            onPressAndHold:
            {
                clipboard.paste = control.tresc + "\n" + control.autor
                showPassiveNotification("Skopiowano do schowka", 2000)
            }
            /* onEntered: */
            /* { */
            /*     listItem.color = "#3873a6" */
            /* } */
            /* onExited: */
            /* { */
            /*     listItem.color = "transparent" */
            /* } */
        }
    }
}

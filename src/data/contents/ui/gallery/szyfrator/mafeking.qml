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
import QtQuick.Layouts 1.2
import ".."
import Cipher 1.0

HPSPage {
    id: page
    title: "Szyfrator"
    Cipher {
        id: cipher
    }
    ColumnLayout {
        width: page.width
        ElementListyNoImage {
            color: "brown"
            header: "Mafeking"
        }
        Controls.TextArea {
            id: niezaszyfrowane
            Layout.fillWidth: true
            Layout.preferredHeight: (page.height / 2) - 50
            Layout.fillHeight: true
            inputMethodHints: Qt.ImhNoPredictiveText
            leftPadding: 10
            wrapMode: TextEdit.WrapAnywhere
            placeholderTextColor: "White"
            color: "white"
            placeholderText: qsTr("Tekst do zaszyfrowania...")
            background: Rectangle {
                radius: 5
                color: "#1d1d1d"
                implicitWidth: 100
                implicitHeight: 24
                border.color: "#333"
                border.width: 1
            }
            onTextChanged:
            {
                cipher.kaczorWariant = 2
                cipher.kaczor = niezaszyfrowane.text
                zaszyfrowane.header = cipher.kaczor
            }
        }

        ElementListyNoImage {
            id: zaszyfrowane
            color: "black"
            align: Text.AlignTop
            alignH: Text.AlignLeft
            lAlign: Qt.AlignTop
            textSize: 13
            border.color: "grey"
            border.width: 1
            Layout.preferredHeight: (page.height / 2) - 50
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onPressAndHold:
                {
                    clipboard.paste = zaszyfrowane.header
                    showPassiveNotification("Tekst skopiowany do schowka", 2000)
                }
            }
        }
    }
}

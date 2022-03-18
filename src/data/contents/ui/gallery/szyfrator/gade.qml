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
        ElementListyNoImage
        {
            id: naglowek
            color: "brown"
            header: "GA-DE-RY-PO-LU-KI"
        }
        HPSText {
            id: pole
            Layout.fillWidth: true
            Layout.preferredHeight: (page.height / 2) - 90
            Layout.fillHeight: true
            inputMethodHints: Qt.ImhNoPredictiveText
            leftPadding: 10
            wrapMode: TextEdit.WrapAnywhere
            color: "white"
            placeholderTextColor: "White"
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
                cipher.gade = pole.text
                pole2.text = cipher.gade
            }
        }
        Controls.ComboBox {
            id: control
            Layout.alignment: Qt.AlignHCenter
            displayText: currentText
            delegate: Controls.ItemDelegate {
                width: control.width
                contentItem: Text {
                    text: modelData
                    color: "brown"
                    font: control.font
                    elide: Text.ElideRight
                    verticalAlignment: Text.AlignVCenter
                }
            }
            contentItem: Text {
                text: control.displayText
                font: control.font
                leftPadding: 20
                color: control.pressed ? "brown" : "brown"
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            indicator: Canvas {
                id: canvas
                x: control.width - width - control.rightPadding
                y: control.topPadding + (control.availableHeight - height) / 2
                width: 12
                height: 8
                contextType: "2d"
            }
            background: Rectangle {
                implicitWidth: page.width / 2
                implicitHeight: 40
                border.color: control.pressed ? "brown" : "brown"
                color: "#1d1d1d"
                border.width: control.visualFocus ? 2 : 1
                radius: 2
            }
            popup: Controls.Popup {
                y: control.height - 1
                width: control.width
                implicitHeight: contentItem.implicitHeight
                padding: 1
                contentItem: ListView {
                    clip: true
                    implicitHeight: contentHeight
                    model: control.popup.visible ? control.delegateModel : null
                    currentIndex: control.highlightedIndex
                }
                background: Rectangle {
                    border.color: "brown"
                    color: "#1d1d1d"
                    radius: 2
                }
            }
            model: ["GA-DE-RY-PO-LU-KI", "PO-LI-TY-KA-RE-NU", "MA-LI-NO-WE-BU-TY", "BI-TW-AO-CH-MU-RY", "KU-LO-PE-RY-ZA-GI", "NO-WE-BU-TY-LI-SA", "RE-GU-LA-MI-NO-WY", "MO-TY-LE-CU-DA-KI", "KA-CE-MI-NU-TO-WY", "KO-NI-EC-MA-TU-RY", "NA-SZ-HU-FI-EC", "RÓ-ŻO-WE-TU-LI-PA-NY", "PA-DY-GI-MO-ZE-TU"]
            onActivated: {
                cipher.wariant = currentIndex
                cipher.gade = pole.text
                pole2.text = cipher.gade
            }
        }
        HPSText {
            id: pole2
            onPressAndHold:
            {
                clipboard.paste = pole2.text
                showPassiveNotification("Tekst skopiowany do schowka", 2000)
            }
            onTextChanged:
            {
                cipher.gade = pole2.text
                pole.text = cipher.gade
            }
        }
    }
}

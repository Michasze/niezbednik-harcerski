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
import Decipher 1.0

HPSPage {
    id: page
    title: "Szyfrator"
    Cipher {
        id: cipher
    }
    Decipher {
        id: decipher
    }
    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "brown"
            header: "Kod Morse'a"
        }
        Controls.TextArea {
            id: niezaszyfrowane
            Layout.fillWidth: true
            Layout.preferredHeight: (page.height / 2) - (button1.height/2) - 100
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
                cipher.morse = niezaszyfrowane.text
                zaszyfrowane.text = cipher.morse
            }
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            HPSRadioButton {
                text: qsTr("Bez polskich znaków")
                rozmiar: 8
                checked: true
                onClicked:
                {
                    cipher.wariant = 0
                    cipher.morse = niezaszyfrowane.text
                    zaszyfrowane.text = cipher.morse
                }
            }
            HPSRadioButton {
                text: qsTr("Z polskimi znakami")
                rozmiar: 8
                checked: false
                onClicked:
                {
                    cipher.wariant = 1
                    cipher.morse = niezaszyfrowane.text
                    zaszyfrowane.text = cipher.morse
                }
            }
        }
        HPSText {
            id: zaszyfrowane
            Layout.preferredHeight: (page.height / 2) - (naglowek.height / 2) - (button1.height / 2) - 70
            deszyfrowanie: true
            onPressAndHold:
            {
                clipboard.paste = zaszyfrowane.text
                showPassiveNotification("Tekst skopiowany do schowka", 2000)
            }
            onTextChanged:
            {
                if (activeFocus)
                {
                    decipher.morseDec = zaszyfrowane.text
                    niezaszyfrowane.text = decipher.morseDec
                }
            }
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Controls.RoundButton {
                id: button1
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 10
                text: "-"
                background: Rectangle {
                    radius: 10
                    anchors.fill: parent
                    color: "Brown"
                }
                onClicked:
                {
                    zaszyfrowane.insert(zaszyfrowane.length, "-")
                }
            }
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 10
                text: "•"
                background: Rectangle {
                    radius: 10
                    anchors.fill: parent
                    color: "Brown"
                }
                onClicked:
                {
                    zaszyfrowane.insert(zaszyfrowane.length, "•")
                }
            }
            Loader {
                sourceComponent: morseButton
                onLoaded: item.text = "/"
            }
        }
    Component {
        id: morseButton
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 10
                background: Rectangle {
                    radius: 10
                    anchors.fill: parent
                    color: "Brown"
                }
                onClicked:
                {
                    console.log(morseButton.text)
                    zaszyfrowane.insert(zaszyfrowane.length, morseButton.text)
                }
            }
    }
    }
}

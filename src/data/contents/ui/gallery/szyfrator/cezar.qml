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
        ElementListyNoImage {
            id: naglowek
            color: "brown"
            header: "Szyfr Cezara"
        }
        HPSText {
            id: pole
            Layout.preferredHeight: (page.height / 2) - (shift.height / 2) - (naglowek.height / 2) - 40
            onTextChanged:
            {
                if (activeFocus)
                {
                    cipher.caesar = pole.text
                    pole2.text = cipher.caesar
                }
            }
        }
        Controls.TextField {
            id: shift
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            Layout.fillWidth: true
            width: 100
            leftPadding: 5
            Layout.topMargin: 10
            horizontalAlignment: TextInput.AlignHCenter
            placeholderTextColor: "White"
            color: "white"
            placeholderText: qsTr("przesunięcie:")
            validator: IntValidator{bottom: 0; top: 52;}
            inputMethodHints: Qt.ImhDigitsOnly
            background: Rectangle {
                radius: 5
                color: "brown"
                anchors.fill: parent
                border.color: "#333"
                border.width: 1
            }
            onTextChanged:
            {
                cipher.shift = shift.text
                if (pole2.text == "")
                {
                    decipher.caesarDec = pole2.text
                    pole.text = decipher.caesarDec
                }
                else
                {
                    cipher.caesar = pole.text
                    pole2.text = cipher.caesar
                }
            }
        }
        HPSText {
            id: pole2
            deszyfrowanie: true
            Layout.preferredHeight: (page.height / 2) - (shift.height / 2) - (naglowek.height / 2) - 40
            onPressAndHold:
            {
                clipboard.paste = pole2.text
                showPassiveNotification("Tekst skopiowany do schowka", 2000)
            }
            onTextChanged:
            {
                if (activeFocus)
                {
                    decipher.decShift = cipher.shift
                    decipher.caesarDec = pole2.text
                    pole.text = decipher.caesarDec
                }
            }

        }
    }
}

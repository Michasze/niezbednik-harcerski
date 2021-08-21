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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami
import ".."
import Cipher 1.0
import Decipher 1.0
import Data 1.0

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Szyfrator"

    actions {
        main: Kirigami.Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.layers.pop(-1);
        }
    }
     Cipher
     {
       id: cipher
     }

     Decipher
     {
       id: decipher
     }
    Clipboard
    {
        id: clipboard
    }
    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "brown"
            header: "Szyfr Cezara"
        }
        Controls.TextArea {
//    width: 500
    id: niezaszyfrowane
    Layout.fillWidth: true
    Layout.preferredHeight: (page.height / 2) - 90
    Layout.fillHeight: true
    inputMethodHints: Qt.ImhNoPredictiveText
    leftPadding: 10
    color: "white"
    wrapMode: TextEdit.WrapAnywhere
    placeholderTextColor: "White"
    Layout.topMargin: 10
//    inputMask: "abc"
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
        if (activeFocus)
        {
       cipher.caesar = niezaszyfrowane.text
            zaszyfrowane.text = cipher.caesar
        }
    }
}
Controls.TextField {
    id: shift
    Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
    width: 100
    leftPadding: 5
    Layout.topMargin: 10
    horizontalAlignment: TextInput.AlignHCenter
    placeholderTextColor: "White"
    color: "white"
    placeholderText: qsTr("przesunięcie:")
    validator: IntValidator{bottom: 0; top: 52;}
//    inputMask: "99999999"
    inputMethodHints: Qt.ImhDigitsOnly
    background: Rectangle {
                    radius: 5
                    color: "brown"
                    implicitWidth: niezaszyfrowane.width
                    implicitHeight: 24
                    border.color: "#333"
                    border.width: 1
                }
        onTextChanged:
                      {
                        if(shift.text != "")
                        {
                          cipher.shift = shift.text
                        }
                        // nie działa
                        else if (shift.text = "")
                        {
                           cipher.shift = "0"
                        }
                          if (zaszyfrowane.text == "")
                          {
                          cipher.caesar = niezaszyfrowane.text
                              zaszyfrowane.text = cipher.caesar
                          }
                          else
                          {
                              decipher.caesarDec = zaszyfrowane.text
                              niezaszyfrowane.text = decipher.caesarDec
                          }
                      }
}
         Controls.TextArea
    {
       id: zaszyfrowane
       verticalAlignment: Text.AlignTop
       horizontalAlignment: Text.AlignLeft
       Layout.alignment: Qt.AlignTop
       Layout.fillWidth: true
       font.pointSize: 13
       color: "white"
       wrapMode: TextEdit.WrapAnywhere
       placeholderTextColor: "White"
       inputMethodHints: Qt.ImhNoPredictiveText
       Layout.preferredHeight: (page.height / 2) - 90
       placeholderText: qsTr("Zaszyfrowany tekst...")
       background: Rectangle {
                    radius: 5
                    color: "#1d1d1d"
                    implicitWidth: 100
                    implicitHeight: 24
                    border.color: "#333"
                    border.width: 1
                }
      onPressAndHold:
      {
       clipboard.paste = zaszyfrowane.text
       showPassiveNotification("Tekst skopiowany do schowka", 2000)
      }
        onTextChanged:
    {
        if (activeFocus)
        {
            decipher.decShift = cipher.shift
            decipher.caesarDec = zaszyfrowane.text
            niezaszyfrowane.text = decipher.caesarDec
        }
    }

        }
    }
}

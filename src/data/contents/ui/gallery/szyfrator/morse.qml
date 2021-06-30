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
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }
     Cipher
     {
       id: cipher
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
            header: "Kod Morse'a"
        }
        Controls.TextArea {
//    width: 500
    id: niezaszyfrowane
    Layout.fillWidth: true
    Layout.preferredHeight: (page.height / 2) - 90
    Layout.fillHeight: true
    inputMethodHints: Qt.ImhNoPredictiveText
    leftPadding: 10
    wrapMode: TextEdit.WrapAnywhere
    placeholderTextColor: "White"
    color: "white"
    Layout.leftMargin: 10
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
       cipher.morse = niezaszyfrowane.text
       zaszyfrowane.header = cipher.morse
    }
}
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Controls.RadioButton {
                id: control
                text: qsTr("Bez polskich znaków")
                checked: true
        indicator: Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 13
        color: "black"
        border.color: control.down ? "white" : "brown"

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 7
            color: control.down ? "#17a81a" : "brown"
            visible: control.checked
        }
    }
                onClicked:
                {
                    cipher.wariant = 0
                    cipher.morse = niezaszyfrowane.text
                    zaszyfrowane.header = cipher.morse
                }
            }
            Controls.RadioButton {
                id: control2
                text: qsTr("Z polskimi znakami")
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
                onClicked:
                {
                    cipher.wariant = 1
                    cipher.morse = niezaszyfrowane.text
                    zaszyfrowane.header = cipher.morse
                }
            }
        }

         ElementListyNoImage
    {
       id: zaszyfrowane
       color: "black"
       align: Text.AlignTop
        alignH: Text.AlignLeft
        lAlign: Qt.AlignTop
        textSize: 13
        border.color: "grey"
        border.width: 1
        Layout.preferredHeight: (page.height / 2) - 90
       MouseArea {
      anchors.fill: parent
      hoverEnabled: true
      onPressAndHold:
      {
       clipboard.paste = zaszyfrowane.header
       showPassiveNotification("Cytat skopiowany do schowka", 2000)
      }
       }
        }
    }
}

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
        visible: false
        onTriggered: pageStack.layers.pop(-1);
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
            header: "GA-DE-RY-PO-LU-KI"
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
    color: "white"
    placeholderTextColor: "White"
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
       cipher.gade = niezaszyfrowane.text
       zaszyfrowane.header = cipher.gade
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

        Connections {
            target: control
            function onPressedChanged() { canvas.requestPaint(); }
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = control.pressed ? "brown" : "brown";
            context.fill();
        }
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
            cipher.gade = niezaszyfrowane.text
            zaszyfrowane.header = cipher.gade
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
        Layout.preferredHeight: (page.height / 2) - 70
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

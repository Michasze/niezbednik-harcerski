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
import org.kde.kirigami 2.4 as Kirigami

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Poradniki harcerskie"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
        id: mainlayout
        
    Rectangle {
    Layout.fillWidth: true
    Layout.minimumHeight : 100
    radius: 10
    implicitHeight: spiwor.implicitHeight + 20
    border.color: "white"
    color: "transparent"
    
    RowLayout {
     id: spiwor
     anchors.fill:parent
  /*    Kirigami.Icon
     {
      source: "qrc:/contents/ui/img/blank.svg"
      Layout.fillHeight: true
      Layout.leftMargin: 10
      Layout.topMargin: 10
      Layout.bottomMargin: 10
      Layout.maximumHeight: Kirigami.Units.iconSizes.huge
      Layout.preferredWidth: height
     } */
     Controls.Label
     {
         Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pixelSize: 15
            Layout.leftMargin: 10
            text: "Jak spać ciepło podczas biwaków i wędrówek?"
     }
     Controls.RoundButton {
                        Layout.alignment: Qt.AlignRight|Qt.AlignVCenter
                        Layout.columnSpan: 2 
                        Layout.rightMargin: 10
                        radius: 4
                        text: qsTr("Otwórz")
                        highlighted: true
                                               onClicked: {
                        if(pageStack.lastVisibleItem != page)
                        {
                        pageStack.pop(-1)
                        }
                        pageStack.push(Qt.resolvedUrl("jakSpac.qml"))
                                               }
                    }
    }
    }
    Rectangle {
    Layout.fillWidth: true
    Layout.minimumHeight : 100
    radius: 10
    implicitHeight: poradnikDruha.implicitHeight + 20
    border.color: "white"
    color: "transparent"
    
    RowLayout {
     id: poradnikDruha
     anchors.fill:parent
  /*    Kirigami.Icon
     {
      source: "qrc:/contents/ui/img/blank.svg"
      Layout.fillHeight: true
      Layout.leftMargin: 10
      Layout.topMargin: 10
      Layout.bottomMargin: 10
      Layout.maximumHeight: Kirigami.Units.iconSizes.huge
      Layout.preferredWidth: height
     } */
     Controls.Label
     {
         Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pixelSize: 15
            Layout.leftMargin: 10
            text: "Poradnik Najdruhniejszego Druha"
     }
     Controls.RoundButton {
                        Layout.alignment: Qt.AlignRight|Qt.AlignVCenter
                        Layout.columnSpan: 2 
                        Layout.rightMargin: 10
                        radius: 4
                        text: qsTr("Otwórz")
                        highlighted: true
                                               onClicked: {
                        if(pageStack.lastVisibleItem != page)
                        {
                        pageStack.pop(-1)
                        }
                        pageStack.push(Qt.resolvedUrl("poradnikDruha.qml"))
                                               }
                    }
    }
    }
}
}

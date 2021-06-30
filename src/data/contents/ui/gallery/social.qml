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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Social media"

    globalToolBarStyle: ApplicationHeaderStyle.None
    actions {
        main: Action {
            iconName: "qrc:/contents/ui/img/go-home.svg"
            text: qsTr("Powrót")
            onTriggered: pageStack.layers.pop();
        }
    }
    ColumnLayout
    {
ElementListy 
    {
    ikona: "qrc:/contents/ui/img/Instagram_new.svg"
    header: "_harcerze_poznajemy_sie_"
    odnosnik: "https://instagram.com/_harcerze_poznajemy_sie_"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/snapchat_logo.svg"
    header: "harcerze_snap"
    MouseArea {
    anchors.fill: parent
        onClicked: snap.open();
    }
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/Discord-Logo.svg"
    header: "Harcerze - Poznajemy Się!"
    odnosnik: "https://discord.gg/9ZFZeRsvc8"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/tellonym.svg"
    header: "Harcerze_Poznajemy_Sie"
    odnosnik: "https://tellonym.me/Harcerze_Poznajemy_Sie"
    }
    Controls.Popup
    {
        id: snap
        width: page.width / 4
        height: snap.width
        anchors.centerIn: parent
        background: Rectangle {
            anchors.fill: parent
            color: "Transparent"
        }
        Controls.Pane
        {
        ColumnLayout
        {
            Controls.Button
            {
                text: "x"
                flat: true
                Layout.alignment: Qt.AlignRight|Qt.AlignTop
                onClicked: snap.close()
            }
        Image {
            Layout.maximumWidth: page.width / 4
            Layout.preferredHeight: page.width / 4
            Layout.alignment: Qt.AlignLeft|Qt.AlignBottom
            source: "qrc:/contents/ui/img/snapchatHPS.jpg"
        }
        }
        }
    }
   } 
}

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

    actions {
        main: Action {
            iconName: "qrc:/contents/ui/img/go-home.svg"
            onTriggered: pageStack.layers.pop();
        }
     /*   main: Action {
            iconName: "document-edit"
            text: "Main Action Text"
            onTriggered: {
                showPassiveNotification("Action button in buttons page clicked");
            }
        }
        left: Action {
            iconName: "qrc:/contents/ui/img/go-previous.svg"
            text: "Left Action Text"
            onTriggered: {
                showPassiveNotification("Left action triggered")
            }
        } 
        contextualActions: [
            Action {
                text:"Action 1"
                iconName: "go-next"
                onTriggered: showPassiveNotification("Action 1 clicked")
            },
            Action {
                text:"Action 2"
                iconName: "folder"
                enabled: false
                onTriggered: showPassiveNotification("Action 2 clicked")
            }
        ] */
    }
    ColumnLayout
    {
    implicitWidth: page.width
GridLayout {
        implicitWidth: page.width
        columns: 2
        columnSpacing: 10
//         alignment: Layout.AlignHCeneter
        Icon {
         source: "qrc:/contents/ui/img/Instagram_new.svg"   
         Layout.minimumHeight: 200
            Layout.fillWidth: true
         Layout.maximumHeight: 400
//          fillMode: Image.PreserveAspectFit
         //anchors.horizontalCenter: opis.horizontalCenter
        }
        Controls.Label {
            id: opis
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pointSize: 40
            fontSizeMode: Text.HorizontalFit
            Layout.alignment: Qt.AlignLeft
            text: "_harcerze_poznajemy_sie_"
        }


}
	
   GridLayout {
        implicitWidth: page.width
        columns: 2
         columnSpacing: 10
//         alignment: Layout.AlignHCeneter
        //FIXME: poszukać lepszego typu do przechowywania logo
        Icon {
         source: "qrc:/contents/ui/img/snapchat_logo.svg"
         Layout.minimumHeight: 200
            Layout.fillWidth: true
         Layout.maximumHeight: 400

//          fillMode: Image.PreserveAspectFit
         //anchors.horizontalCenter: opis.horizontalCenter
        }
        Controls.Label {
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pointSize: 40
            fontSizeMode: Text.HorizontalFit
            Layout.alignment: Qt.AlignLeft
            text: "harcerze_snap"
        }


    }
   GridLayout {
        width: page.width
        columns: 2
        columnSpacing: 10
//         alignment: Layout.AlignHCeneter
        //FIXME: poszukać lepszego typu do przechowywania logo
        Icon {
         source: "qrc:/contents/ui/img/Discord-Logo.svg"   
         Layout.minimumHeight: 200
            Layout.fillWidth: true
         Layout.maximumHeight: 400
        }
        Controls.Label {
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pointSize: 40
            fontSizeMode: Text.HorizontalFit
            Layout.alignment: Qt.AlignLeft
            text: "Harcerze - Poznajemy Się!"
        }


    }
  /* GridLayout {
        width: page.width
        columns: 2
        columnSpacing: 10
//         alignment: Layout.AlignHCeneter
        //FIXME: poszukać lepszego typu do przechowywania logo
        Icon {
         source: "qrc:/contents/ui/img/Tellonym_logo.jpg"   
         Layout.minimumHeight: 200
            Layout.fillWidth: true
         Layout.maximumHeight: 400

//          fillMode: Image.PreserveAspectFit
         //anchors.horizontalCenter: opis.horizontalCenter
        }
        Controls.Label {
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            font.pointSize: 40
            fontSizeMode: Text.HorizontalFit
            Layout.alignment: Qt.AlignLeft
            text: "Harcerze_Poznajemy_Sie"
        }


    } */
} 
   } 

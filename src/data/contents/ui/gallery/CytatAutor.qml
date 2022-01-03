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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import Data 1.0

 HPSLista {
       Clipboard
     {
       id: clipboard
     }
     height: label1.height + label2.height + 10
     background: Rectangle {
         color: "transparent"
         border.color: "white"
         border.width: 1
     }
     separatorVisible: false

            id: listItem1
property string tresc: "Brak treści"
property string autor: "Brak autora"
Layout.fillHeight: true
      onPressAndHold:
      {
      clipboard.paste = listItem1.tresc + "\n" + listItem1.autor
      showPassiveNotification("Cytat skopiowany do schowka", 2000)
      }

                contentItem: ColumnLayout
                             {
                               Controls.Label {
                                   id: label1
    wrapMode: Text.WordWrap
    color: invisibleCheckbox.checked ? "white" : "black"
    Layout.alignment: Qt.AlignHCenter
    textFormat: Text.StyledText
    Layout.fillWidth: true
            text: listItem1.tresc 
             }
                                 Controls.Label {
                                     id: label2
    wrapMode: Text.WordWrap
    color: invisibleCheckbox.checked ? "white" : "black"
    horizontalAlignment: Text.AlignRight
    Layout.fillWidth: true
            text: listItem1.autor 
             }

                             }
        }  

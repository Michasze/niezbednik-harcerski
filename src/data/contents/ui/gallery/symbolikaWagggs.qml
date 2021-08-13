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

HPSPage
{
 id: page
  Layout.fillWidth: true
 title: qsTr("Symbolika WAGGGS")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout
    {
    Layout.fillHeight: true
     Rectangle {
              radius: 10
         width: page.width
         Layout.maximumHeight: page.width / 3
         Layout.minimumHeight: page.width / 3
         Layout.fillHeight: true
         Layout.fillWidth: true
   color: "#0079c2"
         Image
         {
             sourceSize.width: page.width / 4
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: false
             anchors.centerIn: parent
             source: "qrc:/contents/ui/img/wagggs.svg"
         }
    }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wagggs.svg"
            color: "steelblue"
            symbolika: true
            header: "Złota koniczyna na jasnoniebieskim tle - ruch skautowy jest dostępny dla wszystkich dziewcząt na świecie"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wagggs_ramiona.svg"
            color: "steelblue"
            symbolika: true
            header: "Trzy ramiona - trzy służby: Bogu, Ojczyźnie i bliźnim"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wagggs_gwiazdki.svg"
            color: "steelblue"
            symbolika: true
            header: "Dwie gwiazdki - Prawo i Przyrzeczenie \n
Oczy harcerki szeroko otwarte na świat"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wagggs_igla.svg"
            color: "steelblue"
            symbolika: true
            header: "Igła kompasu wskazująca harcerce dobrą drogę"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wagggs_plomien.svg"
            color: "steelblue"
            symbolika: true
            header: "Płomień miłości do ludzi"
                         }

    }
}

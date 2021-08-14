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
import org.kde.kirigami 2.4 as Kirigami

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Symbolika watry"

    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
    ColumnLayout {
    Layout.fillHeight: true
     Rectangle {
              radius: 10
         width: page.width
         Layout.preferredHeight: page.width / 3
         Layout.fillHeight: true
         Layout.fillWidth: true
   color: "#47483c"
         Image
         {
             sourceSize.width: (page.width / 3) - 20
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: false
             anchors.centerIn: parent
             source: "qrc:/contents/ui/img/watra.svg"
         }
        }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_cialo.svg"
            color: "steelblue"
            symbolika: true
            header: "Siła ciała"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_rozum.svg"
            color: "steelblue"
            symbolika: true
            header: "Siła rozumu"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_duch.svg"
            color: "steelblue"
            symbolika: true
            header: "Siła ducha"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_sluzba.svg"
            color: "steelblue"
            symbolika: true
            header: "Służba"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_miejsce.svg"
            color: "steelblue"
            symbolika: true
            header: "Szukanie swego miejsca w społeczeństwie"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/watra_praca.svg"
            color: "steelblue"
            symbolika: true
            header: "Praca nad sobą"
                         }
    }
}

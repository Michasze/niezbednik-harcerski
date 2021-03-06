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
import QtQuick.Layouts 1.2

HPSPage
{
 id: page
  Layout.fillWidth: true
 title: qsTr("Symbolika WOSM")
    ColumnLayout
    {
    Layout.fillHeight: true
     Rectangle {
         radius: 10
         width: page.width
         Layout.preferredHeight: page.width / 3
         Layout.fillHeight: true
         Layout.fillWidth: true
        color: "#6e20a0"
         Image
         {
             sourceSize.width: (page.width / 3)
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: false
             anchors.bottomMargin: 20
             anchors.topMargin: 20
             anchors.centerIn: parent
             source: "qrc:/contents/ui/img/wosm.svg"

         }
     }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/dmb.svg"
            color: "steelblue"
            symbolika: true
            header: "Węzeł płaski - jedność i braterstwo ruchu skautowego"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wosm_lina.svg"
            color: "steelblue"
            symbolika: true
            header: "Lina - braterski krąg"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wosm_kwiat.svg"
            color: "steelblue"
            symbolika: true
            header: "Kwiat lilii - czystość i cnota"
                         }

                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wosm_gwiazdki.svg"
            color: "steelblue"
            symbolika: true
            header: "Dwie gwiazdki - prawo i przyrzeczenie harcerskie, \n Oczy harcerza szeroko otwarte na świat"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wosm_igla.svg"
            color: "steelblue"
            symbolika: true
            header: "Igła kompasu - ma wskazywać harcerzowi dobrą drogę"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/wosm_kolor.svg"
            color: "steelblue"
            symbolika: true
            header: "Królewska purpura - oznaka przywództwa i udzielania pomocy innym"
                         }
                         ElementListy
                         {
             ikona: "image://icons/wosm_kolor.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Kolor biały - czystość"
                         }

    }
}

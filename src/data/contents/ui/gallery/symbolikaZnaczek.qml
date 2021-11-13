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

HPSPage
{
 id: page
  Layout.fillWidth: true
 title: qsTr("Symbolika - znaczek zucha")
    ColumnLayout
    {
    Layout.fillHeight: true
     Rectangle {
         radius: 10
         width: page.width
         Layout.preferredHeight: page.width / 3
         Layout.fillHeight: true
         Layout.fillWidth: true
        color: "white"
         Image
         {
             sourceSize.width: (page.width / 3)
             Layout.alignment: Qt.AlignHCenter
             Layout.fillWidth: false
             anchors.bottomMargin: 20
             anchors.topMargin: 20
             anchors.centerIn: parent
             source: "qrc:/contents/ui/img/znaczek-zucha.svg"

         }
     }

                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/znaczek_orzel.svg"
            color: "steelblue"
            symbolika: true
            header: "Biały orzeł - odwaga"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/znaczek-napis.svg"
            color: "steelblue"
            symbolika: true
            header: "Napis \"ZUCH\" - określa przynależność do ZHP i ZHR "
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/znaczek-slonce.svg"
            color: "steelblue"
            symbolika: true
                             header: "Słońce - radość, pogoda ducha \n
Promienie - gotowość służenia i niesienia pomocy innym"
                         }
                         ElementListy
                         {
             ikona: "image://icons/wosm_kolor.svg,#0093dd"
            color: "steelblue"
            symbolika: true
            header: "Niebo - pogoda ducha"
                         }

    }
}

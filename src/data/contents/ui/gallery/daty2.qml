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

    title: "Najważniejsze daty"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.layers.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
       /* Image {
         source: ""   
          Layout.fillWidth: true
         Layout.minimumHeight: 200

         fillMode: Image.PreserveAspectFit
         anchors.horizontalCenter: opis.horizontalCenter
        }*/
        Controls.Label {
            id: opis
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            horizontalAlignment: Image.AlignHLeft
            text: "
    <b>• 1857</b> Generał Robert Baden Powell luty 22 Urodził się<br>
    <b>• 1899</b> Bitwa o Mafeking<br>
    <b>• 1907</b> Pierwszy obóz skautowy na wyspie Brownsea<br>
    <b>• 1908</b> Wydanie książki “Scouting for boys”</br>
    <b>• 1909</b> Na ziemiach polskich powstają pierwsze drużyny skautowe<br>
    <b>• 1909</b> Andrzej Małkowski przetłumaczył “Scouting for boys”<br>
    <b>• 1918</b> listopad 1-2 założenie ZHP<br>
    <b>• 1939</b> wrzesień 1 wybuch II Wojny Światowej<br>
    <b>• 1939</b> wrzesień 17 Związek Radziecki atakuje Polskę<br>
    <b>• 1939</b> wrzesień 27 przejście harcerstwa do konspiracji i przyjęcie kryptonimu Szare Szeregi<br>
    <b>• 1943</b> marzec 26 Akcja pod Arsenałem “Meksyk II”<br>
    <b>• 1944</b> sierpień 1 - październik 3 Powstanie Warszawskie<br>
    <b>• 1945</b> styczeń 18 Szare Szeregi zostają rozwiązane przez Floriana Marciniaka<br>
"
onLinkActivated: Qt.openUrlExternally(link)
        }
    }
 
    
}

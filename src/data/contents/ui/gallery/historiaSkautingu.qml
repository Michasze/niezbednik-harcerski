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

    title: "Historia Skautingu"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.layers.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.largeSpacing
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
//             textFormat: Text.RichText
            horizontalAlignment: Image.AlignHLeft
            text: "Podczas bitwy o Mafeking w 1899 roku dowódca armii brytyjskiej Generał Robert Baden Powell, szkolił młodych chłopców, aby wykorzystywać ich jako zwiadowców i łącznościowców, ponieważ bardzo dobrze spisywali się oni w takich zadaniach. Zauważył on potencjał w tego rodzaju młodzieży, nie tylko świetnie współpracowali oni w grupie, ale również dobrze się przy tym bawili. Z małych grup chłopców, który działały jako zwiadowcy wyłoniła się koncepcja zastępów (system małych grup). Po powrocie do Wielkiej Brytanii w 1907 roku zorganizował pierwszy obóz skautowy na wyspie Brownsea. Dzięki doświadczeniom zdobytym na tym obozie, napisał książkę \"Scouting for boys\" wydaną w 1908 roku. Idea skautingu szybko podbiła serca młodzieży na całym świecie, kolejne drużyny skautowe zaczynały się tworzyć poza Wielką Brytanią. "
onLinkActivated: Qt.openUrlExternally(link)
        }
        Separator
        {
        }
        ElementListyNoImage {
    color: "Green"
    header: "\"Chcemy nauczyć naszych chłopców nie tylko jak żyć, ale również jak cieszyć się życiem.\"<br>
            ~ Generał Robert Baden Powell "
        }
    }
 
    
}

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

    title: "Dzień Myśli Braterskiej"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        visible: !Settings.isMobile ? true : false
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
            textFormat: Text.StyledText
            font.pointSize: invisibleSlider.value
            horizontalAlignment: Text.AlignJustify
            text: "O tym, że DMB obchodzimy 22 lutego przypominać nie trzeba, ale skąd wzięła się ta tradycja?

W 1927 roku w Międzynarodowym Biurze skautek wymyślono, aby dzień urodzin Generała Roberta Baden Powella i Olave Baden Powell, stał się dniem spotkania skautek. Bardzo szybko również skauci dołączyli do tych obchodów. Wcześniej świętowali oni 23 kwietnia w dzień Świętego Jerzego. W Polsce ZHP było organizatorem Dnia Myśli Braterskiej do 1947. Władze komunistyczne zakazały go ponieważ uważały skauting za zbyt \"burżuazyjny\". Idea ta nieoficjalnie powróciła do wielu drużyn w 1956 roku i tak oto jest z nami do dziś. <br><br>

W 1932 roku powstał \"Fundusz Myśli Braterskiej\" z inicjatywy belgijskiej skautki. Pieniądze z tego funduszu były przeznaczane na rozwój skautingu na całym świecie.<br><br>

Skauci (Rangers) w Nowej Zelandii przed zmrokiem zdobywają Górę Mount Eden. Tam rozpalają małe ognisko i stawiają flagę, następnie czekają aż nad oceanem zacznie wschodzić słońce. Gdy to nastąpi zaczynają wciągać flagę Ruchu Skautowego. Śpiewają tam The World Song. 
<a href=\"https://www.youtube.com/watch?v=2_aHL-6Tb0k\">link</a><br><br>

Swego czasu słyszałem też o tradycji wymieniania się kwiatami.<br><br>

Juliusz Idzikowski"
onLinkActivated: Qt.openUrlExternally(link)
        }
    }
 
    
}

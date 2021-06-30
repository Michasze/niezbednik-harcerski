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
import org.kde.kirigami 2.13 as Kirigami
import ".."

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Kaczor"

    actions {
        main: Kirigami.Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
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
                              ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: **"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Szyfr ten opiera się na prostym schemacie – każda litera w tabeli ma swoje pole, a my musimy ją zlokalizować, stosując odpowiedni wzór – niczym w statkach, no prawie, bo najważniejsze jest tutaj słowo-klucz, czyli kaczor – to właśnie od niego wywodzimy kolejne literki. Słowo to tworzy pierwszą linię, a kolejne powstają zgodnie z alfabetem – zaczynamy pisać w dół, a gdy natrafiamy na literkę składową wyrazu „kaczor”, to zaczynamy pisać od niej, co ilustrują poniższe tabele. <br> Kaczora możemy podzielić na wersję X (bez polskich znaków) oraz Y (z polskimi znakami)

"
        }
            Kirigami.Icon
 {
     Layout.fillWidth: true
     isMask: true
     width: page.width
     Layout.minimumHeight: 300
     color: "white"
     source: "qrc:/contents/ui/img/szyfry/kaczor.svg"
 }
             Kirigami.Icon
 {
     Layout.fillWidth: true
     isMask: true
     width: page.width
     Layout.minimumHeight: 300
     color: "white"
     source: "qrc:/contents/ui/img/szyfry/kaczor2.svg"
 }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Jeśli chcemy zakodować słowo „Harcerz”, to w <b>Kaczorze X</b> będzie ono brzmieć: <br>
6C-1A-1R-1C-3C-1R-1Z <br>
W <b>Kaczorze Y</b> natomiast: <br>
8C-1A-1R-1C-4C-1R-1Z

"
        }
    }
}

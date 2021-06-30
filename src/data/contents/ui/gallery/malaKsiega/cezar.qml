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

    title: "Cezar"

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
        spacing: 20
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
            header: "Trudność: *"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Zwany także szyfrem przesuwnym. Wedle legend wymyślony i zapoczątkowany przez Juliusza Cezara, któremu zawdzięcza swoją nazwę. <br> <br>
Jest to prosty szyfr, którego zasadą działania jest przesunięcie litery o stały ciąg w alfabecie. <br> <br>
Jeśli klucz=3, oznacza to, że danej literce odpowiada litera będąca trzy „pozycje” dalej. <br><br>
I tak literka „A” to będzie „D” <br> <br>
Słowo „Harcerz” będzie brzmieć „KDUFHUC”<br>
Zdanie „Harcerz jest odważny” → „KDUFHUC MHVW RGZDQB” <br>
Szyfr ten występuje zarówno w wariancie z alfabetem polskim, jak i łacińskim.

"
        }
 
    }
}

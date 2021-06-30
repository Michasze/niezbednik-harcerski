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

    title: "Rozbieżny"

    actions {
        main: Kirigami.Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
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
            header: "Trudność: *"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "<p>Wyciągamy co drugą literkę ze słowa tworząc nowy wyraz:</p>"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "<p>J<font color=\"#7fff00\">A</font>N → JN <font color=\"#7fff00\">A</font></p>
<p>J<font color=\"#7fff00\">A</font>N N<font color=\"#7fff00\">O</font>W<font color=\"#7fff00\">A</font>K → JN <font color=\"#7fff00\">A</font> NWK <font color=\"#7fff00\">O</font><font color=\"#7fff00\">A</font></p>
J<font color=\"#7fff00\">A</font>N N<font color=\"#7fff00\">O</font>W<font color=\"#7fff00\">A</font>K G<font color=\"#7fff00\">O</font>T<font color=\"#7fff00\">U</font>JE → JN <font color=\"#7fff00\">A</font> NWK <font color=\"#7fff00\">O</font><font color=\"#7fff00\">A</font> GTJ
<font color=\"#7fff00\">OUE</font>
</p>"
        }
    }
}

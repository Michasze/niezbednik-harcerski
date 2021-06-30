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

    title: "Pochodzenie słowa \"Harcerz\""
    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: 20
        Image {
         source: "qrc:/contents/ui/img/harcerz.jpg"   
          Layout.fillWidth: true
         Layout.minimumHeight: 200
         fillMode: Image.PreserveAspectFit
        }
        Controls.Label {
            font.pixelSize: 10
            text: "rys. Amelia Modzelewska"
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true

        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                color: "Black"
            header: "Czuwaj! Mała dawka historii każdemu dobrze zrobi Wyraz harcerz pojawił się w języku polskim już w XV wieku, ale nie oznaczał on wtedy harcerza w dzisiejszym rozumieniu, jako członka organizacji harcerskiej. Harcerzem lub harcownikiem nazywano lekkozbrojnego wojownika, który brał udział w potyczce, rozgrywającej się przed prawdziwą bitwą. Było to swego rodzaju widowisko, które przypominało bardziej pokaz zręczności i umiejętności niż bitwę. Słowo harc stało się wtedy synonimem igraszek wymagających sprawności fizycznej i odwagi. Dlaczego w Polsce mamy harcerzy, a nie skautów? Założyciele harcerstwa chcieli uniknąć zagranicznego wyrazu, dlatego wskrzesili starodawne określenie, nadając mu nowego znaczenia \"dzielny i sprawny młodzieniec\", w późniejszym czasie już na stałe przylegało ono do członka organizacji harcerskiej."
          }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignRight
                color: "Black"
            header: "Juliusz Idzikowski"
        }
    }
    
}

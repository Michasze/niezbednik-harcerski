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

    title: "Marian Pluciński"
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
        spacing: Units.smallSpacing
        Image {
         source: "qrc:/contents/ui/img/msciciel.jpg"   
          Layout.fillWidth: true
         Layout.maximumHeight: 400

         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Settings.isMobile ? 12 : 14
                format: Text.PlainText
                color: "Black"
            header: "Marian Pluciński pseudonim \"Mściciel\" urodzony w 1912 roku w Żarnowcu, zmarł w 1946 roku w Białymstoku.

Oficer Wojska Polskiego, AK oraz uczestnik powstania antykomunistycznego.
Przed wojną ukończył szkołę podchorążych broni pancernej, po czym został przydzielony do jednego z oddziałów pancernych stacjonujących w Wilnie. 
Uczestniczył w wojnie obronnej Polski w 1939 roku jako porucznik  w 33 Dywizjonie Pancernym. Brał udział w bitwie pod Tomaszowem Lubelskim. Po bitwie został schwytany 
w niewolę, udało mu się uciec Niemcom, udał się do Wilna gdzie związał się z konspiracją. Podczas okupacji udało mu się zaliczyć dwa semestry na wydziale medycznym USB (Uniwersytet Stefana Batorego). Początkowo służył w 6 Wileńskiej Brygadzie Armii Krajowej. 

Od 1944 roku dowódca jednego z plutonów 5 Wileńskiej Brygady AK (do której został przeniesiony z 6 Wileńskiej Brygady). 5 Wileńska Brygada AK była nazywana \"Brygadą Śmierci\", walczyła zarówno przeciwko Niemcom jak i sowieckim partyzantom. Brał udział 
w wielu akcjach partyzanckich zdobywanie mostów, uwolnienie jeńców i tak dalej. Po demobilizacji swojego oddziału razem  z częścią kadry 5 Brygady starali się reaktywować część żołnierzy. W 1946 Pluciński wyjechał w pobliże miejscowości Wysokie Mazowieckie. W tym czasie został wydany władzom komunistycznym. Po krótkim czasie przebywania w areszcie został skazany na karę śmierci. Wyrok wykonano 28 czerwca 1946 w białostockim więzieniu.
Środkowa postać na zdjęciu.

Juliusz Idzikowski

 

"
        }
    }
 
    
}

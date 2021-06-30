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

    title: "Geoguessr"
/*
    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        }
    }
    */
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
           color: "Green"
           header: "GeoGuessr to gra wykorzystująca aplikację Google Street View. Zasada działania jest bardzo prosta, wybieramy daną kategorię np.: Polska, Rosja, zabytki, świat lub wiele innych. Gra przenosi nas w losowe miejsce w danej kategorii, a następnie naszym zadaniem jest na mapie zaznaczyć gdzie jesteśmy. Im bliżej prawidłowej lokacji zaznaczymy, tym więcej punktów otrzymamy.
"
         }
ElementListyNoImage
        {
           color: "Green"
           header: "Gra jest świetną odskocznią do wykorzystania podczas zdalnych zbiórek drużyny lub zastępu. Pozwala na przećwiczenie spostrzegawczości naszych harcerzy, a ta z pewnością przyda się podczas stacjonarnych zajęć z terenoznawstwa. Pomaga poznać różne kraje, części Polski czy roślinność danego regionu, a to wszystko przez chęci jak najdokładniejszego oznaczenia swojej lokacji."
         }
ElementListyNoImage
        {
           color: "Green"
           header: "Może być świetnym sposobem na współzawodnictwo między zastępami, podczas zdalnych zbiórek. Należy wtedy założyć kilka kont (chociaż to może być problematyczne) lub grać “turami”."
         }
ElementListyNoImage
        {
           color: "Green"
           header: "Zabawa jest płatna, ale możemy wykorzystać darmowy okres próbny, a następnie anulować subskrypcję (konieczne jest podanie numeru karty płatniczej). Do grania wspólnie najłatwiej wykorzystać udostępnianie ekranu na discordzie lub innej platformie."
         }
ElementListyNoImage
        {
           color: "Green"
           header: "Przed pokazaniem tej gry warto ją oczywiście sprawdzić samemu tak, abyśmy łatwiej kierowali współzawodnictwem naszych harcerzy. Możemy też w ramach zbiórki obejrzeć filmik na YouTube gracza GeoWizard, naprawdę jest on czarodziejem tej gry."
         }
ElementListyNoImage
        {
           color: "Green"
           header: "Juliusz Idzikowski"
         }
    }
}

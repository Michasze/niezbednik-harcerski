/* *   Copyright 2021 HPS <aplikacjahps@gmail.com> * *   This program is free software; you can redistribute it and/or modify *   it under the terms of the GNU Library General Public License as *   published by the Free Software Foundation; either version 2 or *   (at your option) any later version. * *   This program is distributed in the hope that it will be useful, *   but WITHOUT ANY WARRANTY; without even the implied warranty of *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the *   GNU Library General Public License for more details * *   You should have received a copy of the GNU Library General Public *   License along with this program; if not, write to the *   Free Software Foundation, Inc., *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Święty Jerzy"


    ColumnLayout {
        width: page.width
    Image {

            source: "image://images/swJerzy.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
    ElementListyNoImage
            {
                Layout.fillWidth: true
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Święty Jerzy- święty kościoła katolickiego, patron rycerzy, harcerzy, wędrowców, skautów, górników oraz kowali. Dzień Świętego Jerzego obchodzony jest 23 kwietnia. Święty Jerzy mógł być postacią historyczną, na co wskazują niektóre źródła.

Najbardziej znany jest z legendy według której miał walczyć ze smokiem.

Za czasów Cesarza Dioklecjana (284-305 naszej ery) Jerzy miał piastować godność naczelnika garnizonu. Gdy Cesarz wydał nakaz składania ofiar bogom rzymskim, Jerzy rozdał cały swój majątek ubogim, a następnie odmówił wykonania rozkazu, przez co naraził się na karę okrutnych tortur.

Inna wersja podaje, że podczas ustanowienia przez Cesarza dekretu nakazującego prześladowanie chrześcijan, Jerzy został zmuszony do wzięcia w nich udziału. Podobno miał potępić cesarski dekret za co został skazany na tortury.

Istnieje również legendarna wersja zdarzeń, podłóg której miał on pewnego razu przybyć do miasta Silena (na terenie obecnej Libii). Miasto miało być atakowane przez nikczemnego smoka mieszkającego w jeziorze. Mieszkańcy, aby udobruchać potwora, składali ofiary ze zwierząt lub ludzi, kolejne ofiary wybierali w drodze losowania. Pewnego razu wylosowano księżniczkę, Święty Jerzy stanął w obronie niewiasty i w imię Chrystusa ruszył na smoka. Powierzając się opiece Boga zadał bestii dwa ciosy i zabił smoka.

Atrybutami Świętego Jerzego są miecz i lanca. Na obrazach często przedstawiany jest podczas pojedynku ze smokiem.

Juliusz Idzikowski"
        }
    }
 
    
}

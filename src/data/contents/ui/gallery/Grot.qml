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

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Stefan Rowecki pseudonim \“Grot\”"

    ColumnLayout {
        width: page.width
        Image {
            source: "image://images/Grot.jpg,10"
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
            header: "Stefan Rowecki pseudonim “Grot” urodzony w 1895 roku w Piotrkowie Trybunalskim, generał dywizji Wojska Polskiego, Dowódca Armii Krajowej, Komendant Związku Walki Zbrojnej.

Podczas nauki w gimnazjum był współorganizatorem pierwszego zastępu skautowego. Zastęp ten był wizytowany przez Andrzeja Małkowskiego i uzyskał pozytywną opinię. 

Od 1912 roku studiował w Warszawie w Szkole Mechaniczno-Technicznej.
Uczęszczał do organizacji niepodległościowej \"Polskie drużyny strzeleckie\". Podczas I wojny światowej służył w Legionach Polskich. 

W okresie międzywojennym kontynuował karierę wojskową. W tym czasie był również redaktorem i założycielem kwartalnika \"Przegląd Wojskowy\".

Na krótko przed wybuchem II wojny światowej został mianowany dowódcą Warszawskiej Brygady Pancerno-Motorowej. Bardzo prężnie działał na rzecz jak najlepszego wyszkolenia i zgrania swojej brygady. Niestety miał zbyt mało czasu, aby mógł osiągnąć oczekiwany poziom. W czasie kampanii wrześniowej jego brygada brała udział w obronie środkowej Wisły. Po kapitulacji Armii \"Lubin\" do której należała jego brygada, udało mu się uciec do Warszawy.

W maju 1940 roku mianowano go komendantem ZWZ (Związek Walki Zbrojnej) na Obszar Warszawski. Już 30 czerwca tego samego roku został powołany na komendanta głównego ZWZ. Jako komendant powoływał różne oddziały zbrojne które miały walczyć z okupantem. Między innymi oddziały dywersyjne takie jak \"N\" czy \"Wachlarz\". Doprowadził do połączenia różnych organizacji podziemia w jedną organizację wojskową o nazwie Armia Krajowa (powstała 14 lutego 1942). Został komendantem AK. W styczniu 1943 roku powołał Kierownictwo Dywersji (Kedyw). Jako dowódca był przeciwny nawiązywaniu współpracy z PPR (komunistycznym podziemiem w Polsce). 
Niemcy uparcie polowali na Roweckiego. 

Jego portret wisiał na alei Szucha. Każdy z funkcjonariuszy gestapo miał obowiązek obejrzeć ten obraz, aby być w stanie rozpoznać i pojmać Roweckiego.

Mimo to Rowecki poruszał się po Warszawie bez obstawy. Zgadzał się na nią jedynie na miejscach spotkań z różnymi innymi dowódcami. 

Informacje o jego miejscu położenia wykryła agentura NKWD. Wywiad Rosyjski podrzucił te dane Gestapo. Ostatecznie jednak został zdradzony przez agentów Gestapo, ukrytych w szeregach AK. Został aresztowany 30 czerwca 1943 roku. Został przetransportowany do Berlina. Tam odrzucił propozycję współpracy z Niemcami, trafił do obozu koncentracyjnego.

Został zgładzony 2 sierpnia, z rozkazu Henricha Himmler. Rozkaz został wydany w furii na wieść o wybuchu Powstania Warszawskiego."
            }
                ElementListyNoImage
                {
                    Layout.fillWidth: true
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    header: "Juliusz Idzikowski"
        }
    }
}

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

    title: "Jan Borysewicz"
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
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Jan Borysewicz pseudonim \"Krysia\", \"Mściciel\". Urodzony 12 września 1913 roku
w Dworczanach.

Rodzina Borysewiczów mieszkała na Kresach Wschodnich od wielu pokoleń. Ojciec Jana był rolnikiem. Rodzina mieszkała w drewnianym domu. Borysewicz uczył się dobrze, ukończył Seminarium Nauczycielskie. 

Później rozpoczął zawodową służbę wojskową. W 1939 roku walczył w Armii \"Prusy\". Po jej klęsce przedostał się do Wilna, skąd próbował się przedostać do Armii Polskiej. Na granicy został aresztowany przez NKWD i uwięziony między innymi w Brześciu. Uciekł z więzienia po wybuchu wojny sowiecko-niemieckiej. Uciekł do Wasiliszek, gdzie związał się z konspiracją. 
W 1941 roku złożył przysięgę ZWZ-AK.

Dowodził oddziałem partyzanckim nr 314. W połowie 1943 roku jego oddział liczył zaledwie siedmiu ludzi, rok później liczył już ponad pięciuset żołnierzy. Tworzyli świetnie zgrany batalion. (II batalion 77. Pułku Piechoty AK). Jego batalion przeprowadził około 100 akcji przeciw Niemcom. Udało im się nawet zdobyć miasto Ejszyszki. Na początku 1944 kontrolował cały teren który mu podlegał. Chłopi płacili już okupantowi kontyngentów. Później został mianowany dowódcą zgrupowania \"Północ\".

Batalion Borysewicza w drodze do Wilna (podczas operacji \"Ostra Brama\") atakował mniejsze oddziały niemieckie. Oddział nie brał udziału w samym szturmie z powodu braku dokładnych rozkazów.

Oddziały Borysewicza uniknęły rozbrojenie przez Wojska Sowieckie i ukryły się w Puszczy Rudnickiej.

Porucznik wierzył, że dojdzie do jakiegoś porozumienia w sprawie Kresów. Dlatego postanowił kontynuować walkę na swoim pierwotnym terenie działań.

Podczas walk z Sowietami przybrał pseudonim \"Mściciel\". W nocy z 6 na 7 grudnia 1944 r. osobiście poprowadził oddział 150 partyzantów na miasteczko Ejszyszki. Odbito 34 więźniów zatrzymanych przez NKWD, zniszczono dokumentację gminną i punkt sowieckiej agentury. Podczas całej akcji zginęło 2 partyzantów.

Sowieci za wszelką cenę chcieli się go pozbyć. Jego oddział wpadł w zasadzkę, podczas której Borysewicz poległ. Partyzantom nie udało się zabrać ciała z pola walki. Sowieci obwozili je po wielu miastach i wioskach. Nie wiadomo gdzie został pochowany. 

Pośmiertnie został odznaczony Orderem Virtuti Militari (Męstwu Wojskowemu) 5 klasy.

Juliusz Idzikowski
 

"
        }
    }
 
    
}

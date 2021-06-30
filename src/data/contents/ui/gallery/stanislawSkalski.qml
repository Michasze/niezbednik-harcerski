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
    title: "Stanisław Skalski"
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
         source: "qrc:/contents/ui/img/Stanislaw_skalski.jpg"   
          Layout.fillWidth: true
         Layout.maximumHeight: 400

         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Ukończył Szkołę Podchorążych Lotnictwa w Dęblinie. Podczas wojny obronnej Polski w 1939 roku służył w 142 Eskadrze Myśliwskiej. Następnie przedostał się do Anglii gdzie służył w dywizjonach 306 i 316,317. Brał udział w bitwie o Anglię, gdzie latał myśliwcem Hawker Hurricane. Udało mu się strącić kilka samolotów przeciwnika. Podczas jednej z misji w bitwie o Anglię został zestrzelony. Udało mu się wyskoczyć z płonącej kabiny samolotu i otworzyć spadochron. Odniósł obrażenia w wyniku których nie mógł przez pewien czas brać udziału w walkach.

Następnie służył w dywizjonie 306 z którym wykonywał loty bojowe nad okupowaną przez III Rzeszę Europą Zachodnią.  W tym czasie w Royal Air Force został mianowany kapitanem, a Wojsku Polskim kapitanem. 

Później dowodził eskadrą zwaną \"Cyrkiem Skalskiego\" w Tunezji. Piloci  Cyrku Skalskiego potrafili na przykład startować jednocześnie, normalnie samoloty startują osobno i dopiero 
w powietrzu formują szyk. Mieli oni również świetny stosunek zestrzeleń do strat własnych.  W 1944 roku dowodził 133 Skrzydłem Myśliwskim, które osłaniało żołnierzy walczących podczas D-Day w Normandii. 

Podczas całej swojej służby zestrzelił 18 samolotów oraz zaliczono mu dwa zestrzelenia zespołowe. Miał najwięcej zestrzeleń podczas II Wojny Światowej z polskich pilotów.  

W 1947 roku zdecydował się powrócić do Polski, gdzie służył przez pewien czas w wojsku jako technik. Wskutek oskarżeń o szpiegostwo został skazany na karę śmierci, zamienioną na dożywocie. Został zwolniony z więzienia w 1956 roku i rehabilitowany podczas tak zwanej odwilży gomułkowskiej. Powrócił do wojska, gdzie przeszedł szkolenie na samolotach odrzutowych. W 1972 roku na własną prośbę został przeniesiony do rezerwy. W 1988 roku przez Radę Ministrów został mianowany generałem brygady.

W okresie PRL nie należał do żadnej partii politycznej. 

Pod koniec życia był bardzo schorowany i nie był w stanie samodzielnie funkcjonować. Został okradziony przez swoich opiekunów, w wyniku czego stracił własne mieszkanie. Zamieszkał w domu pomocy społecznej.
Zmarł 12 listopada 2004 roku.


Juliusz Idzikowski

"
        }
    }
 
    
}

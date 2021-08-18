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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Kamień pamiątkowy"
    ColumnLayout {
        width: page.width
        Image {
         source: "qrc:/contents/ui/img/kamien.jpg"   
          Layout.fillWidth: true
         Layout.maximumHeight: 400
         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                color: "Black"
            header: "Pomnik wykonany z granitowego kamienia, na którym umieszczona jest tablica pamiątkowa, cały pomnik znajduje się u zbiegu ulic Prusa i Orzeszkowej, na skwerze “Ludzi ze znakiem P.”  Został on wzniesiony z inicjatywy Dzielnicowej Rady Przyjaciół Harcerstwa (obecnie dzielnica Ołbin), na dwudziestą rocznicę powstania Hufca ZHP Wrocław-Śródmieście. Pomnik został wykonany przez Tadeusza Hudźca - wrocławskiego kamieniarza. Autorem tekstu był ówczesny komendant hufca Harcmistrz Andrzej Barski pierwotnie proponował on fragment książki “Związek Harcerstwa Polskiego w Niemczech” Kapiszewskiego, ale fragment ten został odrzucony.<br><br>

Tekst odrzucony: <br>
<i>“Tym, którzy odeszli i tym, którzy przetrwali, działaczkom i działaczom byłego Związku Harcerstwa Polskiego w Niemczech.”<br>
~ Kapiszewski</i><br><br>

Tekst umieszczony na pomniku:<br>
<i>“Harcerzom i instruktorom poległym w walce o polskość Wrocławia w 20 rocznicę powstania Hufca ZHP Wrocław-Śródmieście Maj 1977”</i><br><br>

Okres międzywojenny był dla Polaków we Wrocławiu czasem wzmożonego działania. W 1927 roku powstała drużyna harcerska założona przez Druha Wiktora Urbanowicza. Szybko stała się jedną z najbardziej aktywnych polskich organizacji działających na terenie miasta. Drużyna organizowała wycieczki śladami polskości Wrocławia (Breslau). Brała udział w uroczystościach organizowanych przez polonię. Sytuacja zmieniła się po dojściu Adolfa Hitlera i NSDAP do władzy; harcerze spotkali się z coraz większymi represjami. Zakazano noszenia mundurów harcerskich, działanie ZHP kontrolowane było przez gestapo. W momencie wybuchu wojny starsi harcerze zostali aresztowani, założyciel drużyny zaginął bez wieści, współzałożyciel Tadeusz Grajkowski i ostatni drużynowy Władysław Zarembowicz zginęli w obozach koncentracyjnych.<br><br><br>

pwd. Juliusz Idzikowski  <br><br>

Bibliografia:<br>
<i>Antkowiak Zygmunt, Pomniki Wrocławia, Wrocław, Ossolineum, 1985,  ​ISBN 83-04-01953-1</i>"
        }
    }
 
    
}

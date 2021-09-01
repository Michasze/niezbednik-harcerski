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

    title: "Jak wybrać odpowiedni śpiwór?"

    ColumnLayout {
        width: page.width
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Przed wyborem swojego pierwszego śpiwora stajemy zazwyczaj już na samym starcie naszej harcerskiej kariery, dlatego nie mamy jeszcze wiedzy i doświadczenia które jest bardzo przydatne w jego wyborze. Ten mały poradnik kieruję do tych wszystkich którzy mają wątpliwości jaki śpiwór wybrać oraz do drużynowych i zastępowych, aby Ci mogli go w łatwy sposób wykorzystać do udostępnienia tej porcji wiedzy swoim harcerzom.<br><br>
Wyboru śpiwora nie powinniśmy lekceważyć, zależy od tego nie tylko nasz komfort, ale również zdrowie. Co powoduje, że jeśli pierwszy śpiwór zakupimy zły, to sumarycznie poniesiemy większe koszty, bo zamiast od razu kupić odpowiedni śpiwór nawet ciut droższy kupiliśmy dwa śpiwory.<br><br>
Większość śpiworów dostępnych w sklepach jest opisana w kilku właściwościach i to właśnie na tych cechach śpiwora powinniśmy się skupić."
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Kształty śpiwora, są na dobrą sprawę trzy. Śpiwór koperta, mumia lub super bajerancki kurtka+śpiwór na nogi.<br><br>
Kształt <b>koperty</b> ma wady i zalety. Jego największym plusem jest możliwość wykorzystania go jako kołdry lub łączenia kilku śpiworów w jeden. Wadą natomiast jest słabsze przyleganie do ciała i brak kaptura co powoduje większe straty ciepła. Osobiście zrezygnowałbym z wykorzystywania takiego śpiwora w działaniach harcerskich, zwłaszcza jeśli biwaki, obozy czy rajdy macie w innych warunkach niż w szkoły czy schroniska.<br><br>
<b>Mumia</b> chyba najbardziej uniwersalny kształt śpiwora, bardzo dobrze sprawdzi się na wszelkich biwakach pod namiotami czy na hamakach. Dla niektórych może być ciut mniej wygodny jeśli chodzi o wykorzystywanie, a dodatkowo należy zwrócić uwagę na dobranie odpowiedniego rozmiaru śpiwora, zarówno na długość jak i szerokość, tak aby wygodnie się nam w nim leżało i żebyśmy nie mieli problemów  w zakładaniu kaptura mumii na głowę.<br><br>
Bajerancka <b>kurtka</b> plus śpiwór na nogi wydaje się być bardzo fajnym rozwiązaniem, chociaż nie stosujemy jej jako kołdry, ale niestety jest również bardzo droga."
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Drugim ważnym kryterium jest wybór odpowiedniego <b>komfortu termicznego</b>. Nie należy patrzeć na parametr \"temperatura ekstremalna\" jest określa, że poniżej tej wartości można doświadczyć hipotermii leżąc w takim śpiworze. Ważniejszymi są natomiast <b>temperatura komfortu</b> oraz <b>temperatura maksymalna</b>. Niestety sytuacja nie jest taka prosta, każdy z nas trochę inaczej czuje temperaturę, dodatkowo niektóre zmienne czynniki mają wpływ na nasz komfort termiczny, np. ruch powietrza, wilgotność powietrza, nasza tkanka tłuszczowa czy zmęczenie.<br><br>
Jeśli chodzi o mnie zawsze zakładam, że potrzebuję komfortu termicznego niższego o około 3-5 stopni, ale oczywiście jest to indywidualny wybór, nie jest dobrze, jeśli jest nam zbyt gorąco w śpiworze.<br><br>
Kolejnym parametrem jest rozmiar, część firm udostępnia swoje śpiwory w różnych rozmiarach, a niektóre produkują specjalne \"rozszerzenia do nich\", tak aby były komfortowe dla większych osób. Dobrze dobrany rozmiar pozwala wam komfortowo wchodzić i wychodzić ze śpiwora, ale nie możemy też kupić zbyt dużego śpiwora, ponieważ nie będzie on wystarczająco dobrze izolował.<br><br>
I ostatnie prawdopodobnie najważniejsze, czyli wypełnienie. Rodzajów wypełnienia jest tyle ile jest gwiazd na niebie, praktycznie każda firma tworzy jakieś własne wypełnienie, chociaż tak naprawdę liczy się to z czego dane wypełnienie zostało wyprodukowane. W zasadzie wyróżniamy dwa rodzaje: <b>puch syntetyczny</b>, <b>puch naturalny</b>. Im więcej wypełnienia tym cieplejszy śpiwór."
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<b>Puch syntetyczny</b> to prawdopodobnie najpowszechniejszy rodzaj puchu."
     }
     ElementListyNoImage
     {
        color: "green"
        align: 0
         header: "Zalety:"
     }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"●   tańszy<br>
●  nie traci aż tak właściwości cieplnych kiedy zmoknie<br>
●  nie jest tak trudny w przechowywaniu (chociaż panują tu różne opinie)<br>
●  łatwiejsze pranie"
     }
     ElementListyNoImage
     {
        color: "brown"
        align: 0
         header: "Wady:"
     }
         ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"●   jest tak wiele rodzajów tego puchu, że ciężko powiedzieć, że jest dobry lub zły, zależy od konkretnego modelu śpiwora<br>
●   dość duże rozmiary<br>
●  cięższy"
     }
    ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<b>Puch naturalny</b> zazwyczaj pojawia się w droższych śpiworach."
     }
     ElementListyNoImage
     {
        color: "green"
        align: 0
         header: "Zalety:"
     }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"●  lepsze właściwości termiczne przy niższym rozmiarze<br>
● lżejszy"
     }
     ElementListyNoImage
     {
        color: "brown"
        align: 0
         header: "Wady:"
     }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"●   nie należy go przechowywać zbyt długo w pokrowcu kompresyjnym<br>
●  droższy<br>
●  traci właściwości przez przemoknięcie<br>
●  trudniejszy w praniu, potrzeba specjalnych środków"
     }
    ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Są również drobne elementy na które warto zwrócić uwagę takie jak: zakładki na zamek, które zabezpieczają nas przed uciekaniem ciepłego powietrza, dodatkowo śpiwór może posiadać wewnętrzną kieszeń, a ta sprawdza się nieźle aby schować w niej telefon lub ogrzewacz chemiczny (chociaż ten lepiej rzucić w nogi), łączenie ze sobą dwóch śpiworów, zakładki w kapturze mumii i ściągacz. Warto szukać <b>zamków YKK</b> uchodzą one za bardzo dobre.<br><br>
Ciekawym rozwiązaniem jest też połączenie śpiwór+materac, dzięki temu materac jest stabilny i nie ucieka nam spod śpiwora, a my mamy dobrą izolację od podłoża. Niestety taki zestaw jest dość pokaźnych rozmiarów. Pamiętajcie, żeby izolować się od podłoża karimatą, materacem czy matą.<br><br>
Mam nadzieję, że ten poradnik pomoże wam się odnaleźć w tym skomplikowanym świecie wyboru śpiwora."
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

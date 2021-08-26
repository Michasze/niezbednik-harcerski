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

    title: "Wybór karimaty, maty lub materaca"


    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            align: 0
            header: "<p>Wybór podkładu pod śpiwór jest prawie tak samo ważny jak wybór śpiwora, najlepiej śpi się jeśli połączy się dobry śpiwór i dobry podkład pod niego. </p> 
<p>Prawda jest taka, że można być dobrze odizolowanym nawet na stercie gałęzi i liści, ale to temat na inny poradnik. </p>
<p>W zasadzie są trzy typowe izolacje od podłoża: karimaty, maty i materace. Wszystkie te rzeczy mają zarówno wady jak i zalety i nie ma rozwiązania idealnego.</p> 
"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<h4>Najpopularniejsze są oczywiście karimaty.</h4>"
            align: 0
        }
        ElementListyNoImage
        {
            color: "green"
            align: 0
            header: "Plusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"<p>●    Cena - karimaty są zazwyczaj tanie. Chociaż te najtańsze są niskiej jakości i mają też bardzo niskie właściwości izolacyjne<p>
<p>●    Odporność na uszkodzenia - karimatę możemy przebić i nie traci ona na właściwościach izolacyjnych, chociaż traci ona ich trochę kiedy postawimy na niej rozgrzaną menażkę<p>
<p>●    Dźwięk - mniej szeleści niż materac</p>
<p>●    Ogniska - dobrze nadaje się na ogniska</p>"
        }
        ElementListyNoImage
        {
            color: "brown"
            align: 0
            header: "Minusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header: "<p>●    Szerokość - większość karimat jest dość wąska przez co łatwiej się z nich zsunąć</p>
<p>●    Rozmiar - karimaty po złożeniu są bardzo duże im lepiej izolująca karimata tym grubsza, a przez to też większa i cięższa. A to sprawia, że nie są najwygodniejsze do przenoszenia w plecaku.</p>
<p>●    Kiepska wygoda - karimaty przez to, że jest dość cienka mamy słabą izolację od na przykład kamieni czy innych przedmiotów pod karimatą.</p>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<h4>Maty samopompujące</h4>"
            align: 0
        }
        ElementListyNoImage
        {
            color: "green"
            align: 0
            header: "Plusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"<p>●    Izolacja - można znaleźć łatwiej takie o lepszych właściwościach izolacyjnych niż karimata </p>
<p>●    Wytrzymałość - kiedy taka mata zostanie przebita nie traci całości swoich właściwości izolacyjnych, a jedynie ich część.</p>
<p>●    Wygoda - jest wygodniejsza niż karimata, niektórzy uznają za wygodniejszą niż materac.</p>
<p>●    Dźwięk - mniej szeleści niż materac</p>"
        }
        ElementListyNoImage
        {
            color: "brown"
            align: 0
            header: "Minusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header: "<p>●    Waga - zazwyczaj są cięższe niż materace i karimaty</p>
<p>●    Rozmiar - często większe po skompresowaniu niż materace, ale mniejsze niż karimaty.</p>
<p>●    Składanie - często zdarza się tak, że ciężko jest całkowicie spompować taką karimatę, zwłaszcza w tańszych karimatach.</p>
<p>●    Ogniska - niezbyt nadaje się na ogniska</p>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<h4>Materace dmuchane</h4>"
            align: 0
        }
        ElementListyNoImage
        {
            color: "green"
            align: 0
            header: "Plusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header: "<p>●    Waga - zazwyczaj jest to najlżejsze rozwiązanie </p>
<p>●    Wygoda - dość wygodne, nie czuć podłoża</p>
<p>●    Szerokość - zazwyczaj lepsza niż w karimatach</p>
<p>●    Składanie - łatwo się składa i wygodnie przenosi</p>"
        }
        ElementListyNoImage
        {
            color: "brown"
            align: 0
            header: "Minusy:"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header:"<p>●    Wytrzymałość - jeśli taki materac zostanie przebity traci właściwości izolacyjne</p>
<p>●    Dźwięk - jeśli nie jest w pełni napompowany może szeleścić.</p>
<p>●    Ogniska - definitywnie nie zabierać na ogniska</p>"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            align: 0
            header: "<br>Ważne rzeczy przy wyborze:<br><br>
●    R-Value to współczynnik izolacji im wyższy tym lepsza izolacja, ale zazwyczaj też wyższa cena.<br><br>
●    Jeśli chcemy spać w hamaku to moim zdaniem najlepszy będzie materac, poniważ nadaje hamakowi kształtu i lepiej się w nim układa, dzięki czemu nie wysuwa się spod nas.<br><br>
●    Jeśli mamy materac, warto mieć zestaw naprawczy który pozwoli nam go załatać."
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

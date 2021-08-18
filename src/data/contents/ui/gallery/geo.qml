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
    title: "Harcerska geoskrzynka"

    ColumnLayout {
        width: page.width
        HPSImage {
         source: "image://images/geo.jpg,10"
        }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Wstęp</b></P>"
         }
         ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Geocaching to gra, która dla harcerzy jest niezwykle wartościowa. Możemy poznać wiele historii, odwiedzić nowe miejsca oraz nauczyć się spostrzegawczości, sprytu i pobudzić do działania naszą pomysłowość.</p>

<p>Jeśli chcemy zacząć tworzyć geoskrzynki (kesze), warto najpierw trochę ich znaleźć, ułatwi to nam wymyślenie tego jak taki kesz może wyglądać oraz sprawi, że nasze kesze będą ciekawsze. Chociaż dobrze wprawiony drużynowy zazwyczaj szybko poradzi sobie ze znajdowaniem skrytek i ich chowaniem.</p>"
        }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Jak wybrać miejsce na skrytkę?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Przede wszystkim powinno być ono ciekawe. Może być to na przykład: piękny widok, historyczne wydarzenia w okolicy, rzadkie gatunki drzew, niezwykłe formacje skalne i tak dalej. Chociaż zdarzają się również przygotowane całe \"ścieżki\" z geokeszy które mają być zachętą do spaceru np. po okolicznym lesie.</p>

<p>Dodatkowo należy sprawdzić czy w tym miejscu lub w jego pobliżu nie ma już jakiejś skrytki, odległość między nimi to minimum 161 metrów.</p>

<p>Kiedy wybierzemy miejsce należy znaleźć konkretne miejsce na umiejscowienie naszej skrytki, trzeba oczywiście zastanowić się czy jest ono wystarczająco “zakamuflowane” i pozwala na bezpieczne podjęcie skrzynki.</p>

<p>Należy zapisać lokalizację, najłatwiej to zrobić dodając pinezkę na mapach Google. Dobrze jest sprawdzić zasięg, żeby nasza lokalizacja była możliwie jak najdokładniejsza.</p>"
         }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Jak wybrać pojemnik na skrytkę?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Najczęściej spotyka się plastikowe pojemniki i nie jest to pozbawione przyczyny, szklane pojemniki bardzo łatwo rozbić, a metalowe rdzewieją.</p>
<p>Dobrymi przykładami pojemników są: eppendorfki, plastikowe pojemniki z racji żywnościowych po tabletkach paliwowych, tubka po witaminie C lub pojemniki na jedzenie.</p>
<p>Warto pamiętać o tym, aby pojemnik był w miarę odporny na warunki atmosferyczne zwłaszcza na wodę. Dodatkowo można wrzucić logbooka w dodatkowy woreczek strunowy, aby ten był lepiej chroniony.</p>
<p>Ciekawym rodzajem skrytek są tak zwane magnetyki, czyli skrytki z magnesem. Przyczepia się je do metalowych elementów na przykład poręczy.</p>
<p>Rozmiary skrytek są dokładnie opisane na stronie geocaching.com</p>"
         }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Co powinno się znajdować w skrytce?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Jedyną obowiązkową rzeczą w skrytce jest logbook, czyli kartka na której się wpisujemy.</p>
<p>Jeśli nasza skrytka jest większa niż mikro warto w niej zawrzeć certyfikat dla pierwszego znalazcy. A taki najlepiej wykonać samemu. Długopis lub ołówek. Warto umieścić w niej różne \"fanty na wymianę\".</p>
<p>Jeśli rozmiar kesza na to pozwala to warto nakleić na pojemnik informację o tym, że jest on częścią gry.</p>
<p>Wszystkie potrzebne szablony znajdziecie na stronach geocaching.com i geocaching.pl. Logbooka wystarczy wydrukować, chociaż są też sklepy, które sprzedają go w formie małych notatników.</p>"
         }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Jak opisać skrytkę?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Opis skrytki powinien zawierać informację o tym co jest ciekawego w jego okolicy. Dla przykładu: historię wydarzeń które spowodowały postawienie w tym miejscu pomnika, opis danego gatunku roślin itd.</p>
<p>Jeśli do wyjęcia logbooka potrzebna jest pęseta należy to uwzględnić w opisie. Opisujemy też czy w środku znajduje się długopis i czy jest miejsce na wymianę fantów.</p>"
         }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Jak umieścić skrytkę w \"grze\"?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>Należy wejść na stronę geocaching.com i znaleźć zakładkę hide a cache. Następnie wybrać wpisać koordynaty naszego miejsca.</p>
<p>Wybrać rozmiar pojemnika i przejść kolejne  kroki.</p>
<p>A następnie wysłać naszą skrytkę do <b>recenzji</b>.</p>"
         }
        ElementListyNoImage
        {
           color: "cornflowerblue"
           header: "<P><b>Jak napisać wiadomość do recenzenta?</b></P>"
         }
        ElementListyNoImage
        {
           color: "black"
           alignH: Text.AlignJustify
           header: "<p>W wiadomości do recenzenta należy opisać jak wygląda skrzynka, gdzie i jak jest schowana oraz nasze możliwości serwisowania skrytki. Czasem kesz zniknie, a innym razem zamoknie i musimy mieć możliwość jego wymiany, dlatego nie warto zakładać skrytek na obozach kiedy jesteśmy 400 kilometrów od domu i nie będziemy mogli tam zajrzeć.</p>
<p>Skrytka zostanie zrecenzowana w maksymalnie 7 dni. Chociaż mi zdarzało się otrzymać pozytywną recenzję po kilku godzinach. </p>"
         }
        ElementListyNoImage
        {
           color: "Darkgreen"
           header: "<P>Juliusz Idzikowski</P>"
         }

    }
 
    
}

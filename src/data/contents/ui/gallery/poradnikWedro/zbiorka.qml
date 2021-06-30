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
import ".."

HPSPage {
        id: rozdzial6
        Layout.fillHeight: true
        title: qsTr("Zbiórka od kuchni")
        ColumnLayout {
                    ElementListyNoImage
          {
             color: "#FF003c00"
//             align: 0
             header: "<h3><p>Cechy dobrej zbiórki:</p></h3>
<p>1.<b> interesująca </b> - zbiórka powinna ciekawić harcerzy. Nie powtarzacie kolejny raz węzłów - przy ich pomocy robicie siatkę maskującą. Nie czytacie alfabetu morse'a z kartki — poznajecie sposoby na jego skuteczną naukę. Nie rysujecie stosów ogniskowych na kartce - idziecie do lasu i robicie je realnie. Wędrownicy wychodzą poza ramy! Po to są niezliczone formy pracy, żeby ugryźć temat z zupełnie innej strony, rozszerzyć go, uczynić bardziej ciekawym.</p>

<p>2. <b> \„wychodząca z czterech ścian\” </b> - chodzi tu o wychodzenie w teren. Mając w pamięci Kodeks Wędrowniczy - podstawą wędrowniczych zbiórek jest wyjście w świat i wędrówka. Nie istnieje zła pogoda - tylko złe ubranie. Róbcie zbiórki w lesie, parku, siedzibie hufca, w siedzibie drużyny, odkryjcie ciekawe miejsce w mieście. Możliwości Jest bez liku!</p>

<p>3. <b>aktywna</b> - unikaj prelekcji i dyktowania informacji np. o historii harcerstwa. Zamiast godziny siedzenia i pasywnego słuchania, niech Twoi wędrownicy wniosą coś realnego do świata - zamiast szukania w Internecie informacji o Armii Krajowej, niech znajdą w swojej okolicy żyjących Kombatantów - porozmawiajcie z nimi. Niech wędrownicy się wykażą, rozpal w nich chęć poszerzenia wiedzy.</p>
             "
          }
                    ElementListyNoImage
          {
             color: "#FF003c00"
//             align: 0
             header: "<h3><p>Zasady dobrej zbiórki:</p></h3>
<p>1. <b>celowość</b> - każda zbiórka musi mieć jasno określone cele. Co chcesz przekazać swoim harcerzom? Co będą potrafili po tej zbiórce? Jakie zmiany w nich zajdą? Przykładowo celem może być: poznanie.. rozwiązanie... kształtowanie... zapoznanie... poszukiwanie...</p>
<p>2. <b>zastępowy też się bawi</b> - gdy dajesz harcerzom zadanie, uczestnicz w nim. Nie podpieraj ścian! Ty też jesteś wędrownikiem, rozwijaj się razem z nimi. Jeśli Ty uważasz daną rzecz za nudną, to jak możesz chcieć, żeby zaciekawiła ona innych?</p>
<p>3. <b>zmienność form</b> - nikt nie lubi przez całą godzinę siedzieć na tyłku walcząc ze sobą, żeby nie przysnąć. Nikt też nie chce całą zbiórkę biegać i padać na twarz. Chodzenie samo w sobie nie jest wędrówką - poznajcie region, rzadko odwiedzane miejsca. Jeżeli akurat nie wędrujecie - formy muszą się przeplatać: aktywna, bierna, aktywna, bierna. Raz siedzimy, a raz wstajemy. Proste?</p>
<p>4 <b>coś nowego, coś starego</b> - dobrą praktyką jest na początku zbiórki powtórzyć najważniejsze wiadomości z poprzedniej lub tak wpleść je w obecny temat żeby podczas wykonywania nowych zadań wykorzystali umiejętności zdobyte ostatnio.</p>
             "
          }
                    ElementListyNoImage
          {
             color: "#FF003c00"
//             align: 0
             header: "<b>To tak na dobry początek.. ale na zbiórkę wędrowniczą nie ma gotowego przepisu. Sami tworzycie wasze zbiórki, w zależności od potrzeb</b>"
          }
        }
    }

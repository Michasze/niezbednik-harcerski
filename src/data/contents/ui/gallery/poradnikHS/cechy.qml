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
import ".."

HPSPage {
        id: rozdzial6
        Layout.fillHeight: true
        title: qsTr("Cechy i zasady dobrej zbiórki")
        ColumnLayout {
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Pamiętasz jeszcze opowieść o moście z poprzedniego rozdziału? Dobrze. A pamiętasz przęsła tego mostu, jego szkielet? Ten szkielet to cechy i zasady dobrej zbiórki. Bez nich nawet najbardziej kreatywne formy pracy staną się żmudne i nieciekawe."
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Cechy dobrej zbiórki:</b>"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignLeft
            header: "<p>1. interesująca - zbiórka powinna ciekawić harcerzy. Czasem trzeba przypomnieć stare tematy np. z technik harcerskich — co nie znaczy, że mamy wałkować to samo w ten sam sposób czwarty rok z rzędu. Po to są niezliczone formy pracy, żeby ugryźć temat z zupełnie innej strony, rozszerzyć go, uczynić bardziej ciekawym.</p>

<p>2. „wychodząca z czterech ścian” - chodzi tu o wychodzenie w teren. Po jakimś czasie siedzenie w harcówce staje się nie do wytrzymania - nie tylko w ładną pogodę wychodźcie do parku, lasu, zróbcie grę miejską. Nie musimy zamykać się tylko w swojej dzielnicy! Nie istnieje zła pogoda - tylko złe ubranie. Róbcie zbiórki w siedzibie hufca, w siedzibie drużyny, odkryjcie ciekawe miejsce w mieście. Możliwości jest bez liku!</p>


<p>3. aktywna - unikaj prelekcji i dyktowania informacji np. o histori harcerstwa. Zamiast godziny siedzenia i pasywnego słuchania, zrób grę z kodami QR, albo zaszyfrowanymi listami o Szarych Szeregach, schowanymi na osiedlu.</p>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<h3>Zasady dobrej zbiórki:</h3>"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: 0
            header: "<p>1. celowa - każda zbiórka musi mieć jasno określone cele. Co chcesz przekazać swoim harcerzom? Co będą potrafili po tej zbiórce? Jakie zmiany w nich zajdą? Przykładowo celem może być: poznanie... rozwijanie... kształtowanie... zapoznanie... poszukiwanie...</p>

<p>2. zastępowy też się bawi — gdy dajesz harcerzom zadanie, uczestnicz w nim. Nie podpieraj ścian! HS-y muszą widzieć, że to co chcesz, żeby zrobili, jest interesujące również dla Ciebie. Jeśli Ty uważasz daną rzecz za nudną, to jak możesz chcieć, żeby zaciekawiła ona innych?</p>

<p>3. zmienność form - nikt nie lubi przez całą godzinę siedzieć na tyłku walcząc ze sobą, żeby nie przysnąć. Nikt też nie chce całą zbiórkę pląsać i padać na twarz. Formy muszą się przeplatać: aktywna, bierna, aktywna, bierna. Raz siedzimy, a raz wstajemy. Proste?</p>

<p>4. coś nowego, coś starego - dobrą praktyką jest na początku zbiórki przypomnieć harcerzom wiadomości z poprzedniej lub tak wpleść je w obecny temat, żeby podczas wykonywania nowych zadań HS-i wykorzystali umiejętności zdobyte ostatnio. Dzięki temu odświeżą wiedzę i ona im „nie ucieknie”.</p>

<p>5. tempo - stopniuj napięcie! Najciekawszą część zbiórki zrealizuj na końcu, aby harcerze jej wyczekiwali do tego momentu. Pozostaw też pewien niedosyt — niech wewnętrzna ciekawość motywuje ich do przyjścia na kolejną zbiórkę!</p>"
        }
        }
    }

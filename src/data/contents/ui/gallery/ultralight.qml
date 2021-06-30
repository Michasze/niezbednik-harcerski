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
import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage

{
    title: "Ultralight"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        //visible: !Kirigami.Settings.isMobile ? true : false
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: Units.smallSpacing

        Controls.Label {
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignJustify
            text: "Im lżejszy plecak tym lepiej dla naszych pleców. No chyba, że weźmiemy zbyt cienki śpiwór i zmarzniemy śpiąc na hamaku, wtedy nasze plecy dostaną w kość jeszcze bardziej. Jak to mawia jeden z Druhów w moim hufcu: “Tak was na starość powykręca za to marznięcie, że się nie pozbieracie.” 

I chyba w tym wstępie zawiera się cały problem ultralight owego wędrowania. Z jednej strony super jest mieć buty, które ona ważą tyle co puszka coli, a z drugiej strony takie buty będą miały gorszą amortyzację i będą mniej wygodne. Musimy potrafić wyważyć to co zapewni nam odpowiedni komfort w stosunku do tego ile waży. Nie ma co targać ze sobą całej wielkiej menażki na krótki wypad w teren, czy też nie ma sensu zabierać zawsze ze sobą dwóch kubków do termosu, bo może akurat się przyda. Jest jednak kilka trików, które mogą nas trochę zbliżyć do odchudzenia naszego ekwipunku.

   • Wybierz odpowiedni plecak. Plecaków na rynku są setki, o przeróżnych parametrach. Czy zawsze potrzebujemy tego super taktycznego plecaka zamiast jakiejś turystycznej konstrukcji? Nie. Oczywiście plecaki wojskowe są bardziej trwałe, przynajmniej niektóre, ale jednocześnie są stosunkowo ciężkie. Taki plecak potrafi ważyć w okolicach trzech kilogramów. Konstrukcje turystyczne są zazwyczaj lżejsze i nowocześniejsze, ale to już temat na inny poradnik. Reasumując weź lekki plecak, bo on sam potrafi stanowić już sporą część wagi twojego ekwipunku.


   • Spork to taki magiczny przedmiot, który z jednej strony ma widelec, a z drugiej łyżkę. Jedni go kochają a inni nienawidzą. Jednak prawda jest taka, że jest lżejszy niż zestaw osobnych sztućców. I o ile nie ma sensu się z nim męczyć na obozie, to na krótki biwak czy wędrówkę sprawdzi się świetnie. Plastikowe sporki lubią pękać zimą, dlatego czasami warto zaopatrzyć się w metalowy.


   • Woreczki strunowe, to kolejny z twoich dobrych przyjaciół. Pozwoli dobrze uporządkować rzeczy w plecaku, skompresować je, a dodatkowo chroni przed wodą. Pod tymi względami jest lepszy niż kosmetyczka czy inne pojemniki do pakowania. Oczywiście jest mniej trwały, ale też jest dużo lżejszy. Można go użyć też jako portfela. Woreczki bez problemu możemy wykorzystywać kilka razy zanim się zużyją, ale trzeba je trochę delikatniej traktować. 


   • No dobrze, dla wszystkich ultralightowych ultrasów. Niech wam będzie napiszę to. Można obciąć kawałek rączki od szczoteczki do zębów. I dzięki temu oszczędzić kilka gramów wagi przy jednoczesnym zachowaniu funkcjonalności szczoteczki. 


   • O małych pojemniczkach pasty do zębów wie chyba już każdy, więc wspomnę o nich jedynie z poczucia obowiązku.


   • Jeśli wasza trasa wypada w większości przez miasta zamiast zabierać ze sobą kilka butelek wody, zakup butelkę z filtrem węglowym. I uzupełniaj ją w miejscowościach przez które przechodzisz. Jednak pamiętaj, że zawsze musisz mieć trochę więcej wody niż potrzebujesz, w razie różnych nieprzewidzianych okoliczności! Oczywiście jeśli potrzebujesz więcej wody zabierz dodatkową butelkę, ale jeśli jedziecie na biwak podczas którego będziecie spać w szkole lub schronisku nie ma sensu zabierać ze sobą butelek wody. Dodatkowo dzięki temu zużyjesz mniej plastiku. 


   • Zamień zwykły ręcznik na taki z mikrofibry. Dzięki temu oszczędzisz kilka gramów, a dodatkowo twój ręcznik szybciej wyschnie. 


   • Nie zabieraj puszek, weź liofilizaty. Liofilizaty to żywność pozbawiona wody. Dzięki temu jej waga jest bardzo niska, a jednocześnie zachowuje wartości odżywcze. Niestety jest jest ona stosunkowo droga oraz konieczne jest posiadanie wody do jej zalania. Jednak czasem może być to wygodne rozwiązanie.


   • Klucze. Okay może nie jest to stricte ultralightowy trik, ale bardzo często jadąc na jakiś wyjazd wrzucamy pęk kluczy do plecaka i o nim zapominamy. Przed wyjazdem warto odczepić z tej naszej gmatwaniny kluczy wszystkie te, które nie będą nam potrzebne, wbrew pozorom dzięki temu nie niesiemy ze sobą dodatkowych kawałków żelastwa.


   • Pozbądź się dodatkowych opakowań z jedzenia. Niektóre produkty są zapakowane w dwie warstwy ochronne. Nie ma sensu zabierać obu kawałków folii czy kartonów. Z jednej strony waga, a z drugiej problem ze znalezieniem koszy z segregacją na trasie.


   • Nie zabieraj całej szpulki nici. Odetnij spory kawałek i zwiń go tak, żeby się nie splątał. Dzięki temu oszczędzisz wagi na zabraniu rzeczy w zbyt dużej ilości niż ta której potrzebujesz.


Juliusz Idzikowski
"
        }
        }
}

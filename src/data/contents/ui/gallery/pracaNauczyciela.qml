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
    id: pageFoto
    title: "Fazy rozwoju drużynowego"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: Units.smallSpacing

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Kirigami.Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Czuwaj! Mam właśnie egzaminy z pedagogiki i psychologii, przerabiając materiał wpadłem na ciekawy schemat odnoszący się do pracy nauczyciela. Są to tak uniwersalne zasady pracy z jakąś grupą młodszych osób, że są użyteczne również w pracy drużynowych czy zastępowych.

Przede wszystkim schemat ten pozwala na zrozumie tego, że na wszystko przyjdzie pora i że nasze obecne umiejscowienie nie jest stałe, a przynajmniej nie musi takie być. Przejście przez te wszystkie fazy jest konieczne, aby zdobyć doświadczenie i jest tylko elementem większej układanki. Wydaje mi się też, że zrozumienie procesów które nas dotyczą pozwala nam lepiej sobie z nimi radzić.

Faza pierwsza- Nastawienie na przetrwanie

W tej fazie nauczyciel/drużynowy/zastępowy wychodzi po raz pierwszy świadomie, przed szereg harcerzy. Mają konkretne zadania do wykonania, które zazwyczaj są dla niego trudne. Bardzo często jest “świeżo wykształcony” (kurs pwd, kurs zastępowych). Na takim kursie posiadł sporą ilość wiedzy o tym jak ma wyglądać jego praca i czego się od niego oczekuje. Dlatego często pojawia się niepokój o to czy poradzi sobie na tym stanowisku, czy sprosta oczekiwaniom? Zarówno tym stawianym przez samego siebie jak i środowisko pracy (rodzice, komenda, harcerze czy inni drużynowi). W tej fazie najczęściej prowadzący skupia się nad utrzymaniem kontroli nad drużyną/zastępem, tak, aby ta wykonywała jego polecenia. Sytuacje, gdy traci poczucie kontroli nad grupą są dla niego niekomfortowe i może reagować na nie stresem, w wyniku którego chce jak najszybciej stłumić \"akty swawoli\", pojawia się wtedy np. niepotrzebne krzyczenie czy wlepianie surowych kar za drobne przewinienia. (overreacting)

Faza druga- Nastawienie na dydaktykę. W wypadku harcerstwa, nastawienie na prowadzenie zbiórek.

Sprawa przejścia do tej fazy jest bardzo indywidualna, o szybszym przejściu do drugiej fazy mogą świadczyć nie tylko indywidualne predyspozycje, ale również np. wcześniejsze przygotowanie na funkcję- praca jako funkcyjny zastępu/zastępowy/przyboczny. W tej fazie jesteśmy już lepiej przygotowani do prowadzenia zbiórek, mamy wyrobione wiele nawyków np. pamiętamy o liście obecności czy o wysyłaniu smsów kilka dni przed zbiórką lub puszczeniu iskierki. Daje to poczucie pewności siebie i odnalezienia się \"na właściwym miejscu\". Dzięki temu taki zastępowy/drużynowy dużo lepiej radzi sobie z presją czasu i np. z niektórymi problemami pojawiającymi się na zbiórkach- mniejsza liczba osób na zbiórce, za duża ilość osób na zbiórce, brak potrzebnych materiałów na zbiórce, brakiem pomysłu na zbiórkę.


Faza trzecia Nastawienie na ucznia - w naszym wypadku nastawienie na harcerza.

Jest to moment osiągnięcia dojrzałości na danym stanowisku. W tej sytuacji drużynowy/zastępowy opanował już strategię panowania nad drużyną i wypracował metody przygotowywania zbiórek, dzięki temu może się skupić na bardziej złożonych problemach. A są nimi problemy środowiska społecznego w którym działamy, uczucia poszczególnych harcerzy w drużynie- zbiórka nie tylko ma się podobać, ale ma również spełniać konkretne  cele wychowawcze. W tej fazie dochodzi również do refleksji, rachunku sumienia, do naszych wcześniejszych działań. Możemy przeanalizować błędy popełniane przez nas i na wnioskach z nich wyciągniętych, wypracowywać nowe rozwiązania i strategie, dzięki którym osiągniemy wyższy poziom działania.

Model Fuller przydaje się, by wniknąć w proces uczenia się, jak nauczać. Pomaga spojrzeć na aktualne zmartwienia z odległej perspektywy oraz przygotować początkujących nauczycieli do przejścia do następnej, wyższej fazy.
Arends R.I., Uczymy się nauczać, WSiP, Warszawa 1998, s. 49;


Juliusz Idzikowski"
        }
        }
}

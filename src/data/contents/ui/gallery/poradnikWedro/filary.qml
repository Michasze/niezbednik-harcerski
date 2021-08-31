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
        id: page
        Layout.fillHeight: true
        title: qsTr("Filary wędrownictwa")
        ColumnLayout {
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrownicy to grupa metodyczna obejmująca harcerzy i instruktorów w wieku <b>16-21 lat</b>. Harcerze w tym wieku są już bardzo mocno rozwinięci emocjonalnie, duchowo, poznawczo i fizycznie - co otwiera przed Tobą szereg możliwości. Wędrownicy potrafią robić, tworzyć i osiągać rzeczy niemożliwe lub trudno osiągalne w młodszych grupach metodycznych."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Wędrownik to <b>indywidualność</b>. O ile harcerze starsi poszukiwali siebie, o tyle wędrownicy mają już wyklarowaną jakąś wizję siebie i swojej przyszłości. Rozwijają się w konkretnych kierunkach swoich pasji."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Staraj się poznać ludzi, z którymi pracujesz. Poznaj ich w działaniu, patrz jak wywiązują się z obowiązków, jak tworzą relacje. Dowiedz się jakie są ich pasje, jakimi są uczniami, synami  córkami. I przede wszystkim rozmawiaj — rozmowa jest kluczem do wielu drzwi."
          }
          ElementListyNoImage
          {
             color: "royalblue"
             header: "<b>Obserwuj.</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Wędrownicy dążą do osiągnięcia <b>mistrzostwa</b> w danej dziedzinie, która później może będzie ich pracą."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Ze sfery fizycznej osoba w wieku 16-21 osiąga dojrzałość biologiczną - są to możliwości ruchowe dorosłego człowieka, końcowe rozmiary i proporcje ciała, a także zdolność tworzenia komórek rozrodczych, zapładniania i u kobiet - donoszenia ciąży."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Z kolei w sferze psychicznej <b>dojrzałość</b> przejawa się zdolnością do kontrolowania emocji i zachowań, umiejętnością podejmowania decyzji w ważnych sprawach, osiągnięciem niezależności."
          }
          ElementListyNoImage
          {
             color: "royalblue"
             header: "<b>1.1. Dewiza wędrownicza</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             header: "<b>Wyjdź w świat - zobacz - pomyśl - pomóż, czyli działaj</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Dewiza to wędrownictwo w jednym zdaniu. Cała idea służby, pracy nad sobą i wyjścia do świata jest w niej zawarta. Nawołuje do szerszego spojrzenia, wyjścia do ludzi, dostrzegania ich potrzeb, świadomości i działania."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<b>Wyjdź w świat</b> - bądź ciekaw, poznawaj, idź ciągle dalej, poszerzaj horyzonty. Wędruj. Jak śpiewał SDM - „wędrówka życiem jest człowieka”. Wędruj w naturze i w przenośni, przez trudy i szczęścia."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<b>Zobacz</b> - rozwijaj umiejętność dostrzegania tego, co na pierwszy rzut oka nieuchwytne, szukaj prawdy głębiej."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<b>Pomyśl</b> - wyrób swój system wartości, poglądy, bądź otwarty na innych i wierny sobie. Znajduj nowe możliwości i rozwiązania."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<b>Pomóż</b> - istotą tutaj jest służba bliźniemu. Harcerz jest pożyteczny."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<b>Działaj</b> - nie stój w miejscu, podejmuj działanie — dojrzałe i przemyślane, idź przez życie."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Bardzo dobry artykuł o dewizie:"
          }
        Controls.Label {
            id: opis
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            textFormat: Text.StyledText
            text: "<a href=\"https://www.natropie zhp.pl/index.php/dewiza-droga-nie-cel\">link</a>"
            onLinkActivated: Qt.openUrlExternally(link)
        }
          ElementListyNoImage
          {
             color: "royalblue"
             header: "<b>1.2 Kodeks Wędrowniczy</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Być wędrownikiem to niemała sztuka, a dostępna tylko dla tych, którzy posiadają prawdziwie harcerską postawę. Wędrownikowi nie wystarcza znajomość miejsca zamieszkania, wędrownika ciekawi świat, wędrownik, patrząc w swą przyszłość, pragnie odnaleźć własną ścieżkę."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrowanie to znacznie więcej niż przemierzanie kilometrów czy wytrwałość fizyczna. To sztuka wchłaniania życia, które nas otacza, to oczy i uszy otwarte, to tajemnica współodczuwania przyrody i człowieka. Wędrówką nie będzie przyspieszony tupot nóg, nadmiar krzykliwego humoru, lecz właśnie cisza wśród ciszy lasu, skupienie wobec wschodów czy zachodów słońca. To wyczucie wędrownik łatwo odszuka w sobie."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrownik - jest zawsze gotów nieść pomoc."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrownik - jest przyjacielem całego świata. Wędrownika ciągnie siła nieprzeparta w dal na coraz to nowe, nieznane szlaki, nie pozwala zastygnąć mu w wygodnym, osiadłym życiu, toczącym się zbyt wolno."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrownik - spostrzega urok życia wszędzie, gdziekolwiek się znajdzie, gdyż odkrywa to, czego inni w pozornej monotonii codziennych dni dopatrzyć się nie umieją. Wędrownik zna radość trudnych zwycięstw, urok  przyrody, piękno zdobywania samotnie niewydeptanych ścieżek."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Wędrownik - stale uprawia wędrówki, wędruje w zimie, w lecie, na wsi, w mieście, tropi miejsca, gdzie może być pożyteczny. drogę jego wędrówki wyznaczają wartości zawarte w prawie i przyrzeczeniu harcerskim."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Kodeks jest rozwinięciem myśli zawartych w Prawie Harcerskim. Powinien stale siedzieć z tyłu głowy i podpowiadać, jaki powinien być wędrownik. Mówić, że droga może nie być usłana różami, a bycie wędrownikiem to niemała sztuka, ale oczy i uszy otwarte pozwolą ci dojrzale przejść tę wędrówkę."
          }
          ElementListyNoImage
          {
             color: "royalblue"
             header: "<b>1.3. Watra wędrownicza</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Watra zawiera w sobie wiele symboliki, która obrazuje pola działania wędrownika."
          }
                  Image {
        id: watra
            source: "qrc:/contents/ui/img/Wedro.svg"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             format: Text.PlainText
             header: "Ognisko to symbol ciepła, bliskości, więzi, domu, rodziny, wiedzy i energii."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Najmniejszy płomień to <b> siła ciała </b>. Dbałość o swoje zdrowie poprzez aktywność fizyczną i dobre nawyki żywieniowe. Poznanie swoich granic."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Średni płomień to <b>siła rozumu</b>. Stałe pogłębianie swojej wiedzy, dążenie do samodoskonalenia, rozwijanie intelektu."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Największy płomień to <b>siła ducha</b> - kształtowanie charakteru, dążenie do prawdy, pogłębianie wiary i poznawanie siebie."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Trzy polana ogniska to obraz pól wędrowniczej pracy:<br><br>
- <b>służba</b> - czyli bezinteresowna praca na rzecz bliźnich<br><br>
- <b>praca nad sobą</b> — samodoskonalenie i dążenie do ideałów<br><br>
- <b>szukanie miejsca w społeczeństwie </b> - poszukiwanie własnego ja i rozwijanie pasji, specjalizacja."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "Kolor zielony oznacza <b>puszczaństwo</b> - życie z naturą i umiejętność korzystania z jej dóbr, przebywanie na świeżym powietrzu."
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "To, co widzisz na grafice, to <b>naramiennik wędrowniczy</b>. Noszony na lewym pagonie munduru jest symbolem przynależności do grupy i wyróżnia wędrowniczki i wędrowników oraz instruktorki i instruktorów działających w ruchu wędrowniczym. Został oficjalnie wprowadzony w Organizacji Harcerzy ZHP w 1938 r. Noszony był przez młodzież harcerską w ZHP do momentu usunięcia jej z organizacji w końcu lat 40. XX w. Później powracał w chwilach przemian - tak było w roku 1956 i w latach 80. Obecnie noszą go wędrownicy w ZHP, ZHPpgK i ZHR.<br><br>
Nadaje się go uroczyście po skończeniu przez harcerza próby wędrowniczej. Jest symbolem pracy nad sobą i wytrwałości harcerza."
          }
          ElementListyNoImage
          {
             color: "royalblue"
             header: "<b>1.4 Wyczyn</b>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "To ambitne zadanie, które ma na celu rozwinąć wędrownika, ma on przekroczyć swoje dotychczasowe granice — w pozytywnym i osiągalnym, realnym wymiarze. Jest krokiem naprzód.<br><br>
Jest też składową próby wędrowniczej, choć na tym nie poprzestajemy - wyczyn powinien być charakterystyczny dla stałych działań wędrowników.<br><br>
Jest nie tylko przekraczaniem swoich możliwości w sensie fizycznym - dla kogoś wyczynem będzie zdobycie Korony Gór Polski, dla innego ugotowanie obiadu dla całej rodziny, napisanie piosenki, zorganizowanie wyjazdu drużyny -
wyczyn powinien być dobierany indywidualnie"
          }
        }
    }

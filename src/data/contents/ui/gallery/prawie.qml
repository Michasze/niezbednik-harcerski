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
    title: "O sprawnościach"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        onTriggered: pageStack.pop(-1);
        visible: false
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

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Kirigami.Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Prawie Wszystko o sprawnościach

 
 Ania westchnęła i wstała z twardej drewnianej ławki. Była zmęczona. Już od półtora dnia była na nogach, ale jednocześnie była bardzo podekscytowana. Któż z nas, harcerek i harcerzy nie zna tego uczucia. Gdy dojeżdżasz na wyczekiwaną imprezę. Już niedługo poznasz nowych ludzi, dowiesz się i nauczysz nowych rzeczy a i może się zdarzyć, że będziesz mogła pomóc... Adrenalinka wesoło dawała znać o sobie, więc pomimo zmęczenia Ania dziarsko wysiadła z wagonu pociągu, rozejrzała się szybkim spojrzeniem i wyszła z dworca. Była tu pierwszy raz, ale była pewna, że nie zbłądzi. Ileż to wieczorów spędziła z dziewczynami z zastępu na planowaniu podróży, na roztrząsaniu każdego kroku. Wszak była harcerką, instruktorką i reprezentowała swój nadmorski hufiec na bardzo ważnej konferencji. W zaproszeniu, które otrzymali w hufcu, pół roku temu, były podane tematy nad którymi będą pracować. Ania wręcz nie mogła się doczekać by spotkać te wszystkie ważne Druhny. Cała kadra szkoły instruktorskiej!
 

 Cóż... adrenaliny wystarczyło na pierwsze 5 kilometrów. Robiło się ciepło i plecak strasznie ciążył. Szelki wpijały się coraz mocniej. Ania postanowiła chwilkę odpocząć. Ach, gdyby tak przyjechała tu ze swoim zastępem. Z radością i śpiewem szło by się lepiej. Z drugiej strony tak samemu... Jakże to tak iść i się wydzierać. Jeszcze ją kto zobaczy, czy usłyszy i weźmie za głupią jakąś :) O nie, tego wolała uniknąć. Gdy tak odpoczywała i biła się z myślami, doszła do niej jakaś starsza druhna. W polowym mundurze, bez żadnej podkładki pod krzyżem, za to z uśmiechem \"6 na 9\" na twarzy. Podeszła radośnie i cichym delikatnym głosem zapytała: Co tam słychać druhenko? Może pomóc? I bez słowa więcej podniosła jej plecak i ruszyła pod górę, najwyraźniej było im razem po drodze. Ani było trochę głupio, że taka obca, nieznana druhna dźwiga jej plecak. To ona powinna pomagać! Z drugiej strony to zachowanie owej druhny było... takie harcerskie. No i jeszcze miała ta druhna w sobie takie coś, co zasadniczo nie bardzo pozwalało na sprzeciw... Cóż, Ania się poddała i podążyła w dalszą drogę, teraz już nie samotnie, Teraz szły razem, we dwie. Ania zastanawiała się kim może być owa druhna i wtedy właśnie skończył się las i wyszły na dużą polanę na szczycie góry Bucze. W oddali widać było nowoczesny budynek szkoły instruktorskiej. A więc dotarła... Wtem...

 Z różnych stron polany w jej kierunku zaczęły biec przeróżne dziewczęta. Wszystkie coś tam krzyczały, jak jakieś zwariowane. Ania rozejrzała się wokół... Jakieś wilki czy wściekłe lisy skaczące po jagodach? O co chodzi? Po chwili dziewczęta zbliżyły się na tyle że zaczęła rozumieć co wołają. A biegnąc wykrzykiwały imię, ale jakby nie imię Ani, no bo skąd niby miałyby je znać. Krzyczały: „Druhno Jago, Druhno Jago, pomożemy! W końcu dopadły do druhny w szarym polowym mundurze i niemal siłą zdarły z niej Ani plecak. Ania zbaraniała... A więc to była druhna Jaga... Jedna z czterech wielkich Harcmistrzyń Rzeczypospolitej.. Wow, a to się jej trafiła towarzyszka wędrówki! Będzie o czym opowiadać dziewczynom a plecaka to już nigdy nie wypierze. Oprawią go w ramkę i powieszą w harcówce :) Ania zdążyła tylko jeszcze pomyśleć, że przecież słabo to wypadło bo jakby wiedziała to sama sobie dałaby radę z tym plecakiem a i tyle mądrych pytań można by zadać... Jednak wtedy druhna Jaga odwróciła się do niej i z uśmiechem powiedziała - \"Mam nadzieję druhenko że będziemy miały okazję jeszcze porozmawiać ale na już dziękuję ci bardzo że dałaś mi okazję by sobie pomóc\". Czuwaj! I oddaliła się w stronę budynku. Jedna z druhen, które podbiegły, została przy Ani. Przedstawiła się, cześć druhno, jestem Adela ale wołają na mnie Delka. Pełni tu funkcję kwatermistrzyni, chodź zaprowadzę cię do twojego pokoju i przedstawię twój zastęp konferencyjny. Ania poczuła, że jest w domu. Wśród sióstr, harcerek. Tyle już się zadziało a konferencja zacznie się dopiero jutro...


 Druhna Jadwiga Falkowska „Jaga”, jedna z najlepszych instruktorek harcerskich ever. Wyróżniona tytułem Harcmistrzyni Rzeczypospolitej. Miała ścisły umysł i ukochała harcerstwo. Całym życiem pełnić służbę. Dzięki ścisłemu umysłowi mamy dzisiaj jej doskonały opis m.in. sprawności. Oczywiście nie tylko. Z Jej wielkim wkładem powstały stopnie dla harcerek starszych w tym stopień Wędrowniczki będący do dzisiaj niedościgłym wzorem tego, jak powinien wyglądać stopień dla dorastającej dziewczyny. Ale w tym artykule skupimy się na sprawnościach. Korzystając z pomocy Druhny Jagi, która zostawiła nam jasne i czytelne wskazówki, między innymi w książeczce którą właśnie wydaliśmy w ramach BKPW, spróbuję tu opisać czym są sprawności, czemu służą i czym się charakteryzują. Poznanie tego powinno Ci czytelniku pozwolić zrozumieć dobrze jak z nimi działać i np. dlaczego w metodzie harcerskiej instrumenty są nakierowane na rozwój osobisty i nie są instrumentami zbiorowymi. A więc do rzeczy...

Wychowawcze znaczenie sprawności (Czyli po co je zdobywamy)


Od początku zaistnienia metody harcerskiej były w niej sprawności. Nic dziwnego. Sprawności, pierwotnie nazwane przez E. T. Setona czynami (wielkimi i zwykłymi) są jedną z podstaw metody puszczańskiej, będącej w dużej mierze jądrem metody skautowej. Trudno zatem by sprawności nie było. W metodzie harcerskiej sprawności od początku pełniły dwie funkcje. Pierwszą, widoczną od razu, na pierwszy rzut oka, funkcję nadawania kompetencji. W czasach gdy powstawał skauting, wśród młodzieży z „dołów” społecznych (blokersów) panowało wielkie bezrobocie i poczucie beznadziei wiązało się z kosztami nauki które były spore. Skauting był odpowiedzią. Tu chłopcy mogli nauczyć się konkretnego fachu. Stolarki, murarki, mechaniki, łączności... I to okazało się strzałem w dziesiątkę. Szkolnictwo zawodowe praktycznie nie istniało a zdobycie zawodu było ogromnie trudne. Nie pomoc społeczna, rzucająca od czasu do czasu jakieś \"ochłapy\", lecz skauting, dający wędkę, haczyk i wiedzę, jak \"rybę\" zdobyć. I już nigdy skaut nie musiał być głodny... To była funkcja pierwsza, widoczna od razu. Oczywiście wiadomo, że z pomocą sprawności nie uzyskało się kompletnego wykształcenia. Jednak była ona początkiem czegoś konkretnego. Sprawiała, że chłopak chcący zostać szewcem, trzymał już wcześniej młotek w ręku i parę butów naprawił. Miał więc większe szanse, niż inni na znalezienie odpowiedniego mistrza i dokończenie nauki zawodu.

Niemniej istotna była funkcja druga. Sprawności, (jak czyny i wielkie czyny w metodzie puszczańskiej) służyły kształtowaniu charakteru, oraz uspołecznianiu naszych harcerzy i harcerek.


„...Bardzo ważną rzeczą jest zrozumieć, że idea sprawności ma na celu coś znacznie szerszego aniżeli nauczenie kilkunastu umiejętności. Chodzi bowiem o człowieka usprawnionego, takiego który poradzi sobie z każdą trudnością, każdą pracą, nie tylko tą którą się nauczył...”

Tu pojawia nam się pojęcie „człowieka usprawnionego” :) To chyba dobrze oddaje jeden z naszych celów jaki próbujemy osiągać w pracy harcerskiej. Człowiek usprawniony to taki, który dzięki posiadaniu wielu sprawności czyli potrafiący wiele rzeczy zrobić dobrze lub nawet doskonale, buduje w sobie poczucie własnej wartości, m.in. dzięki któremu odsuwa od siebie możliwość paniki w trudnej sytuacji. Taki człowiek usprawniony nie musi sięgać po różnej maści środki, by porywać się na rzeczy trudne. On po prostu wie, że da radę. Takie głębokie przekonanie budujemy właśnie dzięki sprawnościom. Jest oczywiście i inna droga nader często spotykana w dzisiejszym harcerstwie. Droga całkowicie mylna, ale pozornie prosta. Możemy \„zaklinać\" harcerzy i harcerki. Wciskać im, że są super bo należą do najlepszej drużyny, ukończyli najlepszy kurs, nauczyli się harcerstwa od najlepszych... Takie powierzchowne podejście niestety zdarza się nader często. Istnieje nawet taka dziwna prawidłowość. Im gorszy był kurs tym jego uczestnicy wyjeżdżają z niego bardziej zadowoleni z przekonaniem, że oto byli na kursie najlepszym. Dziwaczne. Ma to oczywiście swoje konsekwencje. Sprawności bowiem budują poczucie własnej wartości na konkretnych dokonaniach i działaniach. Które bezpośrednio i pośrednio wpływają na właściwości charakteru danego człowieka. One nie budują tego przekonania jedynie zaklęciami o wspaniałości, czyli nie budują na chciejstwie i pozorach. Dlatego sprawności prowadzą do usprawnienia człowieka a nie zaklinają go do przeceniania własnych sił i możliwości. Skutkiem tego przeceniania jest szybkie rozczarowanie i odejście z harcerstwa. Za to sprawności... powodują dalsze usprawnianie. Sprawności są dobrą harcerską drogą. Jałowe i puste „motywowanie” pozostawmy korporacjom, manipulującym swymi pracownikami dla większego zysku...finansowego. 

„...Oprócz specjalnych wartości, sprawności przyczyniają się wybitnie, do realizowania ogólnych celów wychowawczych. Wszak wychowanie i samowychowanie są najskuteczniejsze, gdy są oparte na działaniu, w samym życiu a nie w oderwaniu od niego. Dlatego tak silny jest wpływ rodziny na dziecko. Bo każda drobna czynności życia codziennego jest nakierowana według ducha panującego w otoczeniu. Każdy, najbłahszy czyn jest przepojony rzetelnością, rycerskością, obywatelskością, życzliwością dla innych, odwagą, pogodą, sumiennością, odpowiedzialnością, karnością lub cechami przeciwnymi. To samo można powiedzieć o wpływie moralnym przy pracy w warsztacie lub na obozie, która wszak jest prowadzona w atmosferze i duchu harcerskim. W całokształcie metody harcerskiej spełniają więc sprawności czołową rolę w wychowaniu człowieka usprawnionego, wytwórczego, o wysokiej wartości społecznej...”

Jak zdobywać sprawności...

Tu odpowiedź jest stosunkowo prosta. Wymaga jedynie myślenia. Otóż... W każdy możliwy sposób, jednakże zapewniający osiągnięcie wyżej opisanych celów. Proste prawda? No może nie do końca. Trudność jednak tkwi w konieczności dogłębnego zrozumienia jak to działa. Tak by pozory nie ukierunkowały nas w złą stronę. Na przykład... Skoro sprawności można zdobywać w dowolny sposób to czy można je zdobywać grupowo? Czy może bardziej w grupie? Jaka to różnica? I dlaczego tak a nie inaczej?
Aby to trochę lepiej zrozumieć, warto dowiedzieć się czegoś więcej o programie drużyny.

Program drużyny.

W tym artykule omawiam sprawności, dlatego nie będę się tu rozpisywał zbyt szeroko o kwestiach programowania pracy drużyny. Tą sprawę opisałem szerzej w książeczce: „Obejmujesz drużynę? Maile pisane nocą” Tam można znaleźć opis sposobu planowania pracy drużyny na bazie prób na stopnie i sprawności. Na potrzeby naszych rozważań wystarczy nam ramowy opis programu.

Program drużyny zasadniczo składa się z trzech głównych komponentów. Treści wynikających z prób na stopnie, sprawności oraz tego, co przyniesie nam życie :). Najsztywniejszym elementem jest to, co mamy w próbach na stopnie. Jest to zawartość dość powtarzalna nie tylko w ramach całego harcerstwa ale i w sporej części w całym światowym skautingu. Wszystko co sztywne i sformalizowane jest z natury wrogiem harcerstwa. Jak więc owe stopnie mogą być zarazem sztywnym kręgosłupem a jednocześnie dość plastyczną materią którą możemy dostosować do potrzeb dzieci? Jak to osiągnąć by ten kręgosłup, potrzeba realizacji wypływała od dzieci a nie była narzucona przez drużynowego? Jest na to sposób, odsyłam do wspomnianej książeczki :) A więc stopnie są tym elementem programu, który zapewnia nam pewną porównywalność poziomu wiedzy i wyszkolenia ludzi w całym harcerstwie. Drugim elementem są właśnie sprawności. To one odpowiadają za ostateczne i maksymalne zindywidualizowanie programu.

„...Te zaś indywidualne odrębności harcerki i gromadki skupionej w zastępie, muszą decydować o wyborze ich innych prac, które będą im najbardziej odpowiadać i przez które najlepiej i najpełniej będą realizować cele zawarte w Przyrzeczeniu, Prawie i w próbach, bo dopiero przez swoiste, bujne, życie zastępu i każdej w nim dziewczyny, będzie się wytwarzał żywy, mocny, realny typ harcerki. To też zastęp w którym jedynym zajęciem byłyby zajęcia zmierzające do zdobywania stopni nie zasługiwałby na miano harcerskiego. Treść jego byłaby pusta, gdyż programy stopni dają tylko ogólny kontur, który powinien być wypełniony właściwym życiem.

Do realizowania ideałów harcerskich, do zaprawiania się w codziennych, choćby zwykłych i drobnych czynnościach, ale które nam da świadomość, że umiemy coś dobrze zrobić, że możemy być użyteczne, a przez to da nam poczucie mocy i radości, - służą sprawności...”

Teraz już znamy rolę sprawności. Zdajemy sobie sprawę, jak ważnym elementem są w naszej metodzie pracy. Bez nich praca harcerska jest po prostu lipą. A więc przyglądnijmy się troszkę bliżej ich właściwościom.

„...Pozwalając dziewczętom na wybór sprawności, pozwalamy im znaleźć to, czym się żywo zainteresują i pozwalamy im pracować nad tym co będą potrafiły najlepiej zrobić. Sprawności jest dużo a większość z nich nie jest trudna do opanowania. Każda harcerka może więc natrafić na to co się jej spodoba i co się jej będzie udawało. Przez uprawianie sprawności rozwinie ona nie tylko pełnię swych możliwości fizycznych i duchowych ale także odnajdzie w sobie poczucie wartości i przydatności, a zarazem mocy i szczęścia, które towarzyszą nam zawsze gdy nam się powodzi i widzimy swe udane dzieło. Dzięki temu w drużynie nie powinno być dziewcząt nieaktywnych, z poczuciem niższości i bezwartościowości, a przez to smutnych i apatycznych...”

Brzmi ciekawie prawda? Mamy w zasięgu ręki narzędzie leczące czy może bardziej zapobiegające jednej z częstych chorób naszych czasów – poczucia niskiej wartości. Nie poprzez jakieś socjotechniki czy sztuczne napuszone zapewnienia i zaklęcia. Ot, przez solidną pracę dającą realne, prawdziwe podstawy do posiadania dobrego zdania na temat samego siebie. Tylko znając swoją wartość możemy bez uszczerbku na poczuciu własnej wartości, analizować swoje zachowanie, dostrzegać błędy i słabe strony, dzięki czemu nasza praca nad sobą przyjmuje nowy wymiar.

Jednak by tak wszystko to zadziałało sprawności muszą być osobiste. Samodzielnie zdobyte no i przede wszystkim zdobyte dogłębnie i solidnie. To nie może być tak, że harcerz czy harcerka podchodzą do próby kończącej każdą sprawność z nastawieniem „a może się uda” NIE. Oni muszą być pewni że się uda. Ta próba musi być poprzedzona konkretnym, solidnym przygotowaniem się do niej. Osobiście i samodzielnie.

Czy to „osobiście i samodzielnie” oznacza że sprawności nie można zdobywać razem, w grupie? Już wcześniej napisałem że... Oczywiście można :) Razem z zastępem, podczas wspólnych aktywności. Tak :) Ale każdy z osobna i osobiście, zgodnie ze swoimi predyspozycjami. Tak samo jak każdy musi przejść próbę. No i oczywiście pamiętajmy, że mamy do czynienia z metodą harcerską a więc wszystko w działaniu. Próba nie może polegać na opowiadaniu, jak coś zrobiliśmy. Próba polega na sprawnym i dokładnym zrobieniu tego, co jest treścią programu sprawności. Tylko wtedy – sprawność zadziała tak jak ma zadziałać.

Uff, dotarliśmy do trzeciego komponentu na którego temat też nie będę się rozwodził a jedynie zasygnalizuję jego ważną obecność w podsumowaniu tej części.

 „...Tak więc drużyna nie jest bardzo dobra, jeśli odbywa się w niej wyłącznie przygotowania do prób na stopnie i sprawności. W planie pracy drużyn przeplatają się wzajemnie i uzupełniają zajęcia związane ze zdobywaniem stopni (...) sprawności o programach ustalonych z góry ale których jest dużo i można je dobierać według zamiłowań i potrzeb, i wreszcie – życie, które sobie buduje w sposób dowolny, każdy zastęp i każda drużyna. ...”

Dopiero te trzy komponenty razem składają się na pełne i prawdziwe oblicze drużyny harcerskiej.

Sprawności a służba.

Z tego co napisałem do tej pory można sobie wyciągnąć fakt, że sprawności odgrywają bardzo ważną rolę w realizowaniu harcerskiego ideału wychowawczego. Pozwalają nam osiągać syntezę wychowania indywidualnego i społecznego. Przyczyniają się do ujawniania utajonych zdolności u harcerzy i harcerek a dzięki temu doprowadzają do maksymalnego wzrostu ich osobowości.

Niejako przy okazji osiągamy efekt zwiększania zdolności do pełnienia służby w codziennym życiu. No bo im harcerz i harcerka więcej potrafią tym bardziej mogą być pomocni. Są lepiej przygotowani do współżycia i do współdziałania.

„... W miarę postępowania w służbie harcerskiej, zarówno zasięg jak i ciężar gatunkowy dobrych uczynków, winien stale wzrastać. Każda harcerka codziennie wyświadczyć komuś przysługę, każda potrafi pomóc w najprostszych codziennych przypadkach. Lecz usprawniona harcerka nie tylko ustosunkuje się życzliwie do każdej istoty w swym otoczeniu, jej codzienna przysługa to nie tylko ustąpienie miejsca w tramwaju czy w kościele, usunięcie skorupki z chodnika, przeprowadzenie staruszki przez jezdnię, dopilnowanie, aby zupa nie wykipiała. Przez opanowanie umiejętności zawartych w ratowniczce, pielęgniarce, przyjaciółce zwierząt, harcerka pomaga w wypadku choroby lub uszkodzenia ciała. (…) O ileż wydatniejsza jest pomoc dziewcząt usprawnionych (…)

W ogóle każda sprawność zawiera w sobie coś, co może służyć ku pożytkowi innych, a tym samym przyczynia się, do rozszerzania zakresu służby bliźnim...”

Proste a odkrywcze prawda? Popatrzmy teraz na to poprzez pryzmat oznaczania sprawności na mundurze. Te małe wyhaftowane czy przyszyte kółeczka... ZOBOWIĄZUJĄ! Pokazują nam możliwości pełnienia służby na znacznie wyższym, rzec można słowami druhny Jagi, uprawnionym poziomie. W ten sposób stajemy się najlepszymi na świecie ambasadorami harcerstwa. Bo jak harcerz czy harcerka coś zrobi to będzie to zrobione solidnie i doskonale. Tak działają właściwie zdobywane sprawności będące uzupełnieniem programu drużyny. Tego życia wypełnionego służbą i wspólną przygodą.

Nie wyczerpuje ten artykuł kwestii sprawności. Nie takie zresztą było moje założenie. Mamy bowiem świetny materiał pozostawiony nam przez druhnę Jagę której myślami posiłkowałem się podczas pisania tego artykułu. Druhna Jadwiga Falkowska napisała książeczkę w której w sposób znacznie bardziej wyczerpujący i w mojej ocenie lepszy niż ja starałem się to zrobić, opisała sprawności. To czym one są, jak je zdobywać, czemu służą itd. Właśnie w tej chwili drukuje się świeży nakład książeczki Jej autorstwa, którą gorąco polecam wszystkim tym, którzy nie tylko chcą wiedzieć więcej ale jeszcze rozumieją że sama chęć to zbyt mało. Trzeba jeszcze wziąć książeczkę do ręki i przeczytać.

Jadwiga Falkowska „Czym są sprawności” Nakładem Biblioteczki Kręgu Płaskiego Węzła. Kraków 2020

Na zakończenie jeszcze jedna dygresja

„...Sprawności bywają rozmaicie zdobywane; Zbiorowo I pojedynczo, pod czyimś kierunkiem i samodzielnie. Zawsze jednak sposób „uczenia się” jest inny aniżeli w szkole, gdzie nauczyciel, w większym lub w mniejszym stopniu prowadzi ucznia, stosując metody wypróbowane i najskuteczniej prowadzące do celu – opanowania materiału. Tu zaś chodzi o sam wysiłek, o przezwyciężenie przeszkody, o dobieranie sobie samemu sposobu dojścia do celu. (…) Nie narzucamy więc drogi jaką harcerka zdobędzie sprawność, pozostawiamy pole do jej samodzielności i inicjatywy. Podajemy w programie sprawności rezultat do osiągnięcia lecz nie podajemy metody jaką go należy osiągnąć....”

I to by było na tyle.
 

hm. Janusz Sikorski

ps. Druhno Jago, spotkanie z Tobą jak zawsze. Inspirujące, za co szczerze dziękuję poprzez czas który nas dzieli lecz dzięki ideałom które nas łączą...

Czuwaj!"
        }
        }
}

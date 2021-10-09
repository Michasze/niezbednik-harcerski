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
        Layout.fillHeight: true
        title: qsTr("Najczęściej popełniane błędy")
        ColumnLayout {
            id: rozdzial
            ElementListyNoImage
            {
                color: "green"
                header: "Źle dobrany ubiór do pogody"
            }
            ElementListyNoImage
            {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Komfort termiczny jest niezwykle ważny. Jeśli jest nam zbyt zimno, to ciężko będzie wzbić się na wyżyny kreatywności w pisaniu peanu na cześć drużynowego. Należy o tym przypominać młodszym i nowym harcerzom, szczególnie jeśli zamierzamy organizować grę terenową podczas deszczu. To świetna okazja, aby pogoda pomogła nam w przeżywaniu przygody.</p><br>
<p>*pean- pieśń triumfalna lub dziękczynna, gatunek wywodzi się ze starożytnej Grecji</p>"
            }
        ElementListyNoImage
        {
            color: "green"
            header: "Źle zaznaczone punkty na mapie  "
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Jeśli źle zaznaczymy punkty na mapie nasi harcerze najzwyczajniej nie dotrą na miejsce. Dobrze jest wyznaczać punkty będąc w terenie i zrobić to najdokładniej jak potrafimy. Dla pewności warto potwierdzać naszą pozycję na GPSie. No i najważniejsze; organizator gry terenowej musi znać się na mapie. </p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Zbyt duże patrole"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>System małych grup znajdzie tutaj swoje zastosowanie. Mniejszy patrol ułatwia zarządzanie patrolowemu. Pomaga również zaangażować wszystkie osoby w patrolu i przeciwdziała zasadzie “jeden robi reszta patrzy”.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Źle wytłumaczone zasady gry"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Tłumaczenie zasad gier nie jest magiczną mocą. No chyba, że ktoś chce żebyście mu wytłumaczyli D&D w 3 minuty. Ja zawsze przygotowuję sobie zasady gry w formie listy z ważnymi i rzeczami o których trzeba powiedzieć. Zasady tłumaczę tylko patrolowym, a to oni przekazują je dalej do swoich patroli. Dzięki temu patrolowi mają motywację do aktywnego słuchania. A odpowiedzialność za poprawne zrozumienie zasad nie rozmywa się na cały patrol. Warto też przed zbiórką dać komuś przygotowane przez nas zasady do przeczytania, dzięki temu będzie on mógł nam powiedzieć, czy są one zrozumiałe.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Brak motywacji do zdobywania kolejnych punktów"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>A gdyby rzucić to wszystko i wyjechać w Bieszczady? Dobrze jest nadać jakiś cel grze, aby nie była jedynie zbieraniem kartek schowanych pod kamieniem. </p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Harcerze nie potrafią odczytać mapy"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>To problem zwłaszcza w nowej drużynie, w bardziej doświadczonej wystarczy osadzić na funkcję patrolowego zastępowego. Dobrze jest zrobić zajęcia z terenoznawstwa przed ważnymi grami terenowymi. Najlepiej takie, podczas których każdy harcerz będzie miał w ręce mapę.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Schematyczne \"nudne\" gry terenowe <br> (znów szukamy kartek)"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Nie można wszystkich swoich gier opierać na jednym i tym samym schemacie. Harcerze będą znudzeni kolejnymi podobnymi zadaniami, a przez to dużo trudniej będzie im nabyć nowe umiejętności. </p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Źle odmierzony czas na wykonanie zadań"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Dziesięć minut na zrobienie szkicu sytuacyjnego przez harcerzy, którzy nie zdobyli jeszcze stopnia młodzika? Nie brzmi jak najlepszy pomysł. Przede wszystkim: harcerze nie nauczą się zbyt wiele przez robienie chaotycznego i niezrozumiałego dla nich samych szkicu. A dodatkowo my sami wrzucamy sobie kłodę pod nogi, bo jeśli szkic jest powiązany z innymi zadaniami to będzie ciążył na danym patrolu przez całą grę.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Brak planu B na wypadek nieprzewidzianego wydarzenia"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Kiedy planujemy grę terenową dobrze wiedzieć, ile osób przyjdzie na zbiórkę, ale i tak dobrze jest mieć plan przerobienia gry terenowej z takiej na sześć patroli na trzy patrolową.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Źle schowane punkty"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Punkty zakopane pod ziemią lub zarzucone liśćmi. Fajny pomysł, ale musimy najpierw nauczyć naszych harcerzy szukać takich punktów. Należy wtedy też dokładnie wyznaczać obszar, w którym taki punkt będzie schowany. Bo jeśli będzie on duży znalezienie jednego punktu będzie wymagało zbyt wiele czasu.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Ginące punkty na grze terenowej"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Jest to bezpośrednio powiązane ze złym ukrywaniem punktów na grach terenowych. Jeśli przykleimy nasze punkty taśmą klejąca do drzewa, to prawdopodobnie szybko się z nimi pożegnamy. Ktoś uzna je za śmieci i wyrzuci do najbliższego kosza albo specjalnie je zniszczy chcąc zrobić nam  na złość. Jak temu zapobiec? Przede wszystkim schowajmy punkty w jakimś lepszym miejscu: w korzeniach drzewa, między leżącymi cegłami czy pod stosem gałęzi. Dzięki temu będą one mniej widoczne, a dodatkowo nie będzie trzeba wykorzystywać foliówek. Na kartce będącej punktem możemy dodać napis “Ta kartka to element gry harcerskiej prosimy nie zabierać. 26.03.2029.”. Dzięki temu jest większa szansa, że kartka nie zniknie z trasy, a data  pozwoli określić osobie przechodzącej czy jest ona ciągle w użyciu.</p>"
        }
        }
    }

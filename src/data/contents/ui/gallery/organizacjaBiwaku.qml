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

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Organizacja biwaku"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>Wstęp</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        header: "<p>Prowadzisz drużynę i chcesz zorganizować dla swoich harcerzy biwak?</p>
<p>Pełnisz w drużynie jakąś funkcję i dostałeś za zadanie przygotowanie go? </p>
<p>Chcesz zrobić coś dla większego środowiska niż jedna drużyna? </p>
<p>A może po prostu interesuje Cię, jak wygląda zorganizowanie biwaku od strony technicznej? </p>"
        alignH: Text.AlignJustify
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        header: "<p>W takim razie ten poradnik jest stworzony dla Ciebie! Bardzo częstym pytaniem przy organizowaniu biwaku, wycieczki czy wędrówki jest “kiedy zacząć przygotowania?”. Oczywiście im wcześniej, tym lepiej. Im większa impreza, tym wcześniej musisz znać listę uczestników, żeby powiadomić właściciela gruntu/budynku, w którym zamierzacie nocować. Najlepiej w ogóle mieć biwaki w planie pracy drużyny, choć nie zawsze jest to możliwe. Na potrzeby tego poradnika przyjmijmy, że przygotowanie 5 tygodni wcześniej dla grupy 10-20 osobowej wystarczy.</p>
<p>Możemy zorganizować biwak o dowolnej tematyce. Pamiętajmy jednak, aby nasz pomysł absolutnie nie zagrażał zdrowiu ani życiu uczestników.</p>"
        alignH: Text.AlignJustify
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>5 tygodni do biwaku </p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Ogólny zarys, pierwsze przygotowania. Wpadasz na genialny pomysł zorganizowania biwaku. Wyznaczasz sobie termin biwaku za 5 tygodni. Warto mieć na tym etapie pomysł, co będziemy robić na biwaku, bo może się okazać, że szczegółowe przygotowania będą wymagały nieco więcej czasu. Na przykład umówienie odwiedzin w instytucjach czy zamówienie ewentualnego przewodnika. Pamiętaj, aby Twój termin nie nachodził na żadne święta państwowe czy kościelne. No chyba, że planujesz biwak tematyczny. Musisz teraz oszacować liczbę uczestników, aby dobrać ilość opiekunów-wychowawców, czyli pełnoletnich instruktorów ZHP. Zgodnie z przepisami jest to 1 opiekun na 15 uczestników. Nie trudne, prawda? Teraz skontaktuj sie jeszcze z komendą hufca, aby powiadomić ich o swoich zamiarach. Następnie z właścicielem gruntu/budynku, na którym chcecie się rozbić. Być może będzie wymagał zbyt dużo lub w zamian zechce wykonania przysługi, którą trzeba będzie wpleść w harmonogram biwaku. Jeśli planujemy też zrobić biwak w górach, to powyżej wysokości 1000m n.p.m. konieczna jest obecność przewodnika górskiego. Warto też już w tym momencie pomyśleć o transporcie na miejsce biwaku. Na najbliższej zbiórce drużyny (bądź na forum/stronie hufca, jeśli ma być to przedsięwzięcie dla kilku drużyn) ogłaszamy, kiedy odbędzie się biwak i wyznaczamy termin zgłoszeń do 2 tygodni przed biwakiem.</p> "
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>4 tygodnie do biwaku </p>"
     }
        HPSLista
        {
            label: "<p>Transport</p>"
        }
        HPSLista
        {
            label: "<p>Harmonogram</p>"
        }
        HPSLista
        {
            label: "<p>Budżet - Preliminarz biwaku</p>"
        }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Po ogłoszeniu jesteś mniej więcej w stanie oszacować, ile osób będzie na biwaku obecnych. Pod tę liczbę należy zorganizować dojazd na miejsce. Chyba, że nie jest daleko, wtedy może to być wędrówka piesza. Pamiętaj jednak o przestrzeganiu zasad ruchu drogowego, jeśli chcesz utworzyć kolumnę pieszych. Dzwonimy do firmy przewoźniczej i dogadujemy szczegóły transportu. Możemy równie dobrze na miejsce udać się pociągiem lub gdy mamy dobre kontakty z rodzicami harcerzy, pojechać samochodami osobowymi. Czas też nareszcie napisać harmonogram biwaku- coś, co ma służyć przede wszystkim nam, ale taki dokument składamy również do komendy hufca. W końcu wszystko musi dziać się według określonego planu. W harmonogramie zawieramy każde działanie - posiłki, przerwy, ciszę nocną i pobudki.</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Przykładowo wyglądać to może tak:</p>
<p><b>Dzień pierwszy</b></p>
<p>8:00-8:30 zbiórka na Pl. Zwycięstwa, przygotowanie do odjazdu</p>
<p>8:30-9:30 dojazd na miejsce noclegu</p>
<p>9:30-10:00 czas na zakwaterowanie, poprawienie ekwipunku</p>
<p>10:00-11:30 piesza wędrówka nad jezioro Mokre</p>
<p>11:30-12:30 gra terenowa wokół jeziora z elementami rywalizacji (zasady i przebieg w szczegółach)</p>
<p>12:30-14:00 powrót do bazy</p>
<p>14:00-15:00: obiad</p>
<p>20:00-21:00: kolacja</p>
<p>21:00-22:00 kominek</p>
<p>22:00-00:00 cisza nocna</p>
<b><p>Dzień drugi</b></p>
<p>00:00-7:00 Cisza nocna</p>
<p>7:00-7:30 pobudka, zaprawa poranna [...]</p>
<p>14:00-15:00 powrót pociągiem do miasta, pożegnanie</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>SZCZEGÓŁY I UWAGI: [Tutaj wpisujesz na przykład przebieg w/w gry terenowej albo inne rzeczy, które trzeba mieć na uwadze podczas trwania biwaku, np. że w bazie niebezpieczeństwo stwarza strych i należy go odpowiednio zabezpieczyć, aby nikt tam się przypadkiem nie dostał]</p>
<p>I tak dalej. Nie każdy harmonogram musi wyglądać dokładnie w taki sposób, ale ważne jest, aby wszystkie elementy oraz w miarę możliwości ich szczegóły były w nim zawarte.</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Kolejną ważną rzeczą do zrobienia w tym tygodniu jest zaplanowanie budżetu. W końcu wypada harcerzom na następnej zbiórce powiedzieć, ile zapłacą za biwak. Pod uwagę musimy wziąć: wyżywienie, koszty zakwaterowania, dodatkowe materiały, naprawy, koszty ubezpieczenia zdrowotnego. Najtrudniejszym zadaniem jest oszacowanie całości. Pamiętaj, że lepiej wziąć więcej niż mniej. Jeśli chodzi o wyżywienie, to dobrym rozwiązaniem jest przy dwudniowych biwakach, aby harcerze z góry wiedzieli, że śniadanie i kolacje załatwiają sobie na własną rękę. Wtedy biorą ze sobą jedzenie, z którego przygotują posiłek. Jeśli biwak trwa dłużej, musimy uwzględnić przy planowaniu budżetu wszystkie posiłki.</p>
<p>Ubezpieczeni- hufiec Bolesławiec ma tu udogodnienie, bo wszystkie sprawy z nim związane są załatwiane przez komendę hufca, pod warunkiem, że kartę biwaku złożysz w terminie. O tym, co się stanie, gdy tego nie zrobisz, dowiesz się w dalszej części. Przelicz, ile pieniędzy potrzebujesz, zaokrąglij z nadmiarem do pełnych dziesiątek i podziel przez liczbę uczestników. Dla bezpieczeństwa od szacowanej liczby uczestników możesz odjąć 1 czy 2. Teraz już wiesz, ile harcerze będą musieli zapłacić. Jeśli wydaje Ci się, że jest to zbyt dużo, postaraj się zmniejszyć koszty np. poprzez znalezienie tańszego przewoźnika czy innego miejsca na nocleg.</p>"
     }
    ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "3 tygodnie do biwaku "
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Pierwsza lista uczestników.</b></p>
<p>Jeśli uważasz, że zorganizowanie biwaku, to dużo roboty, to mam dla Ciebie dobrą wiadomość! W tym tygodniu jest trochę luźniej. Podczas zbiórki drużyny musisz jedynie zrobić pierwszą listę uczestników. Taka lista powinna zawierać imię i nazwisko uczestnika, adres zamieszkania oraz jego PESEL. Kiedy na bieżąco uzupełniasz elektroniczną ewidencję ZHP, to nie musisz tych danych nawet zbierać od uczestników, po prostu możesz je przepisać. Ponadto przed zbiórką musisz jeszcze wydrukować dla każdego potencjalnego uczestnika zgodę rodzica na udział w biwaku. Takie zgody rozdajemy wszystkim i oczekujemy, że na tydzień przyniosą nam je z powrotem wraz z wpłatą za biwak.</p>
<p>Każda zgoda powinna zawierać:</p>"
     }
        HPSLista
        {
            label: "termin biwaku"
        }
        HPSLista
        {
            label: "dokładne miejsce biwaku (adres, jeśli to możliwe), bądź marszrutę, jeśli jest to biwak wędrowny "
        }
        HPSLista
        {
            label: "informację o organizatorze i kontakt z nim"
        }
        HPSLista
        {
            label: "miejsce na datę i podpis rodzica"
        }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Przykładowa zgoda na udział niech wygląda tak:"
     }
     ElementListyNoImage
     {
        color: "green"
        align: 0
        alignH: Text.AlignHCenter
        header: "<p><b>ZGODA NA UDZIAŁ DZIECKA W BIWAKU</b></p>
<p>Wyrażam zgodę na udział mojego dziecka, ................ ......................(imię i nazwisko dziecka), w biwaku harcerskim pod namiotami w lesie w Tomisławiu (Smolarnia) w dniach 01-03. maja 2014, organizowanym przez 11 DH “Grot” i zobowiązuje się uiścić wpisowe w wysokości 15 zł do dnia 15. kwietnia 2014 r. ..................................... ..................................... (data, miejsce)</p>
<p> (podpis rodzica)</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "2 tygodnie do biwaku "
     }
        HPSLista
        {
            label: "Ubezpieczenie"
        }
        HPSLista
        {
            label: "Karta biwaku"
        }
        HPSLista
        {
            label: "Zamknięcie budżetu"
        }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Po ostatniej zbiórce drużyny wiesz już, kto dokładnie pojedzie na biwak. Czas pójść do towarzystwa ubezpieczeniowego i... wykupić polisę ubezpieczeniową dla uczestników biwaku na czas jego trwania. Chyba, że akurat jesteś w hufcu ZHP Bolesławiec, ale o tym za chwilę. Aby wykupić ubezpieczenie musisz tam pójść razem z opiekunem (lub opiekunami) biwaku oraz listą uczestników zawierającą imiona, nazwiska, adresy zamieszkania oraz numery PESEL. Bez tego ani rusz. Gdy już będzie po wszystkim, czas wypełnić kartę biwaku. Jest to gotowy dokument, który wypełniamy dwukrotnie- jedna kopia jest dla nas i mamy ją przy sobie przez cały czas aż do zakończenia biwaku, a druga wędruje do Komendanta Hufca (wraz z listą uczestników i harmonogramem). Na obu kartach muszą się koniecznie znaleźć podpisy wszystkich opiekunów na biwaku. W polu numer polisy i nazwa towarzystwa ubezpieczeniowego Hufiec ZHP Bolesławiec może po prostu wpisać “Ubezpieczenie zbiorowe PZU”. Teraz, gdy mamy już prawie 100% pewność co do listy uczestników, możemy po raz drugi przeanalizować budżet- czy uda nam się go zamknąć, czy pojedzie więcej, czy mniej osób niż planowaliśmy, czy trzeba coś jednak zmienić. Jeżeli wynajmujemy firmę transportową, należy w tej chwili już omówić z nimi wszystkie szczegóły dotyczące zapłaty.</p> "
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Tydzień do biwaku "
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Już prawie koniec! Tak naprawdę to, czy ten ostatni tydzień będzie pełen pracy, czy też nie, to zależy już tylko od Ciebie i od charakterystyki biwaku. Tutaj należy dokończyć wszystkie materiały programowe, zakupić to, co nam potrzeba. Nie wolno jednak zapominac o funduszu na wszelki wypadek, który nas uratuje w sytuacji wydatku, którego wcześniej nie przewidzieliśmy. Musimy upewnić się, że mamy wszystkie dokumenty i że każdy, kto zadeklarował się pojedzie. To, czy przeprowadzisz biwak zgodnie z harmonogramem, czy będziesz musiał go na szybko zmieniać, bo np. pogoda nie będzie sprzyjająca, zależy od wielu czynników, więc warto sobie też przygotować serię “planów awaryjnych” na takie wypadki. Pamiętaj koniecznie, aby podczas biwaku mieć zawsze pod ręką apteczkę, a w łatwo dostępnym miejscu mieć komplet dokumentów na wypadek kontroli sanepidu."
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Po biwaku"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Rozliczenie finansowe</b></p>
<p>Pamiętaj, aby po zakończeniu biwaku złożyć w Komendzie Hufca rozliczenie biwaku. Zadbaj również o sprzęt drużyny! Namioty i sprzęt pionierski powinny być wysuszone oraz zakonserwowane, tak aby mogły służyć jeszcze wiele lat.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Epilog"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Druhno! Druhu! Poradnik ten powstał z myślą o ludziach, którzy nie mają jeszcze pełnej wiedzy odnośnie takich przedsięwzięć, a chcieliby samemu bądź z czyjąś drobną pomocą zrobić dla innych coś więcej. Mam wielką nadzieję, że uda Ci się przeprowadzić biwak tak, jak to planowałeś i że ten poradnik choć trochę Ci w tym pomógł. Może dowiedziałeś się czegoś nowego? Może zmienisz coś w swoim działaniu? Tak czy inaczej, życzę Ci jak najlepiej. Powodzenia! Czuwaj!</p>
phm. Beniamin Marek"
     }
            }


}

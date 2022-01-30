/*
 *   Copyright 2021 HPS <aplikacjahps@gmail.com>
 *
 This program is free software; you can redistribute it and/or modify
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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    title: qsTr("Zabójstwo Władysława Mroza")
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Wstęp"
            width: 150
        }
        Controls.TabButton {
            text: "Pierwsze informacje"
            width: 200
        }
        Controls.TabButton {
            text: "Reakcja"
            width: 150
        }
        Controls.TabButton {
            text: "Dalsze informacje"
            width: 200
        }
        Controls.TabButton {
            text: "Ostatnie wzmianki"
            width: 200
        }
        Controls.TabButton {
            text: "Podsumowanie"
            width: 200
        }
        Controls.TabButton {
            text: "Bibliografia i źródła"
            width: 200
        }
    }
    Controls.SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        clip: true
        height: highest.height
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                spacing: 10
                width: parent.width
                Image
                {
                    source: "image://images/mlody_mroz.jpg,10"
                    sourceSize.width: isHorizontal ? page.width / 3 : page.width / 2
                    width: isHorizontal ? page.width / 3 : page.width /2
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    format: Text.PlainText
                    color: "Black"
                    header: "Lata sześćdziesiąte naznaczone były licznymi ucieczkami polskich agentów wywiadu, jak również aktywnością francuskich służb w celu ewentualnego rozpoznania zagrożenia ze strony komunistów. Idee komunistyczne nie były we Francji domeną jedynie dyplomatów krajów bloku wschodniego, czy też środowisk skupionych wokół emigracji. Komunistami byli również obywatele francuscy, tacy jak mer Fenain Grégoire Leleux należący do partii komunistycznej, który był podejrzewany o udział w zabójstwie kapitana Mroza. Sprawa zabójstwa Władysława Mroza poruszana była kilkakrotnie we francuskiej prasie, pomimo tego, że francuskie służby wywiadowcze słyną z utajniania posiadanych przez siebie informacji, co ma miejsce również w tej sprawie. W tym wypadku odpowiednim wydaje się założenie, że śledztwo dziennikarskie prowadzone przez “Le Monde” odbywało się poza działaniami francuskich służb specjalnych. Materiał zebrany przez “Le Monde” nie świadczy o stanie wiedzy wywiadu francuskiego, a są to jedynie informacje. które przedostały się do opinii publicznej lub zostały zgromadzone przez dziennikarzy przy pewnym udziale francuskiej policji. W tym wypadku należy już na początku podkreślić dysproporcję sił jaka występuje w omawianej tematyce, która wynika z konfrontacji informacji znakomicie zaznajomionych w temacie służb wywiadu polskiego z prasą francuską."
                }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                spacing: 10
                width: parent.width
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    format: Text.RichText
                    color: "Black"
                    header: "Pierwszy artykuł dotyczący sprawy ukazał się 31 października 1960 roku, czyli w cztery dni po zabójstwie Mroza (czwartek 27 października 1960). W artykule zatytułowanym “Tajemnicze zabójstwo Polaka.”<sup>1</sup>, pojawiają się ogólne informacje dotyczące Władysława Mroza. ustalono: wiek, miejsce zamieszkania, miejsce pracy oraz odszukano rodzinę denata. Nieprecyzyjne są natomiast dane odnośnie śmiertelnych obrażeń Mroza. Według “Le Monde” miał zostać zabity strzałem w szyję, jednak na podstawie udostępnionych przez Francuzów raportów z autopsji, Mróz zginął od dwóch strzałów, jeden z nich został oddany w szyję, a drugi w głowę. <sup>2</sup> Niepełne są również informacje od świadka zdarzenia pana Prudhona, podawane przez “Le Monde”. W artykule pojawia się informacja o jednym samochodzie, podczas gdy w zeznaniach świadka mowa o dwóch samochodach. Przez to pominięcie następuje również błędne wskazanie przez “Le Monde” samochodu, do którego wsiedli mężczyźni. Według artykułu wsiedli oni do czarnego auta, podczas gdy w rzeczywistości wsiedli oni do jasnożółtego Peugeota 403, a czarny samochód Citroen 2 CV pozostał na miejscu i to właśnie obok samochodu świadek znalazł ciało.<sup>3</sup> Pominięty również zostaje krótki pościg pana Prudhona za samochodem. Artykuł wskazuje natomiast na zaangażowanie w sprawę Dyrekcji Nadzoru Terytorium <sup>4</sup>, czyli francuskiej służby kontrwywiadowczej, której zajmowała się głównie rozpracowywaniem działalności agentów ZSRR i innych krajów komunistycznych."
                }
                Controls.Label {
                    id: przypisy1
                    width: parent.width - 50
                    wrapMode: Controls.Label.Wrap
                    textFormat: Text.PlainText
                    rightPadding: 10
                    leftPadding: 10
                    font.pixelSize: 10
                    text: "1. Mystérieux assassinat d’un Polonais, [brak inf. o aut.] “Le Monde”, 04 listopada 1960, [tłum. wł.].
2.Witold Bagieński, Wywiad cywilny Polski Ludowej w latach 1945–1961, t. 2, Warszawa 2017, s 361.
3.Ibidem, s.360-361.
4.Funkcjonują dwa tłumaczenia “Direction de la Surveillance du Territorie” dosłowne tłumaczenie “Dyrekcja Nadzoru Terytorium”, bądź za tłumaczeniem Katarzyny Skawina “Dyrekcja Ochrony Terytorialnej”, Roger Faligot, Remi Kauffer, Historia wywiadu i kontrwywiadu na świecie, Warszawa 2006, s.492."
                }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                spacing: 10
                width: parent.width
                Image
                {
                    source: "image://images/zabojstwo_mroza.jpg,10"
                    sourceSize.width: isHorizontal ? page.width / 3 : page.width / 2
                    width: isHorizontal ? page.width / 3 : page.width / 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
                ElementListyNoLayout
                {
                    alignH: Text.AlignJustify
                    format: Text.RichText
                    color: "Black"
                    header: "W artykule “Komunistyczny mer w Fenain zatrzymany przez D.S.T., które prowadzi śledztwo w sprawie zabójstwa Polaka Mroza.”<sup>5</sup>, poruszony został wątek swoistego odwetu i bardzo gwałtownych działań prowadzonych przez D.S.T. przy współudziale C.R.S. oraz policji. Powód tych działań nie był jednak prasie znany. Próbowano powiązać mera Fenain, Grégoire Leluxa z zabójstwem Władysława Mroza. W artykule pojawiają się informacje na temat przyjazdu Mroza do Francji na zlecenie wywiadu PRL. Pojawiły się również podejrzenia, że Mróz miał kierować na terenie Francji siatką szpiegowską, której domniemani członkowie mieli obecnie być przesłuchiwani przez D.S.T. Informacją nie znajdującą się w polskich źródłach, ale poruszoną przez “Le Monde” jest reakcja francuskiej opinii publicznej i partii komunistycznej. A mianowicie wskazanie ogromnego poruszenia, które wzbudziło zatrzymanie mera oraz wysunięcie oskarżeń przez dziennik “Liberté”, będący organem partii komunistycznej, o porwanie pana Leleuxa. Działania podjął również komunistyczny senator Adolphe Dutoit, który miał interweniować w prefekturze i Ministerstwie Spraw Wewnętrznych w celu uwolnienia mera Fenain."
                }
                Controls.Label {
                    id: przypisy2
                    width: root.width - 50
                    wrapMode: Controls.Label.Wrap
                    textFormat: Text.PlainText
                    rightPadding: 10
                    leftPadding: 20
                    font.pixelSize: 10
                    text: "5.Le maire communiste de Fenain est arrêté par la D.S.T. qui enquete sur l’assassinat du Polonais Mroz, [brak inf. o aut.], “Le Monde”, 04 listopada 1960 [tłum. wł.]."
                }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                id: highest
                spacing: 10
                width: parent.width
                ElementListyNoLayout
                {
                    width: root.width - 50
                    alignH: Text.AlignJustify
                    format: Text.RichText
                    color: "Black"
                    header: "Artykuł z 5 listopada 1960 roku “Zabójstwo Władysława Mroza pozwoliło odkryć siatkę szpiegowską.”<sup>6</sup> zawiera informacje odnoszące się do sytuacji wewnętrznej Francji oraz różnorakich teorii dotyczących Władysława Mroza i jego rzekomej siatki szpiegowskiej.W sprawie sytuacji wewnętrznej poruszone zostają związki rodzinne pana Leleux z wicekonsulem Polski. Pojawiają się również informacje o trwaniu postępowania w prokuraturze przeciwko domniemanym członkom siatki szpiegowskiej oraz o manifestacjach, które miały miejsce w fabryce Somain, gdzie pracował Leleux. Demonstracje zgromadziły ponad tysiąc osób. Przytaczana jest również opinia z dziennika “L'Humanite”, który uznaje pana Leleux nie za aresztowanego, ale za uprowadzonego, a całą sytuację nazywa prowokacją. Pojawia się również informacja o głosowaniu w Związku Zawodowym Górników Północy za uniewinnieniem pana Leleux. Widać tutaj problem wspomnianych we wstępie tarć między służbami francuskimi, a członkami partii komunistycznej i jej organami. Francuska prasa, co dość oczywiste, jest bardzo dobrze poinformowana o sytuacji wewnętrznej. Nie wiadomo, ile z tych informacji trafiło do wywiadu polskiego oraz jaką wagę do nich przykładano. Agenci z całą pewnością czytali francuską prasę, ale jednocześnie nie zachowały się dokumenty, które sugerowałby, czy zamierzano wykorzystać takie informacje. Możliwe są trzy wyjaśnienia. Po pierwsze paraliż działalności rezydentury paryskiej<sup>7</sup> oraz liczne dekonspiracje służb wywiadu polskiego uniemożliwiły pracę nad tymi danymi, czy też ich skuteczne wykorzystanie. Druga opcja wskazuje na to, że służby PRL starały się przede wszystkim ustalić przyczyny zdrady Mroza i to stało się ich głównym celem działania. Trzecia możliwość, to niezachowanie się dokumentów na ten temat w wyniku ich zniszczenia.<sup>8</sup> Informacje o samym Mrozie nadal pozostają w sferze domysłów, chociaż trzeba przyznać, że w większości trafnych. Według nich Władysław Mróz miał być agentem i oficerem polskich służb specjalnych, który zginął w związku ze zdradą lub w wyniku walki między służbami specjalnymi. W pewnym sensie obie przytaczane hipotezy są prawdziwe, należy przy tym uwzględnić jednak to, że Mróz współpracował z francuskim D.S.T.<sup>9</sup> i rzeczywiście został zlikwidowany przez służby specjalne, lecz nie francuskie, co wynika z logiki przedstawionych hipotez, ale przez służby polskie.<sup>10</sup> Pojawiają się też doniesienia o odnalezieniu przez policję samochodu. którym uciekli sprawcy, a mianowicie beżowego Peugeota 403, który został skradziony miesiąc wcześniej w Jeumont. Możemy zauważyć tutaj kolejną rozbieżność odnośnie do koloru samochodu wykorzystanego przez sprawców, według zeznań świadka miał on być koloru jasnożółtego.<sup>11</sup> Pojawia się również domniemanie powiązania mera Fenain z samochodem, którym uciekali sprawcy, ponieważ właściciel samochodu również nazywał się Leleux. Nie znajdujemy natomiast wzmianki o oczyszczeniu z zarzutów właściciela pojazdu ani w tym, ani w kolejnym artykule dotyczącym tematu."
                }
                Controls.Label {
                    id: przypisy3
                    width: root.width - 50
                    wrapMode: Controls.Label.Wrap
                    textFormat: Text.PlainText
                    rightPadding: 10
                    leftPadding: 20
                    font.pixelSize: 10
                    text: "6.L’assassinat de Wladimir Mroz a permis de decouvrir un reseau d’espionnage, [brak inf. o aut.], “Le Monde”, 05 listopada 1960 [tłum. wł.].
7. Witold Bagieński, Wywiad cywilny Polski Ludowej w latach 1945–1961..., s. 366.
8. Ibidem, s.359.
9. Ibidem, s.356.
10. Ibidem, s.359.
11. Ibidem, s.361.
12. Ibidem, s.359."
                }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                spacing: 10
                width: parent.width
                ElementListyNoLayout
                {
                    width: root.width - 50
                    alignH: Text.AlignJustify
                    format: Text.RichText
                    color: "Black"
                    header: "Ostatnia wzmianka odnośnie do tego tematu pojawia się 30 listopada 1963 roku. “Trybunał Bezpieczeństwa Państwowego uniewinnia trzy osoby związane z aferą szpiegowską.”<sup>13</sup> Co ciekawe już w pierwszym akapicie pojawia się stwierdzenie, które należy poddać w wątpliwość, a mianowicie Władysław Mróz jest uznany za szefa polskiej siatki szpiegowskiej we Francji. Wydaje się, że taka sytuacja nie mogła mieć miejsca, ponieważ oficer przechodził dopiero okres aklimatyzacji, dlatego raczej nie powierzono by mu pracy z większą ilością agentów.<sup>14</sup> Następnie podana została informacja o stanięciu czwórki oskarżonych polskiego pochodzenia przez Trybunałem Bezpieczeństwa Państwowego oraz o ich uniewinnieniu. Byli to: Aronson, Barczewski, Pawłowski oraz Węgrzyn. Natomiast prasa nie podaje informacji o tym, że Aronson i Węgrzyn byli byłymi nielegałami pracującymi dla MBP, a Barczewski i Pawłowski już podczas pierwszego przesłuchania mieli się przyznać do współpracy z polskim wywiadem.<sup>15</sup> Warto natomiast zaznaczyć, że posiedzenie Trybunału Bezpieczeństwa Państwowego odbywało się za zamkniętymi drzwiami, co wskazuje, że służby francuskiego nie chciały ujawniać wrażliwych informacji, a wymienieni agenci mogli się zgodzić na współpracę z D.S.T."
                }
                Controls.Label {
                    id: przypisy4
                    width: root.width - 50
                    wrapMode: Controls.Label.Wrap
                    textFormat: Text.PlainText
                    rightPadding: 10
                    leftPadding: 20
                    font.pixelSize: 10
                    text: "13. L’assassinat de Wladimir Mroz a permis de decouvrir un reseau d’espionnage, [brak inf. o aut.], “Le Monde”, 05 listopada 1960 [tłum. wł.].
14. Witold Bagieński, Wywiad cywilny Polski Ludowej w latach 1945–1961..., s.357-358.
15. Ibidem, s.366."
                }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
            Column
            {
                spacing: 10
                width: parent.width
                //                    height: childrenRect.height < page.height ? page.height : childrenRect.height
                ElementListyNoLayout
                {
                    width: root.width - 50
                    align: Text.AlignTop
                    alignH: Text.AlignJustify
                    format: Text.PlainText
                    color: "Black"
                    header: "Całość informacji zgromadzonych przez “Le Monde” stanowi jedynie wycinek danych posiadanych przez służby wywiadu. Dlatego wzmianki w gazecie nie są wolne od pewnych nieścisłości lub omyłek. Prawdopodobne jest również to, że dziennikarze mogli wiedzieć więcej, ale ze względu na dobro śledztwa zdecydowała się na ich nieupublicznienie, możliwe jest również, że D.S.T. blokowała dostęp do bardziej wrażliwych danych. Z pewnością brakuje informacji odnoszących się do działalności Mroza jak agenta polskiego wywiadu we Francji oraz faktów na temat jego przewerbowania. Natomiast reszta informacji podawanych przez “Le Monde” jest zgodna z dokumentami upublicznionymi przez służy francuskie oraz tymi sporządzonymi przez polski wywiad."
	            }
                ElementListyNoLayout
                {
                    width: root.width - 50
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    header: "Juliusz Idzikowski"
	            }
            }
        }
        Controls.Pane
        {
            width: swipeView.width
            height: highest.height
        Column
        {
//            height: childrenRect.height < page.height ? page.height : childrenRect.height
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                format: Text.StyledText
                color: "Black"
                header: "<h1>Bibliografia:</h1><br>
•
 Witold Bagieński, Wywiad cywilny Polski Ludowej w latach 1945–1961, t. 2,
Warszawa 2017, s 352-367.<br>
•
 Roger Faligot, Remi Kauffer, Historia wywiadu i kontrwywiadu na świecie, Warszawa
2006, s.492.<br>
<h1>Źródła:</h1><br>
•
 Mystérieux assassinat d’un polonais, [brak inf. o aut.], “Le Monde”, 31 października
1960.<br>
•
 Le maire communiste de Fenain est arrêté par la D.S.T. qui enquete sur l’assassinat du
Polonais Mroz, [brak inf. o aut.], “Le Monde”, 04 listopada 1960.<br>
•
 L’assassinat de Wladimir Mroz a permis de decouvrir un reseau d’espionnage, [brak
inf. o aut.], “Le Monde”, 05 listopada 1960.<br>
•
 La cour de sureté acquitte trois personnes impliquées dans une affaire d’espionnage,
[brak inf. o aut.], “Le Monde”, 30 listopada 1964.
"
	        }
        }
    }
    }
    footer: RowLayout
    {
        Controls.PageIndicator {
            id: indicator
            count: swipeView.count
            Layout.alignment: Qt.AlignHCenter
            currentIndex: swipeView.currentIndex
        }
    }
}

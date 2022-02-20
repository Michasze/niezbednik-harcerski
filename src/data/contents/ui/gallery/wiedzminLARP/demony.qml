/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import ".."

HPSPage {
    id: page
    title: qsTr("Demony - postacie")
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Repeater {
            model: ["Bożątko",
                    "Raróg",
                    "Bannik",
                    "Latawica",
                    "Rusałka",
                    "Licho",
                    "Mamuna",
                    "Zmora",
                   "Leśniczy"]
            delegate: Controls.TabButton {
                text: modelData
                width: 150
            }
        }
    }
    Controls.SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        clip: true
        Postac {
            nazwa: "Bożątko (dzieci w wiosce)"
            opis: "W mitologii słowiańskiej za gospodarstwo domowe odpowiadało Bożątko. Odnoszono się do niego z szacunkiem. Oddawano mu we władanie i niepodzielność wygodne miejsce za piecem. Miejsce, które zwyczajowo dzielił z najstarszym członkiem rodziny. Ludzie chcąc się przypodobać opiekunowi karmili go dostatkiem z własnego stołu."
            charakter: ["pewny siebie",
                    "dziecinny bez względu na wiek",
                    "skory do zabawy"]
            stosunek:  ["potrafi być straszny i agresywny, jeśli kogoś nie lubi",
                    "ze wszystkich graczy potrafi się śmiać, robić im psikusy i żarty",
                    "bardziej lubi tych, którzy tak jak on dbają o przyrodę"]
            cel: "Nie zależy mu na odkryciu prawdy, chce się tylko bawić, jeśli kogoś polubi może mu pomóc."
            wspomnienie: "Wiesz, że Zielarka przybyła już kiedyś wcześniej do wioski, ale nie podzielisz się tą informacją dopóki ktoś nie spełni wszystkich Twoich zachcianek."
        }
        Postac {
            nazwa: "Raróg"
            opis: "Mityczne stworzenie o ciele ptaka zamieszkujące przeogromne  przestrzenie wierzeń ziem słowiańskich. Kto chciał mieć w nim sojusznika musiał jego protektorowi składać żertwę. Łopot jego skrzydeł zwiastował nadejście dnia, a z nim panowanie boga słońca. Słońca, któremu jeszcze w czasach chrześcijańskich oddawano część codziennym pokłonem. Zapewniał on człowiekowi szczęście, pomyślność i dostatek do końca jego dni."
            charakter: ["bardzo dba o wygląd, ceni sobie wolność",
                    "jest silny, bardzo dumny i agresywny jeśli ktoś przekroczy jego  strefę osobistą",
                    "jest zależny od innych, sam nic nie zrobi"]
            stosunek:  ["uważa, że jest zbyt dobry, żeby się z nimi (graczami) zadawać",
                        "lubi tylko tych, którzy go wychwalają",
                        "nie przepada za Bożątkiem"]
            cel: "Chce, żeby wszyscy go wychwalali."
            wspomnienie: "Wiesz, że Zielarka była czarownicą, już wcześniej korzystałeś z jej usług, aby pomogła z  jakimś problemem w wiosce. Swoją informację możesz powiedzieć tylko, kiedy ktoś cię szczerze komplementuje."
        }
        Postac {
            nazwa: "Bannik (szaman) "
            opis: "Demon łaźni i kąpieli. Starzec o nienaturalnie wyrośniętej głowie i karłowatym  ciele. Bannik, w wyglądzie nosił znamiona lekkiego szaleństwa; jak pustelnik; z  wielką głową i potarganą, przydługą „fryzurą”, mętnym spojrzeniem − wyglądał „normalnie” , jak na demona przystało. Łaźnik dbał o dobrą organizację przydomowego zakładu kąpielowego. Ważna była też symbolika atrybutów  używanych do kąpieli. Miotełki, którymi smagano skórę w celu pobudzenia  krążenia, dla pań były zrobione z miękkich witek brzozowych; panowie chłostali  się dębowymi. Jeśli kto zszedł z drogi cnoty na manowce Bannik pod postacią pary dawał ostateczne ostrzeżenie, parząc dotkliwie delikwenta."
            charakter: ["lubi się rządzić",
                        "wszystko musi być zrobione po jego myśli",
                       "czuje powołanie do swojego zadania"]
            stosunek: ["często zwraca im uwagę, jeśli uważa, że robią coś źle",
                       "nie lubi braku profesjonalizmu i nie trzymania się ustalonych przez niego zasad"]
            cel: "Chce wypełnić każde zadanie najlepiej jak umie."
            wspomnienie: "Wiesz, że nie lubiłeś Zielarki kiedy przyszła do waszej wioski po raz pierwszy,  Wymądrzała się i wiedziała lepiej od ciebie co zrobić z panującą epidemią"
        }
        Postac {
            nazwa: "Latawica i Latawiec (kobieta lekkich obyczajów) "
            opis: "Demonów równouprawnienia posiadający dwie formy: żeńską i męską o anielskiej  powierzchowności zajmowały się zakochiwaniem do szaleństwa. Ludzie przy  nich tracili zmysły i chęć do życia."
            charakter: ["zależy mu na tym, żeby rozkochiwać w sobie ludzi",
                        "mówi głównie o miłości, tylko to go interesuje",
                        "patrzy powierzchownie, ocenia wygląd ludzi",
                        "wszystko dla niego jest albo czarne albo białe"]
            stosunek: ["komplementuje uczestników, stara się ich w sobie rozkochać",
                       "zrobi wszystko, żeby ktoś zwrócił na niego uwagę"]
            cel: "Znaleźć sobie wybranka."
            wspomnienie: "Zielarka była twoją przyjaciółką jak przybyła do wioski po raz pierwszy, bardzo się ucieszyłaś jak przybyła po raz drugi, ale wtedy tylko ty ją rozpoznałaś i wiedziałaś kim jest."
        }
        Postac {
            nazwa: "Rusałka (Myszowór)"
            opis: "Piękna i niebezpieczna rusałka. Nie wszystkie demony w słowiańskim panteonie były szkaradne i odrażające, a śmierć przez nie zadana bolesna. Rusałka jest wyjątkiem w pięknej i kuszącej formie. Rosalia, czyli święto róż oddawało hołd niespotykanie pięknym kwiatom. Nikt nie mógł oprzeć się urokowi Rusałki. Bronić się można było, odpowiadając na zadaną zagadkę, bądź znalezienie zagadki trudniejszej. Jeśli to się udało, łebski junak mógł poślubić Rusałkę. Jednakże dzieci rodzone przez demonice były szkaradne."
            charakter: ["jest smutna, czuje się jakby była w depresji",
                        "wie, jedynie, że bardzo za kimś tęskni",
                        "pomimo tego, że jest Rusałką nie interesują ją zaloty, nie dba o to, jej serce już do kogoś należy",
                        "bardzo dobrze radzi sobie z zagadkami logicznymi"]
            stosunek: ["dla wszystkich jest bardzo miła",
                       "stara się dbać o każdego"]
            cel: "Chce, żeby wszyscy byli zadowoleni, zależy jej na rozwiązaniu zagadki"
            wspomnienie: "Myszowór podarował Zielarce Chabry- były one symbolem czasu, w którym przychodziła  do wioski. Myszowór nie chwalił się tym, ale wiedział kim naprawdę była Zielarka chociaż większość o tym zapomniała. Zakochał się w niej, już za pierwszym razem kiedy odwiedziła  wioskę w czasie wielkiej choroby. Możesz powiedzieć swoje wspomnienie tylko wtedy, kiedy dowiesz się kim jesteś z osób  mieszkających w wiosce"
        }
        Postac {
            nazwa: "Licho (Kupiec)"
            opis: "Licho, czy cetno, czyli o tym kto sprowadzał nieszczęścia na ludzi. Za wszystkie te i  inne nieszczęścia odpowiadało od zawsze Licho. Sprowadza zły los, choroby i  było ucieleśnieniem zła. Od bożka związanego z naturą i lasem, Licho stało się demonem domowym. Złym i uciążliwym."
            charakter: ["jest chciwy, zależy mu tylko na bogactwie",
                        "umie tylko wyceniać przedmioty",
                        "nie pomaga, a raczej przeszkadza w wykonaniu zadania"]
            stosunek: ["chce od nich tylko coś kupować",
                      "jest niemiły i przeszkadza każdemu"]
            cel: "Chce zyskać, robi tylko to co mu się opłaca"
            wspomnienie: "W czasie wielkiej choroby zielarka usunęła wspomnienia o sobie większości  mieszkańców w wiosce, dlatego, że chcieliście ją spalić na stosie. Powiesz swoje wspomnienie tylko jeśli ktoś zgodzi ci się coś „sprzedać”/„oddać”"
        }
        Postac {
            nazwa: "Mamuna (kobieta, która nie może rodzić dzieci)"
            opis: "Zwiastunka nieszczęść, czyli <b>mamuna</b> i <b>dziwożona</b>.Kobiety boją się komplikacji w trakcie ciąży i zaklinają los, prosząc o szczęśliwe rozwiązanie. Chore lub niedorozwinięte dziecko jest krzyżem na  całe życie. I o wszystkie te nieszczęścia odpowiadał u  Słowian demon o imieniu Mamuna. Mamuna porywała niedawno narodzone dzieci wprost z kołyski, pozostawiając odmienione i wykorzystując nieuwagę rodziców. Zabierała śliczne i zdrowe noworodki, podrzucając swoje szkaradne i kalekie."
            charakter: ["chce się każdym opiekować",
                        "każdego traktuje jak dziecko",
                        "“matkuje”"]
            cel: "musi trzymać wszystkich razem, jeśli jej się to nie uda wpada w szał"
            wspomnienie: "Zielarka, kiedy była w wiosce za pierwszym razem leczyła ludzi, była skuteczniejsza od  Szamana, dlatego jej nie lubił"
        }
        Postac {
            nazwa: "Zmora (Ciechomir)"
            opis: "Zmora, niewidoczny demon nocy, wykorzystujący mrok, by pożywić się na nieświadomych jego obecności śpiących ludziach. Nie była bóstwem niezależnym. Jej obecność w wierzeniach przedstawiała wieczny strach przed nocą i ciemnością oraz złymi snami trapiącymi śpiących. "
            charakter: ["jest nieufny",
                        "nie lubi magii, ani niczego co się z nią wiąże",
                        "nie potrafi oficjalnie przyznać się do swoich przekonań",
                        "jest fałszywy i dwulicowy"]
            stosunek: ["chce ich ze sobą skłócić",
                      "zależy jej na tym, żeby wykonać zadania, tylko dlatego, że chce wrócić do dawnej swojej postaci"]
            cel: "musi poróżnić ze sobą uczestników gry, tak aby zespół stracił jedność"
            wspomnienie: "Myszowór spotkał jesienią po odejściu zielarki Rusałkę."
        }
        Postac {
            nazwa: "Leśniczy"
            opis: "Nie było cię w wiosce kiedy czarownica zamieniła wszystkich w demony. Nie straciłeś pamięci i  znasz całą historię pierwszego przybycia zielarki. Nie ufasz demonom i nie możesz  powiedzieć im wszystkiego."
            charakter: ["dba o zwierzęta i naturę",
                        "czci bóstwa lasu",
                        "może rozmawiać tylko z Lichem lub Bożątkiem",
                        "nikogo innego nie słucha",
                       "jest sprawiedliwy, dumny i silny"]
            cel: "Aby wydobyć z ciebie informację demony muszą wykonać zadania i udowodnić, że  naprawdę kochają las. Po wykonaniu zadań, możesz im przekazać informacje."
        }
    }

    footer: RowLayout {
        Controls.PageIndicator {
            id: indicator
            count: swipeView.count
            currentIndex: swipeView.currentIndex
            Layout.alignment: Qt.AlignHCenter
            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
            }
        }
    }
}

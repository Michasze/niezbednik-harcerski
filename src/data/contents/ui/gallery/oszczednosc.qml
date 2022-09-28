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
import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls

HPSPage {
    id: page
    property var i: 0
    title: "Oszczędnościowe triki na biwaki"
    function openLink(link)
    {
        page.i++
        if (page.i == 5) {
            Qt.openUrlExternally(link)
            page.i = 0
        }
    }
    Controls.Pane {
        Column {
            width: parent.width
            spacing: 10
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "A komu to potrzebne?"
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=OO3FANjwKHY")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Często w drużynach organizujemy Wigilię czy inne święta na których przygotowujemy różne dania. Warto zadbać tutaj o kilka rzeczy, które nie tylko pozwolą nam zaoszczędzić trochę pieniędzy, ale też będą z pożytkiem dla środowiska. Warto zrezygnować z papierowych lub plastikowych kubków i talerzy. Zamiast tego każdy z harcerzy może przynieść swoje naczynia. Jeśli mamy taką możliwość to posiadanie w harcówce kilku kubków i talerzy będzie również dobrym pomysłem. Często będziemy mogli je zdobyć dzięki naszym harcerzom, którzy mają w domu jakieś zdekompletowane zestawy. Poza tym herbata z ulubionego kubka smakuje najlepiej."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Wody mi daj!"
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=sIBazzGIeLw")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Kiedy jedziemy na obóz lub biwak, gdzie nie ma dostępu do pitnej wody w kranie to musimy szukać innych możliwości zapewnienia jej naszym harcerzom. Kupowanie zgrzewek wody jest wyjątkowo mało opłacalne, nie tylko płacimy za taką wodę bardzo dużo, ale mamy też problem z pozbyciem się takich ilości plastiku… no i samym plastikiem.  Dlatego warto się zastanowić nad zakupem 5 litrowych baniaków. I tak każdy z harcerzy powinien mieć na obozie jakiś bidon lub butelkę, więc pozostaje kwestia zabrania na wyjazd lejka, żeby nie tracić wody przy przelewaniu. Raz kupiony lejek będzie służył wiele lat. No właśnie, czy jest jeszcze jakaś możliwość? Przecież w tym wypadku wciąż wrzucamy plastik. Możemy się zaopatrzyć w baniaki/zbiorki z atestem spożywczym i w nich przechowywać wodę przywiezioną z pobliskiego gospodarstwa, w którym będziemy dogadani z jego właścicielem na takie dostawy. Koszt wody będzie wtedy zależał od jego uprzejmości i naszych zdolności negocjacji. Oczywiście koszt takich baniaków może być spory (70-200 zł), ale dzięki temu, że są wielorazowe możemy je wykorzystywać przez wiele lat.
*Dobrze, jeśli taki baniak będzie posiadał kranik.
**Z dedykacją dla Filipa F."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Jedzie pociąg złe wagony, do obozu wiozą mnie."
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://youtu.be/ooy35xKTZtE")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "I niestety, za czarny chleb i czarną kawę w pociągu międzymiastowym zapłacimy małą fortunę, ale wcale nie musimy jej kupować. Wybranie pociągu zamiast autokaru na obóz nie zawsze będzie opłacalne ekonomicznie i ekologicznie. Czasem jednak warto się rozejrzeć za takim rozwiązaniem, oferta przewoźników kolejowych bywa naprawdę bardzo atrakcyjna, zwłaszcza jeśli rezerwujemy bilety dużo wcześniej. A i tak musimy to zrobić, skoro jest to przejazd grupowy. W każdym razie udało się mi się kiedyś wyrwać bilet normalny z Wrocławia do Warszawy za 25 złotych!
Kiedy się to nie będzie opłacać?
*Jeśli musimy jechać bardzo liczną ekipą np. w 100 osób. Można, ale nie ma gwarancji, że wszyscy będą mieli miejsca siedzące. A dodatkowo będzie to trudne do logistycznego ogarnięcia.
*W momencie, w którym stacja kolejowa będzie bardzo oddalona od miejsca obozu i transport będzie zbyt drogi.
*Niektórzy mogą się też obawiać, że ich harcerze mogą nie dać rady z taką podróżą z wielkim plecakiem. Jeździłem tak na kilka biwaków, zimowisk czy obozów i nie było większych problemów. Jednak trzeba być bardzo zdyscyplinowanym przy takiej podróży. Dlatego drużynowy musi być świadomy swoich harcerzy."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Jeść jeść jeść my chcemy jeść!"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        page.i++
                        if (page.i == 5) {
                            showPassiveNotification("Nie znasz? Zobacz w zakładce śpiewnik!", 2000)
                            page.i = 0
                        }
                    }
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Z jedzeniem mięsa na obozach jest kilka problemów. Największym jest jego przechowywanie, bo potrzebuje ono lodówki turystycznej, a najlepiej, żeby całość została zużyta w dzień zakupu. Mięso jest dodatkowo dość drogie. Jeśli mamy wybrać jakieś konkretne, najlepszy będzie kurczak, bo ma najmniejszy ślad węglowy. Warto natomiast wpleść w nasz jadłospis różne dania jednogarnkowe, które nie zawierają mięsa, a na przykład fasolę czy ciecierzycę. Świetnie sprawdzą się one również jako drugie danie. Ważne, że jeśli eliminujemy mięso z naszego jadłospisu to powinniśmy znaleźć inne źródła białka np. strączki, sery czy soję."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Fal, nie ma fal "
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=d7qNZ_QAz0Y")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "No i nie będzie, jeśli nie włożysz naładowanych baterii do pmrki. Warto zaopatrzyć się w akumulatory, które umożliwiają wielokrotne ładowanie naszego sprzętu do komunikacji w drużynie, zwłaszcza jeśli często go wykorzystujemy. Koszt akumulatorów będzie większy niż zwykłych baterii, jednak na dłuższą metę może się to opłacać, zwłaszcza jeśli często korzystamy z takiego sprzętu."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Harpuny LINY wiosła brać"
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=z-iCnKQFOY8")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Liny, liny, linki. Są tym czego na wyjazdach często nam potrzeba. Czy to potrzeba zbudować pionierkę, pryczę, poprawić odciągi od tarpa, a może przygotować jakieś dekoracje. Często wykorzystujemy do tego plastikową snopowiązałkę. Warto jednak zrezygnować z takiego rozwiązania, a przynajmniej w niektórych przypadkach, jeśli nie da się całościowo. Snopowiązałka jest niestety często traktowana w kategorii sznurka jednorazowego, a wykorzystując pryczówkę czy sznurek jutowy, możemy to robić wiele razy. Powinniśmy zwracać naszym harcerzom uwagę, żeby linki traktowali rozważnie, tak żeby się nie marnowały. "
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Zostaw ten ch*lerny kubek potniesz sobie palce"
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=mlC0VDfp7PA")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "I co wtedy? Jak nic należy przystąpić do opatrywania. Często ćwiczymy je na zbiórkach z samarytanki. Do takich ćwiczeń warto wykorzystywać “gazy” niejałowe, dzięki temu oszczędzimy sporo na samych gazach. Dodatkowo można je zakupić w opakowaniach po 100 sztuk. A dzięki temu nie będziemy każdorazowo zużywać opakowań. Jednocześnie wykorzystując okłady niejałowe, oszczędzamy “energię” konieczną do ich wyjałowienia."
            }
            ElementListyNoLayout {
                color: "royalblue"
                format: Text.PlainText
                align: 0
                header: "Każdy dzień ciągnie się jak makaron (jak makaron)"
                MouseArea {
                    anchors.fill: parent
                    onClicked: page.openLink("https://www.youtube.com/watch?v=95jFGhp_Ck4")
                }
            }
            ElementListyNoLayout {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Przed biwakiem czy obozem dobrze jest zrobić jedne duże zakupy potrzebnych produktów. Kupując 5 kilogramów kaszy czy ryżu mamy zapas na kilka obiadów, a jednocześnie nie zużywamy pojedynczych opakowań czy paliwa potrzebnego na częste dojazdy na zakupy. "
            }
        }
    }
}

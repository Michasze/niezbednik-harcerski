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
    title: "Wybór karimaty, maty lub materaca"
    Controls.Pane {
        Column {
            width: parent.width
            spacing: 10
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Kultura picia kawy dopiero się rozwija w Polsce. Z roku na rok pojawia się coraz więcej kawiarni, w których można napić się dobrej kawy z Chemexa przyrządzonej przez baristę. I my w harcerstwie możemy czasem dołożyć małą cegiełkę, pokazując, że kawa może być też napojem, który smakuje, a nie jedynie prezentując utarty schemat, który najlepiej obrazuje takie zdanie “bez kawy to ten plan pracy niby by nie powstał”."
            }
            ElementListyNoLayout
            {
                color: "royalblue"
                align: 0
                format: Text.PlainText
                header: "Kawiarka (Makinetka, Moka)"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Kawa przygotowana w tym niezwykle popularnym we Włoszech urządzeniu ma wielu zagorzałych wielbicieli i przeciwników. Jej dużą zaletą jest to, że można ją zalać zimną wodą i użyć jako czajnika, chociaż często poleca się zalanie jej już ciepłą wodą. Moka jest zdecydowanie kawą, której parzenie trochę ciężej zepsuć. Zasady parzenia są dość proste: nalewamy wody do poziomu zaworu (nie powinno się go przekraczać). Wsypujemy kawę do sitka należy wsypać tyle kawy ile jest miejsca, nie należy jej ubijać. I cyk, skręcamy urządzenia i wkładamy na kuchenkę lub ognisko. Należy je zdjąć w momencie kiedy przez kawiarkę przelatuje już biały płyn lub kawa zaczyna mocno pryskać. Wadą kawiarki jest ciężar (zwłaszcza dużych wersji)."
            }
            ElementListyNoLayout
            {
                color: "green"
                align: 0
                format: Text.PlainText
                header: "Zalety:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●proste parzenie
●dużo rozmiarów kawiarek
●dość szybka metoda
●możliwość bezpośredniego robienia kawy w jednym naczyniu"
            }
            ElementListyNoLayout
            {
                color: "brown"
                align: 0
                format: Text.PlainText
                header: "Wady:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●ciężar
●temperatura naczynia po zrobieniu kawy
●można usmażyć plastikową rączkę jeśli postawimy naczynie na ognisku"
            }
            ElementListyNoLayout
            {
                color: "royalblue"
                align: 0
                format: Text.PlainText
                header: "French Press"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Prasa francuska to metoda nie ciesząca się takim uznaniem jak np. Aeropress. Jednak pozwala ona na przygotowanie sporej ilości kawy za jednym razem. Najczęstszymi błędami popełnianymi przy parzeniu kawy we French Pressie jest brak przepisu i dobrze zmielonego ziarna (chociaż w warunkach obozowych na mielenie ziarna można przymknąć oko). Świetne przepisy możecie znaleźć w apce Brew Time. Dowiecie się tam ile kawy powinno się wsypać i jaki czas parzyć. Osobiście wolę przepis “Cast’s French”. Wadą French Pressu jest jego wykonanie ze szkła, dlatego jego przenoszenie w plecaku może być ryzykowne. Jednak do obozowej kuchni do której trafi w skrzyni drużyny sprawdzi się świetnie. Niewątpliwym plusem French Pressu jest również jego cena, która w najtańszych wersjach zaczyna się od około 30 złotych, ale tak jak zwykle bywa, czasami warto trochę dorzucić do jakiejś lepszej wersji."
            }
            ElementListyNoLayout
            {
                color: "green"
                align: 0
                format: Text.PlainText
                header: "Zalety:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●spora ilość kawy za jednym parzeniem
●cena"
            }
            ElementListyNoLayout
            {
                color: "brown"
                align: 0
                format: Text.PlainText
                header: "Wady:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●samo urządzenie łatwo uszkodzić "
            }
            ElementListyNoLayout
            {
                color: "royalblue"
                align: 0
                format: Text.PlainText
                header: "Aeropress"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Aeropress uchodzi za jedną z najlepszych metod alternatywnego parzenia kawy. Odbywają się nawet zawody w parzeniu. Dlatego liczba różnych przepisów jest bardzo duża. Parzenie trwa krótko, bo zazwyczaj około 1:35 do 2:40 w zależności od przepisu. Zranię jednak wiele baristycznych duszy, nie zawsze musicie zabierać ze sobą wagę na biwak, czasem możecie wsypać kawę łyżką dołączoną w zestawie tak na oko…
Największą wadą jest jednak ilość kawy jaką uzyskujemy w normalnej wersji jest to porcja dla maksymalnie dwóch osób, a w wypadku podróżnego modelu GO jest to porcja zdecydowanie dla jednej osoby. Kolejnym problemem są filtry papierowe, a te narażone są zawsze na zamknięcie jeśli nie są przechowywane w bezpieczny sposób. Można kupić również metalowy filtr, ale to kolejny koszt (ceny zaczynają się od około 100 złotych). Dużym plusem jest natomiast wersja Go, która jest bardzo przyjazna w podróżowaniu. Posiadamy zintegrowany kubek, a wszystko jest zabezpieczone przed brudem z zewnątrz. Zaletą aeropressu jest też jego waga i wykonanie z tworzywa sztucznego, dzięki temu jest łatwiejszy w transporcie niż np. kawiarka czy french press."
            }
            ElementListyNoLayout
            {
                color: "green"
                align: 0
                format: Text.PlainText
                header: "Zalety:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●bardzo dobra kawa
●łatwy w transporcie
●dużo przepisów do zabawy z kawą
●wersja GO"
            }
            ElementListyNoLayout
            {
                color: "brown"
                align: 0
                format: Text.PlainText
                header: "Wady:"
            }
            ElementListyNoLayout
            {
                color: "black"
                align: 0
                format: Text.PlainText
                alignH: Text.AlignLeft
                header: "●bariści Cię nienawidzą za brak wagi na biwaku
●mała porcja kawy podczas jednego parzenia
●papierowe filtry lub drogi metalowy
●wysoka cena samego urządzenia (to jest kwestio sporono)"
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignHCenter
                format: Text.PlainText
                header: "Juliusz Idzikowski"
            }
        }
    }
}

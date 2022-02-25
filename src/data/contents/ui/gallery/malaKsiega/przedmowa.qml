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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import ".."

HPSPage {
    id: page
    title: "Przedmowa"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout
            {
                color: "brown"
                header: "Kryptologia – dziedzina nauki traktująca o szyfrowaniu. Nazwa wywodzi z języka greckiego: „kryptos” oznacza „ukryty”, a „logos” słowo, czyli jest to w dosłownym tłumaczeniu nauka o ukrytych słowach. Słowach, które w rzeczywistości są zakodowanymi wiadomościami, szyfrowanymi według odpowiedniego klucza. Ludzie stosują szyfry od dawna, bowiem od zawsze były tajemnice, które nie powinny wpaść w niepowołane ręce, a przez lata wykształcono wiele schematów kodowania danego hasła."
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "Co ciekawe samo zagadnienie szyfrowania jest tym, co wielu kojarzy się właśnie z harcerstwem, zaraz obok musztry, ceremoniału czy historii. Osobiście upatrywałem w tym wiele rozrywki, a poznawanie kolejnych metod szyfrowania wiadomości sprawiało mi radość. Najpiękniejsze w tym jest to, że szyfry ewoluują zgodnie z zamierzeniem tego, kto się nimi aktualnie posługuje – ilu ludzi, tyle odmian, stąd przykładowo w niektórych regionach naszego kraju w inny sposób kodowane są utarte już schematy – np. w kluczu Czekoladki zamiast porządkować literki w segmencie „X” zgodnie z ruchem wskazówek zegara porządkuje się je odwrotnie bądź niejako przemiennie – góra-dół, prawo-lewo, co powoduje inne wyniki przy odkodowywaniu. Szyfry  można także przekształcać – w ten sposób powstał Vinegre – szyfr, który opracowałem lata temu, będąc jeszcze HS-em, opierając jego mechanikę na Cezarze: jednym z najpopularniejszych kodów. Vinegre za zadanie miał utrudnić zadanie tym, którzy Cezara mają „w małym paluszku”. W opracowaniu znajdziecie także odmianę Wężyka, która może różnić się od tej poznanej przez Was wcześniej –
szyfr ten bowiem również trochę przekształciłem by był przyjemniejszy dla odbiorcy. Każdy z szyfrów określiłem stopniem trudności, gdzie jedna gwiazdka oznacza „bardzo prosty”, a pięć gwiazdek „trudny”."
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "Przed wami zbiór zawierający dwadzieścia dwa szyfry, które według mnie każdy powinien poznać."
            }
            ElementListyNoLayout
            {
                color: "brown"
                header: "<i>Z harcerskim pozdrowieniem Czuwaj! </i><br>
Piotr Parkita HO
Hufiec Kielce-Powiat"
            }

            HPSIconNoLayout
            {
                source: "image://icons/szyfry/czeko.svg,white"
            }
        }
    }
}

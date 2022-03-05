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
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: "Iskra braterstwa"
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout {
                color: "black"
                format: Text.PlainText
                alignH: Text.AlignJustify
                header: "Miliardy lat temu w pewnej galaktyce świeciły piękne gwiazdy. Były one niesamowite i indywidualne. Cały kosmos - planety i odłamki skalne kręciły się właśnie wokół nich jednak one nie zwracały na nie większej uwagi. Były tak bardzo skupione na sobie. W którymś momencie zaczęło im czegoś brakować, czuły się bardzo osamotnione i bezużyteczne. Tak jakby ich wielomiliardowy żywot nie miał większego znaczenia we wszechświecie. Jedyne co miały to sławę i podziw, które budziły. Pewnego czasu jedna z gwiazd chciała podzielić się swoim ciepłem i wielką energią którą posiadała. W ten sposób ożywiła swoim ciepłem planety, które od tak dawna krążyły wokół niej. Wtedy poczuła się szczęśliwa.

Jak się szybko okazało stała się wzorem dla innych gwiazd, które również zaczęły dzielić się swoim ciepłem i energią.

Wkrótce całe układy gwiazd zaczęły ze sobą współpracować - tworząc na nieboskłonach piękne konstelacje.

Ta iskra dobra rozpaliła płomień braterstwa również w innych galaktykach."
            }
            ElementListyNoLayout {
                alignH: Text.AlignHCenter
                format: Text.PlainText
                header: "Alicja Kowalska"
            }
        }
    }
}

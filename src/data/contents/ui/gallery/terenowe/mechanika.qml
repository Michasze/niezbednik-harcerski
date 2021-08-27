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
        title: qsTr("Mechanika")
        ColumnLayout {
        id: rozdzial
        ElementListyNoImage
        {
            color: "green"
            header: "Losowość"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Jedni lubią inni nie. Losowość w grach terenowych dodaje trochę emocji. Oczywiście taka mechanika nie zawsze działa w ten sam sposób. Inaczej harcerze będą odbierać grę, gdzie będzie równomiernie rozłożona ilość złych i dobrych losowych zdarzeń, a inaczej, gdy będzie przewaga jednych z nich.</p>
<p>Oczywiście losowość nie musi być główną mechaniką naszej gry, a może być jedynie jej częścią. </p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Hazardowa"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Kasyno, karczma, gwint, gra w ruletkę z Jamesem Bondem, a może gra w gargulki z Harrego Pottera o dwa galony? Są emocje, mogę powiedzieć, że byłem świadkiem przegrywania całych fortun szyszek. </p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Elementy matematyczne"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Mnożniki punktów, dodatkowe “perki”, statystyki i tak dalej. Fajna sprawa, bo nasi harcerze będą mieli sporo “rozkminiania”.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Targowanie się"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Emocje sięgają zenitu “Panie kochany za żerdkę w takim stanie nie dam więcej niż 20 kredytków!”</p>
<p>Świetne i może być przydatne życiowo, zwłaszcza jeśli połączymy to z ćwiczeniem sztuki argumentacji.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Odkrywanie elementów mapy"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Wieże z Assassin's Creed, które pozwalają odkryć co jeszcze ciekawego można znaleźć w okolicy? Nic trudnego wystarczy znaleźć jakieś ciekawe miejsce i umieścić tam fragment mapy, który odkryje przed patrolem świat znaków zapytania.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Podejmowanie decyzji"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>To chyba jedna z najciekawszych i najbardziej docenianych mechanizm w grach, zwłaszcza tych komputerowych. Możliwość wpływania na otoczenie jest tym co tak uwielbiają fani Wiedźmina. Kolejny patrol będzie musiał mierzyć się z tym, że jakiś handlarz nie ma już dla nich złota, skoro były u niego wcześniejsze patrole. A może Jaskier nie zaśpiewa im ballady, bo błędny rycerz, któremu patrol nie pomógł dwa punkty wstecz nie ochronił Jaskra przed oszluzgiem i teraz biedny musi zdobyć nową lutnię?</p>
<p>Takie gry to prawdziwa sztuka i to z pewnością nie będzie łatwe zadanie, ale wspomnienia będą bezcenne. No chyba, że wyjdzie z tego Cyber… [*] </p>"
        }
        }
    }

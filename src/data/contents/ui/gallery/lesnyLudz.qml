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

import QtQuick 2.15
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Leśny ludź"


    ColumnLayout {
        width: page.width
        spacing: 10
        ElementListyNoImage
        {
            color: "Green"
            header: "Autor: sam. Klara Świątek <br>
Grupa metodyczna: Zuchy"
        }
        ElementListyNoImage
        {
            color: "saddlebrown"
            header: "Wymagania: <br> <br>

    1. Zbudowaliśmy szałas, żeby żyć jak leśni ludzie.<br><br>

    2. Zyskaliśmy szóstkowe miana określające nasze pozytywne cechy charakteru.<br><br>

    3. Poznaliśmy tajemnice i miana zaprzyjaźnionej drużyny harcerskiej.<br><br>

    4. Nauczyliśmy się układać obrzędowe ogniska (czterokrotny ogień), wiemy jakie są zasady bezpieczeństwa podczas używania ognia w lesie.<br><br>

    5. Wiemy jak poruszać się cicho i niezauważenie po lesie, by nie płoszyć zwierząt oraz podchodzić ludzi. Umiemy żyć w zgodzie z lasem i jego mieszkańcami.<br><br>

    6. Zbudowaliśmy totem gromady z darów lasu<br><br>
    
    7. Wiemy, które elementy naszej gromady/szczepu są puszczańskie.<br><br>

    8. Poznaliśmy leśne piosenki i zaśpiewaliśmy je przy ognisku."
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "Uwagi:<br>
Sprawność ma na celu wprowadzić zuchy do puszczańskiej obrzędowości szczepu, co ułatwi im przejście do drużyn harcerskich. Dzięki obrzędowości zuchy zapoznają się z lasem i jego mieszkańcami oraz nauczą się szacunku do przyrody. Dowiedzą się jakie cechy wyróżniają je spośród całej szóstki - wzmocni to obrzędowość szóstek. Sprawność przewidziana do realizacji ze starszymi zuchami na biwaku lub kolonii zuchowej.<br><br>

    a) Punkty Prawa Zucha, które podkreślamy zdobywają tą sprawność. <br>
    • Zuch jest dzielny<br>
    • Zuch pamięta o swoich obowiązkach<br>
    • Wszystkim jest z zuchem dobrze<br><br>

    b) Co sprawność kształtuje i rozwija:<br>
Zdobywając tą sprawność zuchy kształtują w sobie miłość i szacunek do przyrody. Rozwijają w sobie niektóre umiejętności związane z technikami harcerskimi na przykład: budowanie stosów ogniskowych, podchodzenie oraz samodzielność. Wzmacnia to ich poczucie przynależności do gromady, przyszłej drużyny i szczepu.<br><br>

    c) Inspiracje:<br>
    • “Lato leśnych ludzi” Maria Rodziewiczówna<br>
    • “Obrzędowy piec” Marek Kudasiewicz<br>
    • “Zwój kory brzozowej” Ernest Thompson Seton<br>
    • “Księga wodza zuchów” Aleksander Kamiński <br>
    • “Abecadło indiańskiego zwiadowcy” Charles Alexander Estman."
        }
    }
 
    
}

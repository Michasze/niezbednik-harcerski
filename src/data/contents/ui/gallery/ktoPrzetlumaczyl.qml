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
    title: "O tłumaczeniu Scouting for boys"
    Controls.Pane
    {
    Column {
        anchors.fill: parent
        Image {
            source: "image://images/ktoPrzetlumaczyl.jpg,10"
            sourceSize.width: isHorizontal ? page.height / 3 : page.width / 2
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignJustify
            format: Text.StyledText
            color: "Black"
            header: "Wszyscy wiemy, że \"Scouting for boys\" przetłumaczył Andrzej Małkowski, ale czy tylko on?<br><br>

Pracę nad przetłumaczeniem książki w latach 1909-1910 trwały w trzech różnych ośrodkach: Lwowie, gdzie tłumaczeniem zajmował się Małkowski, Krakowie gdzie tłumaczeniem zajmował się Marian Stępowski i w Warszawie gdzie tłumaczył Bronisław Bouffał.<br><br>

Andrzej Małkowski rozpoczął prace w stycznia 1910 roku i zakończył je wydaniem w 1911 roku. Różne daty rozpoczęcia tłumaczenia podawane są w różnych opracowaniach.<br><br>

Podręcznik doczekał się również polskiej adaptacji pod tytułem \"Harce Młodzieży Polskiej\". Zostały napisane przez Eugeniusza Piaseckiego i Mieczysława Schreibera. Zastosowano tutaj inne nazewnictwo: skaut-harcerz, pluton-drużyna, patrol-zastęp. Prace zakończono na wiosnę 1911 jednak publikacje odsunięto na rok 1912, aby uniknąć zamieszania w nazewnictwie.<br><br>

Więcej na ten temat:<br><br>

\"Sto lat harcerstwa\" Wojciech Hausner, Marek Wierzbicki<br><br>

<a href=\"https://przystanekhistoria.pl/pa2/tematy/mlodziez/76598,Prekursorzy-harcerstwa.html\">https://przystanekhistoria.pl/pa2/tematy/mlodziez/76598,Prekursorzy-harcerstwa.html</a><br><br>

Odpowiedź Druha Marka Popiela z kwartalnika historycznego Skaut.<br><br>

Andrzej Małkowski wbrew powszechnym opiniom nie przetłumaczył książki „Scouting for Boys”. Książka „Scouting jako system wychowania”, wydana w lipcu 1911 r. była streszczeniem konspektów zajęć prowadzonych przez niego na pierwszym kursie skautowym we Lwowie, rozpoczętym 20 marca 1911 r. Książkę Baden-Powella zamierzał A. Małkowski przetłumaczyć dopiero w 1913 r. W liście z 25 marca pisał do Wincentego Lutosławskiego: […] Dalej – chciałbym przetłumaczyć „textbook ” Baden-Powella – „Scouting for Boys” . Książka ta ma przeszło 400 stron, a jej spolszczenie musi być podstawą pracy, którą zamierzam. Będę w swoim czasie prosił Ojca o przeglądnięcie rękopisu tłumaczenia. Źródło: Andrzej Małkowski. Korespondencja 1911–1919<br><br>

zebrał i przypisami opatrzył Marek Popiel, Zakopane, 2018, s. 116."
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

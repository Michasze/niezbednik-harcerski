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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Przyrzeczenia ZHP"


    ColumnLayout {
        width: page.width
        spacing: 10
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Przyrzeczenie Szarych Szeregów"
        }
ElementListyNoImage
        {
            id: tresc
            color: "brown"
            header: "Ślubuję na Twoje ręce pełnić służbę w Szarych Szeregach, tajemnic służbowych dochować, do rozkazów służbowych się stosować, nie cofnąć się przed ofiarą życia."
        }
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Tekst Przyrzeczenia Harcerskiego zatwierdzony przez Tymczasową Naczelną Radę Harcerską w 1945 roku"
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Przyrzekam uroczyście całym swym życiem dążyć do odbudowy Niepodległej, Demokratycznej i Sprawiedliwej Polski, pracować dla dobra powszechnego, postępować zawsze szlachetnie i być posłusznym prawu harcerskiemu. Tak mi dopomóż Bóg."
        }
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Tekst Przyrzeczenia Harcerskiego zmieniony przez Tymczasową Naczelną Radę Harcerską w 1947 roku"
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Mam szczerą wolę całym życiem pełnić służbę Bogu (Dobru Najwyższemu) i Polsce, nieść chętną pomoc bliźnim i być posłusznym prawu harcerskiemu."
        }
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Tekst przyrzeczenia w Organizacji Harcerstwa Związku Młodzieży Polskiej (po likwidacji ZHP) 1951 rok."
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Przyrzekam uroczyście wobec kolegów i narodu polskiego uczyć się i pracować dla dobra Ojczyzny i spraw socjalizmu. Przyrzekam wiernie przestrzegać prawa harcerskiego - całym sercem zawsze i wszędzie służyć Polsce Ludowej."
        }
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Tekst Przyrzeczenia Harcerskiego po reaktywacji ZHP w 1956 roku"
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Przyrzekam mojej drużynie postępować według prawa harcerskiego, strzec honoru harcerza, służyć zawsze wiernie mojej Ojczyźnie - Polsce Ludowej.."
        }
ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Tekst Przyrzeczenia Harcerskiego z 1957 roku"
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Mam szczerą wolę całym życiem pełnić służbę Polsce Ludowej, walczyć o prawdę i sprawiedliwość społeczną, nieść chętną pomoc każdemu człowiekowi, być posłusznym prawu harcerskiemu."
        }
 ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Przyrzeczenie ZHP z lat 70"
        }
  ElementListyNoImage
        {
            color: "brown"
            textSize: 15
            header: "Przyrzekam całym życiem służyć Tobie, Ojczyzno, być wiernym sprawie socjalizmu, walczyć o pokój i szczęście ludzi, być posłusznym Prawu Harcerskiemu."
        }
 ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Przyrzeczenie uchwalone na Zjeździe w Bydgoszczy w 1989 roku"
        }
  ElementListyNoImage
        {
            color: "brown"
            textSize: 15
            header: "Mam szczerą wolę całym życiem pełnić służbę Polsce, chętnie pomagać każdemu człowiekowi, być posłusznym prawu harcerskiemu."
        }
 ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Dwie roty przyrzeczenia do wyboru przez składającego"
        }
  ElementListyNoImage
        {
            color: "brown"
            textSize: 15
            header: "Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."
        }
  ElementListyNoImage
        {
            color: "brown"
            textSize: 15
            header: "Mam szczerą wolę całym życiem pełnić służbę Polsce, dążyć do Prawdy i Sprawiedliwości, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."
        }
 ElementListyNoImage
        {
            color: "black"
            textSize: tresc.textSize + 2
            header: "Prawo harcerskie ustanowione w 1995 roku po wielu dyskusjach zdecydowano na pozostawienie jednej roty przyrzeczenia. Wynikało to z konieczności dopasowania do wymogów Światowego Biura Skautowego. "
        }
  ElementListyNoImage
        {
            color: "brown"
            textSize: 15
            header: "Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."
        }

    }
}

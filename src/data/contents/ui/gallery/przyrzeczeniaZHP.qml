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

HPSPage {
    id: page
    title: "Przyrzeczenia ZHP"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ListModel {
                id: mainList
                ListElement { content: "Przyrzeczenie Szarych Szeregów"; rota: false }
                ListElement { content: "Ślubuję na Twoje ręce pełnić służbę w Szarych Szeregach, tajemnic służbowych dochować, do rozkazów służbowych się stosować, nie cofnąć się przed ofiarą życia."; rota: true }
                ListElement { content: "Tekst Przyrzeczenia Harcerskiego zatwierdzony przez Tymczasową Naczelną Radę Harcerską w 1945 roku"; rota: false }
                ListElement { content: "Przyrzekam uroczyście całym swym życiem dążyć do odbudowy Niepodległej, Demokratycznej i Sprawiedliwej Polski, pracować dla dobra powszechnego, postępować zawsze szlachetnie i być posłusznym prawu harcerskiemu. Tak mi dopomóż Bóg."; rota: true }
                ListElement { content: "Tekst Przyrzeczenia Harcerskiego zmieniony przez Tymczasową Naczelną Radę Harcerską w 1947 roku"; rota: false }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Bogu (Dobru Najwyższemu) i Polsce, nieść chętną pomoc bliźnim i być posłusznym prawu harcerskiemu."; rota: true }
                ListElement { content: "Tekst przyrzeczenia w Organizacji Harcerstwa Związku Młodzieży Polskiej (po likwidacji ZHP) 1951 rok."; rota: false }
                ListElement { content: "Przyrzekam uroczyście wobec kolegów i narodu polskiego uczyć się i pracować dla dobra Ojczyzny i spraw socjalizmu. Przyrzekam wiernie przestrzegać prawa harcerskiego - całym sercem zawsze i wszędzie służyć Polsce Ludowej."; rota: true }
                ListElement { content: "Tekst Przyrzeczenia Harcerskiego po reaktywacji ZHP w 1956 roku"; rota: false }
                ListElement { content: "Przyrzekam mojej drużynie postępować według prawa harcerskiego, strzec honoru harcerza, służyć zawsze wiernie mojej Ojczyźnie - Polsce Ludowej.."; rota: true }
                ListElement { content: "Tekst Przyrzeczenia Harcerskiego z 1957 roku"; rota: false }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Polsce Ludowej, walczyć o prawdę i sprawiedliwość społeczną, nieść chętną pomoc każdemu człowiekowi, być posłusznym prawu harcerskiemu."; rota: true }
                ListElement { content: "Przyrzeczenie ZHP z lat 70"; rota: false }
                ListElement { content: "Przyrzekam całym życiem służyć Tobie, Ojczyzno, być wiernym sprawie socjalizmu, walczyć o pokój i szczęście ludzi, być posłusznym Prawu Harcerskiemu."; rota: true }
                ListElement { content: "Przyrzeczenie uchwalone na Zjeździe w Bydgoszczy w 1989 roku"; rota: false }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Polsce, chętnie pomagać każdemu człowiekowi, być posłusznym prawu harcerskiemu."; rota: true }
                ListElement { content: "Dwie roty przyrzeczenia do wyboru przez składającego"; rota: false }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."; rota: true }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Polsce, dążyć do Prawdy i Sprawiedliwości, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."; rota: true }
                ListElement { content: "Prawo harcerskie ustanowione w 1995 roku po wielu dyskusjach zdecydowano na pozostawienie jednej roty przyrzeczenia. Wynikało to z konieczności dopasowania do wymogów Światowego Biura Skautowego. "; rota: false }
                ListElement { content: "Mam szczerą wolę całym życiem pełnić służbę Bogu i Polsce, nieść chętną pomoc bliźnim i być posłuszną/posłusznym Prawu Harcerskiemu."; rota: true }
            }
            Repeater {
                model: mainList
                delegate: ElementListyNoLayout {
                    color: rota ? "brown" : "black"
                    width: parent.width
                    header: content
                }
            }
        }
    }
}

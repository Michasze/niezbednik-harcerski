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
import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage

{
    title: "Harc-triki pakowania"
        ColumnLayout {
            id: rozdzial
        property int naglowekSize: 14
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "<b>Porady i harc tricki na wyjazdy harcerskie:</b>"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "1.Nie kupuj jedzenia sam!"
        }
        ElementListyNoImage
        {
            color: "black"
            textSize: rozdzial.naglowekSize
            alignH: Text.AlignJustify
            header: "Kupuj je z wspólnie. Uwierz bardzo pożyteczne. Po co kupować na 3 dni jeden bochenek chleba dla jednej osoby? Wątpię, że tyle zjesz sam! Możesz podzielić się zamiast tego z dwoma harc przyjaciółmi, za to oni podzielą się z Tobą np. dżemem bądź konserwą. Dzięki temu będziesz miał więcej miejsca w plecaku na inne rzeczy"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "2.Dużo osób o tym przypomina, lecz mało osób z tego korzysta. Lista rzeczy którą musisz wziąć!"
        }
        ElementListyNoImage
        {
            color: "black"
            textSize: rozdzial.naglowekSize
            alignH: Text.AlignJustify
            header: "Przygotuj takową listę dzień lub dwa dni przed wyjazdem, zrób to nawet tydzień wcześniej. Nie wiem jak Ty, lecz ja jestem mega zapominalska, więc potrzebuje takich list. Lista powinna być zawsze czytelna. Dzięki temu na pewno nie zapomnisz o swojej obozowej poduszcze. Bądź nie będziesz później musiał/ła jechać do innego miasta zawstydzony/na, bo zapomniałeś/łaś zabrać z miejsca wyjazdu butów na zmianę!"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "3.Jesteś czyściochem i uwielbiasz zawsze wyglądać dobrze? Absolutnie nie ma w tym nic złego, ale…"
        }
        ElementListyNoImage
        {
            color: "black"
            textSize: rozdzial.naglowekSize
            alignH: Text.AlignJustify
            header: "<p>Właśnie jest jedno małe “ale”. Nie bierz pod żadnym pozorem swojego ulubionego ręcznika, całej butelki ukochanego szamponu i parunastu kosmetyków! Nie na tym polegają przecież rajdy. Kiedyś jak wzięłam niewielką ilość kremu i tusz do rzęs to dobry znajomy który był w kadrze się śmiał, że nie idę na wybieg dla modelek tylko na wędrówkę…</p>
<p>Także, jak już bierzecie szampony, mydła i odżywki, to w wielorazowe buteleczki. Ręczniki najlepiej z mikrofibry. Nie dość że cienkie, szybko wysychają, to zajmują mało miejsca.</p>
<p>A kosmetyki do twarzy… ja biorę zawsze niewielkie testery, bo mam ich w domu dużo.  Dzięki temu kosmetyczka jest o wiele lżejsza. I nie biorę pudrów, cieni do powiek itd…</p>
<p>Naprawdę pomadka nawilżająca do ust, krem do twarzy i tusz do rzęs wystarczy!</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "4.Mimo że jestem wielką bałaganiarą, to w plecaku zawsze muszę mieć ład i porządek…"
        }
        ElementListyNoImage
        {
            color: "black"
            textSize: rozdzial.naglowekSize
            alignH: Text.AlignJustify
            header: "<p>Zawsze wiem gdzie co jest. I myślę, że każdy chciałby wiedzieć gdzie co ma.</p>
<p>Zdradzę Wam jedną z moich tajemnic… nie biorę dużej ilość ubrań oraz wszystko zawijam w rulony, jest to bardzo przydatne. A jak już zrobisz przed wyjazdem zestawy ubrań na dany dzień to masz zaoszczędzony również czas na wyjeździe.</p>
<p>Co z brudnymi ubraniami i bielizną? Dla wielu osób może to być niekomfortowe i chciały by jak najgłębiej schować te ubrania. Już lecę z pomocą, reklamówka wielorazowa na pewno będzie Waszym zbawieniem. Dlaczego wielorazowa? Rzadko one prześwitują, a dodatkowo izolują od zapachu. Jednocześnie nie marnujemy toreb jednorazowym wykorzystaniem.</p>"
        }
                ElementListyNoImage
                {
                    Layout.fillWidth: true
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    color: "green"
                    header:"Julia “Inka” Karpowicz"
        }
        }
}

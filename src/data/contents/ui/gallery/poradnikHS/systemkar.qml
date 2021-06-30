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
import org.kde.kirigami 2.13
import ".."

HPSPage {
        id: rozdzial8
        Layout.fillHeight: true
        title: qsTr("System kar i nagród")
     actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
     }
        ColumnLayout {
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Trudno jest wyważyć kary i nagrody tak, by nikt nie poczuł się urażony czy nawet prześladowany, a także by zastęp nie odczuł faworyzacji któregoś z członków. Każde działanie wymaga przemyślenia. Jeżeli potrzebujesz porady - nie wahaj sę poprosić o pomoc drużynowego. Lepiej skonsultować to wcześniej, niż by później źle dobrana kara czy nagroda skutkowała kłótniami w zastępie czy nawet odejściem z harcerstwa."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Bardzo wartościowe było stwierdzenie z kursu przewodnikowskiego, w którym uczestniczyłam - mówiące, by każda kara jaką stosujemy wobec harcerzy miała jakiś cel, rozwijający tę osobę w pozytywną stronę. Pamiętasz na pewno Andrzeja Małkowskiego — dzięki konstruktywnej karze, którą otrzymał od swoich przełożonych, powstała organizacja, której historia sięga już ponad stu lat - i my w niej działamy. Staraj się dobierać kary tak, by harcerz nie wyniósł z nich zniechęcenia i wypalenia, ale chęć do działania i refleksję nad tym, co zrobił nie tak."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Popularne „zrób sobie dziesięć” w wielu przypadkach daje znikomy rezultat, ba! - czasem harcerze celowo chcą podpaść, by móc popisać się przed resztą ile są w stanie zrobić karmych pompek, lub po prostu zabłysnąć — choćby negatywnie."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Lepiej wybrać np. poprowadzenie zbiórki na temat punktualności dla spóźnialskiego, propozycję sprawności Milczka dla zastępowego gaduły, zrobienie plakatu lub poprowadzenie zajęć z zakresu wiedzy, z którą dana osoba ma kłopot. Warto zaoferować przy tym swoją pomoc."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Często jednak wystarczy zwykła rozmowa, by człowiek zrozumiał, że zrobił źle. Nie bójmy się rozmawiać — rozmowa jest kluczem do wielu drzwi."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Nagrody są równie ważne - dzięki nim człowiek ma poczucie spełnienia, bycia zauważonym, wie że jego wysiłki nie poszły na marne. Czuje się zmotywowany. Jednak gdy przesadzimy z ilością nagród, stracą dla harcerzy swoją wartość. Jeśli zaś uczynimy z nagród coś dla elity, coś nieosiągalnego, po pewnym czasie harcerze stracą motywację i chęci. Znów przychodzi kwestia złotego środka."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Może to być wniosek o pochwałę w rozkazie drużynowego, nagrody przedmiotowe, parę dobrych słów powiedzianych przy innych osobach, czasem nawet można starać się o darmowy biwak po uzgodnieniu z kadrą. Możliwości Jest wiele — byle z głową!"
        }
      }
     }

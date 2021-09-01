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
    id: sheet_rozdzial9
    Layout.fillWidth: true
         Layout.fillHeight: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Konspekty zbiórek"

        ColumnLayout {
            width: sheet_rozdzial9.width
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Ech, te konspekty! Odwieczna zmora zastępowych."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "A one przecież są tworzone po to, żeby ułatwiać życie."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Trzymane pod ręką podczas prowadzenia zbiórki gwarantują, że nie pogubicie się ani nie pomylicie kolejności części zbiórki. Nie musicie stać i drapać się w głowę, próbując sobie przypomnieć, co teraz miało być - w konspekcie macie wszystko wynotowane."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Konspekty są też pomocą dla drużynowego - dzięki temu wiem, co robiliście na danej zbiórce."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Oczywiście możecie dać piękny konspekt, a w rzeczywistości godzinę siedzieć na telefonach... Ale jako drużynowa wychodzę z założenia, że krzyż na Waszej piersi i brązowy sznur na ramieniu coś oznacza — między innymi słowność. Zaufanie w relacji drużynowy-zastępowy jest kluczowe."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "W perspektywie czasu, po przewertowaniu konspektów z początku roku, jesteś w stanie zobaczyć, czy zastęp rozwinął się, czy nadal ma problemy z utrzymaniem ciszy w ważnych momentach, musztrą lub czymkolwiek innym, co ująłeś w ,uwagach” (patrz: przykładowy wzór konspektu)."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Wiesz, czy dana tematyka zbiórki zainteresowała członków zastępu, czy może nudzil się na niej jak mopsy, a może podeszli do niej obojętnie i nic nie wniosła. Ważne jest, żeby cały czas rozwijać swój sposób prowadzenia zbiórek by móc wyklarować sobie dobrego podzastępowego, który Cię wesprze, a w przyszłości może przejmie zastęp, gdy Ty pójdziesz krok dalej."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Wreszcie główne zadanie konspektu - jeżeli z jakiegoś powodu na godzinę przed zbiórką okaże się, że nie możesz jej przeprowadzić, bo się rozchorowałeś, wypadła rodzinna wizyta u stryjecznej ciotki albo przyleciało UFO, to wystarczy zrobić szachermacher, wysłać konspekt do podzastępowego i ten będzie wiedział, jak ma przeprowadzić tę zbiórkę."
        }
        ElementListyNoImage
        {
            color: "Royalblue"
            header: "<b>Przykładowy wzór konspektu:</b>"
        }

                Controls.Label {
                Layout.fillWidth: true
                Layout.maximumWidth: 320
                wrapMode: Text.WordWrap
                Layout.alignment: Qt.AlignHCenter
                text: "KONSPEKT ZBIÓRKI ZASTĘPU X 
                
Data: xx.xX.XxxXx
                
Miejsce: las, harcówka, siedziba drużyny, park, etc.

Cel: czyli czemu ma służyć ta zbiórka, co chcemy osiągnąć przeprowadzając tą zbiórkę (użyj słów: poznanie, kształtowanie, rozwijanie, budowanie, zapoznanie, poszukiwanie)

Zamierzenia: czyli co harcerze będą umieć, co osiągną po tej zbiórce, co ona im da (użyj sformułowań: po zbiórce harcerz wie, potrafi, zna, rozumie, buduje, kieruje się, tworzy)

Osoba odpowiedzialna: zastępowy ćw. Jan Nowak"
    
}
//NOTE Puste prostokąty z ramką jako elementy prostej tabeli. Zamienić na coś innego jeżeli znajdę coś ciekawego
//WARNING: tabela nie adaptuje się do wąskich ekranów
            GridLayout {
                columns: 4
                columnSpacing: 0
                rowSpacing: 0
                Layout.fillWidth: true
Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole1.implicitWidth
         height: 40
         Controls.Label {
             Layout.fillWidth: true
             id: pole1
             Layout.alignment: Qt.AlignHCenter
             text: "L.p."
         }
        }
       Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole2.implicitWidth
         height: 40
         Controls.Label {
             id: pole2
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Opis"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole3.implicitWidth
         height: 40
         Controls.Label {
             id: pole3
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Czas"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.rightMargin: 20
         Layout.minimumWidth: pole4.implicitWidth
         height: 40
         Controls.Label {
             id: pole4
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Potrzebne\n materiały"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumHeight: pole6.implicitHeight + 10
         Layout.minimumWidth: pole5.implicitWidth
//          height: 40
         Controls.Label {
             id: pole5
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "1"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.maximumWidth: pole6.implicitWidth + 10
         Layout.minimumHeight: pole6.implicitHeight + 10
         height: 40
         Controls.Label {
             id: pole6
             Layout.fillWidth: true
             wrapMode: Text.WordWrap
             Layout.alignment: Qt.AlignHCenter
             text: "Obrzędowe\n Rozpoczęcie\n Zbiórki (ORZ)"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumHeight: pole6.implicitHeight + 10
         Layout.minimumWidth: pole7.implicitWidth
//          height: 40
         Controls.Label {
             id: pole7
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "10 min."
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.rightMargin: 20
         Layout.minimumWidth: pole8.implicitWidth
         Layout.minimumHeight: pole6.implicitHeight + 10
//          height: 40
         Controls.Label {
             id: pole8
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Świece, gitara"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole9.implicitWidth
         height: 40
         Controls.Label {
             id: pole9
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "2."
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.maximumWidth: pole6.implicitWidth
         Layout.minimumWidth: pole10.implicitWidth
         height: 40
         Controls.Label {
             id: pole10
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Forma pracy X"
         }
        }
        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole11.implicitWidth
         height: 40
         Controls.Label {
             id: pole11
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "15 min."
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.rightMargin: 20
         Layout.minimumWidth: pole12.implicitWidth
         height: 40
         Controls.Label {
             id: pole12
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Ołówki, kartki"
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole13.implicitWidth
         height: 40
         Controls.Label {
             id: pole13
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "3."
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.maximumWidth: pole6.implicitWidth
         Layout.minimumWidth: pole14.implicitWidth
         height: 40
         Controls.Label {
             id: pole14
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "Forma pracy Y"
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole15.implicitWidth
         height: 40
         Controls.Label {
             id: pole15
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "20 min."
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.rightMargin: 20
         Layout.minimumWidth: pole16.implicitWidth
         height: 40
         Controls.Label {
             id: pole16
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "-"
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole17.implicitWidth
         height: 40
         Controls.Label {
             id: pole17
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: "itd."
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole18.implicitWidth
         height: 40
         Controls.Label {
             id: pole18
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: ""
         }
        }
                Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.minimumWidth: pole19.implicitWidth
         height: 40
         Controls.Label {
             id: pole19
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: ""
         }
        }
                        Rectangle
        {
         color: "transparent"
         border.color: "white"
         Layout.fillWidth: true
         Layout.rightMargin: 20
         Layout.minimumWidth: pole20.implicitWidth
         height: 40
         Controls.Label {
             id: pole20
             Layout.fillWidth: true
             Layout.alignment: Qt.AlignHCenter
             text: ""
         }
        }
            }

        }
    }


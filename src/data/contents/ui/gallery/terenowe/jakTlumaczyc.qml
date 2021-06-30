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
        Layout.fillHeight: true
        title: qsTr("Jak tłumaczyć zasady gry?")
     actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }       ColumnLayout {
        id: rozdzial
        property int naglowekSize: 12
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Wyznacz osoby odpowiedzialne (patrolowych)"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Opisywałem to już dokładnie w najczęstszych błędach.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Przygotuj sobie listę ważnych rzeczy do powiedzenia"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Również zostało to przeze mnie opisane, ale ma jeszcze jeden walor, pozwala nam poczuć się pewniej.</p>
<p><b>Gdy gra jest bardziej skomplikowana przygotuj kartki z zasadami, które rozdasz patrolowym.</b></p>
<p>Jeśli twoim zasadom bliżej jest do Kodeksu Hammurabiego (282 artykuły) niż dekalogu warto rozdać swoim patrolowym napisane/wydrukowane kartki z zasadami. Mogą przecież “przypadkiem” zapomnieć, że po przejściu pierwszego kilometra wolno im już chodzić jedynie tyłem.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Precyzyjnie określ zasady kontaktu z tobą “Druhu, bo my nie wiemy, gdzie jest ten punkt!”"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Chyba nie ma nic bardziej irytującego niż harcerz, który co 10 minut próbuje się do ciebie dodzwonić, bo nie jest pewny co teraz zrobić. Ustal granicę kontaktu z tobą. Oczywiście, należy powiedzieć też harcerzom, że jeśli komuś dzieje się krzywda mają dzwonić natychmiast.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Przygotuj specjalne wiadomości dla punktowych (kto, gdzie, ile patroli, co ma zabrać) "
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Taka wiadomość wysłana dzień wcześniej daje dużo większą pewność na to, że punktowy będzie dobrze przygotowany do gry. Dodatkowo zawsze może on wrócić do wiadomości i przypomnieć sobie o czym powiedzieć itd.</p>"
        }
        }
    }

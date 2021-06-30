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
import org.kde.kirigami 2.13 as Kirigami
import ".."

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Czekoladka"

    actions {
        main: Kirigami.Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.layers.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
       /* Image {
         source: ""   
          Layout.fillWidth: true
         Layout.minimumHeight: 200

         fillMode: Image.PreserveAspectFit
         anchors.horizontalCenter: opis.horizontalCenter
        }*/
                              ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: **"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Jeden z najpopularniejszych szyfrów, który ze względu na swoją pozorną trudność jest uwielbiany przez wielu – osoba nieznająca go bowiem może być przerażona widząc wypisane na kartce „dziwne znaczki”, jednakże poznając klucz rozwiąże go w kilka sekund. „Czekoladka” spokojnie możemy zaliczyć do grona podstawowych szyfrów harcerskich."
        }
    Kirigami.Icon
 {
     Layout.fillWidth: true
     isMask: true
     width: page.width
     Layout.minimumHeight: 200
     color: "white"
     source: "qrc:/contents/ui/img/szyfry/czeko.svg"
 }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Sposób szyfrowania: <br>
Na samym początku powinniśmy narysować klucz – najpierw tworzymy naszą „czekoladkę” (plansza jak do gry w kółko i krzyżyk), gdzie w okienka wpisujemy po dwie literki, idąc zgodnie z alfabetem – ostatnimi wpisanymi powinny być
literki „RS”. Następnie rysujemy krzyżyk i zaczynając od góry wpisujemy pomiędzy ramionami litery T-U-W-Y idąc zgodnie z ruchem wskazówek zegara, a na samym końcu rysujemy kółko, w które wpiszemy literkę „Z” (zgodnie z infografiką). W ten oto sposób powstał nasz klucz. <br><br>
Kodowanie jest niezmiernie proste – musimy bowiem przerysować kształt otaczający konkretną literkę, a następnie oznaczyć jej położenie za pomocą kropki (jest to szczególnie ważne w segmencie kratek, bowiem tam są po dwie literki – przykładowo: jeśli chodzi nam o literkę „A”, to kropkę zaznaczamy bliżej lewej krawędzi, a jeśli „B” - prawej). Przykład zakodowanego pozdrowienia „Czuwaj” znajduje się na infografice."
        }
    }
}

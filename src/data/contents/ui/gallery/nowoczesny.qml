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
    title: "Ekwipunek harcerski"
        ColumnLayout {
        width: pageFoto.width

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Nowoczesne technologie rozwijają sprzęt turystyczny cały czas. Na rynku pojawia się wiele ciekawych rozwiązań, które mają ułatwiać życie turystom. I wydaje się, że często instruktorzy powinni się w miarę orientować w harcerskim sprzęcie, żeby móc dzięki temu doradzić swoim harcerzom, a jednocześnie nauczyć ich tego jak odpowiedni sprzęt wybierać.

Oczywiście istnieją dobre sprawdzone rozwiązania, ale jednocześnie pojawiają się nowe, które mogą być lepsze. To trochę tak jak z noszeniem Józefów czy Janów, oczywiście te buty mają pewne zalety, ale jednocześnie sporo wad. Przede wszystkim są przestarzałe technologicznie, mają bardzo słabą amortyzację i problemy z kiepskiej jakości wkładkami oraz wagą. I są to buty całkiem niezłe za cenę około 100 złotych, ale jednocześnie nie należy się zamykać na rozwiązania, które są lepsze technologicznie. Buty turystyczne, które są teraz produkowane mają lepszą amortyzację, oddychalność, a jednocześnie niższą wagę. 
I oczywiście, możemy kupić nowoczesne buty trekkingowe, które nie będą się najlepiej sprawdzały, albo bardzo szybko się rozpadną. I tutaj kluczowy jest internet, czyli nieograniczone możliwości zasięgania opinii. Nie musimy wcale sami testować wszystkich nowoczesnych butów, bardzo często wystarczy, że sprawdzimy opinie na różnych kanałach na yt lub grupach na facebooku.

Mam wrażenie, że jak najczęściej powinniśmy skupiać się na poszukiwaniu nowych rozwiązań, bo stare sprawdzone mogą się okazać już nie tak dobrymi jak kiedyś na przykład ciężkie zimowe buty, które bardzo obciążają nasze stawy."
        }
        ElementListyNoImage {
           Layout.fillWidth: true
           alignH: Text.AlignHCenter
           format: Text.PlainText
           header: "Juliusz Idzikowski"
         }
        }
}

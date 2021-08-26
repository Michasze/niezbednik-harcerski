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

HPSPage {
    id: page
    title: "Jan Roman Bytnar \"Rudy\""

    ColumnLayout {
        width: page.width
        Image {
            source: "image://images/rudy1.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            Layout.alignment: Qt.AlignHCenter
            fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Pseudonim “Rudy” nie był jedynym, którego używał. Były też “Czarny”,”Krokodyl” czy “Janek”.

Janek urodził się 6 maja 1921 roku w Kolbuszowej. Jego ojciec był nauczycielem, a wcześniej żołnierzem Legionów Polskich. Jego mama również była pedagogiem. W 1930 roku zorganizowała na warszawskiej pradze pierwszą szkołę specjalną. Jan uczył się między innymi w Państwowym Gimnazjum im. Stefana Batorego. W 1934 roku złożył przyrzeczenie harcerskie w 23 Warszawskiej Drużynie im. Bolesława Chrobrego (Pomarańczarni). W 1938 roku uzyskał stopień Harcerza Rzeczypospolitej. Maturę zdał w 1939 roku.

Do konspiracji wstąpił jeszcze w 1939 roku. Najpierw do Polskiej Ludowej Akcji Niepodległościowej, a następnie do Związku Walki Zbrojnej. W Szarych Szeregach służył od 1941 roku. Jego przyrzeczenie Szarych Szeregów odbierał Stefan Mirowski. Pełnił funkcję komendanta hufca “Ochota”, gdzie był odpowiedzialny za akcje małego sabotażu. Zasłynął między innymi z akcji namalowania kotwicy na pomniku lotnika."
        }
        Image {
            source: "image://images/rudy3.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            Layout.alignment: Qt.AlignHCenter
            fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "W 1942 roku objął dowództwo nad grupą Sad, należącą do Grup Szturmowych. Brał udział między innymi w akcji mającej na celu wysadzenie torów kolejowych pod Kraśnikiem. Brał też udział w likwidacji niemieckiego urzędnika podczas akcji rozbrojeniowej ul. Emilii Plater.

Został aresztowany wraz ze swoim ojcem 23 marca 1943 roku. Zostali osadzeni na Pawiaku. Gestapo od razu rozpoczęło przesłuchania Rudego. Tortury stosowane podczas przesłuchania doprowadzały go do nieprzytomności. Pomimo tego Bytnar nie stracił kontroli nad sobą i nadstawiał na uderzenia jedno udo, aby ukryć bliznę po ranie, którą odniósł podczas jednej z akcji.

Akcja jego odbicia nosiła kryptonim “Meksyk II” szerzej znana jest jako Akcja pod Arsenałem. Po akcji został przeniesiony do punktu sanitarnego, a następnie do kolejnych kryjówek. Niestety jego stan ciągle się pogarszał. Ostatecznie trafił do Szpitala Wolskiego, gdzie zmarł.

Pochowano go pod zmienionym nazwiskiem “Jan Domański”. Pośmiertnie został mianowany do stopnia harcmistrza. Ojciec Bytnara zginął w 1945 roku podczas ewakuacji obozu koncentracyjnego."
        }
                ElementListyNoImage
                {
                    Layout.fillWidth: true
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    header: "Juliusz Idzikowski"
        }
    }
}

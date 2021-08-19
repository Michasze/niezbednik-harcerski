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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Janusz Brochwicz-Lewiński pseudonim \"Gryf\""

    ColumnLayout {
        width: page.width
        Image {
            source: "image://images/gryf.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Janusz Brochwicz-Lewiński pseudonim \"Gryf\" urodzony 17 września 1920 roku, żołnierz batalionu AK \"Parasol\".

Jako osiemnastolatek zaraz po skończeniu liceum zaciągnął się do armii. Służył w 76 Lidzkim Pułku Piechoty. Razem z pułkiem walczył w kampanii wrześniowej. Po agresji ZSRR na Polskę, został pojmany, ale zbiegł z niewoli.

Wstąpił do ZWZ-AK. Pracował jako agent polskiego wywiadu. Po dekonspiracji, przedostał się na Lubelszczyznę. Tam dowodził oddziałem partyzanckim, z którym atakował konwoje niemieckie. Niemcy nazywali go \"Rycerski Dowódca\". Jego oddział rozbrajał przeciwników, zabierał towary, a następnie puszczał ich wolno. 

W 1944 został wezwany do Warszawy gdzie miał szkolić żołnierzy Batalionu AK \"Parasol\". Podczas Powstania Warszawskiego 5 sierpnia dowodził legendarną obroną Pałacyku Michlera (zwanym Pałacykiem Michla). Jego oddział odparł kilka silnych niemieckich szturmów na tę pozycję. 

Na tej podstawie powstała piosenka Pałacyk Michla napisana przez Józefa Szczepańskiego. Piosenkę podczas Powstania Warszawskiego wykonywał Mieczysław Fogg, który również był żołnierzem AK o pseudonimie \"Ptaszek\". Fogg miał w ten sposób podtrzymywać morale walczących powstańców. 

Gryf brał również udział w akcji na aptekę - dzięki tej akcji Polacy zostali zaopatrzeni w środki opatrunkowe oraz znieczulające. Ósmego sierpnia podczas walk na Cmentarzu Ewangelickim został ciężko ranny w szczękę. Przez odniesione rany nie mógł już brać udziału w walce. Po tym zdarzeniu trafił do obozu przejściowego. Tam w 1945 roku został odnaleziony przez Amerykanów.  

Wyemigrował do Wielkiej Brytanii, gdzie służył w Brytyjskiej Armii (III Pułk Królewski Huzarów). Działał również jako agent Brytyjskiego wywiadu.  

W 2002 roku powrócił na stałe do Polski. Należał do organizacji kombatanckich, pomagał realizować różne projekty związane na przykład  z upamiętnieniem Powstania Warszawskiego

Zmarł 5 stycznia 2017 roku. Został pośmiertnie mianowany do stopnia Generała Dywizji.


Juliusz Idzikowski

"
        }
    }
}

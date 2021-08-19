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
    Layout.fillWidth: true

    title: "Władysław Mróz"
    ColumnLayout {
      
        Image {
            source: "image://images/mroz1.jpg,10"
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
            header: "Władysław Mróz
Urodzony w 1897 roku.
Podpułkownik Wojska Polskiego, zawodowy żołnierz. W stopniu majora dowodził I batalionem 5 pułku Strzelców Podhalańskich w Armii \"Kraków\".
Po krwawych walkach września 1939 roku, po bitwie pod Bronią został uznany za zaginionego, a tak naprawdę został ranny.
Powrócił w rodzinne strony i związał się z podziemiem niepodległościowym.
Po przejściu Armii Czerwonej i wejściu jednostek NKWD, Władysław Mróz wyjechał wraz ze swoją łączniczką do Bolesławca.
Podczas pobytu w Bolesławcu został aresztowany przez UB.
Władysław Mróz zmarł 1 września w piętnastą rocznicę ataku Niemiec na Polskę (1954 r).
Wiele lat później jego rodzina została powiadomiona, że podpułkownik został otruty przez lekarza pracującego w areszcie, który przeprowadzał eksperymenty na więźniach.
Jego grób znajduje się w środkowej alei zasłużonych dla Bolesławca, grobem opiekują się harcerze z Hufca im Szarych Szeregów.

Juliusz Idzikowski"
        }
         Image {
         source: "qrc:/contents/ui/img/mroz2.jpg"   
          Layout.fillWidth: true
          horizontalAlignment: Image.AlignHCenter
         Layout.maximumHeight: 300
         fillMode: Image.PreserveAspectFit
        } 
    }
}

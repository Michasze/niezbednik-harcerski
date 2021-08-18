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
    title: "Gawęda o grzybiarzu"

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
        Controls.Label {
            id: opis
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignLeft
            text: "
Dawno, dawno temu koło Krokowej w małej wiosce żył sobie w małej chatce grzybiarz. 
Jak możecie się wywiedzieć zbierał grzyby, a potem sprzedawał je na targu w Wejherowie. Pewnego lata obok jego chatki pojawili się harcerze. 

Podszedł do nich przywitał się i opowiedział im o sobie. Zaproponował że będzie mi przynosił grzyby na różne potrawy. Oczywiście, harcerze zgodzili się z uśmiechem na twarzy. Mijały lata, a harcerzy z Małopolski przybywało coraz więcej, a grzybiarz dalej zbierał dla nich grzyby w  pobliskim lesie, który ich otaczał.

Niestety po kilku latach grzybiarz odszedł. A jego chatka została porzucona 
i pochłonął ją las.

Ale legendy głoszą, że od drugiej w nocy do czwartej, krąży wokół obozowiska. Można go czasem zobaczyć w długim jesiennym płaszczu, kapeluszu, z laską i koszykiem 
w ręku.

Jacek Wątroba, Szary Dwór, 8 PDH \"Widmo\" im. Kamyka
"
        }
    }
 
    
}

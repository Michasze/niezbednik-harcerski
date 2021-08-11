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

    title: "Grupowy"

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
                              ElementListyNoImage
        {
            color: "brown"
            header: "Trudność: **"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Szyfr bazujący na Czekoladce – litery dzielimy na sześć grup po cztery literki każda. <br>
1. ABCD <br>
2. EFGH<br>
3. IJKL<br>
4. MNOP<br>
5. RSTU<br>
6. WXYZ<br>
Litery umieszczamy w „X” zaczynając od góry, a później zgodnie z ruchem wskazówek zegara."
        }
    HPSIcon
 {
     source: "image://icons/szyfry/grupowy.svg,white"
 }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Kodując zastępujemy daną literkę numerem grupy, z której pochodzi i oznaczamy ją na „X” w miejscu, w którym występuje.<br><br>
I tak hasło „Piesek” zakodujemy jako:
"
        }
            HPSIcon
 {
     source: "image://icons/szyfry/grupowy2.svg,white"
 }
    }
}

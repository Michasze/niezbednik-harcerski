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

    title: "Liczbowy | Matematyczny"

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
            header: "Trudność: ****"
        }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Jeden z najciekawszych szyfrów. Jego zdecydowanym atutem jest pełna dowolność w konstrukcji klucza, wadą natomiast – chaotyczność zapisu. Szyfr opiera się na tabelce na podstawie której konstruujemy interesującą nas wiadomość. Dodatkowo nie oddzielamy niczym słów, co powoduje iż powstaje nam równanie matematyczne, kryjące w sobie wiadomość. Elementami stałymi są liczby 1,2,3,4,5,6, a zamiennymi 7,8,9 oraz znaki +,x,-"
        }
    HPSIcon
 {
     source: "image://icons/szyfry/liczbowy.svg,white"
 }
                       ElementListyNoImage
        {
            color: "brown"
            header: "Każdą literę (oprócz A-B-C-D-E-F) możemy zapisać na dwa sposoby: przykładowo „H” jako „27”, ale także jako „2+”. Literę „A” w szyfrze oznaczamy jako „1”, „B” jako „2”, „C” jako „3”, „D” jako „4”, „E” jako „5”, a „F” jako „6”."
        }
            HPSIcon
 {
     source: "image://icons/szyfry/liczbowy2.svg"
 }
             HPSIcon
 {
     source: "image://icons/szyfry/liczbowy3.svg"
 }
                        ElementListyNoImage
        {
            color: "brown"
            header: "Tym samym wyraz <b> Harcerz </b> możemy zapisać jako: <br>
a) 2715x355x6- <br>
b) 2+158355869 <br>
c) 2+15x355x6- <br>
d) 27158355869 <br>
i tak dalej."
        }
        ElementListyNoImage
        {
            color: "brown"
            header: "Ciekawiej robi się przy szyfrowaniu pełnych zdań: <br>
Przykładowo „<font color=\"#1B95E2\">Harcerz</font> <font color=\"#7fff00\">jest </font><font color=\"#9370db\">odważny</font> ” możemy zapisać jako: <br> <br>
<font color=\"#1B95E2\">2715x355x6-</font><font color=\"#7fff00\">4756x1-</font><font color=\"#9370db\">3x43916-2x59</font>= <br>
ale także: <br>
<font color=\"#1B95E2\">2+158355869</font><font color=\"#7fff00\">4756x1-</font><font color=\"#9370db\">3x43916-2x59</font>= <br>
bądź też kodując inaczej pozostałe słowa."
        }
    }
}

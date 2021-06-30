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
import QtQuick 2.15
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage
{
 id: page
 title: qsTr("Robert Baden-Powell - cytaty")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Zarówno dla skauta jak i dla żołnierza dyscyplina i posłuszeństwo są równie ważne jak dzielność.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„We wszystkim więc co czynicie, pamiętajcie przede wszystkim o swoim kraju.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Wychowanie wilcząt i skautów polega przede wszystkim na przygotowaniu do służby, którą będą pełnić jako wędrownicy.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Wychowanie nasze nie jest militarystyczne ani w celach, ani w środkach.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Jeśli drużynowy obdarzy prawdziwą odpowiedzialnością zastępowego, (…) uczyni więcej dla ukształtowania charakteru tego chłopca.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Skauci są dziećmi wolnych przestrzeni, a skauting to braterstwo w służbie i świeże powietrze.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Czuwajcie – to znaczy postępujcie tak, by móc szczęśliwie żyć.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Istotę życia skautowego stanowi pełne tężyzny życie w terenie.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Chłopcy robią wszystko to, co robi drużynowy. Drużynowy odbija się w swoich chłopcach jak w lustrze.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Staraj się i ty dopóki jesteś na ziemi przez dobry czyn zrobić dziurę w kocu. Pamiętajcie też, że po zakończenia obozu winniście pozostawić po sobie te dwie rzeczy:
1. nic,
2. podziękowanie dla właściciela gruntu.“") 
     }
    Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Być dobrym , ale postępować dobrze to znacznie więcej.“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Celem wychowania skautowego jest podniesienie poziomu przyszłych, obywateli, szczególnie pod względem charakteru i zdrowia; zastąpienie samolubstwa służbą dla bliźnich, usprawnienie chłopców pod względem moralnym i fizycznym, aby mogli pełnić służbę bliźnim“") 
     }
    Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Musimy nauczyć naszych chłopców nie tylko jak żyć, ale jak cieszyć się życiem“") 
     }
     Cytat
     {
    autor: "Robert Baden-Powell"
    tresc: qsTr("„Teraz możecie uczynić to co jest głównym obowiązkiem skauta, mianowicie pomóc tym, co się znajdują w potrzebie, wszelkim sposobem jaki jest w waszej mocy“") 
     }
    }
}

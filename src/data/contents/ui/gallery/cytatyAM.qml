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
import org.kde.kirigami 2.14 as Kirigami
import Data 1.0

HPSPage
{
 id: page
 title: qsTr("Andrzej Małkowski - cytaty")
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
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Ukochanie i odczucie idei bardziej ją wcieli w życie niż najokrutniejsze regulaminy.“") 
     }
    Cytat
     {
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Niech nikt nie żąda czegokolwiek od organizacji, jeśli sam nie przyczynia się do jej istnienia.“") 
     }
    Cytat
     {
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Jeśli wymagam stosowania Prawa od dziewięcioletniego smyka, to o ileż bardziej muszę tego wymagać od siebie.“") 
     }
    Cytat
     {
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Dla naszego narodowego pożytku, dla naszej zbożnej pracy braterskiej, w której między zabawą w polu i gawędą dokoła obozowego ogniska kryje się myśl poważna — należy zdać sprawę z rzeczy towarzyszących i przez to zachęcić do podobnej pracy u nas.“") 
     }
    Cytat
     {
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Dla naszego narodowego pożytku, dla naszej zbożnej pracy braterskiej, w której między zabawą w polu i gawędą dokoła obozowego ogniska kryje się myśl poważna — należy zdać sprawę z rzeczy towarzyszących i przez to zachęcić do podobnej pracy u nas.“") 
     }
    Cytat
     {
    autor: "Andrzej Małkowski"
    tresc: qsTr("„Nie w tym jest wart człowiek,co przemyslał i przezył,ale co zrobił dobrego na świecie.“") 
     }
        
    }
}

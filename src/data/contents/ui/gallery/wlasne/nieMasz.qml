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
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

HPSPage
{
 id: page
 title: "Nie masz nad harcerza"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout
    {
    Loader
    {
        sourceComponent: tresc
    }
    Component
    {
  id: tresc
        ColumnLayout
        {
 Controls.Label
 {
     id: tekst
  wrapMode: Text.WordWrap
  text: "
Nie masz nad harcerza dzielniejszego człeka
Chociaż nie jest lekko nikt tu nie narzeka
Zimno mróz na dworze wiatr śniegiem zacina
Podartym mundurze idzie harcmaszyna

Pionierki buduje gwoździ się nie boi
Wszyscy uciekają kiedy w szpej się stroi
Toporek przy pasie mora już wyjęta
Ile przeszedł lasów sam już nie pamięta

Nogi ma otarte krew i pot się leje
A on dalej idzie i się śmieje
Dromader to sztuka nie do pokonania
Ich zajechać sztuka nie do wykonania

2019, 2 Drużyna Harcerska “Kedyw”,
Azkaban
"
 }
    }
    }
}
}

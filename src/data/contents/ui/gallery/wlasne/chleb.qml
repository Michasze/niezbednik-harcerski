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
 title: "Biały chleb i cudza kawa"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
 Controls.Label
 {
  id: tresc
  wrapMode: Text.WordWrap
  text: "
Jedzie autokar trzydrzwiowy
Na zadupie wiozą mnie
Polska ma tylko trzy strony
Morze, lasy, podgórze

Gdy swój namiot rozstawiłem
Wielki żal ogarnął mnie
Po policzkach łzy spłynęły
Zrozumiałem wtedy, że

Biały chleb i cudza kawa
Opętani są sennością
Myślą swą szukają szczęścia
Które zwie się miłością x2

Młodsza siostra zapytała
\"Mamo gdzie braciszek mój?\"
\"Brat twój na obozie siedzi
I pilnuje dzieci rój\"

Ref

Wtem przez poły warta wpada
I zaczyna budzić mnie
Wtem mój humor na twarz pada
I znów muszę wydrzeć się

I nadejdzie chwila błoga
Ten autokar wróci tu
Cały obóz stąd wywiozą
I za rok tu będą znów

Inny biały chleb i cudza kawa
Opętani są sennością
Myślą swą szukają szczęścia
Które zwie się miłością

2015 r.
Obóz WSH \"Tam i z Powrotem\"
22 WDSH \"Sitholile\"
Sierpień
Jaworze-Nałęże
"
 }
}

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
 title: "Lecą iskry"
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
  text: "Refren: Lecą iskry do nieba G 
Do nieba do nieba a 
Płomień serca ogrzewa H7 C7 
Wie dlaczego tutaj jest G 
Każdy z nas a 
Każdy z nas śpiewa tak: C7 H7 e

ZW I Pierwsza zbiórka, gra i biwak G a
Tak przygoda się zaczyna H7 e
Świetni ludzie i codziennie przygód sto G a
Chusta, obóz i wspomnienia H7 e
Już na zawsze życie zmienia G a
Tych harcerskich serc ogromna moc x2 (C7) H7 e

ZW II Rozpalone już ognisko 
Na Garbasiu noc jest długa 
Każdy siedzi, w ogień patrzy 
I historii życia słucha 
A gdy już w namiocie cisza 
Słychać tylko rechot żab 
To rozmyślasz o momentach 
Co się dzieją tu od lat x2 

ZW III Przyrzeczenie jedno w życiu 
Lecz rozświetla smutne dni 
Zapamiętaj już na zawsze 
Że harcerstwo znaczy \"my\" 
Bo braterstwo i odwaga 
Radość i ciekawość świata 
Całe życie podążamy 
Tam, gdzie nasze ideały 

ZW IV Jeszcze kiedyś na pewno 
Lecz nie dzisiaj nie teraz 
Wyciągniemy gitary 
Żeby znowu zaśpiewać x2

Kasia Kamińska, Samuel Salamon
"
 }
}

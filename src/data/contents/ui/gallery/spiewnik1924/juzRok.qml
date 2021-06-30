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
 title: "Już rok drugi jak Legjony"
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
  text: "
Już rok drugi jak Legjony
Walczą z wrogiem na wsze strony
Czy w Karpatach czy na Litwie
Młodzież polska ginie w bitwie

Ale kto pozostał żyw
Ten był wesół i szczęśliw
Wiara rumu fasowała-tra la la la bęc
Przez pamiętny Panter-pas
Rum beczkami szedł do nas
Pełna była manierka ma!

A pod owem Młodkowem
Tam niekażdy wszedł zdrowym
Bo tam naszych dziesiątkami
Leży w grobie pod sosnami

Ale kto pozostał żyw
W Kołomyi piwo piw
Aż miał cały browar w brzuchu tra la la bęc

Spędzał czułe sam na sam
Pośród Kołomyjskich dam
Bycze, bycze tygodnie dwa.

A w pamięci nie zaginie
Kirli Baba w Bukowinie
Bo tam nasi tysiącami
Marźli z zimna pod śniegami

Ale kto pozostał żyw
Na Hucułki nie był krzyw
Tam dziewczątka piękniutkie 
Więc je kochaj okrutnie- tra la la bęc
Wyszedł człowiek z gradu kul
Więc go dziewczę pieść i tul 
Boć to jedna rozrywka twa"
 }
}

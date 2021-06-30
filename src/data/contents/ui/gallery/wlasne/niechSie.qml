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
 title: "Niech się rozpalą ogniska"
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
  text: "Niech się rozpalą ogniska, eD
niech iskry sypią się złote, eD
niech słowa nasze gorące, GD
popłyną ponad namiotem eD
i w kręgu z rąk zaplecionych eD
niech każdy słowem przyrzeknie eD
że przyjaźń nasza zostanie GD
chodź czas i życie ucieknie De

Ref: Bo czas mija dni lecą
Już cień zasnuwa nam twarze
Ale nam nikt nie odbierze
Ni wspomnień naszych ni marzeń.

A przyjaźń nasza harcerska
chodź nie przeżyje wieczności
pomoże nam nieść przez życie
troszkę harcerskiej radości
I choć powiedzą Ci kiedyś
że nic nie warte wspomnienia
ty żyjesz, żyjesz naprawdę
póki masz jeszcze marzenia

Ref: Bo czas mija …


Krąg Instruktorski \"Fen\"
"
 }
}

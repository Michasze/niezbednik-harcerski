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
 title: "Wstań"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        visible: false
        shortcut: "Alt+Q"
    }
 Controls.Label
 {
  id: tresc
  text: "
Wstań, porzuć domowe pielesze
Tam zbrojne czekają cię rzesze
I rwący się czeka cię koń
Za broń, za broń!!

Wstań, oto nadchodzi dzień chwały
Na który już lata czekały
A który uwieńczy ci skroń
Za broń, za broń!!

Wstań, oto nadchodzi świtanie
Lud przeciw ciemięzcy powstanie
Od mężów zaroi się błoń
Za broń-za broń!!

Boże Ojcze z niebios Panie
Tu na ziemię ześlij nam
Twoje święte zmiłowanie
Tu na ziemię ześlij na nam

Boże Ojcze my w pokorze
Łaski Twej prosimy Cię
Bo dłoń Twoja wszystko może
Ty nad nami zmiłuj się
"
 }
}

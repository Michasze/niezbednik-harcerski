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
 title: "Czy w radzie czy w zwadzie"
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
Czy w radzie czy w zwadzie
Czy walnej gromadzie
W modlitwie czy w bitwie
Czy w harcu-w gonitwie
Rycerskie rzemiosło
Nad wszystkie rej wiedzie
Bo wszędzie ten pierwszy
Kto w boju na przedzie
Z potrzeby w potrzebę
I z cwału w cwał
Ze szańca na szaniec
I z wału na wał
To roskosz-to roskosz
To roskosz jedyna
Rycerska przyczyna
Rycerska to tan
Co wszędzie gdzie tylko
Co rycerz to pan"
 }
}

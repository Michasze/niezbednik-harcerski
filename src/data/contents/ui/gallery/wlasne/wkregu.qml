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
 title: "W kręgu ognia"
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
  text: "W Kręgu ognia z nami siądź, a G
Bratnim gestem podaj dłoń,  G a
Gdy pod niebem szumi polski las, a F G
I pradziejów echa wzbudzą w nas, C F C
Razem spójrzmy tam, gdzie w wieczornej łunie ptak,   FC
Srebrzysty ptak, godło Twe, Ojczyzna. a G a
Gdzieś za nami mrok gęstnieje, 
Noc się skrada poprzez knieje,
Obejmuje już namiotów krąg,
Czerń zatapia nasz harcerski dom,
Obóz \"Wigry\", tu żyliśmy tyle dni, odchodzą już 
Wrócą znów wspomnieniem.
Drży wśród sosen ciepły blask,
Rzuca cienie aż do gwiazd, 
Płynie z dołu od jeziora mgła,
Bór ostatnią pieśń wakacji gra.
Kończy się przygody naszej letniej czas, beztroski czas,
Wkrótce już rozstanie. 
Żar ogniska trafi móc,
Gdy stajemy późno w noc,
Krzepnie w mroku łańcuch serc i rąk,
Echo \"czuwaj\" wraca z pól i łąk, 
Jutro znów otrząśnie rosę nowy dzień, bezpieczny dzień, 
Idźmy więc, harcerze 

(na melodię Sound of silence)

hm. Zdzisław Abramowicz
"
 }
}

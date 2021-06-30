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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage {
    id: page
    background: Rectangle {
        anchors.fill: parent
        color: "Black"
    }
    title: qsTr("Ciekawostki historyczne")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }




ColumnLayout{
    spacing: 15
    KartaIkona { 
        header: "HZNP"
        opis: "Ciekawostki o Harcerstwie Związku Narodowego Polskiego"
        ikona: "qrc:/contents/ui/img/HZNP.svg"
        adres: "HZNP.qml"
    }
    HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaIkona { 
        header: "Pochodzenie słowa \"harcerz\""
        opis: "Skąd pochodzi słowo \"harcerz\"?"
        ikona: "qrc:/contents/ui/img/harcerz.svg"
        adres: "harcerz.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    Karta { 
        header: "Zlot ZHP w Spale"
        opis: "Jubileuszowy Zlot w Spale"
        ikona: "qrc:/contents/ui/img/spala.svg"
        adres: "spala.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    Karta { 
        header: "Kamień pamiątkowy"
        opis: "ku czci harcerzy poległych w walce o polskość Wrocławia"
        ikona: "qrc:/contents/ui/img/kamien.jpg"
        adres: "kamien.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }


        
  }
}


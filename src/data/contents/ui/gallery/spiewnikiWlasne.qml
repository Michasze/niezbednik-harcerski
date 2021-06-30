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

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage {
    id: page
    title: qsTr("Śpiewniki")

    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }

ColumnLayout
{
KartaStronaNoImage { 
        header: "Nie masz nad harcerza"
        opis: "2 Drużyna Harcerska \“Kedyw\”"
        ikona: "qrc:/contents/ui/img/kedyw.svg"
        adres: "wlasne/nieMasz.qml"
    }
KartaStronaNoImage { 
        header: "Biały chleb i cudza kawa"
        opis: "22 WDSH \"Sitholile\""
        ikona: ""
        adres: "wlasne/chleb.qml"
    }
    KartaStronaNoImage { 
        header: "Iskierka... naszych czasów"
        opis: "dh. Adam Madejski"
        ikona: ""
        adres: "wlasne/iskierka.qml"
    }
    KartaStronaNoImage { 
        header: "W kręgu ognia"
        opis: "hm. Zdzisław Abramowicz"
        ikona: ""
        adres: "wlasne/wkregu.qml"
    }
    KartaStronaNoImage { 
        header: "Lecą iskry"
        opis: "Kasia Kamińska, Samuel Salamon"
        ikona: ""
        adres: "wlasne/lecaiskry.qml"
    }
    KartaStronaNoImage { 
        header: "Niech się rozpalą ogniska"
        opis: "Krąg Instruktorski “Fen”"
        ikona: ""
        adres: "wlasne/niechSie.qml"
    }

        }
    }

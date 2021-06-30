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
    title: qsTr("Artykuły")

    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }

ColumnLayout
{
    spacing: 15
KartaStronaNoImage { 
        header: "Fazy rozwoju drużynowego"
        opis: "Juliusz Idzikowski"
        adres: "pracaNauczyciela.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Zbiórki w terenie"
        opis: "Juliusz Idzikowski"
        adres: "zbiorkiWTerenie.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Jak promować harcerstwo?"
        opis: "Juliusz Idzikowski"
        adres: "promocja.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Tężyzna fizyczna"
        opis: "Juliusz Idzikowski"
        adres: "tezyzna.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Ekwipunek harcerski"
        opis: "Juliusz Idzikowski"
        adres: "nowoczesny.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Dlaczego kadra ma własne namioty?"
        opis: "Juliusz Idzikowski"
        adres: "kadraNamioty.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Zjazd ZHP w Bydgoszczy - 30 lat minęło"
        opis: "Ryszard Pacławski"
        adres: "zjazd.qml"
    }
     HPSSeparator
    {
        Layout.fillWidth: true
    }
KartaStronaNoImage { 
        header: "Prawie Wszystko o sprawnościach"
        opis: "Janusz Sikorski"
        adres: "prawie.qml"
    }

        }
    }

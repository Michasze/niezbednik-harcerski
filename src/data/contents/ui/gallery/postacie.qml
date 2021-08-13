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
    title: qsTr("Postacie")
    
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
ColumnLayout{
    spacing: 15
    KartaStrona {
        header: "Robert Baden-Powell"
        opis: "Twórca skautingu"
        ikona: "image://images/Baden-Powell.jpg"
        adres: "badenPowell.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }

    KartaStrona { 
        header: "gen. August Fieldorf pseudonim \"Nil\""
        opis: "Dowódca Kedywu, zastępca Komendanta AK"
        ikona: "image://images/Nil2.jpg"
        adres: "Nil.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona {
        header: "Jan Bytnar \"Rudy\""
        opis: "Komendant hufca \"Ochota\" "
        ikona: "image://images/rudy2.jpg"
        adres: "rudy.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona {
        header: "Andrzej Małkowski"
        opis: " "
        ikona: "image://images/Andrzej_Malkowski.jpg"
        adres: "malkowski.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona {
        header: "Olga Małkowska"
        opis: " "
        ikona: "image://images/Olga_Malkowska.jpg"
        adres: "malkowska.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona { 
        header: "Święty Jerzy"
        opis: "Ciekawostki o patronie harcerstwa"
        ikona: "image://images/swJerzy2.jpg"
        adres: "swJerzy.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona { 
        header: "Hubert Bonin"
        opis: "O życiu założyciela harcerstwa w Bolesławcu"
        ikona: "image://images/HubertBonin.jpg"
        adres: "hubertBonin.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona { 
        header: "Stefan \“Grot\” Rowecki"
        opis: "Dowódca Armii Krajowej, Komendant Związku Walki Zbrojnej"
        ikona: "image://images/Grot2.jpg"
        adres: "Grot.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
        KartaStrona { 
        header: "Marian Pluciński"
        opis: "pseudonim \"Mściciel\""
        ikona: "image://images/msciciel.jpg"
        adres: "msciciel2.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
        KartaStrona { 
        header: "Ludwik Idzikowski"
        opis: "Pilot okresu międzywojennego"
        ikona: "image://images/LudwikIdzikowski2.jpg"
        adres: "LudwikIdzikowski.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
        KartaStrona { 
        header: "Stanisław Skalski"
        opis: "lotnik w Wojsku Polskim w trakcie II wojny światowej"
        adres: "stanislawSkalski.qml"
        ikona: "image://images/Stanislaw_skalski2.jpg"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
        KartaStrona { 
        header: "Janusz Brochwicz-Lewiński pseudonim \"Gryf\" "
        opis: "żołnierz batalionu AK \"Parasol\""
        adres: "gryf.qml"
        ikona: "image://images/gryf2.jpg"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }

        KartaStrona { 
        header: "Zabójstwo Władysława Mroza"
        opis: "Porównanie informacji prasowych"
        adres: "zabojstwo_mroza.qml"
        ikona: "image://images/zabojstwo_mroza.jpg"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }

        KartaStrona { 
        header: "Władysław Mróz"
        opis: "Dowódca I batalionu 5 pułku Strzelców Podhalańskich"
        ikona: "image://images/mroz3.jpg"
        adres: "mroz.qml"
    }

        HPSSeparator
    {
        Layout.fillWidth: true
    }

        KartaStronaNoImage { 
        header: "Jan Borysewicz"
        opis: "pseudonim \"Krysia\", \"Mściciel\""
        adres: "msciciel.qml"
    }
}

        
}


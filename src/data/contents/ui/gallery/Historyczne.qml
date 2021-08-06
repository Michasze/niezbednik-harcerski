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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
 id: page
 title: qsTr("Historia")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        visible: !Kirigami.Settings.isMobile ? true : false
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList

        ElementListyNoImage {
    header: "Postacie"
    wysokosc: 120
    textSize: invisibleSlider.value + 2
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("postacie.qml"))
    }
        }

KartaStronaIkona { 
        header: "Harcerstwo Związku Narodowego Polskiego"
        opis: "Ciekawostki o Harcerstwie Związku Narodowego Polskiego"
        ikona: "qrc:/contents/ui/img/HZNP.svg"
        adres: "HZNP.qml"
    }
    HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStronaIkona { 
        header: "Harcerz "
        opis: "Skąd pochodzi ten wyraz?"
        ikona: "qrc:/contents/ui/img/harcerz.svg"
        adres: "harcerz.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona { 
        header: "Zlot ZHP w Spale"
        opis: "Jubileuszowy Zlot w Spale"
        ikona: "qrc:/contents/ui/img/spala.svg"
        adres: "spala.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona { 
        header: "Kamień pamiątkowy"
        opis: "Ku czci harcerzy poległych w walce o polskość Wrocławia"
        ikona: "qrc:/contents/ui/img/kamien.jpg"
        adres: "kamien.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStrona {
        header: "Wyjątkowe krzyże harcerskie"
        opis: "Ciekawe i nietypowe formy krzyża"
        ikona: "qrc:/contents/ui/img/krzyz2.jpg"
        adres: "wyjatkowe.qml"
    }

        HPSSeparator
    {
        Layout.fillWidth: true
    }

    KartaStronaIkona {
        header: "Dzień Myśli Braterskiej"
        ikona: "qrc:/contents/ui/img/dmb.svg"
        opis: "Historia święta skautów"
        adres: "DMB.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStronaIkona {
        header: "Najważniejsze daty w historii harcerstwa"
        ikona: "qrc:/contents/ui/img/1907.svg"
        opis: ""
        adres: "daty.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStronaNoImage {
        header: "Dawne roty przyrzeczenia"
        opis: ""
        adres: "histPrzyrzeczenia.qml"
    }

        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStronaNoImage {
        header: "Historyczne prawa harcerskie"
        opis: ""
        adres: "histPrawa.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
    KartaStronaNoImage {
        header: "Lista znanych osób, które były w harcerstwie"
        opis: "Znani harcerze i skauci"
        adres: "listaZnanych.qml"
    }

    }
}

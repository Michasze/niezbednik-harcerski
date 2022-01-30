/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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

HPSPage
{
    id: page
    title: qsTr("Historia")
    Controls.Pane
    {
    Column {
        anchors.fill: parent
        spacing: 20
        ElementListyImageNoLayout {
            id: postacie
            height: 150
            ikona: "image://images/Baden-Powell.jpg,20"
            isUrl: false
            odnosnik: "postacie.qml"
            header: "Postacie"
        }
        KartaStronaNoLayout {
            header: "Harcerstwo Związku Narodowego Polskiego"
            opis: "Organizacja harcerska w Stanach Zjednoczonych"
            ikona: "qrc:/contents/ui/img/HZNP.svg"
            isVector: true
            adres: "HZNP.qml"
        }
        KartaStronaNoLayout {
            header: "Harcerz "
            opis: "Skąd pochodzi ten wyraz?"
            ikona: "qrc:/contents/ui/img/harcerz.svg"
            isVector: true
            adres: "harcerz.qml"
        }
        KartaStronaNoLayout {
            header: "Zlot ZHP w Spale"
            opis: "Jubileuszowy Zlot w Spale"
            ikona: "image://icons/spala.svg"
            isVector: true
            adres: "spala.qml"
        }
        KartaStronaNoLayout {
            header: "Kamień pamiątkowy"
            opis: "Ku czci harcerzy poległych w walce o polskość Wrocławia"
            ikona: "image://images/kamien.jpg"
            adres: "kamien.qml"
        }
        KartaStronaNoLayout {
            header: "Wyjątkowe krzyże harcerskie"
            opis: "Ciekawe i nietypowe formy krzyża"
            ikona: "image://images/krzyz2.jpg"
            adres: "wyjatkowe.qml"
        }
        KartaStronaNoLayout {
            header: "Lista znanych osób, które były w harcerstwie"
            ikona: "image://images/neilA.jpg"
            opis: "Znani harcerze i skauci"
            adres: "listaZnanych.qml"
        }
        KartaStronaNoLayout {
            header: "Dzień Myśli Braterskiej"
            ikona: "image://icons/dmb.svg,white"
            isVector: true
            opis: "Historia święta skautów"
            adres: "DMB.qml"
        }
        KartaStronaNoLayout {
            header: "Najważniejsze daty w historii harcerstwa"
            ikona: "image://icons/1907.svg,white"
            isVector: true
            opis: ""
            adres: "daty.qml"
        }
        KartaStronaNoLayout {
            header: "Dawne roty przyrzeczenia"
            ikona: "image://icons/zwoj.svg,white"
            isVector: true
            opis: ""
            adres: "histPrzyrzeczenia.qml"
        }
        KartaStronaNoLayout {
            header: "Historyczne prawa harcerskie"
            ikona: "image://icons/zwoj.svg,white"
            isVector: true
            opis: ""
            adres: "histPrawa.qml"
        }

    }
    }
}

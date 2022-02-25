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


HPSPage {
    id: page
    title: qsTr("Gawędy")
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            KartaStronaNoLayout {
                header: "Opowieść o grzybiarzu"
                opis: "autor: Jacek Wątroba"
                adres: "grzybiarz.qml"
            }
            KartaStronaNoLayout {
                header: "Powstaniec"
                opis: "autorzy: Ćwikowie na próbie 2021 Chomętowo"
                adres: "powstaniec.qml"
            }
            KartaStronaNoLayout {
                header: "Zwyczaje przy ognisku"
                opis: "autor: Wojciech Jakubczyk"
                adres: "zwyczaje.qml"
            }
            KartaStronaNoLayout {
                header: "Iskra braterstwa"
                opis: "autor: Alicja Kowalska"
                adres: "iskra.qml"
            }
        }
    }
}

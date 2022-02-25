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

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls


HPSPage {
    id: page
    title: qsTr("Artykuły")
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            KartaStronaNoLayout {
                header: "Fazy rozwoju drużynowego"
                opis: "Juliusz Idzikowski"
                adres: "pracaNauczyciela.qml"
            }
            KartaStronaNoLayout {
                header: "Zbiórki w terenie"
                opis: "Juliusz Idzikowski"
                adres: "zbiorkiWTerenie.qml"
            }
            KartaStronaNoLayout {
                header: "Jak promować harcerstwo?"
                opis: "Juliusz Idzikowski"
                adres: "promocja.qml"
            }
            KartaStronaNoLayout {
                header: "Tężyzna fizyczna"
                opis: "Juliusz Idzikowski"
                adres: "tezyzna.qml"
            }
            KartaStronaNoLayout {
                header: "Ekwipunek harcerski"
                opis: "Juliusz Idzikowski"
                adres: "nowoczesny.qml"
            }
            KartaStronaNoLayout {
                header: "Dlaczego kadra ma własne namioty?"
                opis: "Juliusz Idzikowski"
                adres: "kadraNamioty.qml"
            }
            KartaStronaNoLayout {
                header: "Zjazd ZHP w Bydgoszczy - 30 lat minęło"
                opis: "Ryszard Pacławski"
                adres: "zjazd.qml"
            }
            KartaStronaNoLayout {
                header: "Prawie Wszystko o sprawnościach"
                opis: "Janusz Sikorski"
                adres: "prawie.qml"
            }
        }
    }
}

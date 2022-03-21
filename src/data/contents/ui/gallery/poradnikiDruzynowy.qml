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

import QtQuick 2.0
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: "Poradnik drużynowego"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            KartaStronaNoLayout {
                header: "Biwaki"
                opis: ""
                ikona: "image://icons/namiot_biwakowy.svg,white"
                adres: "biwaki.qml"
            }
            /*        KartaStronaNoLayout {
                      header: "Zbiórki"
                      opis: ""
                      adres: "blank.qml"
                      } */
            KartaStronaNoLayout {
                header: "Sprawności"
                opis: ""
                ikona: "image://icons/sprawnosci.svg,white"
                adres: "sprawnosci.qml"
            }
            /* KartaStronaNoLayout { */
            /*     header: "Praca drużyny" */
            /*     opis: "" */
            /*     adres: "kacikInne.qml" */
            /* } */
            /*         KartaStronaNoLayout { */
            /*           header: "Nabory" */
            /*           opis: "" */
            /*           adres: "blank.qml" */
            /*           } */
        }
    }
}

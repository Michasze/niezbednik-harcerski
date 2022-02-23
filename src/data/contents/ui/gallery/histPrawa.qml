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
    title: qsTr("Historyczne prawa harcerskie")
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            KartaStronaNoLayout {
                ikona: "qrc:/contents/ui/img/tur.svg"
                header: "Czerwone Harcerstwo"
                isVector: true
                opis: ""
                adres: "prawoTur.qml"
            }
            KartaStronaNoLayout {
                ikona: "image://images/skaut.jpg"
                header: "Prawo skautowe"
                opis: "Opublikowane przez Andrzeja Małkowskiego"
                adres: "prawoSkaut.qml"
            }
            KartaStronaNoLayout {
                ikona: "image://images/brownsea.jpg"
                header: "Prawo skautowe"
                opis: "Przetłumaczone prawo skautowe"
                adres: "prawoSkautEng.qml"
            }
        }
    }
}

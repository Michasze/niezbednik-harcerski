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
import QtQuick.Layouts 1.2


HPSPage {
    id: page
    title: qsTr("Dawne roty przyrzeczenia")
ColumnLayout
{
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/tur.svg"
        header: "Czerwone Harcerstwo"
        opis: ""
        adres: "przyrzeczenieTur.qml"
    }
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/zhp.svg"
        header: "Związek Harcerstwa Polskiego"
        opis: ""
        adres: "przyrzeczeniaZHP.qml"
    }
KartaStrona {
        ikona: "image://images/skaut.jpg"
        header: "Ślubowanie Skautowe"
        opis: ""
        adres: "przyrzeczenieSkaut.qml"
    }
KartaStronaNoImage {
        header: "Przysięga skautowa"
        opis: ""
        adres: "przyrzeczenieSkautEng.qml"
    }
        }
    }

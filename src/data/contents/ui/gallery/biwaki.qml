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
    title: qsTr("Biwaki")

ColumnLayout
{
KartaStronaNoImage { 
        header: "10 Zasad biwaku wędrownego"
        opis: "pwd. Juliusz Idzikowski"
        adres: "zasadyBiwak.qml"
    }
KartaStronaNoImage {
        header: "Poradnik organizacji biwaku"
        opis: "phm. Beniamin Marek"
        adres: "organizacjaBiwaku.qml"
    }

        }
    }

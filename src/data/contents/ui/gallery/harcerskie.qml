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

import QtQuick 2.0
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Poradniki harcerskie"
    ColumnLayout {
        id: mainlayout
KartaStronaIkona {
    header: "Harcerska geoskrytka"
    opis: "pwd. Juliusz Idzikowski"
    ikona: "image://icons/geo2.svg,white"
    adres: "geo.qml"
    }
KartaStronaIkona {
    header: "Jak organizować gry terenowe?"
    opis: "pwd. Juliusz Idzikowski"
    ikona: "image://icons/kosci.svg,white"
    adres: "terenowe.qml"
    }
KartaStronaIkona {
    header: "Ultralight"
    opis: "pwd. Juliusz Idzikowski"
    ikona: "image://icons/plecak.svg,white"
    adres: "ultralight.qml"
    }
KartaStronaIkona {
    header: "Jak spać ciepło podczas biwaków i wędrówek?"
    ikona: "image://icons/spiwor.svg,white"
    opis: "pwd. Juliusz Idzikowski"
    adres: "jakSpac.qml"
    }
KartaStronaNoImage {
    header: "Jak stworzyć mapę miejsc wędrówkowych?"
    opis: "pwd. Juliusz Idzikowski"
    adres: "mapaMiejsc.qml"
    }
KartaStronaNoImage {
    header: "Porady i harc tricki na wyjazdy harcerskie"
    opis: "Julia “Inka” Karpowicz"
    adres: "porady.qml"
    }

}
}

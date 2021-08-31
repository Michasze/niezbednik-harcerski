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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2


HPSPage {
    id: page
    title: qsTr("Pomysły na zbiórki")

ColumnLayout
{
    KartaStronaIkona {
        header: "Zbiórka fotograficzna"
        opis: "Jak przygotować zbiórkę fotograficzną online?"
        ikona: "qrc:/contents/ui/img/camera-photo.svg"
        adres: "fotograficzna.qml"
    }
    KartaStronaIkona {
        header: "Ekosystem w słoiku"
        opis: "Jak przygotować roślinkę w słoiku?"
        ikona: "qrc:/contents/ui/img/applications-science.svg"
        adres: "ekosystem.qml"
    }
    KartaStronaIkona {
        header: "Podróże małe i duże"
        opis: "Harcerskie wędrowanie tam i z powrotem."
        ikona: "image://icons/edit-paste-in-place.svg,white"
        adres: "podroze.qml"
    }
    KartaStronaIkona {
        header: "Gra fabularna"
        opis: "w klimatach bloku wschodniego."
        ikona: "image://icons/kosci.svg,white"
        adres: "gra_warsztaty.qml"
    }
    KartaStronaIkona {
        header: "Geoguessr"
        opis: "Pomysł na zdalną zbiórkę z ćwiczeniem spostrzegawczości."
        ikona: "image://icons/atmosphere.svg,white"
        adres: "geoguessr.qml"
    }
        }
    }

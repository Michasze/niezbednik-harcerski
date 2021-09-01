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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Prawo Harcerskie"


    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>1.</b> Gotowy – psychicznie, fizycznie, duchowo."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Czysty – na ciele, w myślach, w mowie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> Uczciwy – nie kłamie, nie oszukuje, nie kradnie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Dzielny – odważny w obliczu niebezpieczeństwa, krytyki i groźby."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Wierny – Bogu, Kościołowi, rodzinie, przyjaciołom."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Uprzejmy – miły, grzeczny, troskliwy."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Posłuszny – rodzicom, liderom, przełożonym."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Duchowy – modli się, czyta Biblię, głosi Ewangelię."
        }
    }


}

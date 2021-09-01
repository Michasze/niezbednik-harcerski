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

    title: "Prawo Skautowe"

    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Skaut Króla jest:</b>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Duchowy</b> – modli się, czyta Biblię, głosi Ewangelię."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Gotowy</b> – słuchać, myśleć, mówić, działać."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Czysty</b> – w sercu, w mowie, na ciele."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Uczciwy</b> – nie kłamie, nie kradnie, można na nim polegać."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Dzielny</b> – w obliczu niebezpieczeństwa, krytyki, groźby."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Wierny</b> – Bogu, Kościołowi, rodzinie, przyjaciołom, Ojczyźnie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Uczynny</b> – ofiarny, życzliwy, troskliwy."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Posłuszny</b> – Bogu, rodzicom, liderom."
        }

    }


}

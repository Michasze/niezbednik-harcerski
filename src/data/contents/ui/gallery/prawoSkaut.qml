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
            header: "<b>Wersja prawa skautowego opublikowana w 1914 roku.</b>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>1.</b> Na słowie skauta można polegać jak na Zawiszy,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Skaut wiernie służy Ojczyźnie,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> Skaut ma obowiązek być pożytecznym i pomagać innym,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Skaut jest przyjacielem wszystkich, a bratem każdego skauta,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Skaut jest rycerski,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Skaut jest przyjacielem przyrody,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Skaut jest posłuszny rozkazom swych rodziców, patrolowego i skautmistrza,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Skaut uśmiecha się i pogwizduje w każdym trudnym położeniu,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>9.</b> Skaut jest oszczędny,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>10.</b> Skaut nie pali tytoniu, nie pije napojów alkoholowych i jest czysty w myśli, w mowie i w uczynkach."
        }
    }


}

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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Stopnie Harcerskie - Rodło"
    ColumnLayout {
        width: page.width
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/mlodzik_oh.svg"
            color: "#959764"
            header: "Młodzik"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/sam_oh.svg"
            color: "#959764"
            header: "Samarytanin\nSamarytanka"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/cwik_oh.svg"
            color: "#959764"
            header: "Ćwik"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/zwiadowca.svg"
            color: "#959764"
            header: "Zwiadowca\nZwiadowczyni"
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/traper.svg"
            color: "#959764"
            header: "Traper"
        }
    }
                 }

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
    title: "Symbolika naramiennika HS"
    ColumnLayout {
        Rectangle {
            radius: 10
            width: page.width
            Layout.preferredHeight: page.width / 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#1f3488"
            Image
            {
                sourceSize.width: (page.width / 3) - 20
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: false
                anchors.centerIn: parent
                source: "qrc:/contents/ui/img/roza.svg"
            }
        }
        ElementListy
        {
            ikona: "qrc:/contents/ui/img/roza.svg"
            color: "steelblue"
            symbolika: true
            header: "<b>Róża wiatrów</b> -  obszary rozwoju każdego harcerza: intelektualnym, społecznym, duchowym i emocjonalnym oraz fizycznym."
        }
    }
}

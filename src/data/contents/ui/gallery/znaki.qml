
/*
 *   Copyright 2021 Harcerze - Poznajemy Się! <aplikacjahps@gmail.com>
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

import QtQuick 2.3
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage
{
    id: page
    Layout.fillWidth: true
    title: qsTr("Znaki służb")
    GridLayout {
        id: gridl
        width: page.width
        columns: 3
        property var labels: [ "dziecku", "gospodarce", "kulturze", "nauce", "pamięci", "przyjaźni", "przyrodzie", "turystyce", "wspólnocie lokalnej", "zdrowiu" ]
        property var icons: [ "dziecku", "gospodarce", "kulturze", "nauce", "pamieci", "przyjazni", "przyrodzie", "turystyce", "wspolnocie", "zdrowiu" ]
        Repeater
        {
            model: gridl.labels
            delegate: ColumnLayout {
                Image {
                    id: krzyz
                    Layout.fillWidth: true
                    source: "qrc:/contents/ui/img/" + gridl.icons[index] + ".svg"
                    fillMode: Image.PreserveAspectFit
                }
                Controls.Label {
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    wrapMode: Text.Wrap
                    fontSizeMode: Text.VerticalFit
                    minimumPointSize: 10
                    font.pointSize: invisibleSlider.value - 2
                    Layout.fillWidth: true
                    Layout.bottomMargin: 20
                    Layout.rightMargin: 10
                    text: modelData
                }
            }
        }
    }
}

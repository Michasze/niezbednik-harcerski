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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import Filter 1.0

HPSPage {
    id: page
    title: qsTr("Pakowanie")
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            Rectangle
            {
                color: "darkolivegreen"
                radius: 10
                width: parent.width
                height: 80
                Item
                {
                    anchors.fill: parent
                    Controls.Label
                    {
                        anchors.leftMargin: 10
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignLeft
                        font.pointSize: invisibleSlider.value + 4
                        text: "+"
                    }
                    Controls.Label
                    {
                        anchors.rightMargin: 10
                        anchors.centerIn: parent
                        font.pointSize: invisibleSlider.value + 4
                        horizontalAlignment: Text.AlignHCenter
                        text: "Dodaj własną listę"
                    }
                }
                MouseArea
                {
                    anchors.fill: parent
                    onClicked:
                    {
                        db.clearCategory()
                        pageStack.push(Qt.resolvedUrl("pakowanieWlasne.qml"))
                    }
                }
            }
            Repeater
            {
                model: db.getList
                delegate: KartaPakowanie
                {
                    header: modelData
                    opis: ""
                }
            }
            HPSFilter {
                id: filteredModel
                sourceModel: hpsModel
                filterRole: "category"
                filterRegularExpression: RegExp("%1".arg("pakowanie"), "i")
            }
            Repeater {
                model: filteredModel
                delegate: KartaStronaNoLayout {
                    header: model.header
                    opis: model.description
                    ikona: model.image
                    adres: model.address
                }
            }
        }
    }
}

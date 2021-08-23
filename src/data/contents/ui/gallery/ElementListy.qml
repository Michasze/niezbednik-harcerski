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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2


         Rectangle {
             // Wartości do których można mieć dostęp z zewnątrz. Ustawione są domyślne wartości
             property string header: ""
             property url ikona: ""
             property url odnosnik: ""
             property bool symbolika: false
    id: cardRectangle
    Layout.fillWidth: true
    Layout.topMargin: 10
    radius: 10
    color: "#303030"
    MouseArea {
    anchors.fill: parent
    onClicked: Qt.openUrlExternally(cardRectangle.odnosnik)
    }
             height : cardRectangle.symbolika ? 150 : 120
    border.color: "transparent"
                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        sourceSize.width: cardRectangle.height - 20
                        fillMode: Image.PreserveAspectFit
                        source: cardRectangle.ikona
                    }
                    // Naglowek mimo ustawien nie chce sie zawijac. Trzeba stosowac krotsze tytuly

                        Controls.Label {
                            horizontalAlignment: Text.AlignHCenter
                            anchors.centerIn: parent
                            id: naglowek
                            wrapMode: Text.Wrap
                            font.pointSize: invisibleSlider.value
                             text: cardRectangle.header
                    }
                }

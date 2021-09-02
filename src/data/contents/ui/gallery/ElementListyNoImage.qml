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
             property string header: "Zaszyfrowany tekst..."
                property int align: Text.AlignVCenter
                property int alignH: Text.AlignHCenter
                property int lAlign: Qt.AlignVCenter | Qt.AlignLeft
                property int textSize: invisibleSlider.value
                property int format: Text.StyledText
                property int wysokosc: naglowek.contentHeight + 30
                property string kolor: "#303030"
    id: cardRectangle
    Layout.fillWidth: true
    Layout.topMargin: 10
    radius: 10
    color: kolor
    Layout.minimumHeight: wysokosc
    border.color: "transparent"
                GridLayout {
                    id: cardLayout
                    anchors.fill: parent
                    ColumnLayout {
                    Layout.alignment: cardRectangle.lAlign
                        Controls.Label {
                            id: naglowek
                            verticalAlignment: cardRectangle.align
                            horizontalAlignment: cardRectangle.alignH
                            wrapMode: Text.Wrap
                            Layout.alignment: Qt.AlignTop
                            font.pointSize: cardRectangle.textSize
                            rightPadding: 10
                            leftPadding: 10
                            Layout.topMargin: 10
                            Layout.bottomMargin: 10
                            textFormat: cardRectangle.format
                            Layout.fillWidth: true
                            text: cardRectangle.header
                        }
                    }
                }
                }

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


Rectangle {
    // Wartości do których można mieć dostęp z zewnątrz. Ustawione są domyślne wartości
    property string header: "Zaszyfrowany tekst..."
    property int align: Text.AlignVCenter
    property int alignH: Text.AlignHCenter
    property int textSize: invisibleSlider.value
    property int format: Text.StyledText
    property int wysokosc: naglowek.contentHeight + 30
    property string kolor: "#303030"
    id: cardRectangle
    radius: 10
    color: kolor
    width: page.width - 50
    height: wysokosc
    border.color: "transparent"
    Controls.Label {
        id: naglowek
        horizontalAlignment: cardRectangle.alignH
        wrapMode: Controls.Label.Wrap
        width: parent.width
        anchors.centerIn: parent
        font.pointSize: cardRectangle.textSize
        rightPadding: 20
        leftPadding: 20
        textFormat: cardRectangle.format
        text: cardRectangle.header
    }
}

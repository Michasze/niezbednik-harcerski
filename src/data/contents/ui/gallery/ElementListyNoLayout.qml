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

Rectangle {
    // Wartości do których można mieć dostęp z zewnątrz. Ustawione są domyślne wartości
    property string header: "Zaszyfrowany tekst..."
    property int align: Text.AlignVCenter
    property int alignH: Text.AlignHCenter
    property int wrap: Controls.Label.Wrap
    property int textSize: isPromise ? invisibleSlider.value + 5 : invisibleSlider.value
    property int format: Text.StyledText
    property int wysokosc: naglowek.contentHeight + 30
    property string kolor: "#303030"
    property bool isPromise: false
    id: cardRectangle
    radius: 10
    color: kolor
    width: parent.width
    height: wysokosc
    border.color: "transparent"
    Controls.Label {
        id: naglowek
        horizontalAlignment: cardRectangle.alignH
        verticalAlignment: cardRectangle.align
        wrapMode: cardRectangle.wrap
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: isPromise ? parent.verticalCenter : 0
        font.pointSize: cardRectangle.textSize
        rightPadding: 10
        leftPadding: 10
        textFormat: cardRectangle.format
        text: cardRectangle.header
        onLinkActivated: Qt.openUrlExternally(link)
    }
}

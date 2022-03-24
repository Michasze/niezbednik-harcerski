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
    property string header: ""
    property url ikona: ""
    property url drugaIkona: ""
    property url trzeciaIkona: ""
    property url odnosnik: ""
    property bool isUrl: true
    property bool isRank: false
    property double divider: 1
    id: cardRectangle
    radius: 10
    width: parent.parent.width
    color: "#303030"
    // Jeśli tekst jest za duży powiększ wysokość kafelka
    height: naglowek.height > 120 ? naglowek.height + 30 : 120
    MouseArea {
        anchors.fill: parent
        onClicked:
        {
            isUrl ? Qt.openUrlExternally(cardRectangle.odnosnik) : pageStack.push(Qt.resolvedUrl(cardRectangle.odnosnik))
        }
    }
    Image {
        id: img
        z: 1
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        sourceSize.width: cardRectangle.height - 20
        width: cardRectangle.drugaIkona != "" ? 80 : 100
        fillMode: Image.PreserveAspectFit
        source: isRank ? "image://icons/krzyz.svg,white" : cardRectangle.ikona
        Image {
            z:0
            visible: isRank
            anchors.centerIn: parent
            sourceSize.width: parent.height / cardRectangle.divider
            source: isRank ? cardRectangle.ikona : "image://icons/blank.svg,transparent"
        }
    }
    Item {
        height: parent.height
        anchors.right: drugaIkona != "" ? secondImg.left : parent.right
        anchors.left: img.right
        Controls.Label {
            horizontalAlignment: Text.AlignHCenter
            id: naglowek
            wrapMode: Text.Wrap
            width: parent.width - 10
            font.pointSize: invisibleSlider.value - 2
            anchors.centerIn: parent
            text: cardRectangle.header
        }
    }
    Image {
        id: secondImg
        anchors.right: parent.right
        source: cardRectangle.drugaIkona
        width: img.width
        anchors.verticalCenter: parent.verticalCenter
        sourceSize.width: parent.height - 20
        fillMode: Image.PreserveAspectFit
        anchors.rightMargin: 10
        Image {
            z:0
            anchors.centerIn: parent
            sourceSize.width: parent.height / cardRectangle.divider
            source: cardRectangle.trzeciaIkona
        }
    }
}

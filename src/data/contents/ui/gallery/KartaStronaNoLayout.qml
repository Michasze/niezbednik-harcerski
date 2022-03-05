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
    property string header: "Brak tekstu"
    property string opis: "Brak opisu"
    property url ikona: ""
    property url adres: "harcerz.qml"
    property string kolor: "#303030"
    property int imageRadius: 20
    property bool isVector: ikona.toString().includes("svg")

    id: kartaRectangle
    radius: 10
    color: kolor
    height: 130
    width: parent.width
    border.color: "transparent"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            pageStack.push(Qt.resolvedUrl(kartaRectangle.adres))
        }
    }
    Image {
        id: img
        asynchronous: true
        sourceSize.width: kartaRectangle.height - 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.topMargin: 15
        anchors.bottomMargin: 15
        source: isVector ? kartaRectangle.ikona : kartaRectangle.ikona + "," + imageRadius
    }
    Item {
        height: parent.height
        width: parent.width - img.width - 20
        anchors.right: parent.right
        Controls.Label {
            id: naglowek
            wrapMode: Text.Wrap
            font.pointSize: invisibleSlider.value
            text: kartaRectangle.header
            anchors.bottom: bar.top
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            width: parent.width - 20
        }
        HPSSeparator {
            id: bar
            width: parent.width - 10
            anchors.centerIn: parent
            anchors.rightMargin: 10
            color: "#615f5f"
        }
        Item {
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.leftMargin: 15
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            anchors.top: bar.bottom
            height: kartaRectangle.height
            width: parent.width - 10
            Controls.Label {
                wrapMode: Text.Wrap
                anchors.centerIn: parent
                font.pointSize: invisibleSlider.value - 2
                width: parent.width - 10
                text: kartaRectangle.opis
            }
        }
    }
}

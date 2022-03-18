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
import QtQuick.Layouts 1.2

Rectangle {
    property string header: ""
    property string opis: ""
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
    GridLayout {
        id: hznpLayout
        anchors {
            left: parent.left
            top: parent.top
            right: parent.right
            //IMPORTANT: never put the bottom margin
        }
        Image {
            id: img
            visible: source != ""
            Layout.leftMargin: 10
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
            source: kartaRectangle.ikona != "" ? (isVector ? kartaRectangle.ikona : kartaRectangle.ikona + "," + imageRadius) : "qrc:/contents/ui/img/blank.svg"
            sourceSize.width: kartaRectangle.height - 20
        }
        ColumnLayout {
            Controls.Label {
                id: naglowek
                wrapMode: Text.Wrap
                Layout.topMargin: img.visible ? 0 : 10
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                font.pointSize: invisibleSlider.value
                Layout.fillWidth: true
                text: kartaRectangle.header
            }
            HPSSeparator {
                Layout.fillWidth: true
                color: "#615f5f"
                Layout.rightMargin: 10
            }
            Controls.Label {
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                font.pointSize: invisibleSlider.value - 2
                Layout.bottomMargin: 10
                text: kartaRectangle.opis
            }
        }
    }
}

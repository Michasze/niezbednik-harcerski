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
    // Wartości do których można mieć dostęp z zewnątrz. Ustawione są domyślne wartości
    property string header: "Brak tekstu"
    property url ikona: {}
    property url adres: "harcerz.qml"
    property string kolor_ikony: ",white"
    id: mainRectangle
    radius: 10
    color: "black"
    Layout.preferredHeight: (root.width / 2) - 10
    Layout.preferredWidth: (root.width / 2) - 10
    Layout.maximumWidth: 300
    Layout.maximumHeight: 300
    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
    //    width: (root.width / 2) > 400 ? (root.width / 2) - 20 : 400
    MouseArea {
        anchors.fill: parent
        onClicked:
        {
            pageStack.push(Qt.resolvedUrl(mainRectangle.adres))
        }
    }
    Column {
        anchors.fill: parent
        spacing: 10
        Image {
            id: img
            source: mainRectangle.ikona + mainRectangle.kolor_ikony
            sourceSize.width: mainRectangle.height - 40
        }
        // Naglowek mimo ustawien nie chce sie zawijac. Trzeba stosowac krotsze tytuly

        Controls.Label {
            id: naglowek
            wrapMode: Text.Wrap
            font.pointSize: invisibleSlider.value - 2
            anchors.horizontalCenter: img.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            text: mainRectangle.header
        }
    }
}

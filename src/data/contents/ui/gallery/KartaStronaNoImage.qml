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
             property string header: "Brak tekstu"
             property string opis: "Brak opisu"
             property url ikona: "qrc:/contents/ui/img/harcerz.svg"
             property url adres: "harcerz.qml"
             property string kolor: "#303030"

    id: hznpRectangle
    Layout.fillWidth: true
    Layout.topMargin: 10
    Layout.bottomMargin: 10
    radius: 10
    color: kolor
    Layout.minimumHeight : 120
    border.color: "transparent"
    MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl(hznpRectangle.adres))
    }
                GridLayout {
                    id: hznpLayout
                    anchors {
                        left: parent.left
                        top: parent.top
                        right: parent.right
                        //IMPORTANT: never put the bottom margin
                    }
                    // Naglowek mimo ustawien nie chce sie zawijac. Trzeba stosowac krotsze tytuly
                    ColumnLayout {
                        Controls.Label {
                            id: naglowek
                            Layout.leftMargin: 20
                            Layout.rightMargin: 10
                            wrapMode: Text.Wrap
                            font.pointSize: invisibleSlider.value
                            Layout.fillWidth: true
                             text: hznpRectangle.header
                        }
                        HPSSeparator {
                            Layout.leftMargin: 10
                            Layout.rightMargin: 10
                            Layout.fillWidth: true
                            color: "#615f5f"
                        }
                        Controls.Label {
                            Layout.fillWidth: true
                            Layout.leftMargin: 20
                            Layout.rightMargin: 10
                            wrapMode: Text.Wrap
                            font.pointSize: invisibleSlider.value - 2
                            Layout.bottomMargin: 10
                            text: hznpRectangle.opis
                        }
                    }
                }
                }

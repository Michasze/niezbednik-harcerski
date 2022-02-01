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
import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls

        Rectangle {
            property url ikona: "image://icons/blank.svg,transparent"
            property double divider: 2.5
            property string header: ""
            id: stopien
            color: "#303030"
            radius: 10
            width: (page.width / 2) - 50
            height: width
                Image {
                    id: krzyz
                    z: 1
                    anchors.centerIn: parent
                    sourceSize.width: stopien.height / 1.3
                    anchors.bottomMargin: etykieta.height
                    source: "image://icons/krzyz.svg,white"
                    fillMode: Image.PreserveAspectFit
                    Image {
                        z: 0
                        anchors.centerIn: parent
                        sourceSize.width: parent.height / stopien.divider
                        source: stopien.ikona
                        fillMode: Image.PreserveAspectFit
                }
                }
                Controls.Label {
                    id: etykieta
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.top: krzyz.bottom
                    wrapMode: Text.Wrap
                    fontSizeMode: Text.VerticalFit
                    font.pointSize: invisibleSlider.value - 2
//                    height: stopien.height - krzyz.height - 10
                    anchors.bottomMargin: 10
                    text: stopien.header
                }
            }

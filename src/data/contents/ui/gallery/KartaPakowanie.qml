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
             property string opis: ""
             property url ikona: "image://icons/edit-delete.svg,red"
             property url adres: "harcerz.qml"
             property string kolor: "#303030"

    id: kartaRectangle
    Layout.fillWidth: true
    Layout.topMargin: 10
    Layout.bottomMargin: 10
    radius: 10
    color: kolor
    Layout.minimumHeight : 120
    border.color: "transparent"
                GridLayout {
                    id: hznpLayout
                    anchors {
                        left: parent.left
                        top: parent.top
                        right: parent.right
                        bottom: parent.bottom
                    }
                    ColumnLayout {
                        Controls.Label {
                            id: naglowek
                            wrapMode: Text.Wrap
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
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                db.getCategoryList(kartaRectangle.header)
                                db.setList(kartaRectangle.header)
                                pageStack.push(Qt.resolvedUrl("pakowanieTemplate.qml"))
                        }
                        }
                    }
                    Controls.AbstractButton {
                        Layout.leftMargin: 10
                        Layout.topMargin: 10
                        Layout.bottomMargin: 10
                        contentItem: Image {
                            anchors.fill: parent
                        Layout.fillWidth: false
                            Layout.fillHeight: true
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                        source: kartaRectangle.ikona
                            sourceSize.width: (kartaRectangle.height / 2) - 20
                        }
                        onPressed: {
                            kartaRectangle.visible = false
                            db.deleteList(kartaRectangle.header)
                        }
                    }
               }
                }

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
import org.kde.kirigami 2.4 as Kirigami
import QtGraphicalEffects 1.12


         Rectangle {
             property string header: "Brak tekstu"
             property string opis: "Brak opisu"
             property url ikona: "qrc:/contents/ui/img/harcerz.svg"
             property url adres: "harcerz.qml"
    id: hznpRectangle
    Layout.fillWidth: true
    Layout.leftMargin: 10
    Layout.topMargin: 10
    Layout.bottomMargin: 10
    radius: 10
    color: "#303030"
    Layout.minimumHeight : 120
//     implicitHeight: hznpLayout.implicitHeight
    border.color: "transparent"
    MouseArea {
    anchors.fill: parent
    onClicked: pageStack.layers.push(Qt.resolvedUrl(hznpRectangle.adres))
    }
                GridLayout {
                    id: hznpLayout
                    anchors {
                        left: parent.left
                        top: parent.top
                        right: parent.right
                        //IMPORTANT: never put the bottom margin
                    }
                    rowSpacing: Kirigami.Units.largeSpacing
                    columnSpacing: Kirigami.Units.largeSpacing
                    columns: width > Kirigami.Units.gridUnit * 20 ? 4 : 2
                    Image {
                        id:autor
                        visible: false
                        smooth: true
                        Layout.leftMargin: 10
                        Layout.topMargin: 10
                        Layout.bottomMargin: 10
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                        source: hznpRectangle.ikona
                        Layout.fillHeight: true
//                         Layout.fillWidth: true
                         Layout.minimumHeight: 100
//                         Layout.maximumHeight: 80
               //         Layout.maximumHeight: hznpRectangle.implicitHeight
                        Layout.preferredWidth: height
                    }
                   
                    OpacityMask {
                      //Layout.fillWidth: true
                      width: 100
                      Layout.leftMargin: 10
                      Layout.topMargin: 10
                      Layout.bottomMargin: 10
                      height: 100
                      Layout.fillHeight: true
                      source: autor
                      maskSource: mask
    }
                    // Naglowek mimo ustawien nie chce sie zawijac. Trzeba stosowac krotsze tytuly
                    ColumnLayout {
                        Controls.Label {
                            id: naglowek
                            wrapMode: Text.Wrap
                            font.pixelSize: 15
                            Layout.fillWidth: true
                             text: hznpRectangle.header
                        }
                        HPSSeparator {
                            Layout.fillWidth: true
                        }
                        Controls.Label {
                            Layout.fillWidth: true
                            wrapMode: Text.Wrap
                            Layout.bottomMargin: 10
                            text: hznpRectangle.opis
                        }
                    }
                  /*  Controls.RoundButton {
                        Layout.alignment: Qt.AlignRight|Qt.AlignVCenter
                        Layout.columnSpan: 2
                        radius: 4
                        text: qsTr("Otwórz")
                        highlighted: true
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 10
                        onClicked: pageStack.push(Qt.resolvedUrl("HZNP.qml"))
                    } */
                }
                 Rectangle
                    {
                     id: mask
                     height: 100
                     width: 100
                     color: "black"
                      visible: false
                     radius: 10
                    }
                }

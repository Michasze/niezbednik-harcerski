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


         Rectangle {
             // Wartości do których można mieć dostęp z zewnątrz. Ustawione są domyślne wartości
             property string header: "Brak tekstu"
//              property string opis: "Brak opisu"
             property url ikona: "qrc:/contents/ui/img/blank.svg"
             property url odnosnik: ""
             property bool symbolika: false
             property int wysokosc: cardRectangle.symbolika ? cardRectangle.height - 5 : cardRectangle.height / 2
             property string kolor: "white"
             property bool mask: cardRectangle.symbolika ? true : false
//              property url adres: "harcerz.qml"
    id: cardRectangle
    Layout.fillWidth: true
    Layout.topMargin: 10
    radius: 10
    color: "#303030"
    MouseArea {
    anchors.fill: parent
    onClicked: Qt.openUrlExternally(cardRectangle.odnosnik)
    }
             Layout.minimumHeight : cardRectangle.symbolika ? 150 : 120
//     implicitHeight: hznpLayout.implicitHeight
    border.color: "transparent"
             RowLayout {
                 anchors.fill: parent
                 id: row
                    Kirigami.Icon {
                        id: ikona
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                        // potrzebujemy większych ilustracji dla symboliki
                        smooth: true
                        antialiasing: true
                        Layout.leftMargin: 10
                        Layout.minimumHeight: cardRectangle.wysokosc
                        Layout.maximumHeight: cardRectangle.wysokosc
                        Layout.preferredWidth: cardRectangle.wysokosc
                        isMask: cardRectangle.mask ? true : false
                        color: cardRectangle.kolor
//                        anchors.verticalCenter: row.verticalCenter
//                        fillMode: Image.PreserveAspectFit
                        source: cardRectangle.ikona
//                         Layout.fillWidth: true
//                         Layout.maximumHeight: 80
               //         Layout.maximumHeight: cardRectangle.implicitHeight
                    }
                    // Naglowek mimo ustawien nie chce sie zawijac. Trzeba stosowac krotsze tytuly

                        Controls.Label {
//                            Layout.alignment: Qt.AlignLeft
                            horizontalAlignment: Text.AlignHCenter
                            id: naglowek
                            wrapMode: Text.Wrap
                            font.pointSize: invisibleSlider.value
//                            Layout.rightMargin: 100
                            Layout.fillWidth: true
//                            leftPadding: cardRectangle.symbolika ? ikona.width + 10 : 0
//                            rightPadding: cardRectangle.symbolika ? ikona.width + 10 : 0
                            Layout.rightMargin: 10
 //                           anchors.centerIn: parent
                             text: cardRectangle.header
                    }
                }
                }

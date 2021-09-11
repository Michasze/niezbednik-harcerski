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
import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

            HPSPage
            {
                id: page
                title: "Utwórz własną listę"
                ColumnLayout {
                    Repeater {
                        model: db.getCategory
                        delegate: PakowanieLista
                        {
                            tytul: modelData
                        }
                    }
                }
                footer: RowLayout {
                    Controls.TextField {
                        id: przedmiot
                        Layout.alignment: Qt.AlignLeft | Qt.AlignHCenter
                        Layout.leftMargin: 10
                        Layout.bottomMargin: 10
                        Layout.fillWidth: true
                        horizontalAlignment: TextInput.AlignHCenter
                        verticalAlignment: TextInput.AlignVCenter
                        placeholderTextColor: "White"
                        color: "white"
                        placeholderText: qsTr("Przedmiot")
                        background: Rectangle {
                            anchors.fill: parent
                            radius: 5
                            color: "darkolivegreen"
                        }
                    }
                    Controls.ComboBox {
                        id: kategoria
                        model: db.getCategory
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    }
                    Controls.RoundButton {
                        id: dodaj
                        Layout.alignment: Qt.AlignRight | Qt.AlignHCenter
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 10
                        Layout.preferredWidth: height
                        Layout.fillWidth: false
                        text: "+"
                        background: Rectangle {
                            anchors.fill: parent
                            radius: 10
                            color: "brown"
                        }
                        onClicked:
                        {
                            console.log(kategoria.currentValue)
                            db.addItem(przedmiot.text, kategoria.currentValue)
                            przedmiot.clear()
                        }
                    }
                }
            }

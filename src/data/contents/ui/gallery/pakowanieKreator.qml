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
                        delegate: ListaKreator
                        {
                            visible: index == 0 ? false : true
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
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.bottomMargin: 10
                        delegate: Controls.ItemDelegate {
                                visible: index == 0 ? false : true
                            contentItem: Controls.Label {
                            color: "white"
                                visible: text == "" ? false : true
                                text: modelData
                        }
                        }
                        background: Rectangle {
                            Layout.preferredHeight: dodaj.height
                            Layout.preferredWidth: page.width / 6
                            color: "transparent"
                            border.width: 1
                            border.color: "grey"
                        }
                       popup: Controls.Popup {
                           y: kategoria.height + 10
                           width: page.width / 6
                           implicitHeight: contentItem.implicitHeight
                           padding: 1

                           contentItem: ListView {
                               clip: true
                               implicitHeight: contentHeight
                               model: kategoria.popup.visible ? kategoria.delegateModel : null
                               currentIndex: kategoria.highlightedIndex

                           }

                           background: Rectangle {
                               border.color: "brown"
                               color: "#1d1d1d"
                               radius: 2
                           }
                          }
    contentItem: Text {
        text: kategoria.displayText
        font: kategoria.font
        leftPadding: 20
        color: "brown"
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
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

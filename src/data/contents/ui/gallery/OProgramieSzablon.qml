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

import QtQuick 2.1
import QtQuick.Controls 2.4 as Controls
import QtQuick.Layouts 1.3
import HPSUnits 1.0

HPSPage {
    id: page
    property var aboutData
    title: qsTr("O aplikacji")
    HPSUnits {
        id: hpsUnits
    }
    ColumnLayout {
        id: form
        GridLayout {
            id: grid
            columns: 2
            Layout.alignment: Qt.AlignHCenter
            Image {
                Layout.rowSpan: 2
                Layout.preferredHeight: 64
                Layout.preferredWidth: height
                Layout.maximumWidth: page.width / 3;
                Layout.rightMargin: hpsUnits.smallSpacing * 2
                source: page.aboutData.programLogo
            }
            Controls.Label {
                font.pointSize: invisibleSlider.value - 1
                text: page.aboutData.displayName + " " + page.aboutData.version
            }
            Controls.Label {
                font.pointSize: invisibleSlider.value - 2
                wrapMode: Text.WordWrap
                text: page.aboutData.shortDescription
            }
        }
        HPSSeparator {
            id: separator
            Layout.alignment: Qt.AlignHCenter
            width: grid.width
        }
        Controls.Label {
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: invisibleSlider.value - 1
            text: qsTr("Prawa autorskie")
        }
        Controls.Label {
            Layout.alignment: Qt.AlignHCenter
            text: aboutData.otherText
            visible: text.length > 0
        }
        Controls.Label {
            Layout.alignment: Qt.AlignHCenter
            text: aboutData.copyrightStatement
            visible: text.length > 0
        }
        Controls.Dialog {
            id: licenseSheet
            property alias text: bodyLabel.header
            title: "GPL v2"
            Controls.ScrollView {
                anchors.fill: parent
                ElementListyNoLayout {
                    id: bodyLabel
                    width: page.width - 50
                    header: licenseSheet.text
                }
            }
        }
        Component {
            id: licenseLinkButton
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Controls.Label {
                    Layout.alignment: Qt.AlignHCenter
                    text: qsTr("Licencja:")
                }
                Controls.Label {
                    text: modelData.name
                    font.underline: control.enabled && area.containsMouse
                    color: enabled ? "#2980B9" : "white"
                    MouseArea {
                        id: area
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            licenseSheet.text = modelData.text
                            licenseSheet.open()
                        }
                    }
                }
            }
        }
        Component {
            id: licenseTextItem
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Controls.Label { text: qsTr("Licencja: %1").arg(modelData.name) }
            }
        }
        Repeater {
            model: aboutData.licenses
            delegate: applicationWindow().pageStack ? licenseLinkButton : licenseTextItem
        }
        Controls.Label {
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: invisibleSlider.value - 1
            text: qsTr("Biblioteki w użyciu")
            visible: hpsSettings.information
        }
        Repeater {
            model: hpsSettings.information
            delegate: Controls.Label {
                Layout.alignment: Qt.AlignHCenter
                id: libraries
                text: modelData
            }
        }
        Controls.Label {
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: invisibleSlider.value - 1
            text: qsTr("Autorzy:")
            visible: aboutData.authors.length > 0
        }
        ColumnLayout {
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignHCenter
            Repeater {
                model: aboutData.authors
                delegate: RowLayout {
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    height: implicitHeight + (hpsUnits.smallSpacing * 2)
                    spacing: hpsUnits.smallSpacing * 2
                    Image {
                        Layout.maximumWidth: page.width / 8
                        Layout.minimumWidth: page.width / 10
                        Layout.maximumHeight: width
                        source: modelData.avatar
                    }
                    Controls.Label {
                        text: modelData.name
                    }
                }
            }
        }
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            Controls.Label {
                height: visible ? implicitHeight : 0
                font.pointSize: invisibleSlider.value - 1
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("Zgłoś błędy")
            }
            Controls.Button {
                highlighted: true
                visible: true
                Layout.alignment: Qt.AlignHCenter
                width: height
                icon.source: "qrc:/contents/ui/img/mail-sent"
                Controls.ToolTip.delay: 700
                Controls.ToolTip.visible: hovered
                Controls.ToolTip.text: qsTr("Wyślij email do %1").arg("aplikacjahps@gmail.com")
                onClicked: Qt.openUrlExternally("mailto:%1".arg("aplikacjahps@gmail.com"))
            }
        }
    }
}

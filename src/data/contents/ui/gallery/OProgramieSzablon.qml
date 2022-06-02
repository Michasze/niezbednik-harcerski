/*
 *  SPDX-FileCopyrightText: 2018 Aleix Pol Gonzalez <aleixpol@blue-systems.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
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
    Component {
        id: personDelegate
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            height: implicitHeight + (hpsUnits.smallSpacing * 2)
            spacing: hpsUnits.smallSpacing * 2
            Image {
                width: 22
                height: width
                source: "qrc:/contents/ui/img/user.svg"
            }
            Controls.Label {
                text: modelData.name
            }
            Row {
                // Group action buttons together
                spacing: 0
                Controls.ToolButton {
                    visible: modelData.emailAddress
                    width: height
                    icon.source: "qrc:/contents/ui/img/mail-sent"
                    Controls.ToolTip.delay: 700
                    Controls.ToolTip.visible: hovered
                    Controls.ToolTip.text: qsTr("Wyślij email do %1").arg(modelData.emailAddress)
                    onClicked: Qt.openUrlExternally("mailto:%1".arg(modelData.emailAddress))
                }
                Controls.ToolButton {
                    visible: modelData.webAddress
                    width: height
                    icon.name: "globe"
                    Controls.ToolTip.delay: 700
                    Controls.ToolTip.visible: hovered
                    Controls.ToolTip.text: modelData.webAddress
                    onClicked: Qt.openUrlExternally(modelData.webAddress)
                }
            }
        }
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
        Repeater {
            model: aboutData.authors
            delegate: RowLayout {
                anchors.left: parent.left
                Layout.fillWidth: true
                anchors.leftMargin: page.width / 3
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
//                    font.pointSize: invisibleSlider.value - 1
                }
                /* Row { */
                /*     // Group action buttons together */
                /*     spacing: 0 */
                /*     Controls.ToolButton { */
                /*         visible: modelData.emailAddress */
                /*         width: height */
                /*         icon.source: "qrc:/contents/ui/img/mail-sent" */
                /*         Controls.ToolTip.delay: 700 */
                /*         Controls.ToolTip.visible: hovered */
                /*         Controls.ToolTip.text: qsTr("Wyślij email do %1").arg(modelData.emailAddress) */
                /*         onClicked: Qt.openUrlExternally("mailto:%1".arg(modelData.emailAddress)) */
                /*     } */
                /*     Controls.ToolButton { */
                /*         visible: modelData.webAddress */
                /*         width: height */
                /*         icon.name: "globe" */
                /*         Controls.ToolTip.delay: 700 */
                /*         Controls.ToolTip.visible: hovered */
                /*         Controls.ToolTip.text: modelData.webAddress */
                /*         onClicked: Qt.openUrlExternally(modelData.webAddress) */
                /*     } */
                /* } */
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
        Controls.Label {
            height: visible ? implicitHeight : 0
            font.pointSize: invisibleSlider.value - 1
            text: qsTr("Credits")
            visible: repCredits.count > 0
        }
        Repeater {
            id: repCredits
            model: aboutData.credits
            delegate: personDelegate
        }
        Controls.Label {
            height: visible ? implicitHeight : 0
            font.pointSize: invisibleSlider.value - 1
            text: qsTr("Translators")
            visible: repTranslators.count > 0
        }
        Repeater {
            id: repTranslators
            model: aboutData.translators
            delegate: personDelegate
        }
    }
}

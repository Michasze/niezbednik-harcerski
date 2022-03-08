/*
 *  SPDX-FileCopyrightText: 2018 Aleix Pol Gonzalez <aleixpol@blue-systems.com>
 *
 *  SPDX-License-Identifier: LGPL-2.0-or-later
 */

import QtQuick 2.1
import QtQuick.Controls 2.4 as QQC2
import QtQuick.Layouts 1.3
import org.kde.kirigami 2.6

/**
 * An about page that is ready to integrate in a kirigami app
 *
 * Allows to have a page that will show the copyright notice of the application
 * together with the contributors and some information of which platform it's
 * running on.
 *
 * @since 5.52
 * @since org.kde.kirigami 2.6
 */
HPSPage
{
    id: page
    property var aboutData

    title: qsTr("O aplikacji")

    globalToolBarStyle: ApplicationHeaderStyle.None
    Component {
        id: personDelegate

        RowLayout {
            height: implicitHeight + (Units.smallSpacing * 2)

            spacing: Units.smallSpacing * 2
            Icon {
                width: Units.iconSizes.smallMedium
                height: width
                source: "qrc:/contents/ui/img/user.svg"
            }
            QQC2.Label {
                text: modelData.name
            }
            Row {
                // Group action buttons together
                spacing: 0
                QQC2.ToolButton {
                    visible: modelData.emailAddress
                    width: height
                    icon.source: "qrc:/contents/ui/img/mail-sent"
                    QQC2.ToolTip.delay: Units.toolTipDelay
                    QQC2.ToolTip.visible: hovered
                    QQC2.ToolTip.text: qsTr("Wyślij email do %1").arg(modelData.emailAddress)
                    onClicked: Qt.openUrlExternally("mailto:%1".arg(modelData.emailAddress))
                }
                QQC2.ToolButton {
                    visible: modelData.webAddress
                    width: height
                    icon.name: "globe"
                    QQC2.ToolTip.delay: Units.toolTipDelay
                    QQC2.ToolTip.visible: hovered
                    QQC2.ToolTip.text: modelData.webAddress
                    onClicked: Qt.openUrlExternally(modelData.webAddress)
                }
            }
        }
    }

    FormLayout {
        id: form

        GridLayout {
            columns: 2
            Layout.fillWidth: true

            Icon {
                Layout.rowSpan: 2
                Layout.preferredHeight: Units.iconSizes.huge
                Layout.preferredWidth: height
                Layout.maximumWidth: page.width / 3;
                Layout.rightMargin: Units.largeSpacing
                source: Settings.applicationWindowIcon || page.aboutData.programLogo || page.aboutData.programIconName || page.aboutData.componentName
            }
            Heading {
                Layout.fillWidth: true
                text: page.aboutData.displayName + " " + page.aboutData.version
            }
            Heading {
                Layout.fillWidth: true
                level: 2
                wrapMode: Text.WordWrap
                text: page.aboutData.shortDescription
            }
        }

        Separator {
            Layout.fillWidth: true
        }

        Heading {
            FormData.isSection: true
            text: qsTr("Prawa autorskie")
        }
        QQC2.Label {
            Layout.leftMargin: Units.gridUnit
            text: aboutData.otherText
            visible: text.length > 0
        }
        QQC2.Label {
            Layout.leftMargin: Units.gridUnit
            text: aboutData.copyrightStatement
            visible: text.length > 0
        }
        UrlButton {
            Layout.leftMargin: Units.gridUnit
            url: aboutData.homepage
            visible: url.length > 0
        }

        OverlaySheet {
            id: licenseSheet
            property alias text: bodyLabel.text
            property alias name: heading.text

            header: Heading {
                id: heading
            }
            background: Rectangle {
              anchors.fill: parent
              color: invisibleCheckbox.checked ? "Black" : "grey"
    }


            contentItem: QQC2.Label {
                id: bodyLabel
                wrapMode: Text.WordWrap
                rightPadding: 10
                leftPadding: 10
                text: licenseSheet.text
            }
        }

        Component {
            id: licenseLinkButton

            RowLayout {
                Layout.leftMargin: Units.smallSpacing
                QQC2.Label { text: qsTr("Licencja:") }
                LinkButton {
                    text: modelData.name
                    onClicked: {
                        licenseSheet.text = modelData.text
                        licenseSheet.name = modelData.name
                        licenseSheet.open()
                    }
                }
            }
        }

        Component {
            id: licenseTextItem

            RowLayout {
                Layout.leftMargin: Units.smallSpacing
                QQC2.Label { text: qsTr("Licencja: %1").arg(modelData.name) }
            }
        }

        Repeater {
            model: aboutData.licenses
            delegate: applicationWindow().pageStack ? licenseLinkButton : licenseTextItem
        }

        Heading {
            FormData.isSection: visible
            text: qsTr("Biblioteki w użyciu")
            visible: hpsSettings.information
        }
        Repeater {
            model: hpsSettings.information
            delegate: QQC2.Label {
                Layout.leftMargin: Units.gridUnit
                id: libraries
                text: modelData
            }
        }
        Heading {
            Layout.fillWidth: true
            FormData.isSection: visible
            text: qsTr("Autorzy:")
            visible: aboutData.authors.length > 0
        }
        Repeater {
            model: aboutData.authors
            delegate: personDelegate
        }
        ColumnLayout
        {
        Heading {
            height: visible ? implicitHeight : 0
            FormData.isSection: visible
            text: qsTr("Zgłoś błędy")
        }
                QQC2.Button {
                    highlighted: true
                    visible: true
                    Layout.alignment: Qt.AlignHCenter
                    width: height
                    icon.source: "qrc:/contents/ui/img/mail-sent"
                    QQC2.ToolTip.delay: Units.toolTipDelay
                    QQC2.ToolTip.visible: hovered
                    QQC2.ToolTip.text: qsTr("Wyślij email do %1").arg("aplikacjahps@gmail.com")
                    onClicked: Qt.openUrlExternally("mailto:%1".arg("aplikacjahps@gmail.com"))
                }
        }
        Heading {
            height: visible ? implicitHeight : 0
            FormData.isSection: visible
            text: qsTr("Credits")
            visible: repCredits.count > 0
        }
        Repeater {
            id: repCredits
            model: aboutData.credits
            delegate: personDelegate
        }
        Heading {
            height: visible ? implicitHeight : 0
            FormData.isSection: visible
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

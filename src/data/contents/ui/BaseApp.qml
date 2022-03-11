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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.11 as Kirigami
import QtMultimedia 5.0
import "gallery"
import Data 1.0
import HPSDatabase 1.0
import HPSCardModel 1.0

HPSWindow {
    id: root
    property Kirigami.AbstractApplicationWindow appWindow : root
    property bool isHorizontal : root.width > root.height ? true : false
    visible: true
    color: "Black"
    HPSDatabase {
        id: db
    }
    HPSSettings {
        id: hpsSettings
    }
    Clipboard {
        id: clipboard
    }
    HPSCardModel {
        id: hpsModel
    }
    Component.onCompleted: {
        if(!hpsSettings.neverShowIsToggled)
        {
            aboutDialog.open()
        }
        else {
            if(!hpsSettings.neverShow2IsToggled)
            {
                mediaPlayer.play()
                aboutDialog2.open()
            }
        }
    }
    MediaPlayer {
        id: mediaPlayer
        autoPlay: false
        loops: MediaPlayer.Infinite
        autoLoad: true
        source:"qrc:/contents/ui/media/gesty1.mkv"
    }
    MediaPlayer {
        id: mediaPlayer2
        autoPlay: false
        loops: MediaPlayer.Infinite
        autoLoad: true
        source:"qrc:/contents/ui/media/gesty2.mkv"
    }
    MediaPlayer {
        id: mediaPlayer3
        autoPlay: true
        loops: MediaPlayer.Infinite
        autoLoad: true
        source:"qrc:/contents/ui/media/gesty3.mkv"
    }

    HPSPopup {
        id: aboutDialog
        ColumnLayout {
            anchors.fill: parent
            Controls.Label {
                font.pointSize: invisibleSlider.value
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                text: "<p><b>Czuwaj!</b></p>
Witaj w premierowej wersji Niezbędnika Harcerskiego. Pamiętaj, że jest to wczesna wersja i wiele elementów
może ulec zmianie."
            }
            ElementListyNoImage {
                Layout.alignment: Qt.AlignHCenter
                color: "black"
                header: "Wybór języka:"
            }
            Controls.RadioButton {
                id: control
                checked: true
                Layout.alignment: Qt.AlignHCenter
                text: "polski"
                contentItem: Row {
                    spacing: 5
                    Controls.Label {
                        id: label
                        text: control.text
                        opacity: enabled ? 1.0 : 0.3
                        color: control.checked ? "white" : "grey"
                        font.pointSize: invisibleSlider.value
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: control.indicator.width + control.spacing
                    }
                    Image {
                        source: "qrc:/contents/ui/img/poland.svg"
                        height: label.height
                        fillMode: Image.PreserveAspectFit
                    }
                }
                onClicked: {
                    HPSTranslate.selectLanguage("pl")
                    engine.retranslate();
                    hpsModel.refresh()
                }
            }
            Controls.RadioButton {
                id: control2
                Layout.alignment: Qt.AlignHCenter
                text: "Українська"
                contentItem: Row {
                    spacing: 5
                    Controls.Label {
                        id: label2
                        text: control2.text
                        opacity: enabled ? 1.0 : 0.3
                        color: control2.checked ? "white" : "grey"
                        font.pointSize: invisibleSlider.value
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: control2.indicator.width + control2.spacing
                    }
                    Image {
                        source: "qrc:/contents/ui/img/ukraine.svg"
                        height: label2.height
                        fillMode: Image.PreserveAspectFit
                    }
                }
                onClicked: {
                    HPSTranslate.selectLanguage("uk");
                    engine.retranslate();
                    hpsModel.reload()
                }
            }
            Controls.CheckBox {
                text: "Nie pokazuj więcej"
                onToggled: {
                    hpsSettings.neverShowIsToggled = true
                }
            }
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 4
                text: "Przejdź dalej"
                highlighted: true
                Layout.rightMargin: 10
                Layout.bottomMargin: 30
                onClicked: {
                    aboutDialog.close()
                    if(!hpsSettings.neverShow2IsToggled)
                    {
                        mediaPlayer.play()
                        aboutDialog2.open()
                    }
                }
            }
        }
    }
    HPSPopup {
        id: aboutDialog2
        ColumnLayout {
            anchors.fill: parent
            VideoOutput {
                id:videoOutput
                source:mediaPlayer
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                Layout.maximumHeight: root.height / 2
                Layout.fillWidth: true
            }
            Controls.Label {
                font.pointSize: invisibleSlider.value
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                text: "Nawigacja po aplikacji odbywa się za pomocą gestów. Przesunięcie palcem od lewej do prawej umożliwia powrót do poprzedniej strony"
            }
            Controls.CheckBox {
                text: "Nie pokazuj więcej"
                onToggled:
                {
                    hpsSettings.neverShow2IsToggled = true
                }
            }
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 4
                text: "Uruchom aplikację"
                highlighted: true
                Layout.rightMargin: 10
                Layout.bottomMargin: 30
                onClicked:
                {
                    mediaPlayer.stop()
                    aboutDialog2.close()
                }
            }
        }
    }
    HPSPopup {
        id: aboutDialog3
        ColumnLayout {
            anchors.fill: parent
            VideoOutput {
                id:videoOutput2
                source:mediaPlayer2
                Layout.alignment: Qt.AlignTop
                Layout.maximumHeight: root.height / 2
                Layout.fillWidth: true
            }
            Controls.Label {
                font.pointSize: invisibleSlider.value
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                text: "Naciśnięcie i przytrzymanie tekstu powoduje jego skopiowanie do schowka"
            }
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 4
                text: "Przejdź dalej"
                highlighted: true
                Layout.rightMargin: 10
                Layout.bottomMargin: 30
                onClicked: {
                    hpsSettings.neverShow3IsToggled = true
                    mediaPlayer2.stop()
                    aboutDialog3.close()
                }
            }
        }
    }
    HPSPopup
    {
        id: aboutDialog4
        ColumnLayout
        {
            anchors.fill: parent

            VideoOutput {
                id:videoOutput3
                source:mediaPlayer3
                Layout.alignment: Qt.AlignTop
                Layout.maximumHeight: root.height / 2
                Layout.fillWidth: true
            }
            Controls.Label {
                font.pointSize: invisibleSlider.value
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                text: "Naciśnięcie i przytrzymanie cytatu powoduje jego skopiowanie do schowka"
            }
            Controls.RoundButton {
                Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                radius: 4
                text: "Przejdź dalej"
                highlighted: true
                Layout.rightMargin: 10
                Layout.bottomMargin: 30
                onClicked: {
                    hpsSettings.neverShow4IsToggled = true
                    mediaPlayer3.stop()
                    aboutDialog4.close()
                }
            }
        }
    }
    Controls.Action {
        id: powrotAction
        text: qsTr("Powrót")
        shortcut: "Backspace"
        onTriggered: {
            if (pageStack.layers.depth == 1 && pageStack.depth > 1)
            {
                pageStack.pop();
            }
            else
            {
                pageStack.layers.pop();
            }
        }
    }
    pageStack.globalToolBar.style: Kirigami.ApplicationHeaderStyle.None
    header: Controls.ToolBar {
        id: pasek
        height: menuButton.height
        background: Rectangle {
            anchors.fill: parent
            color: "Black"
            radius: pageStack.layers.depth != 1 || (pageStack.currentItem.title != "Niezbędnik Harcerski") ? 10 : 0
            border.color: "Grey"
            border.width: pageStack.layers.depth != 1 || (pageStack.currentItem.title != "Niezbędnik Harcerski") ? 1 : 0
        }
        Item {
            anchors.fill: parent
            Controls.ToolButton {
                anchors.left: parent.left
                anchors.leftMargin: 10
                id: menuButton
                onClicked: globalDrawer.open()
                icon.source: "qrc:/contents/ui/img/application-menu.svg"
            }
            Controls.Label {
                id: naglowek
                horizontalAlignment: Text.AlignHCenter
                anchors.centerIn: parent
                // Pokazuje tytul właśnie otwartej strony
                text: pageStack.layers.depth == 1 ? pageStack.currentItem.title  : pageStack.layers.currentItem.title
            }
            Controls.ToolButton {
                id: powrotButton
                anchors.right: parent.right
                anchors.rightMargin: 10
                visible: pageStack.layers.depth != 1 || ((!hpsSettings.isMobile ) && ((pageStack.currentItem.title != "Niezbędnik Harcerski") || pageStack.layers.depth != 1)) ? true : false
                icon.source: "image://icons/go-previous.svg,white"
                action: powrotAction
            }
            Controls.ToolButton {
                anchors.right: parent.right
                anchors.rightMargin: powrotButton.visible ? (powrotButton.width + 10) : 10
                visible: pageStack.currentItem.title.includes("Pakowanie") && pageStack.currentItem.title != "Pakowanie" && pageStack.layers.depth == 1
                icon.source: "image://icons/edit-copy.svg,white"
                onClicked:
                {
                    var trescListy = "";
                    var lista=pageStack.currentItem.contentItem.contentItem.contentItem.children[0]
                    if (lista.children)
                    {
                        for (var i = 0; i < lista.children.length; ++i)
                        {
                            if (!lista.children[i].header && !lista.children[i].model)
                            {
                                trescListy = trescListy + lista.children[i].text + "\n"
                            }
                            else if (!lista.children[i].model)
                            {
                                trescListy = trescListy + lista.children[i].header + "\n"
                            }
                        }
                    }
                    trescListy = trescListy.replace("</b>","\n")
                    trescListy = trescListy.replace("<b>","")
                    clipboard.paste = trescListy
                    showPassiveNotification("Skopiowano do schowka", 2000)
                }
            }
        }
    }
    title: "Niezbędnik Harcerski"
    contextDrawer: globalDrawer
    Controls.Drawer {
        width: 250
        height: root.height
        id: globalDrawer
        dragMargin: 20
        Item {
            id: drawerHeader
            width: parent.width
            height: drawerImg.height
            Image {
                id: drawerImg
                height: globalDrawer.width / 3
                anchors.left: parent.left
                fillMode: Image.PreserveAspectFit
                source: "qrc:/contents/ui/img/applications-graphics.svg"
            }
            Controls.Label {
                font.pointSize: 24
                anchors.verticalCenter: drawerImg.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Menu")
            }
        }
        Column {
            anchors.fill: parent
            anchors.topMargin: drawerHeader.height
            spacing: 10
            ListModel {
                id: drawerModel
                ListElement { opis: qsTr("O aplikacji"); warstwa: "gallery/oProgramie.qml"; icon: "image://icons/documentinfo.svg,white" }
                ListElement { opis: qsTr("Social media"); warstwa: "gallery/social.qml"; icon: "image://icons/snapchat_symbolic.svg,white" }
                ListElement { opis: qsTr("Testerzy"); warstwa: "gallery/testerzy.qml"; icon: "image://icons/user.svg,white" }
                ListElement { opis: "Pomocne dłonie"; warstwa: "gallery/pomocni.qml"; icon: "image://icons/hand.svg,white" }
                ListElement { opis: qsTr("Ustawienia"); warstwa: "gallery/ustawienia.qml"; icon: "image://icons/settings.svg,white" }
            }
            Repeater {
                model: drawerModel
                delegate: Item {
                    width: parent.width
                    height: 65
                    ElementListyImageNoLayout {
                        id: element
                        property string adres: odnosnik
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "Transparent"
                        width: parent.width
                        header: opis
                        ikona: icon
                        height: 60
                        isUrl: false
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                pageStack.layers.pop()
                                pageStack.layers.push(Qt.resolvedUrl(warstwa))
                                globalDrawer.close()
                            }
                        }
                    }
                    HPSSeparator {
                        width: parent.width - 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: element.bottom
                    }
                }
            }
            Controls.Slider {
                id: invisibleSlider
                visible: false
                from: 10
                value: hpsSettings.textSize
                to: 17
                stepSize: 1
                snapMode: Controls.Slider.SnapAlways
            }
            Controls.CheckBox {
                id: invisibleCheckbox
                visible: false
                checked: !hpsSettings.darkThemeIsToggled ? false : true
            }
        }
    }
    pageStack.initialPage: mainPageComponent
//    pageStack.defaultColumnWidth: 1920
    Controls.RoundButton {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 60
        icon.source: "image://icons/document-save.svg"
        visible: pageStack.currentItem.title == "Utwórz własną listę "
        highlighted: true
        onClicked: {
            pageStack.pop()
        }
    }
    //Main app content
    Component {
        id: mainPageComponent
        MainPage {}
    }
}

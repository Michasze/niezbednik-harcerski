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

import QtQuick 2.13
import QtQuick.Controls 2.13 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.11 as Kirigami
import QtMultimedia 5.0
import "gallery"
import Data 1.0

Kirigami.ApplicationWindow {
    id: root
    property Kirigami.ApplicationWindow appWindow : root
    property bool isHorizontal : root.width > root.height ? true : false
    visible: true

    color: "Black"



    HPSSettings
    {
        id: hpsSettings
    }
    Component.onCompleted: {
        if(!hpsSettings.neverShowIsToggled)
        {
            aboutDialog.open()
        }
        else
        {
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

    HPSPopup
    {
	id: aboutDialog
    ColumnLayout
    {
        anchors.fill: parent
        Controls.Label
        {
            font.pointSize: invisibleSlider.value
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            wrapMode: Text.Wrap
            text: "<p><b>Czuwaj!</b></p>
Witaj w premierowej wersji Niezbędnika Harcerskiego. Pamiętaj, że jest to wczesna wersja i wiele elementów
może ulec zmianie."
        }
        Controls.CheckBox
        {
            text: qsTr("Nie pokazuj więcej")
            onToggled:
            {
                hpsSettings.neverShowIsToggled = true
            }
        }
    Controls.RoundButton {
                        Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                        radius: 4
                        text: qsTr("Przejdź dalej")
                        highlighted: true
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 30
                        onClicked:
                        {
                            aboutDialog.close()
                            if(!hpsSettings.neverShow2IsToggled)
                            {
                                mediaPlayer.play()
                                aboutDialog2.open()
                            }
//
                        }
                    }
    }
    }
    HPSPopup
    {
	id: aboutDialog2
    ColumnLayout
    {
    anchors.fill: parent
    //implicitWidth: page.width

    VideoOutput {
        id:videoOutput
        source:mediaPlayer
        Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        Layout.maximumHeight: root.height / 2
        Layout.fillWidth: true
    }
        Controls.Label
        {
            font.pointSize: invisibleSlider.value
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            wrapMode: Text.Wrap
            text: "Nawigacja po aplikacji odbywa się za pomocą gestów. Przesunięcie palcem od lewej do prawej umożliwia powrót do poprzedniej strony"
        }

        Controls.CheckBox
        {
            text: qsTr("Nie pokazuj więcej")
            onToggled:
            {
                hpsSettings.neverShow2IsToggled = true
            }
        }
    Controls.RoundButton {
                        Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                        radius: 4
                        text: qsTr("Uruchom aplikację")
                        highlighted: true
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 30
                        onClicked:
                        {
                            mediaPlayer.stop()
                            aboutDialog2.close()
//                          
                        }
                    }
} 
}
    HPSPopup
    {
	id: aboutDialog3
    ColumnLayout
    {
    anchors.fill: parent
    //implicitWidth: page.width

    VideoOutput {
        id:videoOutput2
        source:mediaPlayer2
        Layout.alignment: Qt.AlignTop
        Layout.maximumHeight: root.height / 2
        Layout.fillWidth: true
    }


        Controls.Label
        {
            font.pointSize: invisibleSlider.value
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            wrapMode: Text.Wrap
            text: "Naciśnięcie i przytrzymanie tekstu powoduje jego skopiowanie do schowka"
        }

    Controls.RoundButton {
                        Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                        radius: 4
                        text: qsTr("Przejdź dalej")
                        highlighted: true
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 30
                        onClicked:
                        {
                hpsSettings.neverShow3IsToggled = true
                            mediaPlayer2.stop()
                            aboutDialog3.close()
//
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


        Controls.Label
        {
            font.pointSize: invisibleSlider.value
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            wrapMode: Text.Wrap
            text: "Naciśnięcie i przytrzymanie cytatu powoduje jego skopiowanie do schowka"
        }

    Controls.RoundButton {
                        Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
                        radius: 4
                        text: qsTr("Przejdź dalej")
                        highlighted: true
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 30
                        onClicked:
                        {
                hpsSettings.neverShow4IsToggled = true
                            mediaPlayer3.stop()
                            aboutDialog4.close()
//
                        }
    }
}
}

     pageStack.globalToolBar.style: Kirigami.ApplicationHeaderStyle.None
     header: Controls.ToolBar {
       id: pasek
        background: Rectangle {
              anchors.fill: parent
              color: "Black"

            radius: pageStack.layers.depth != 1 || (pageStack.currentItem.title != "Niezbędnik Harcerski") ? 10 : 0
              border.color: "Grey"
            border.width: pageStack.layers.depth != 1 || (pageStack.currentItem.title != "Niezbędnik Harcerski") ? 1 : 0
    }
        RowLayout {
            anchors.fill: parent
             Controls.ToolButton {
                 id: menuButton
                 onClicked: globalDrawer.open()
		 icon.source: "qrc:/contents/ui/img/application-menu.svg"

            }
 Kirigami.Heading
            {
            Layout.fillWidth: true
            id: naglowek
            Layout.rightMargin: 40
	    horizontalAlignment: Text.AlignHCenter
	    // Pokazuje tytul właśnie otwartej strony
             text: pageStack.layers.depth == 1 ? pageStack.currentItem.title  : pageStack.layers.currentItem.title
             level: 2
            }
            Controls.ToolButton
            {
                visible: (!Kirigami.Settings.isMobile ) && ((pageStack.currentItem.title != "Niezbędnik Harcerski") || pageStack.layers.depth != 1) ? true : false
                icon.source: "image://icons/go-previous.svg,white"
                onClicked: {
                    if (pageStack.layers.depth == 1)
                    {
                        pageStack.pop();
                    }
                    else
                    {
                        pageStack.layers.pop();
                    }
                }
            }
        }
    }
    title: "Niezbędnik Harcerski"
    globalDrawer: Kirigami.GlobalDrawer {
        id: globalDrawer
//        title: "Menu"
//        titleIcon: "qrc:/contents/ui/img/applications-graphics.svg"
        background: Rectangle {
              anchors.fill: parent
              color: "Black"
           }
        header: RowLayout
        {
            Image
            {
//                Layout.fillWidth: true
                Layout.minimumHeight: globalDrawer.width / 4
                fillMode: Image.PreserveAspectFit
                source: "qrc:/contents/ui/img/applications-graphics.svg"
            }
            Controls.Label
            {
                Layout.fillWidth: true
                font.pointSize: 24
//                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter
                text: "Menu"
            }
        }
	modal: true

        dragMargin: 1
        bannerVisible: true
        //ukrywa zbędny przycisk od bocznego menu
	//Nie jest nam potrzebny ponieważ jeden już znajduje się w toolbarze
        handleVisible: false
        actions: [
      
            Kirigami.Action {
                text: "O aplikacji"
                visible: false
                icon {
                    source: "qrc:/contents/ui/img/configure.svg"
                    color: "White"
                }
                onTriggered: {
                    pageStack.layers.push(Qt.resolvedUrl("gallery/oProgramie.qml"));
                }
            },
                        Kirigami.Action {
                text: "Social media"
                visible: false
                icon {
                    source: "qrc:/contents/ui/img/configure.svg"
                    color: Kirigami.Theme.activeTextColor
                }
                onTriggered: {
                    pageStack.layers.push(Qt.resolvedUrl("gallery/social.qml"));
                }
            },
                        Kirigami.Action {
                text: "Testerzy"
                visible: false
                icon {
                    source: "qrc:/contents/ui/img/configure.svg"
                    color: Kirigami.Theme.activeTextColor
                }
                onTriggered: {
                    pageStack.layers.push(Qt.resolvedUrl("gallery/testerzy.qml"));
                }
            },
                        Kirigami.Action {
                text: "Pomocne dłonie"
                visible: false
                icon {
                    source: "qrc:/contents/ui/img/configure.svg"
                    color: Kirigami.Theme.activeTextColor
                }
                onTriggered: {
                    pageStack.layers.push(Qt.resolvedUrl("gallery/pomocni.qml"));
                }
            }
            ] 
topContent: [ColumnLayout {
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
  Layout.rightMargin: 10
  Layout.leftMargin: 10
ElementListyNoImage {
    header: "O aplikacji"
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/oProgramie.qml"))
      globalDrawer.close()
    }  }
        }
ElementListyNoImage {
    header: "Social media"
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/social.qml"))
      globalDrawer.close()
    }  }
        }
ElementListyNoImage {
    header: "Testerzy"
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/testerzy.qml"))
      globalDrawer.close()
    }
        }
      }
ElementListyNoImage {
    header: "Pomocne dłonie"
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/pomocni.qml"))
      globalDrawer.close()
    }    }
  }
ElementListyNoImage {
    header: "Ustawienia"
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/ustawienia.qml"))
      globalDrawer.close()
    }    }
  }
ElementListyNoImage {
    header: "Zgłoś swoją zawartość"
    visible: false
  Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        MouseArea {
    anchors.fill: parent
    onClicked: {
      pageStack.layers.pop(-1)
      pageStack.layers.push(Qt.resolvedUrl("gallery/blankLayer.qml"))
      globalDrawer.close()
    }    }
  }
Controls.Slider {
    id: invisibleSlider
    Layout.fillWidth: true
    visible: false
    from: 10
    Layout.leftMargin: 20
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
    }]
    }
    pageStack.initialPage: mainPageComponent
    pageStack.defaultColumnWidth: 1920


    //Main app content
    Component {
        id: mainPageComponent
        MainPage {}
    }
}

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

import QtQuick 2.0
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import QtQuick.Window 2.15
import org.kde.kirigami 2.4 as Kirigami
import QtGraphicalEffects 1.15

HPSPage
{
 id: page
  Layout.fillWidth: true
 title: qsTr("Symbolika WOSM")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    background: Rectangle {
        anchors.fill: parent
        color: "#6e20a0"
    }
    Controls.ScrollView {
        height: page.height * 2
        width: page.width

        Image {
            id: test
//            width: parent.width
//            Layout.fillWidth: true
//            Layout.maximumWidth: Window.width
//      color: "white"
//            height: width / 3
        fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.bottomMargin: 10
            width: page.width
//        anchors.fill: parent
            source: "qrc:/contents/ui/img/wosm_symbolika.svg"
        antialiasing: true
        visible: false
        }
    Desaturate {
        anchors.fill: test
        source: test
        desaturation: 0.8
        transform:rotation
        antialiasing: true
    }
    }
}

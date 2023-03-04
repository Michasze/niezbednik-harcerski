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

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import QtMultimedia 5.15
import HPSGame 1.0

HPSPage {
    id: page
    Layout.fillWidth: true
    title: qsTr("Gra")
    HPSGameScreen {
        id: screen
        screenWidth: 540
        screenHeight: 540
    }
    HPSGameKeyHandler {
        id: handler
    }
    HPSGame {
        id: game
        screenWidth: root.width
        screenHeight: root.height
    }
    Timer {
        id: gameTimer
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            tile2.visible = true
            tile.visible = false
            tile.source = game.tileImage
        }
    }
    Timer {
        id: gameTimer2
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            tile2.visible = false
            tile.visible = true
            tile2.source = game.tileImage
        }
    }
    Component.onCompleted: {
        player.play()
        // TODO: Wywołać te funkcje w jakiś lepszy sposób, zwłaszcza game.map
        console.log(game.map)
        screen.screenWidth = root.width
        screen.screenHeight = root.height - pasek.height
        //        tile.source = game.tileImage
    }
    Component.onDestruction: player.stop()
    /* Image { */
    /*     source: "qrc:/contents/ui/img/key.png" */
    /*     anchors.top: parent.top */
    /*     anchors.left: parent.left */
    /*     width: parent.width / 4 */
    /*     fillMode: Image.PreserveAspectFit */
    /* } */
    Image {
        id: tile
        //                source: game.tileImage
        anchors.top: parent.top
        anchors.left: parent.left
        width: parent.width
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: tile2
        //                source: game.tileImage
        anchors.top: parent.top
        anchors.left: parent.left
        width: parent.width
        fillMode: Image.PreserveAspectFit
    }
    Controls.Pane {
        id: pane
        Audio {
            id: player
            volume: 0.1
            source: "qrc:/contents/ui/media/music.opus"
        }
        Rectangle {
            id: mainWindow
            color: "red"
            anchors.fill: parent
        }
    }
    Item {
        id: keyEventHandler
        focus: true
        anchors.fill: parent
        Keys.onPressed: {
           handler.keyPressed = event.key
        }
    }
}

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

import QtQuick 2.1
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import "gallery"

BaseApp {
    id: root

    contextDrawer: Kirigami.ContextDrawer {
        id: contextDrawer
    }
    Controls.RoundButton {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        icon.source: "image://icons/go-home.svg"
        visible: pageStack.layers.depth != 1
        highlighted: true
        onClicked:
        {
            pageStack.layers.pop()
        }
//        color: "Blue"
    }
    Controls.RoundButton {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        visible: pageStack.currentItem.title == "Utwórz własną listę"
        icon.source: "image://icons/go-next.svg,white"
        highlighted: true
    }
}

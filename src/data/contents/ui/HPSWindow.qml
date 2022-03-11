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
import org.kde.kirigami 2.11 as Kirigami

HPSAbstractWindow {
    id: hpsRoot
    property alias pageStack: __pageStack
    Kirigami.PageRow {
         id: __pageStack
         globalToolBar.style: Kirigami.ApplicationHeaderStyle.Auto
         anchors {
             fill: parent
             //HACK: workaround a bug in android iOS keyboard management
             bottomMargin: ((Qt.platform.os == "android" || Qt.platform.os == "ios") || !Qt.inputMethod.visible) ? 0 : Qt.inputMethod.keyboardRectangle.height
             onBottomMarginChanged: {
                 if (__pageStack.anchors.bottomMargin > 0) {
                     root.reachableMode = false;
                 }
             }
         }
         //FIXME
         onCurrentIndexChanged: hpsRoot.reachableMode = false;
         focus: true
     }
}

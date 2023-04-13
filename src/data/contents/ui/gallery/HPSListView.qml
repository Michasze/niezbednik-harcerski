/*
 *   Copyright 2023 HPS <aplikacjahps@gmail.com>
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
import Filter 1.0

ListView {
    id: view
    property var listModel: []
    property var regExp: ""
    property var wykluczenie: ""
    HPSFilter {
        id: filteredModel
        sourceModel: listModel
        filterRole: "category"
        secondRole: "description"
	exclusion: view.wykluczenie
        filterRegularExpression: RegExp("%1".arg(view.regExp), "i")
    }
    clip: true
    spacing: 10
    model: filteredModel
    property var customDelegate
    topMargin: hpsSettings.margin
    delegate: customDelegate ? customDelegate : defaultDelegate
Component {
    id: defaultDelegate
    ElementListyNoLayout {
	width: view.width - (hpsSettings.margin * 2)
	anchors.horizontalCenter: parent.horizontalCenter
        header: model.header
        kolor: "Brown"
        MouseArea {
            anchors.fill: parent
            onClicked: pageStack.push(Qt.resolvedUrl(model.address))
        }
    }
}
}

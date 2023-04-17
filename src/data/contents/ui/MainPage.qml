/*
 *   Copyright 2023 Harcerze - Poznajemy Się! <aplikacjahps@gmail.com>
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
import Data 1.0
import Filter 1.0
import HPSCardModel 1.0
import "gallery"

HPSPage {
    id: pageRoot
    HPSSettings {
        id: hpsSettings
    }
    title: "Niezbędnik Harcerski"
    header: Controls.ToolBar {
        id: toolbar
        background: Rectangle {
            radius: 10
            anchors.fill: parent
            color: "Green"
        }
        Controls.TextField {
            id: searchField
            inputMethodHints: Qt.ImhNoPredictiveText
            placeholderText: qsTr("Szukaj...")
            leftPadding: 10
            color: "White"
            placeholderTextColor: "White"
            width: parent.width
        }
        Shortcut {
            id: focusShortcut
            enabled: true
            sequence: "/"
            onActivated: {
                searchField.forceActiveFocus()
                searchField.selectAll()
            }
        }
        Shortcut {
            id: deactivateFocusShortcut
            enabled: true
            sequence: "Esc"
            onActivated: {
                invisibleSlider.forceActiveFocus()
            }
        }
    }
    HPSFilter {
        id: filteredModel
        sourceModel: hpsModel
        filterRole: "HeaderRole"
        secondRole: "category"
        filterRegularExpression: {
            if (searchField.text === "") return new RegExp()
            return new RegExp("%1".arg(searchField.text), "i")
        }
    }
    ListView {
	id: view
	focus: true
	spacing: 10
	// HACK: topMargin z jakiegoś powodu źle działa
	y: searchField.height + hpsSettings.margin
	clip: true
        visible: searchField.text === "" ? false : true
        model: searchField.text === "" ? 0 : filteredModel
        delegate: KartaStronaNoLayout {
	    width: view.width - (hpsSettings.margin * 2)
	    anchors.horizontalCenter: parent.horizontalCenter
            header: model.header
            ikona: model.image.toString().includes("svg") ? "image://icons/" + model.image : "image://images/" + model.image
            opis: model.category
            adres: "gallery/" + model.address
        }
    }
    GridLayout {
        columns: 2
        anchors.horizontalCenter: parent.horizontalCenter
        visible: !root.pageStack.wideMode && searchField.text === ""
        Repeater {
            focus: true
	    model: mainDb.getList("name")
            delegate: KartaMain {
                id: listItem
                visible: searchField.text === ""
                header: mainDb.getList("name")[index]
                query: header.toLowerCase()
                adres: mainDb.getList("url")[index] ? "gallery/" + mainDb.getList("url")[index] : ""
                ikona: "image://icons/" + mainDb.getList("icon")[index]
                kolor_ikony: "," + mainDb.getList("kolor")[index]
            }
        }
    }
}

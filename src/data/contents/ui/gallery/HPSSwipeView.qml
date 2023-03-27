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

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls

HPSPage {
    id: page
    property var headerModel: []
    property var model1: []
    property var model2: []
    property var model3: []
    property var customDelegate
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
	Repeater {
	    model: page.headerModel
	    delegate: Controls.TabButton {
		text: modelData
	    }
	}
    }
    Item {
	id: margines
	anchors.top: parent.top
	height: tabBar.height
    }
    Controls.SwipeView {
	id: swipeView
	clip: true
	anchors.top: margines.bottom
	anchors.bottom: parent.bottom
	anchors.right: parent.right
	anchors.left: parent.left
	currentIndex: tabBar.currentIndex
	ListView {
            spacing: 10
	    model: page.model1
            delegate: customDelegate ? customDelegate: listViewDelegate
	}
	ListView {
            spacing: 10
	    model: page.model2
            delegate: customDelegate ? customDelegate: listViewDelegate
	}
	ListView {
            spacing: 10
	    visible: page.headerModel[2] ? true : false
	    model: page.model3
            delegate: customDelegate ? customDelegate: listViewDelegate
	}
	Component {
	    id: listViewDelegate
            ElementListyNoLayout {
		id: karta
                header: model.tresc ? model.tresc : modelData
                color: model.kolor ? model.kolor : "royalblue"
		//True jeśli rota przyrzeczenia - tekst powinien być wtedy większy
		isPromise: model.promise ? model.promise : false
		wysokosc: model.height ? model.height : karta.children[0].contentHeight + 30
		Component.onCompleted: console.log(karta.children[0].contentHeight)
            }
	}
    }
    //HACK: Z jakiegoś powodu dzięki temu widać nasze listy
    Item {}
}

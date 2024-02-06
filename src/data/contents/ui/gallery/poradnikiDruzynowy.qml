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

HPSPage {
    id: page
    title: "Poradnik drużynowego"
    ListModel {
	id: listMain
	ListElement { tytul: "Biwaki"; image: "image://icons/namiot_biwakowy.svg,white"; address: "biwaki" }
	//	ListElement { tytul: "Generator SMS-ów"; image: "image://icons/mail-sent.svg,white"; address: "sms.qml" }
	//	ListElement { tytul: "Zbiórki"; image: ""; address: "blank.qml" }
	ListElement { tytul: "Sprawności"; image: "image://icons/sprawnosci.svg,white"; address: "sprawnosci.qml" }
	//	ListElement { tytul: "Praca drużyny"; image: ""; address: "kacikInne.qml" }
	//	ListElement { tytul: "Nabory"; image: ""; address: "blank.qml" }
    }
    HPSListView {
	listModel: listMain 
	customDelegate: Component {
	    KartaStronaNoLayout {
	        width: page.width - (hpsSettings.margin * 2)
	        anchors.horizontalCenter: parent.horizontalCenter
                header: model.tytul
                opis: ""
                ikona: model.image
                adres: model.address
	    }
	}
    }
}

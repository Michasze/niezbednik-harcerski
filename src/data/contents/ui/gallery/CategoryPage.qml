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

HPSPage {
    id: page
    property string tytul
    property string query
    property bool isCipher: page.title == "Program szyfrujący" || page.title == "Mała księga szyfrów"
    title: tytul
    Component.onCompleted: {
	if(!hpsSettings.neverShow4IsToggled && title == "Program szyfrujący")
	   {
	       mediaPlayer3.play()
	       aboutDialog4.open()
	   }
    }
    HPSListView {
	id: view
	listModel: hpsModel
	regExp: page.query
	header: page.title == qsTr("Historia") ? headerDelegate : null
	// null to domyślne kafelki z HPSListView
	customDelegate: isCipher ? null : defaultDelegate
    }
    Component {
	id: defaultDelegate
	KartaStronaNoLayout {
	    width: view.width - (hpsSettings.margin * 2)
	    anchors.horizontalCenter: parent.horizontalCenter
            header: model.header
            opis: model.description
	    // prymitywny sposób sprawdzenia czy chodzi o wektor czy jpg
            ikona: model.image.toString().includes("svg") ? "image://icons/" + model.image : "image://images/" + model.image
            adres: model.address
	    // w szyfrach chcemy mieć czerwone kafelki
	    kolor: (page.title == qsTr("Szyfry")) || page.isCipher ? "brown" : "#303030"
        }
    }
    Component {
	id: headerDelegate
	Item {
	    // Musimy zamknąć nagłówek w ten sposób bo inaczej marginesy nie działają
	    height: postacie.height + hpsSettings.margin
	    // to się prosi o lepsze rozwiązanie
	    x: hpsSettings.margin
	    width: postacie.width
            ElementListyImageNoLayout {
		id: postacie
		width: view.width - (hpsSettings.margin * 2)
		visible: page.title === qsTr("Historia")
		height: 150
		ikona: "image://images/Baden-Powell.jpg,20"
		isUrl: false
		odnosnik: "postacie"
		header: "Postacie"
            }
	}
    }
}

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

HPSSwipeView {
    id: page
    title: qsTr("Stopnie Harcerskie - ZHR")
    headerModel: ["Zuchy",
		  "Harcerze",
		  "Instruktorzy"]
    model1: ListModel {
	ListElement {
            tresc: qsTr("Zuch pierwszej gwiazdki\nZuch wtajemniczony")
            ikona: "qrc:/contents/ui/img/ho.svg"
	}
	ListElement {
            tresc: qsTr("Zuch drugiej gwiazdki\nZuch zaradny")
            ikona: "qrc:/contents/ui/img/hr.svg"
	}
	ListElement {
            tresc: qsTr("Zuch trzeciej gwiazdki\nZuch opiekuńczy")
            ikona: "qrc:/contents/ui/img/zuchG.svg"
	}
    }
    model2: ListModel {
        ListElement {
            isRank: true
            ikona: "image://icons/blank.svg,transparent"
            tresc: qsTr("Młodzik\n Ochotniczka")
        }
        ListElement {
            isRank: true
            divider: 2.4
            ikona: "image://icons/krzyz_lilijka_srebrna.svg"
            tresc: qsTr("Wywiadowca\n Tropicielka")
        }
        ListElement {
            isRank: true
            divider: 2.4
            ikona: "image://icons/krzyz_lilijka_zlota.svg"
            tresc: qsTr("Ćwik\n Samarytanka")
        }
        ListElement {
            isRank: true
            ikona: "image://icons/krzyz_lilijka_okrag.svg"
            divider: 2.1
            tresc: qsTr("Harcerz orli\n Wędrowniczka")
        }
        ListElement {
            isRank: true
            ikona: "image://icons/krzyz_wieniec.svg"
            divider: 0.90
            tresc: qsTr("Harcerz Rzeczypospolitej\n Harcerka Rzeczypospolitej")
        }
    }
    model3: ListModel {
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_pwd.svg"
            tresc: "Przewodnik"
            drugaIkona: "image://icons/podkladka_pwd.svg"
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_phm.svg"
            tresc: "Podharcmistrz"
            drugaIkona: "image://icons/podkladka_phm.svg"
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_hm.svg"
            tresc: "Harcmistrz"
            drugaIkona: "image://icons/podkladka_hm.svg"
        }
    }
    customDelegate: Component {
	ElementListyImageNoLayout {
	    ikona: model.ikona
	    color: "steelblue"
	    header: model.tresc
	    width: parent.width
	    drugaIkona: model.drugaIkona ? model.drugaIkona : ""
	    trzeciaIkona: model.trzeciaIkona ? model.trzeciaIkona : ""
	    divider: model.divider ? model.divider : 1
	    isRank: model.isRank ? true : false
	}
    }
}

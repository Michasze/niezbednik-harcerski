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
    title: qsTr("Stopnie Harcerskie - ZHP")
    headerModel: ["Zuchy",
		  "Harcerze",
		  "Instruktorzy"]
    model1: ListModel {
	ListElement {
	    tresc: "Zuch Ochoczy"
	    kolor: "steelblue"
            ikona: "qrc:/contents/ui/img/ho.svg"
	}
	ListElement {
	    tresc: "Zuch Sprawny"
	    kolor: "steelblue"
            ikona: "qrc:/contents/ui/img/hr.svg"
	}
	ListElement {
	    tresc: "Zuch Zaradny"
	    kolor: "steelblue"
            ikona: "qrc:/contents/ui/img/zuchG.svg"
	}
    }
    model2: ListModel {
	ListElement {
            ikona: "qrc:/contents/ui/img/mlodzik.svg"
            kolor: "steelblue"
            tresc: qsTr("Młodzik\nOchotniczka")
            drugaIkona: "image://icons/krzyz.svg,white"
	}
        ListElement {
            ikona: "qrc:/contents/ui/img/wywiadowca.svg"
            kolor: "steelblue"
            tresc: qsTr("Wywiadowca\nTropicielka")
            drugaIkona: "image://icons/krzyz.svg,white"
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/odkrywca.svg"
            kolor: "steelblue"
            tresc: qsTr("Odkrywca\nPionierka")
            drugaIkona: "image://icons/krzyz.svg,white"
            trzeciaIkona: "image://icons/krzyz_lilijka_srebrna.svg"
            divider: 2.4
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/cwik.svg"
            kolor: "steelblue"
            tresc: qsTr("Ćwik\nSamarytanka")
            drugaIkona: "image://icons/krzyz.svg,white"
            trzeciaIkona: "image://icons/krzyz_lilijka_zlota.svg"
            divider: 2.4
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/ho.svg"
            kolor: "steelblue"
            tresc: qsTr("Harcerz Orli\nHarcerka Orla")
            drugaIkona: "image://icons/krzyz.svg,white"
            trzeciaIkona: "image://icons/krzyz_lilijka_okrag.svg"
            divider: 2.1
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/hr.svg"
            kolor: "steelblue"
            tresc: qsTr("Harcerz Rzeczypospolitej\n Harcerka Rzeczypospolitej")
            drugaIkona: "image://icons/krzyz.svg,white"
            trzeciaIkona: "image://icons/krzyz_wieniec.svg"
            divider: 0.9
        }
    }
    model3: ListModel {
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_pwd.svg"
            kolor: "steelblue"
            tresc: "Przewodnik"
            drugaIkona: "image://icons/podkladka_pwd.svg"
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_phm.svg"
            kolor: "steelblue"
            tresc: "Podharcmistrz"
            drugaIkona: "image://icons/podkladka_phm.svg"
        }
        ListElement {
            ikona: "qrc:/contents/ui/img/instruktorska_hm.svg"
            kolor: "steelblue"
            tresc: "Harcmistrz"
            drugaIkona: "image://icons/podkladka_hm.svg"
        }
    }
    customDelegate: Component {
	ElementListyImageNoLayout {
	    ikona: model.ikona
	    color: model.kolor
	    header: model.tresc
	    width: parent.width
	    drugaIkona: model.drugaIkona ? model.drugaIkona : ""
	    trzeciaIkona: model.trzeciaIkona ? model.trzeciaIkona : ""
	    divider: model.divider ? model.divider : 1
	}
    }
}

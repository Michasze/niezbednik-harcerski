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
    title: "Stopnie Harcerskie - Zawisza"
    headerModel: ["Męskie",
		  "Żeńskie"]
    model1: ListModel {
	ListElement {
            tresc: "Wywiadowca"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Ćwik"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Harcerz orli"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Harcerz Rzeczypospolitej"
            kolor: "steelblue"
            height: 120
	}
    }
    model2: ListModel {
	ListElement {
            tresc: "Tropicielka"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Pionierka"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Samarytanka"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Wędrowniczka"
            kolor: "steelblue"
            height: 120
	}
	ListElement {
            tresc: "Harcerka Rzeczypospolitej"
            kolor: "steelblue"
            height: 120
	}
    }
}

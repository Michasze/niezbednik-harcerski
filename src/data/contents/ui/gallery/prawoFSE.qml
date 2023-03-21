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
    id: swipeView
    title: "Prawo Harcerskie"
    headerModel: ["Harcerze",
		  "Wilczki"]
    model1: ["<b>1.</b> Harcerz dba o swój honor, aby zasłużyć na zaufanie.",
             "<b>2.</b> Harcerz jest lojalny wobec swojego kraju, rodziców, przełożonych i podwładnych.",
             "<b>3.</b> Harcerz jest powołany do służby bliźniemu i jego zbawieniu.",
             "<b>4.</b> Harcerz jest przyjacielem wszystkich i bratem dla każdego innego Harcerza.",
             "<b>5.</b> Harcerz jest uprzejmy i rycerski.",
             "<b>6.</b> Harcerz widzi w przyrodzie dzieło Boże, szanuje rośliny i zwierzęta.",
             "<b>7.</b> Harcerz jest karny, każde zadanie wykonuje sumiennie do końca.",
             "<b>8.</b> Harcerz jest panem samego siebie, uśmiecha się i śpiewa w kłopotach.",
             "<b>9.</b> Harcerz jest gospodarny i troszczy się o dobro innych.",
             "<b>10.</b> Harcerz jest czysty w myśli, mowie i uczynkach."]
    model2: ListModel {
	ListElement {
	    tresc: "Prawo Gromady"
	    kolor: "indianred" 
	}
	ListElement {
            tresc: "Wilczek słucha Starego Wilka.<br>
Wilczek nie słucha samego siebie."
	}
	ListElement {
	    tresc: "Prawo Wilczka"
	    kolor: "indianred" 
	}
	ListElement {tresc: "<b>1.</b> Wilczek myśli najpierw o innych."}
	ListElement {tresc: "<b>2.</b> Wilczek ma oczy i uszy otwarte."}
	ListElement {tresc: "<b>3.</b> Wilczek jest zawsze czysty."}
	ListElement {tresc: "<b>4.</b> Wilczek zawsze mówi prawdę."}
	ListElement {tresc: "<b>5.</b> Wilczek jest zawsze radosny."}
    }
}

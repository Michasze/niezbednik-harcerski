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

HPSPage {
    id: page
    title: qsTr("Jak organizować gry terenowe?")
    ListModel {
        id: naglowki
        ListElement { tytul: "Najczęściej popełniane błędy"; link: "bledy.qml"; obraz: "image://icons/bledy.svg,white"}
        ListElement { tytul: "Jak tłumaczyć zasady gry?"; link: "jakTlumaczyc.qml"; obraz: "image://icons/pytajnik.svg,white"}
        ListElement { tytul: "Fabuła - inspiracje"; link: "inspiracje.qml"; obraz: "image://icons/miecz.svg,white"}
        ListElement { tytul: "Jak budować fabułę?"; link: "jakBudowac.qml"; obraz: "image://icons/miecz.svg,white"}
        ListElement { tytul: "Mechanika"; link: "mechanika.qml"; obraz: "image://icons/settings_thin.svg,white"}
        ListElement { tytul: "Jak tworzyć punkty?"; link: "punkty.qml"; obraz: "image://icons/flaga.svg,white"}
        ListElement { tytul: "Dodatkowe pomysły"; link: "dodatkowe.qml"; obraz: "image://icons/zarowka_thick.svg,white"}
    }
    ListView {
	spacing: 10
	model: naglowki
	topMargin: hpsSettings.margin
	delegate: ElementListyImageNoLayout {
	    width: parent.width - hpsSettings.margin
	    anchors.horizontalCenter: parent.horizontalCenter
	    header: model.tytul
	    odnosnik: "terenowe/" + model.link
	    ikona: model.obraz
	    isUrl: false
	}
    }
}

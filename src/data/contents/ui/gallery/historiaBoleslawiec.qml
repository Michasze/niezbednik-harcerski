/*
 *   Copyright 2021 HPS <aplikacjahps@gmail.com>
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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Harcerstwo w Bolesławcu"

    ColumnLayout {
        width: page.width
        Controls.Label {
            id: opis
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
            horizontalAlignment: Image.AlignHLeft
	    text: "Harcerstwo na terenie Bolesławca pojawiło się z przybyciem hm. Huberta Bonina. Drużyna założona przez Huberta Bonina w 1946 roku przyjęła imię Księcia Józefa Poniatowskiego. Represje ówczesnej władzy wymusiły zmianę patrona drużyny na Gustawa Morcinka oraz odsunęły Bonina od płacy z młodzieżą. Hubert Bonin powrócił do pracy dopiero w 1956 roku. Hubert Bonin czynnie uczestniczył w życiu harcerskim do lat 90, gdzie organizował 1 Bolesławieckiej Drużyny Harcerzy. Druh Harcmistrz Hubert Bonin zmarł w 2008 roku.
	 
Anegdotka: hm. Hubert Bonin rekrutował z początku harcerzy do swojej drużyny, chodząc w mundurze harcerskim po ulicach miasta."
        }
    }
}

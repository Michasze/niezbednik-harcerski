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
import QtQuick.Controls 2.15 as Controls

ListView {
    id: list
    clip: true
    width: page.width / 2
    currentIndex: -1
    height: contentHeight < page.height / 2 ? contentHeight : page.height / 2
    anchors.horizontalCenter: parent.horizontalCenter
    Rectangle {anchors.fill: parent; border.color: "white"; border.width: 1; color: "transparent"}
    Controls.ScrollBar.vertical: Controls.ScrollBar {
        active: true
    }
    delegate: ListDelegate {
        tresc: modelData
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            function changeHeader(tekst) {
                if (tekst == "Czuwaj!" || tekst == "Dzień dobry")
                {
                    wiadomosc.header = tekst + "\n"
                }
                else
                {
                    wiadomosc.header = wiadomosc.header.replace(last, '')
                    last = tekst + " "
                    if (!wiadomosc.header.includes(last))
                    {
                        if (licznik == 2)
                        {
                            last = last.concat("odbędzie się w ").toLowerCase()
                        }
                        last2 = last
                        wiadomosc.header = wiadomosc.header.concat(last2);
                    }
                }
            }
            onClicked: {
                list.currentIndex = index
                changeHeader(list.currentItem.tresc)
                console.log(last);
                console.log(list.currentItem.tresc)
            }
        }
    }
    highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
    focus: true
}

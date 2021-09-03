
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
import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

HPSPage

{
    id: page
    title: "Utwórz własną listę"
    ColumnLayout {
        RowLayout {
            width: page.width
        ElementListyNoImage {
            id: listId
            header: "Nazwa listy"
            Layout.preferredWidth: page.width / 2
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignLeft
            kolor: "darkolivegreen"
        }
        Controls.TextField {
            Layout.preferredHeight: listId.height
            Layout.preferredWidth: page.width / 2
            Layout.topMargin: 10
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.rightMargin: 10
            background: Rectangle {
                anchors.fill: parent
                color: "Grey"
            }
        }
        }
        ElementListyNoImage {
            header: "Kategorie"
            Layout.fillWidth: true
        }
        GridLayout
        {
            Layout.alignment: Qt.AlignHCenter
            columns: 2
        HPSCheckBox
        {
            id: box1
            tresc: "Jedzenie"
        }
        HPSCheckBox
        {
            id: box2
            tresc: "Spanie"
        }
        HPSCheckBox
        {
            id: box3
            tresc: "Ubrania"
        }
        HPSCheckBox
        {
            id: box4
            tresc: "Higiena"
        }
        HPSCheckBox
        {
            id: box5
            tresc: "Apteczka"
        }
        HPSCheckBox
        {
            id: box6
            tresc: "Pionierskie/obozowe"
        }
        HPSCheckBox
        {
            id: box7
            tresc: "Inne"
        }
        HPSCheckBox
        {
            id: box8
            tresc: "Ważne"
        }
        }
    }
}

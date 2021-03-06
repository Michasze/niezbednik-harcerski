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

import QtQuick 2.0
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import ".."


Controls.TextArea {
    property bool deszyfrowanie: false
    id: pole
    Layout.fillWidth: true
    Layout.preferredHeight: (page.height / 2) - (naglowek.height / 2) - 40
    Layout.fillHeight: true
    inputMethodHints: Qt.ImhNoPredictiveText
    leftPadding: 10
    color: "white"
    wrapMode: TextEdit.WrapAnywhere
    placeholderTextColor: "White"
    placeholderText: deszyfrowanie ? qsTr("Zaszyfrowany tekst...") :  qsTr("Tekst do zaszyfrowania...")
    background: Rectangle {
        radius: 5
        color: "#1d1d1d"
        implicitWidth: 100
        implicitHeight: 24
        border.color: "#333"
        border.width: 1
    }
}

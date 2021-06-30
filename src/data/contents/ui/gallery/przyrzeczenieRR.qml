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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Przyrzeczenie Royal Rangers"

    actions {
        main: Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
     }

    ColumnLayout {
        width: page.width
        spacing: 0
ElementListyNoImage
        {
            color: "brown"
            header: "Z Bożą pomocą uczynię wszystko, aby służyć Bogu, Jego Kościołowi i bliźnim przestrzegając prawa Royal Rangers i wprowadzając w życie Złotą Zasadę."
        }
    }
 
    
}

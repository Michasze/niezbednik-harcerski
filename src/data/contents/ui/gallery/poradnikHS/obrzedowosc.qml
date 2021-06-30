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
import org.kde.kirigami 2.13
import ".."

HPSPage {
        id: rozdzial10
        Layout.fillHeight: true
        title: qsTr("Obrzędowość zastępu")
     actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }
        ColumnLayout {
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Obrzędowość to coś, co wyróżnia zastęp na tle innych. Wasz własny inside joke. Może to być wasza własna piosenka, którą śpiewacie tylko w danych okolicznościach. Może to być okrzyk, specyficzny sposób powitania, ksywki członków zastępu, button na kieszeni munduru - wszystko zależy od Waszej wyobraźni."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Postarajcie się o coś naprawdę mega, co będzie znakiem rozpoznawczym Waszego zastępu. Ważne jest, żeby HS-i czuli ,to coś”, czuli, że ta obrzędowość jest znakiem ich przynależności do konkretnej grupy - Waszego zastępu."
        }
        }
    }

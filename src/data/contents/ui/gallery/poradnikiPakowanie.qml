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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Pakowanie"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        visible: !Kirigami.Settings.isMobile ? true : false
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
        id: mainlayout
        KartaStronaNoImage { 
        header: "Biwak"
        opis: "Co spakować na trzydniowy biwak w budynku?"
        adres: "pakowanieBiwaki.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }
        KartaStronaIkona {
        header: "Obóz"
        ikona: "image://icons/namiot_dycha.svg,white"
        opis: "Co zabrać na obóz?"
        adres: "pakowanieOboz.qml"
} 
        KartaStronaIkona {
        header: "Wyjazd rowerowy"
        ikona: "image://icons/rower.svg,white"
        opis: "Lista rzeczy na wyjazd rowerowy"
        adres: "pakowanieRower.qml"
}
}
}

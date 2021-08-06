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
    title: "Poradniki wyboru sprzętu"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
        id: mainlayout
KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/noz.svg"
        header: "Poradnik wyboru noża"
        mask: true
        opis: ""
        adres: "noz.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }

KartaStronaNoImage { 
        header: "Jak wybrać odpowiedni śpiwór?"
        opis: ""
        adres: "Spiwor.qml"
    }
        HPSSeparator
    {
        Layout.fillWidth: true
    }

KartaStronaIkona {
        ikona: "qrc:/contents/ui/img/karimata.svg"
        header: "Wybór karimaty, maty lub materaca"
        opis: ""
        adres: "maty.qml"
    }

}
}

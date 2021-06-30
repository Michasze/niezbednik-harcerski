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
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

HPSPage
{
 id: page
 title: "Raduje się serce"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
 Controls.Label
 {
  id: tresc
  text: "
Raduje się serce, raduje się dusza
Gdy nasza drużyna na kolonję rusza

Oj dana, oj dana, drużyno kochana!
Nie masz jak drużyna nie.

Chociaż na gościńcu droga kamienista
Każdy sunie z ochotą i tak sobie śwista

Oj dana, oj dana, drużyno kochana!
Nie masz jak drużyna nie.

Chociaż w butach dziury i na portkach łaty
Można i bez portek napić się herbaty

Oj dana, oj dana, drużyno kochana!
Nie masz jak drużyna nie.

A więc piersi naprzód podniesiona głowa
Bośmy przecież pierwsza drużyna harcowa.
"
 }
}

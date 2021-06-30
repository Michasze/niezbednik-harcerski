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
 title: "U nas na obozie"
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
A u nas w obozie hej!
Są chłopcy morowe hej!
Są tam i harcerze tiura la la la
I inni rycerze usia sia sia-

Dają kawę białą-hej!
Lecz porcyjkę małą-hej!
Każą maszerować tiura la la
Ćwiczyć i celować usia sia sia-

Dadzą Ci gulażu-hej!
Lecz brudno nawarzą-hej!
Dają porcję ryżu tiu ra la la
Jedz biedny harcerzu usia sia sia

A gdy zachorujesz hej
Pójdziesz do doktora hej
Dadzą ci rycyny tiu ra la la
To środek jedyny usia sia sia."
 }
}

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
 title: "Madelon"
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
Gdy po ćwiczeniach wolny mamy czas
A do dzieweczki aż się serce rwie
W skraju doliny gdzie się kończy las
Gospoda stoi-pod Strzelcem się zwie

Jest tam dziewczę piękne młode
Śmigłe jak motyla lot
Oczy jej są iskier pełne
Zwą ją wszyscy Madelon

W snach widzimy ją
Wzrok budzi serca żar
To jest Madelon-to jest miłości czar

Gdy Madelon do stołu nam podaje
Spokoju nie zna miłych gości rój,
Każdt szepce w uszko słodkie baje
Każdy szepce na sposób swój--

Bo Madelon jest dla nas tak łaskawą 
Że choć uszczypniesz lub pogłaskasz ją
Nie gniewa się-śmiech jej obroną całą
Madelon, Madelon, Madelon!"
 }
}

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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage

{
    title: "Aplikacje pogodowe"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: 0

                ElementListyNoImage
        {
            color: "Black"
            header: "<h1>Lightning</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Pozwala zobaczyć w których miejscach jest burza i wyładowania"
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Reklamy"
        }
                ElementListyNoImage
        {
            color: "Black"
            header: "<h1>Windy</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Pozwala obserwować kierunki wiatru, siłę wiatru temperaturę czy ciśnienie"
        }
                ElementListyNoImage
        {
            color: "Black"
	    header: "<h1>Meteo</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Jedna z najlepszych aplikacji pogodowych"
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Dość skomplikowana wizualnie dla młodszych harcerzy"
        }
        }
}

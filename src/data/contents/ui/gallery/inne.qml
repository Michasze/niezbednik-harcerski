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
      	onTriggered: pageStack.pop(-1);
        visible: false
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
            header: "<h1>Latarka z alfabetem morsa</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Pozwala nadawać morsem<br>
Pozwala zmieniać kolor ekranu"
        }
                ElementListyNoImage
        {
            color: "Black"
	    header: "<h1>Life360: Family Locator</h1><br>
	    Aplikacja pozwala nam na bieżąco śledzić położenie innych \"członków rodziny\" oraz np. poziom ich baterii w telefonie. Dodatkowo aplikacja umożliwia wymianę wiadomości na czacie. Ciekawe rozwiązanie kiedy dzielmy drużynę na dużą ilość patroli, a mamy np. nowe osoby których nie możemy być pewni."
        }
                ElementListyNoImage
        {
            color: "Green"
            header: "Sprawdzanie poziomu baterii osób w patrolu<br>
Dobry kanał komunikacyjny wszystko w jednej aplikacji"
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Nie można przesadzić w próbach kontrolowania naszych harcerzy, czasem dobrze jest się zgubić, żeby nauczyć się znajdować :)"
        }
                ElementListyNoImage
        {
            color: "Black"
	    header: "<h1>PlantNet Plant Identification</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Pozwala identyfikować różne rośliny ze zdjęć. Ciekawa opcja do pokazania naszym harcerzom w ramach np. jakiejś sprawności. "
        }
        }
}

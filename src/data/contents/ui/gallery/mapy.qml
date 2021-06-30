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
    title: "Mapy"
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
            header: "<h1>Geoportal</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Całkiem niezłe mapy"
        }
                ElementListyNoImage
        {
            color: "Black"
            header: "<h1>Maps.me</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Można pobrać mapy, aby działały offline. <br>
Pokazuje adresy wraz z numerami. <br>
Proste i czytelne, dadzą radę dla młodszych harcerzy. Precyzyjniejsze niż mapy google."
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Brak oznaczeń kolorów szlaków turystycznych"
        }
                ElementListyNoImage
        {
            color: "Black"
	    header: " <h1>Moje mapy</h1><br>
	    Aplikacja działająca na bazie map google. Pozwala nam tworzyć punkty i je opisywać w tym np. dodawać zdjęcia czy trasy. Możemy je udostępniać innym za pomocą linku."
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Pozwala stworzyć np. mapę miejsc wędrówkowych czy biwakowych dla całego środowiska<br>
Możliwość opisywania punktów<br>
Dodawanie zdjęć i tras<br>
Dobre i płynne działanie wersji komputerowej"
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Niestabilna wersja na androida<br>
Udostępnianie linków potrafi irytować, bo wymaga zmieniania ustawień"
        }
                ElementListyNoImage
        {
            color: "Black"
            header: "<h1>Geocaching</h1>"
        }
                ElementListyNoImage
        {
            color: "green"
            header: "Sporo ciekawych skrzynek<br>
Przy wielu skrzynkach są opisy, które zawierają np. historyczne czy krajoznawcze informacje"
        }
                ElementListyNoImage
        {
            color: "brown"
            header: "Aby korzystać ze wszystkich skrzynek trzeba mieć konto premium, ale można korzystać również przez przeglądarkę i w ten sposób obejść ten problem"
        }
        }
}

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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage
{
 id: page
 title: qsTr("Książki dla drużynowych")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList
        ElementListyNoImage
        {
            color: "mediumblue"
            header: "Przydatne książki dla drużynowych"
        }
        Cytat{
            tresc: "\"Skauting dla Chłopców\" - Generał Robert Baden Powell"
             }
        Cytat{
            tresc: "\"Harcerski system wychowania\" - hm. Marek Gajdziński"
             }
        Cytat{
            tresc: "\"Domem harcerstwa jest las\" - praca zbiorowa"
             }
        Cytat{
            tresc: "\"Indywidualizm i posłuszeństwo w wychowaniu harcerskim\" - Zdzisław Stieber"
             }
        Cytat{
            tresc: "\"Obejmujesz drużynę - maile nocą pisane\" - Janusz Sikorski"
             }
        Cytat{
            tresc: "\"Obrzędowy Piec\" - hm. Marek Kudasiewicz"
             }
        Cytat{
            tresc: "\"Wampumy leśnych\" - instruktorzy Gromady Wilków Puszczańskiego Kręgu Czarnego Dębu"
                        }
        Cytat{
            tresc: "\"Stosowanie metody harcerskiej w drużynie harcerzy\" - Marek Kamecki"
     }

        Cytat{
            tresc: "\"Księga Jaszczurki\" - Aimee Degallier-Martin (Obowiązkowa pozycja dla Druhen)"
     }

        Cytat{
            tresc: "\"Wilk, który nigdy nie śpi\" - Walter Hansen"
                        }
    }
}

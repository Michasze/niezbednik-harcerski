
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


HPSPage
{
 id: page
 title: qsTr("Filmy z harcerzami")
    ColumnLayout {
     id: mainList
        ElementListyNoImage
        {
            color: "Grey"
            header: "Filmy:"
        }
        Cytat{
            tresc: "\"Moja wojna, moja miłość\" - 1975, reż. Janusz Nasfeter"
             }
        Cytat{
            tresc: "\"Ptaki, ptakom...\" - 1976, reż. Paweł Komorowski"
             }
        Cytat{
            tresc: "\"Akcja pod Arsenałem\" - 1977, reż. Jan Łomnicki"
             }
        Cytat{
            tresc: "\"Droga daleka przed nami\" - 1979, reż. Władysław Ślesicki"
             }
        Cytat{
            tresc: "\"Czarne stopy\" - 1987, reż. Waldemar Podgórski"
             }
        Cytat{
            tresc: "\"Po całym ciele\" - 1999, reż. Grzegorz Królikiewicz"
             }
        Cytat{
            tresc: "\"Zdarzyło się w Mafekingu\" - 2005, reż. Tomasz Rudmino, Anna Kwiatkowska"
                        }
        Cytat{
            tresc: "\"U stóp Szarloty\" - 2012, reż. Bogusław Porwoł"
     }

        Cytat{
            tresc: "\"Kamienie na szaniec\" - 2014, reż. Robert Gliński"
     }

        Cytat{
            tresc: "\"Wenecja\" - 2010, reż. Jan Jakub Kolski"
                        }
        Cytat{
            tresc: "\"Dreszcze\" - 1981, reż. Wojciech Marczewski"
                        }
        Cytat{
            tresc: "\"Miasto 44\" - 2014, reż. Jan Komasa"
                        }
        Cytat{
            tresc: "\"Nie lubię poniedziałku\" - 1971, reż. Tadeusz Chmielewski"
                        }
        Cytat{
            tresc: "\"Szatan z siódmej klasy\" - 1960, reż Maria Kaniewska"
                        }
        Cytat{
            tresc: "\"Pieczone gołąbki\" - 1966, reż. Tadeusz Chmielewski"
                        }
        Cytat{
            tresc: "\"Wyspa Złoczyńców\" - 1965, reż. Stanisław Jędryka"
                        }
        ElementListyNoImage
        {
            color: "Grey"
            header: "Seriale:"
        }
        Cytat{
            tresc: "\"Samochodzik i templariusze\" - 1971, reż. Hubert Drapella"
             }
        Cytat{
            tresc: "\"Niewiarygodne przygody Marka Piegusa\" - 1966-1967, reż. Mieczysław Waśkowski"
             }
        Cytat{
            tresc: "\"1920. Wojna i miłość\""
             }
        ElementListyNoImage
        {
            color: "Grey"
            header: "Animacje:"
        }
        Cytat{
            tresc: "\"Odlot\" - 2009, reż. Pete Docter / Bob Peterson"
             }
    }
}

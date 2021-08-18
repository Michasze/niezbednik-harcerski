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
 title: qsTr("Książki dla harcerzy")
    ColumnLayout {
     id: mainList
    ElementListyNoImage
    {
       color: "Grey"
       header: "O harcerzach lub takie, w których harcerze się pojawiają:"
       align: 1
    }
        Cytat
        {
            tresc: "\"Kamienie na szaniec\" - Aleksander Kamiński"
             }
    Cytat
    {
            tresc: "\"Czarne Stopy\" - Seweryna Szmaglewska"
    }
        Cytat
        {
            tresc: "\"Nowy ślad Czarnych Stóp\" - Seweryna Szmaglewska"
             }
        Cytat
        {

            tresc: "\"Pan Samochodzik i Templariusze\" - Zbigniew Nienacki"
             }
        Cytat
        {
            tresc: "\"Pan Samochodzik i Winnetou\" - Zbigniew Nienacki"
        }
        Cytat
        {
            tresc: "\"Pan Samochodzik i Księga Strachów\" - Zbigniew Nienacki"
             }
        Cytat
        {
            tresc: "\"Księga Urwisów\" -Edmund Niziurski"
             }
        Cytat
        {
            tresc: "\"Czuwajcie w letnie noce\" - Wiesław Jażdżyński"
        }
        Cytat
        {
            tresc: "\"Wieża spadochronowa: Harcerze śląscy we wrześniu 1939\" - Kazimierz Gołba"
             }
        Cytat
        {
            tresc: "\"Leśna Drużyna\" - Bolesław Mrówczyński"
        }
        Cytat
        {
            tresc: "\"Tajemnica Deszczowej Nocy\" - Krzysztof Petek"
        }
        Cytat
        {
            tresc: "\"Goniec Konopny\" - Marcin Wrzos"
             }
        ElementListyNoImage
        {
           align:1
           color: "Grey"
           header: "Historyczne:"
        }
        Cytat
        {
            tresc: "\"Eskadra Opowieść o wojnie polsko-sowieckiej 1920 r.\" - Janusz Meissner"
        }
        Cytat
        {
       tresc: "\"L-Lucy\" - Janusz Meissner"
        }
        Cytat
        {
            tresc: "\"Zośka i Parasol\" - Aleksander Kamiński"
     }
     ElementListyNoImage
     {
         color: "Grey"
         header: "Dobre książki"
         align: 1
     }
        Cytat
        {
            tresc: "\"Winnetou\" I-III - Karol May"
        }
        Cytat
        {
            tresc: "\"Old Surehand\" - Karol May"
        }
        Cytat
        {
            tresc: "\"Włam się do mózgu\" - Radosław Kotarski"
                        }
    }
}

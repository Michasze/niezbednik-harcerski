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
 title: qsTr("Książki dla zastępowych")
    ColumnLayout {
     id: mainList
      ElementListyNoImage
      {
     color: "#574136"
     header: "Poniższa lista książek nie jest jedynie spisem \“poradników\”, są tutaj też po prostu dobre ksiązki, które mogą być dla was zastępowych inspiracją do prowadzenia zbiórek, a zarazem dobrą rozrywką. <br> <br>
     O prowadzeniu zastępu:\n\n"
     align: 1
      }
        Cytat
        {
            tresc: "\"Harcerstwo to gra!\" - hm. Tomasz Maracewicz"
        }
        Cytat
        {
            tresc: "\"Zastęp starszych chłopców\" - listy do Wędrowników - Jerzy Kreiner"
        }
        Cytat
        {
            tresc: "\"System zastępowy dziewcząt\" - Roland Philipps"
        }
        Cytat
        {
            tresc: "\"System zastępowy\" - Roland Philipps"
        }
        Cytat
        {
            tresc: "\"Zastęp harcerek\" - Janina Tworkowska"
        }
        Cytat
        {
            tresc: "\"Vademecum Zastępowego\" -  hm. Marek Kudasiewicz"
        }
        Cytat
        {
            tresc: "\"Rzeka\" - Ewa Grodecka"
        }
        Cytat
        {
            tresc: "\"Andrzej Małkowski\" - Aleksander Kamiński"
        }
        Cytat
        {
            tresc: "\"Książka harcerska Obrzędowy Piec Chytrego Kota\" - hm. Marek Kudasiewicz"
        }
        Cytat
        {
            tresc: "\"Wilk, który nigdy nie śpi. Pełne przygód życie lorda Baden-Powella\" - Walter Hansen"
             }
        ElementListyNoImage
         {
           header: "\nCiekawe książki, które napełnią wasze głowy pomysłami:\n\n"
           color: "#574136"
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
            tresc: "\"Nowy ślad Czarnych Stóp\" -  Seweryna Szmaglewska"
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
            tresc: "\"Winnetou\" I-III - Karol May"
        }
        Cytat
        {
        tresc: "\"Old Surehand\" - Karol May"
        }
        Cytat
        {
        tresc: "\"Księga Urwisów\" - Edmund Niziurski"
        }
        Cytat
        {
        tresc: "\"Uniwersalny język znaków Indian równin Ameryki Północnej\" - William Tomkins"
        }
        Cytat
        {
        tresc: "\"Szkoła Szpiegów\""
                }
            ElementListyNoImage
            {
              header: "Inne:"
              align: 1
              color: "#574136"
            }
        Cytat
        {
        tresc: "\"Kształcenie Charakteru\" - Marian Pirożyński"
                }
    }
}

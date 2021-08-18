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
 title: qsTr("Cytaty - inni")
    ColumnLayout {
     CytatAutor {
	     tresc: "“W świecie pełnym niepewności i niepokoju nasz Ruch błyszczy jak złoty łańcuch na ciemnym tle…”"
	     autor: "Lady Olave Baden-Powell"
     }  
     CytatAutor {
	     tresc: "“Jesteśmy powołani do tego, żeby być oazą. Oaza jest znakiem nadziei na horyzoncie”"
	     autor: "Phill Bosman"
     }  
          CytatAutor {
	     tresc: "“Programy [w harcerstwie] są różne i zmienne, ale istnieje to samo wspólne dla wszystkich źródło rzeczy: Prawo Harcerskie, metoda, system zastępowy.”"
	     autor: "Ewa Grodecka"
     }  
          CytatAutor {
	     tresc: "“Harcerstwo nie jest starą, skostniałą wiedzą, którą wpajać masz w swoje dziewczęta. Jest ono życiem.”"
	     autor: "Ewa Grodecka"
     }  
    }
}

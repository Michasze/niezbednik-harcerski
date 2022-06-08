/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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
    ColumnLayout
    {
        CytatAutor
        {
            tresc: "“Jesteśmy powołani do tego, żeby być oazą. Oaza jest znakiem nadziei na horyzoncie”"
            autor: "Phill Bosman"
        }
        CytatAutor
        {
            tresc: "“Harcerstwo to ruch ludzi zawsze młodych, kroczących z innymi szeroką drogą postępu...”"
            autor: "Maria Staszewska"
        }
        CytatAutor
        {
            tresc: "“Do harcerstwa się nie należy, harcerką się jest lub się nią nie jest”"
            autor: "Maria Wocalewska"
        }
        CytatAutor
        {
            tresc: "“Ruch harcerski musi się rozwijać i rosnąć nie tylko wszerz, przez pozyskiwanie nowych zwolenników, ale i w głąb przez rozwijanie swych zasad, ulepszanie metod pracy.”"
            autor: "Stanisław Sedlaczek"
        }
        CytatAutor
        {
            tresc: "“Stopień harcerski to nie order, to próba wartości i przydatności osobistej i społecznej.”"
            autor: "Józef Sosnowski"
        }
    }
}

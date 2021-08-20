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

import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Testerzy"

    globalToolBarStyle: ApplicationHeaderStyle.None
ColumnLayout
{
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Julia Inka Karpowicz"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Olga Bajer"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Gabriela Figarska"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Szymon Kochaniak"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Szymon Chmielewski"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Oliwier Korolski"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Bartek Muszak"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Gabrysia Salej"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Klara Świątek"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Klaudia Śliwa"
    }
    ElementListy 
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Maciej Lorek"
    }
    ElementListy
    {
    ikona: "qrc:/contents/ui/img/user.svg"
    header: "Alicja Kowalska"
    }
}
    }

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
import QtQuick.Window 2.15
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
 id: page
  Layout.fillWidth: true
 title: qsTr("Symbolika krzyża harcerskiego")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }

                     ColumnLayout {
        Layout.fillHeight: true
                         HPSIcon
                         {
                             source: "image://icons/krzyz.svg,white"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_ramiona.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Ramiona - długa droga, którą musi przejść harcerz"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_lilijka.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Promienie biegnące z lilijki do okręgu - dążenie do doskonałości"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_czuwaj.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Czuwaj - wezwanie do działania"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_ziarenka.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Ziarenka piasku - niezliczona rzesza harcerzy i harcerek"
                         }
                         ElementListy
                         {
            color: "steelblue"
            ikona: "image://icons/blank.svg"
            symbolika: true
            header: "Puste miejsce - harcerstwo jest zawsze chętne do przyjmowania nowych osób"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_laurowy.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Wieniec z liści laurowych - zwycięstwo"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_debowy.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Wieniec z liści dębowych - męstwo i wytrwałość"
                         }
                         ElementListy
                         {
             ikona: "image://icons/krzyz_wezel.svg,white"
            color: "steelblue"
            symbolika: true
            header: "Węzeł - codzienne wykonywanie dobrego uczynku"
                         }

                     }
}

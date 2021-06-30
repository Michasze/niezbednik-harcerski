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
import QtGraphicalEffects 1.15

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
                         Kirigami.Icon
                         {
                             width: page.width
                             Layout.minimumHeight: page.width / 2
                        Layout.fillHeight: true
                             isMask: true
                             color: invisibleCheckbox.checked ? "white" : "black"
                             source: "qrc:/contents/ui/img/krzyz.svg"
                             Layout.fillWidth: true
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_ramiona.svg"
            color: "steelblue"
            symbolika: true
            header: "Ramiona - długa droga, którą musi przejść harcerz"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_lilijka.svg"
            color: "steelblue"
            symbolika: true
            header: "Promienie biegnące z lilijki do okręgu - dążenie do doskonałości"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_czuwaj.svg"
            color: "steelblue"
            symbolika: true
            wysokosc: 100
            header: "Czuwaj - wezwanie do działania"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_ziarenka.svg"
            color: "steelblue"
            symbolika: true
            header: "Ziarenka piasku - niezliczona rzesza harcerzy i harcerek"
                         }
                         ElementListy
                         {
            color: "steelblue"
            symbolika: true
//            wysokosc: 50
            header: "Puste miejsce - harcerstwo jest zawsze chętne do przyjmowania nowych osób"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_laurowy.svg"
            color: "steelblue"
            symbolika: true
            header: "Wieniec z liści laurowych - zwycięstwo"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_debowy.svg"
            color: "steelblue"
            symbolika: true
            header: "Wieniec z liści dębowych - męstwo i wytrwałość"
                         }
                         ElementListy
                         {
             ikona: "qrc:/contents/ui/img/krzyz_wezel.svg"
            color: "steelblue"
            symbolika: true
            header: "Węzeł - codzienne wykonywanie dobrego uczynku"
                         }

                     }
}

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

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Prawo Harcerskie"
    header: Controls.TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        Controls.TabButton {
            text: "Harcerze"
        }
        Controls.TabButton {
            text: "Wilczki"
        }
    }
    Controls.SwipeView {
        id: swipeView
        height: root.height
        currentIndex: tabBar.currentIndex
        clip: true
        Item {
            width: root.width
            height: root.height
        ColumnLayout {
            ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>1.</b> Harcerz dba o swój honor, aby zasłużyć na zaufanie."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>2.</b> Harcerz jest lojalny wobec swojego kraju, rodziców, przełożonych i podwładnych."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>3.</b> Harcerz jest powołany do służby bliźniemu i jego zbawieniu."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>4.</b> Harcerz jest przyjacielem wszystkich i bratem dla każdego innego Harcerza."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>5.</b> Harcerz jest uprzejmy i rycerski."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>6.</b> Harcerz widzi w przyrodzie dzieło Boże, szanuje rośliny i zwierzęta."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>7.</b> Harcerz jest karny, każde zadanie wykonuje sumiennie do końca."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>8.</b> Harcerz jest panem samego siebie, uśmiecha się i śpiewa w kłopotach."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>9.</b> Harcerz jest gospodarny i troszczy się o dobro innych."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>10.</b> Harcerz jest czysty w myśli, mowie i uczynkach."
            }
        }
        }
        Item {
            width: root.width - 30
            height: root.height
        ColumnLayout {
            ElementListyNoImage
            {
                color: "indianred"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "Prawo Gromady"
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "Wilczek słucha Starego Wilka.<br>
Wilczek nie słucha samego siebie."
            }
                    ElementListyNoImage
            {
                color: "indianred"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "Prawo Wilczka"
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>1.</b> Wilczek myśli najpierw o innych."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>2.</b> Wilczek ma oczy i uszy otwarte."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>3.</b> Wilczek jest zawsze czysty."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>4.</b> Wilczek zawsze mówi prawdę."
            }
                    ElementListyNoImage
            {
                color: "royalblue"
                Layout.alignment: Qt.AlignTop
                width: page.width - 50
                header: "<b>5.</b> Wilczek jest zawsze radosny."
            }
        }
            }
    }
}

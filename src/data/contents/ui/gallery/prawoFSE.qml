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

HPSPage {
    id: page
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
        Controls.Pane {
            width: swipeView.width
            height: swipeView.height
            Column {
                spacing: 10
                width: parent.width
                Repeater
                {
                    model: ["<b>1.</b> Harcerz dba o swój honor, aby zasłużyć na zaufanie.",
                            "<b>2.</b> Harcerz jest lojalny wobec swojego kraju, rodziców, przełożonych i podwładnych.",
                            "<b>3.</b> Harcerz jest powołany do służby bliźniemu i jego zbawieniu.",
                            "<b>4.</b> Harcerz jest przyjacielem wszystkich i bratem dla każdego innego Harcerza.",
                            "<b>5.</b> Harcerz jest uprzejmy i rycerski.",
                            "<b>6.</b> Harcerz widzi w przyrodzie dzieło Boże, szanuje rośliny i zwierzęta.",
                            "<b>7.</b> Harcerz jest karny, każde zadanie wykonuje sumiennie do końca.",
                            "<b>8.</b> Harcerz jest panem samego siebie, uśmiecha się i śpiewa w kłopotach.",
                            "<b>9.</b> Harcerz jest gospodarny i troszczy się o dobro innych.",
                            "<b>10.</b> Harcerz jest czysty w myśli, mowie i uczynkach."]
                    delegate: ElementListyNoLayout {
                        header: modelData
                        color: "royalblue"
                        width: parent.width
                    }
                }
        }
        }
        Controls.Pane {
            width: swipeView.width
            height: swipeView.height
        Column {
            spacing: 10
            width: parent.width
            ElementListyNoLayout
            {
                color: "indianred"
                width: parent.width
                header: "Prawo Gromady"
            }
                    ElementListyNoLayout
            {
                color: "royalblue"
                width: parent.width
                header: "Wilczek słucha Starego Wilka.<br>
Wilczek nie słucha samego siebie."
            }
                    ElementListyNoLayout
            {
                color: "indianred"
                width: parent.width
                header: "Prawo Wilczka"
            }
            Repeater
            {
                model: ["<b>1.</b> Wilczek myśli najpierw o innych.",
                        "<b>2.</b> Wilczek ma oczy i uszy otwarte.",
                        "<b>3.</b> Wilczek jest zawsze czysty.",
                        "<b>4.</b> Wilczek zawsze mówi prawdę.",
                       "<b>5.</b> Wilczek jest zawsze radosny."]
                    delegate: ElementListyNoLayout {
                        header: modelData
                        color: "royalblue"
                        width: parent.width
                    }
            }
            /*         ElementListyNoImage */
            /* { */
            /*     color: "royalblue" */
            /*     Layout.alignment: Qt.AlignTop */
            /*     width: page.width - 50 */
            /*     header: "<b>1.</b> Wilczek myśli najpierw o innych." */
            /* } */
            /*         ElementListyNoImage */
            /* { */
            /*     color: "royalblue" */
            /*     Layout.alignment: Qt.AlignTop */
            /*     width: page.width - 50 */
            /*     header: "<b>2.</b> Wilczek ma oczy i uszy otwarte." */
            /* } */
            /*         ElementListyNoImage */
            /* { */
            /*     color: "royalblue" */
            /*     Layout.alignment: Qt.AlignTop */
            /*     width: page.width - 50 */
            /*     header: "<b>3.</b> Wilczek jest zawsze czysty." */
            /* } */
            /*         ElementListyNoImage */
            /* { */
            /*     color: "royalblue" */
            /*     Layout.alignment: Qt.AlignTop */
            /*     width: page.width - 50 */
            /*     header: "<b>4.</b> Wilczek zawsze mówi prawdę." */
            /* } */
            /*         ElementListyNoImage */
            /* { */
            /*     color: "royalblue" */
            /*     Layout.alignment: Qt.AlignTop */
            /*     width: page.width - 50 */
            /*     header: "<b>5.</b> Wilczek jest zawsze radosny." */
            /* } */
        }
            }
    }
}

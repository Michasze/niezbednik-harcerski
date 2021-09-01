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


    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>1.</b> Harcerz dba o swój honor, aby zasłużyć na zaufanie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Harcerz jest lojalny wobec swojego kraju, rodziców, przełożonych i podwładnych."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> Harcerz jest powołany do służby bliźniemu i jego zbawieniu."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Harcerz jest przyjacielem wszystkich i bratem dla każdego innego Harcerza."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Harcerz jest uprzejmy i rycerski."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Harcerz widzi w przyrodzie dzieło Boże, szanuje rośliny i zwierzęta."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Harcerz jest karny, każde zadanie wykonuje sumiennie do końca."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Harcerz jest panem samego siebie, uśmiecha się i śpiewa w kłopotach."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>9.</b> Harcerz jest gospodarny i troszczy się o dobro innych."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>10.</b> Harcerz jest czysty w myśli, mowie i uczynkach."
        }
    }
 
    
}

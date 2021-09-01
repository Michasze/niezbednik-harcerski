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
            header: "<b>1.</b> Harcerz służy Bogu i Polsce i sumiennie spełnia swoje obowiązki."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Na słowie harcerza polegaj jak na Zawiszy."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> Harcerz jest pożyteczny i niesie pomoc bliźnim."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Harcerz w każdym widzi bliźniego, a za brata uważa każdego innego harcerza."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Harcerz postępuje po rycersku."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Harcerz miłuje przyrodę i stara się ją poznać."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Harcerz jest karny i posłuszny rodzicom i wszystkim swoim przełożonym."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Harcerz jest zawsze pogodny."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>9.</b> Harcerz jest oszczędny i ofiarny."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>10.</b> Harcerz jest czysty w myśli, mowie i uczynkach, nie pali tytoniu i nie pije napojów alkoholowych."
        }
    }
 
    
}

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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Ślubowanie skautowe"


    ColumnLayout {
        width: page.width
        spacing: 0
ElementListyNoImage
        {
            color: "brown"
            header: "<b>Zostało opublikowane przez Andrzeja Małkowskiego w pierwszym numerze czasopisma “Skaut”.</b>"
        }
ElementListyNoImage
        {
            color: "brown"
            header: "Ślubuję: wierność Ojczyźnie, gotowość w każdej chwili niesienia pomocy innym, posłuszeństwo Prawu Skautowemu."
        }
    }


}

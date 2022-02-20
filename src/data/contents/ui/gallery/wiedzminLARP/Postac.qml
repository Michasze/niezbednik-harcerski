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

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import ".."

Controls.Pane {
    id: pane
    property string nazwa: ""
    property string opis: ""
    property variant charakter: ""
    property variant stosunek: ""
    property string cel: ""
    property string wspomnienie: ""
    width: swipeView.width
    height: swipeView.height
    Column
    {
        spacing: 10
        width: parent.width
        id: highest
        ElementListyNoLayout
        {
            alignH: Text.AlignHCenter
            color: "Green"
            header: "<b>" + pane.nazwa + "</b>"
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignJustify
            color: "Black"
            header: pane.opis
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignHCenter
            color: "Brown"
            header: "Charakter"
        }
        Repeater
        {
            model: pane.charakter
            delegate: listComponent
        }
        ElementListyNoLayout
        {
            id: stosunekHeader
            visible: pane.stosunek != ""
            alignH: Text.AlignHCenter
            color: "Brown"
            header: "Stosunek do innych postaci"
        }
        Repeater
        {
            model: pane.stosunek
            delegate: listComponent
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignHCenter
            color: "Brown"
            header: "Cel w grze"
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignJustify
            color: "Black"
            header: pane.cel
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignHCenter
            color: "Green"
            header: "Wspomnienie"
        }
        ElementListyNoLayout
        {
            alignH: Text.AlignJustify
            color: "Black"
            header: pane.wspomnienie
        }
    }
    Component {
        id: listComponent
        HPSLista {
            label: modelData
        }
    }
}

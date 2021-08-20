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
import ".."

HPSPage {
        Layout.fillHeight: true
        title: qsTr("Fabuła")
        ColumnLayout {
        id: rozdzial
        ElementListyNoImage
        {
            color: "green"
            header: "Skąd czerpać inspirację?"
        }
        HPSLista
        {
            label: "Książki"
        }
        HPSLista
        {
            label: "Uniwersalne historie (rycerze, smoki itd)"
        }
        HPSLista
        {
            label: "Filmy, które wszyscy znają"
        }
        HPSLista
        {
            label: "Seriale"
        }
        HPSLista
        {
            label: "Gry komputerowe"
        }
        HPSLista
        {
            label: "Gry planszowe"
        }
        HPSLista
        {
            label: "Historie związane z danym miejscem"
        }
        HPSLista
        {
            label: "Historia np. harcerstwa"
        }
        }
    }

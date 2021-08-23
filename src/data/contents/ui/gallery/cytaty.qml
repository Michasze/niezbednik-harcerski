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

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2
import QtMultimedia 5.0
import Data 1.0

HPSPage {
    id: page
    title: qsTr("Cytaty")

    InfoData
    {
        id: infoData
    }
    Component.onCompleted: {
        if(!hpsSettings.neverShow3IsToggled)
        {
            mediaPlayer2.play()
            aboutDialog3.open()
        }
    }
    ColumnLayout
    {
        Controls.Label
        {
            visible: false
            text: infoData.tresci
        }
        Controls.Button
        {
            Layout.alignment: Qt.AlignHCenter
            highlighted: true
            text: "Losuj cytat"
            onClicked:
            {
                losowy.tresc = infoData.losuj
                losowy.autor = infoData.losowyAutor
                losowy.visible = true
            }
        }
            CytatAutor
            {
                visible: false
                id: losowy
            }
        Repeater {
    id: karta
    model: infoData.autor
    delegate: KartaStrona {
        header: modelData
        ikona: "image://images/" + infoData.image[index]
        adres: cytatyPage
        opis: ""
    MouseArea {
        id: area
    anchors.fill: parent
            readonly property int kartaIndex: index
        onClicked:
        {
            console.log(infoData.image)
            infoData.autorIndex = kartaIndex
            pageStack.push(cytatyPage)
        }
    }
    }
}
        KartaStronaNoImage {
        header: "Inni"
        opis: ""
        adres: "cytatyInni.qml"
    }

    Component {
        id: cytatyPage
HPSPage
{
 title: infoData.autorString + " - cytaty"
    ColumnLayout {
     id: mainList
        Repeater {
        model: infoData.tresc
            delegate: Cytat {
    tresc: modelData
    autor: infoData.autorString
     }
        }
    }
    }
    }
    }
}

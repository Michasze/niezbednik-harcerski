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

import QtQuick 2.7
import QtQuick.Window 2.15
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)
    background: Rectangle {
              anchors.fill: parent
              color: "Black"
    }

    title: "Mapa miejsc obozowych"
/*
    actions.main: Action {
           iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        }
        */
    ColumnLayout {
        width: page.width
        height: page.height
        spacing: Units.smallSpacing
        Controls.Label
        {
         Layout.fillWidth: true
         text: qsTr("Mapa może nie działać na urządzeniach mobilnych")
        }
        Plugin {
        id: mapPlugin
        name: "osm" // "mapboxgl", "esri", ...
        // specify plugin parameters if necessary
        // PluginParameter {
        //     name:
        //     value:
        // }
    }
        Map {
        Layout.fillWidth: true
        Layout.fillHeight: true
        plugin: mapPlugin
//          Layout.maximumHeight: 200
        center: QtPositioning.coordinate(51.10, 17.03) // Wrocław
        zoomLevel: 7
    }

    }
 
    
}

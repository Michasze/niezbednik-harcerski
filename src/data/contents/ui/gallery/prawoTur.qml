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
import org.kde.kirigami 2.13

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Prawo Harcerskie"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
       /* Image {
         source: ""
          Layout.fillWidth: true
         Layout.minimumHeight: 200

         fillMode: Image.PreserveAspectFit
         anchors.horizontalCenter: opis.horizontalCenter
        }*/
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>1.</b> Czerwony Harcerz uważa się za członka klasy robotniczej i walczy o jej wyzwolenie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Jest zawsze wierny swoim towarzyszom."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> W każdym pracującym widzi towarzysza i brata."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Staje w obronie słabszych i jest gotów do niesienia pomocy."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Jest odważny i nigdy nie rozpacza."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Jest punktualny, karny i obowiązkowy."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Mówi prawdę, na jego słowie można polegać."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Hartuje się i dba o swoje ciało."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>9.</b> Jest miłośnikiem i obrońcą przyrody."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>10.</b> Jest czysty w myśli, słowach i uczynkach, nie pali, zwalcza alkohol i gry hazardowe."
        }
    }


}

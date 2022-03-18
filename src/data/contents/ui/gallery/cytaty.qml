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
import QtMultimedia 5.0
import Filter 1.0
import Data 1.0

HPSPage {
    property string tytul: ""
    id: page
    title: qsTr("Cytaty")
    InfoData
    {
        id: cytatyModel
    }
    Component.onCompleted: {
        if(!hpsSettings.neverShow3IsToggled)
        {
            mediaPlayer2.play()
            aboutDialog3.open()
        }
    }
    Controls.Pane {
        Column
        {
            anchors.fill: parent
            spacing: 10
            Controls.Button
            {
                anchors.horizontalCenter: parent.horizontalCenter
                highlighted: true
                text: "Losuj cytat"
                onClicked:
                {
                    losowy.tresc = cytatyModel.losuj
                    losowy.autor = cytatyModel.losowyAutor
                    losowy.visible = true
                }
            }
            CytatAutor
            {
                visible: false
                id: losowy
            }
            ListModel {
                id: autorzy
                ListElement { author: "Robert Baden-Powell"; image: "Baden-Powell.jpg" }
                ListElement { author: "Andrzej Małkowski"; image: "Andrzej_Malkowski.jpg" }
                ListElement { author: "Stefan Mirowski"; image: "StefanMirowski.jpg" }
                ListElement { author: "Aleksander Kamiński"; image: "Aleksander_Kaminski.jpg" }
                ListElement { author: "Ks. Kazimierz Lutosławski"; image: "Kazimierz_Lutosławski.jpg" }
                ListElement { author: "Józef Piłsudski"; image: "Jozef_Pilsudski1.jpg" }
                ListElement { author: "Jan Paweł II"; image: "Karol_Wojtyla.jpg" }
                ListElement { author: "Henryk Glass"; image: "Henryk_Glass.jpg" }
                ListElement { author: "Ewa Grodecka"; image: "grodecka.jpg" }
                ListElement { author: "Olga Małkowska"; image: "Olga_Malkowska.jpg" }
                ListElement { author: "Adam Mickiewicz"; image: "mickiewicz.jpg" }
                ListElement { author: "Juliusz Słowacki"; image: "slowacki.jpg" }
                ListElement { author: "Lady Olave Baden-Powell"; image: "olave_baden_powell.jpg" }
                ListElement { author: "Antoni Olbromski"; image: "antoni_olbromski.jpg" }
                ListElement { author: "Jadwiga Falkowska"; image: "jadwiga_falkowska.jpg" }
                ListElement { author: "Józef Haller"; image: "jozef_haller.jpg" }
                ListElement { author: "Maria Kapiszewska"; image: "maria_kapiszewska.jpg" }
                ListElement { author: "Tadeusz Strumiłło"; image: "strumillo.jpg" }
            }
            Repeater {
                model: autorzy
                delegate: KartaStronaNoLayout {
                    header: author
                    ikona: "image://images/" + image
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            tytul = header
                            pageStack.push(cytatyPage)
                        }
                    }
                }
            }
            KartaStronaNoLayout {
                header: "Inni"
                opis: ""
                adres: "cytatyInni.qml"
            }
            Component {
                id: cytatyPage
                HPSPage {
                    title: tytul + " - cytaty"
                    HPSFilter {
                        id: filteredModel
                        sourceModel: cytatyModel
                        filterRole: "autor"
                        secondRole: ""
                        filterRegularExpression: RegExp(tytul)
                    }
                    ColumnLayout {
                        Repeater {
                            Component.onCompleted: console.log(tytul)
                            model: filteredModel
                            delegate: Cytat {
                                tresc: model.tresc
                                autor: model.autor
                            }
                        }
                    }
                }
            }
        }
    }
}

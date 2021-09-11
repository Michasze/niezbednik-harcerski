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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Pakowanie"

    ColumnLayout {
        id: mainlayout
            Rectangle {
                    color: "darkolivegreen"
                    radius: 10
                    Layout.fillWidth: true
                    Layout.minimumHeight: 80
                    Item {
                            anchors.fill: parent
                            Controls.Label {
                                    anchors.leftMargin: 10
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    horizontalAlignment: Text.AlignLeft
                                    font.pointSize: invisibleSlider.value + 4
                                    text: "+"
                            }
                            Controls.Label {
                                    Layout.rightMargin: 10
                                    anchors.centerIn: parent
                                    font.pointSize: invisibleSlider.value + 4
                                    horizontalAlignment: Text.AlignHCenter
                                    text: "Dodaj własną listę"
                            }
                    }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        db.clearCategory()
                        pageStack.push(Qt.resolvedUrl("pakowanieWlasne.qml"))
                    }
                }
            }
        Repeater {
            model: db.getList
            delegate: KartaPakowanie {
                header: modelData
                opis: ""
            }
        }

        KartaStrona {
        header: "Ekwipunek obozowy według BP"
        ikona: "image://images/Baden-Powell.jpg"
        opis: "Lista rzeczy do spakowania dla każdego skauta"
        adres: "pakowanieBP.qml"
}
        KartaStronaIkona {
        header: "Obóz"
        ikona: "image://icons/namiot_dycha.svg,white"
        opis: "Co zabrać na obóz?"
        adres: "pakowanieOboz.qml"
}
        KartaStronaIkona {
        header: "Wyjazd rowerowy"
        ikona: "image://icons/rower.svg,white"
        opis: "Lista rzeczy na wyjazd rowerowy"
        adres: "pakowanieRower.qml"
}
        KartaStronaNoImage {
        header: "Biwak"
        opis: "Co spakować na trzydniowy biwak w budynku?"
        adres: "pakowanieBiwaki.qml"
    }
}
}

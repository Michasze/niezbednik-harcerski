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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

HPSPage
{
 id: page
 title: qsTr("Historia")
    ColumnLayout {
     id: mainList

        ElementListy {
            id: postacie
            height: 150
            Layout.bottomMargin: 10
             RowLayout {
                 anchors.fill: parent
                 id: row
                    HPSImage {
                        id: ikona
                        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                        Layout.leftMargin: 10
                        Layout.fillWidth: false
                        sourceSize.width: postacie.height - 20
                        fillMode: Image.PreserveAspectFit
                        source: "image://images/Baden-Powell.jpg,20"
                    }

                        Controls.Label {
                            horizontalAlignment: Text.AlignHCenter
                            id: naglowek
                            wrapMode: Text.Wrap
                            font.pointSize: invisibleSlider.value
                            Layout.fillWidth: true
                            Layout.rightMargin: 10
                             text: "Postacie"
                    }
                }
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("postacie.qml"))
    }
        }
KartaStronaIkona {
        header: "Harcerstwo Związku Narodowego Polskiego"
        opis: "Organizacja harcerska w Stanach Zjednoczonych"
        ikona: "qrc:/contents/ui/img/HZNP.svg"
        adres: "HZNP.qml"
    }
    KartaStronaIkona {
        header: "Harcerz "
        opis: "Skąd pochodzi ten wyraz?"
        ikona: "qrc:/contents/ui/img/harcerz.svg"
        adres: "harcerz.qml"
    }
    KartaStronaIkona {
        header: "Zlot ZHP w Spale"
        opis: "Jubileuszowy Zlot w Spale"
        ikona: "image://icons/spala.svg"
        adres: "spala.qml"
    }
    KartaStrona {
        header: "Kamień pamiątkowy"
        opis: "Ku czci harcerzy poległych w walce o polskość Wrocławia"
        ikona: "image://images/kamien.jpg"
        adres: "kamien.qml"
    }
    KartaStrona {
        header: "Wyjątkowe krzyże harcerskie"
        opis: "Ciekawe i nietypowe formy krzyża"
        ikona: "image://images/krzyz2.jpg"
        adres: "wyjatkowe.qml"
    }
    KartaStrona {
        header: "Lista znanych osób, które były w harcerstwie"
        ikona: "image://images/neilA.jpg"
        opis: "Znani harcerze i skauci"
        adres: "listaZnanych.qml"
    }
    KartaStronaIkona {
        header: "Dzień Myśli Braterskiej"
        ikona: "image://icons/dmb.svg,white"
        opis: "Historia święta skautów"
        adres: "DMB.qml"
    }
    KartaStronaIkona {
        header: "Najważniejsze daty w historii harcerstwa"
        ikona: "image://icons/1907.svg,white"
        opis: ""
        adres: "daty.qml"
    }
    KartaStronaIkona {
        header: "Dawne roty przyrzeczenia"
        ikona: "image://icons/zwoj.svg,white"
        opis: ""
        adres: "histPrzyrzeczenia.qml"
    }
    KartaStronaIkona {
        header: "Historyczne prawa harcerskie"
        ikona: "image://icons/zwoj.svg,white"
        opis: ""
        adres: "histPrawa.qml"
    }

    }
}

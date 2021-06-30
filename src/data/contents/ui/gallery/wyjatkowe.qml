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
import QtGraphicalEffects 1.12

import ".."

HPSPage {
    id: page
        Layout.fillHeight: true
        title: qsTr("Wyjątkowe krzyże harcerskie")
     actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }       ColumnLayout {
        id: rozdzial
        property int naglowekSize: 12

        Image {
            id: krzyz1
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/krzyz1.jpg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         visible: false
//         smooth: true
         Layout.alignment: Qt.AlignHCenter
        }
        OpacityMask {
         width: 400
         height: 400
         source: krzyz1
         maskSource: mask
         Layout.alignment: Qt.AlignHCenter
    }
        ElementListyNoImage
        {
            color: "black"
            header: "<p>Krzyż wykonywany przez grawera Józefa Chylińskiego w Warszawie, prawdopodobnie od końca 1915, a na pewno od 1916 roku.</p>"
        }
        Image {
            id: krzyz2
            visible: false
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/krzyz2.jpg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        OpacityMask {
         width: 400
         height: 400
         source: krzyz2
         maskSource: mask
         Layout.alignment: Qt.AlignHCenter
    }
        ElementListyNoImage
        {
            color: "black"
            header: "<p>Krzyż autorstwa najprawdopodobniej warszawskiego zakładu Władysława Miecznika.</p>"
        }
        Image {
             id: krzyz3
            visible: false
       Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/krzyz3.jpg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        OpacityMask {
         width: 400
         height: 400
         source: krzyz3
         maskSource: mask
         Layout.alignment: Qt.AlignHCenter
    }
        ElementListyNoImage
        {
            color: "black"
            header: "<p>Krzyż wydany na zlecenie Komendy Okręgu Południowego ZHP w Niemczech w Ansbach koło Norymbergi (zakład Leona Christiana Lauera?), najprawdopodobniej w marcu 1946 roku.</p>
<p>Egzemplarz 647 sprowadzony ze Stanów Zjednoczonych.</p>"
        }
        Image {
             id: krzyz4
            visible: false
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/krzyz4.jpg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        OpacityMask {
         width: 400
         height: 400
         source: krzyz4
         maskSource: mask
         Layout.alignment: Qt.AlignHCenter
    }
        ElementListyNoImage
        {
            color: "black"
            header: "<p>Krzyż harcerski wykonany przez grawera P.Katza w Tel Awiwie na zlecenie ZHP na Wschodzie w 1943 roku.</p>"
        }

        Image {
             id: krzyz5
            visible: false
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/krzyz5.jpg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        OpacityMask {
         width: 400
         height: 400
         source: krzyz5
         maskSource: mask
         Layout.alignment: Qt.AlignHCenter
    }
        ElementListyNoImage
        {
            color: "black"
            header: "<p>Krzyż wykonany jako odznaka pamiątkowa przez grawera Adama Srokę z Borzęcina na zlecenie komendanta XIX Ogólnopolskiego Zlotu Druha Szarego Drozdowo 2012, nadawany 4 marca 2012 roku w 132. rocznicę urodzin jego twórcy</p>"
        }
               Rectangle
                    {
                     id: mask
                     height: 400
                     width: 400
                     color: "black"
                      visible: false
                     radius: 15
                    }

  }
      }

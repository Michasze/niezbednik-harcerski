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
import Data 1.0

HPSPage {
    id: page
    title: qsTr("Śpiewniki")

       Clipboard
     {
       id: clipboard
     }

    Spiewnik
    {
        id: spiewnik
    }
ColumnLayout
{
    ListModel {
        id: spiewnikModel
        ListElement { title: "Harcerski śpiewnik obozowy z 1924 roku"; url: "://spiewnik1924.json"; icon: "lutnia"}
        ListElement { title: "Harcerski śpiewnik z Lubeki"; url: "://spiewnikLubeka.json"; icon: "lutnia"}
        ListElement { title: "Harcerska twórczość własna"; url: "://spiewnikWlasne.json"; icon: "gitara" }
        ListElement { title: "Hymny"; url: "://spiewnikHymny.json"; icon: "trabka" }
    }
    Repeater {
        id: karta
        property string tytul: ""
        property string tekst: ""
        property string tytulPiosenki: ""
        model: spiewnikModel
        delegate: KartaStronaIkona {
            id: kartaSpiewnik
        header: title
        opis: ""
        ikona: "image://icons/" + icon + ".svg,white"
        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                spiewnik.adres = url
                karta.tytul = kartaSpiewnik.header
                pageStack.push(spiewnikPage)
            }
        }
    }
    }
Controls.Slider {
    id: slider
    Layout.fillWidth: true
    visible: false
    from: 10
    value: 14
    to: 18
    stepSize: 1
    snapMode: Controls.Slider.SnapAlways
}
    Component {
        id: spiewnikPage
HPSPage
{
    id: strona
    title: karta.tytul

    ColumnLayout {
     id: mainList
     ElementListyNoImage
     {
         visible: strona.title == "Harcerski śpiewnik obozowy z 1924 roku" ? true : false
    Layout.fillWidth: true
         color: "Black"
    header: "<b><p>Zbiórek nowszych piosenek.</p>

<p>Warszawa 1924</p>

<p>Kooperatywa Harcerska Drużyn Warszawskich. Warszawa, Chmielna 26.</p>

<p>Przedmioty codziennego użytku Harcerek i Harcerzy.</p>

<p>Pisma, książki harcerskie. Przedmioty wyekwipowania i umundurowania harc.</p>

<p>Oferty, cenniki na żądanie odwrotnie.</p> </b><br>

<i>Zachowano oryginalną pisownię</i>"

     }
        Repeater {
        model: spiewnik.content
            delegate: KartaStronaIkona {
    header: modelData
    opis: spiewnik.autorPiosenki[index]
    ikona: "image://icons/" + spiewnik.ikonaPiosenki[index]
    MouseArea {
    anchors.fill: parent
        onClicked:
        {
            karta.tekst = spiewnik.nazwaPiosenki[index]
            karta.tytulPiosenki = spiewnik.content[index]
            pageStack.push(piosenkaPage)
        }
    }
    }
    }
        Component {
            id: piosenkaPage
            HPSPage
            {
                title: karta.tytulPiosenki
                ColumnLayout
                {
                    GridLayout
                    {
                ElementListyNoImage
                {
                    id: tresc
                    textSize: slider.value
                    header: karta.tekst
                    alignH: Text.AlignLeft
                    format: Text.PlainText
                    color: "Black"
                 MouseArea {
    anchors.fill: parent
      onPressAndHold:
      {
      clipboard.paste = tresc.header
      showPassiveNotification("Tekst piosenki skopiowany do schowka", 2000)
      }

                 }
                }
                        Controls.Button
                        {
                            Layout.alignment: Qt.AlignTop
                            highlighted: true
                            icon.source: "qrc:/contents/ui/img/gtk-select-font.svg"
                            onClicked: tweaks.open();
                        }
                    }
                Controls.Popup
                {
                    id: tweaks
                    width: page.width - 20
                    height: page.height - 20
                    anchors.centerIn: parent
                    background: Rectangle {
                        anchors.fill: parent
                        color: "Transparent"
                    }
                    Controls.Pane
                    {
                    background: Rectangle {
                        anchors.fill: parent
                        border.color: "white"
                        border.width: 1
                        color: "Black"
                    }
                    anchors.centerIn: parent
                        ColumnLayout
                        {
                        Controls.Button
                        {
                            id: przycisk
                            text: "x"
                            flat: true
                            Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            onClicked: tweaks.close()
                            contentItem: Controls.Label {
                            text: przycisk.text
                                font.pointSize: 20
                            }
                        }
            HPSRadioButton
    {
        text: "Bardzo mały"
        checked: hpsSettings.spiewnikTextSize == 10 ? true : false
        onClicked:
        {
            hpsSettings.spiewnikTextSize = 10
            slider.value = 10
        }
    }
    HPSRadioButton
    {
        text: "Mały"
        checked: hpsSettings.spiewnikTextSize == 12 ? true : false
        onClicked:
        {
            hpsSettings.spiewnikTextSize = 12
            slider.value = 12
        }
    }
    HPSRadioButton
    {
        text: "Średni"
        checked: hpsSettings.spiewnikTextSize == 14 ? true : false
        onClicked:
        {
            hpsSettings.spiewnikTextSize = 14
            slider.value = 14
        }
    }
    HPSRadioButton
    {
        text: "Duży"
        checked: hpsSettings.spiewnikTextSize == 16 ? true : false
        onClicked:
        {
            hpsSettings.spiewnikTextSize = 16
            slider.value = 16
        }
    }
        HPSRadioButton
    {
        text: "Bardzo duży"
        checked: hpsSettings.spiewnikTextSize == 18 ? true : false
        onClicked:
        {
            hpsSettings.spiewnikTextSize = 18
            slider.value = 18
        }
    }
                        }
                }

                    }
                }
            }

        } 
    }
    }
    }
}
}

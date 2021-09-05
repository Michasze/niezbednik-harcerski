
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
import QtQml.Models 2.15

HPSPage

{
    id: page
    title: "Utwórz własną listę"
    ColumnLayout {
        ElementListyNoImage {
            id: listId
            header: "Nazwa listy"
            Layout.fillWidth: true
            kolor: "darkolivegreen"
        }
        Controls.TextField {
            id: nazwaListy
            Layout.preferredHeight: listId.height
            Layout.preferredWidth: page.width / 2
            Layout.topMargin: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rightMargin: 10
            background: Rectangle {
                anchors.fill: parent
                color: "Grey"
            }
        }
        ElementListyNoImage {
            header: "Kategorie"
            Layout.fillWidth: true
        }
        GridLayout
        {
            Layout.alignment: Qt.AlignHCenter
            columns: 2
            ListModel {
                    id: pakowanieModel
                ListElement { ikona: "papryka.svg,white"; tekst: "Jedzenie"; kolorNaglowka: "Brown" }
                ListElement { ikona: "karimata.svg,white"; tekst: "Spanie"; kolorNaglowka: "royalblue" }
                ListElement { ikona: "koszulka.svg,white"; tekst: "Ubrania"; kolorNaglowka: "darkolivegreen" }
                ListElement { ikona: "szampon.svg,white"; tekst: "Higiena"; kolorNaglowka: "plum" }
                }
            Repeater
            {
                id: karta
                model: pakowanieModel
                delegate: Controls.AbstractButton {
                    id: control
                    property string kolor: kolorNaglowka
                    width: page.width / 2
                    height: width
                    checkable: true
                    background: Rectangle {
                        width: page.width / 2
                        height: width
                        color: control.checked ? "grey" : "black"
                        border.width: 1
                        border.color: "grey"
                    }
                    contentItem: ColumnLayout {
                        anchors.fill: parent
                        Image {
                            source: "image://icons/" + ikona
                            Layout.preferredWidth: page.width / 3
                            Layout.preferredHeight: width
                        }
                        Controls.Label {
                            id: category
                            font.pointSize: invisibleSlider.value
                            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                            Layout.bottomMargin: 10
                            text: tekst
                            color: "white"
                        }
                    }
                onToggled: {
                    if(control.checked)
                    {
                        console.log(control.kolor)
                        db.addCategory(category.text, control.kolor)
                    }
                    else
                    {
                        db.deleteCategory(category.text, control.kolor)
                    }
                }
                }
            }
/*              HPSCheckBox
        {
            id: box4
            tresc: "Higiena"
        }
        HPSCheckBox
        {
            id: box5
            tresc: "Apteczka"
        }
        HPSCheckBox
        {
            id: box6
            tresc: "Pionierskie/obozowe"
        }
        HPSCheckBox
        {
            id: box7
            tresc: "Inne"
        }
        HPSCheckBox
        {
            id: box8
            tresc: "Ważne"
        }
             */
        }
    Controls.RoundButton {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        visible: pageStack.currentItem.title == "Utwórz własną listę"
        icon.source: "image://icons/go-next.svg,white"
        highlighted: true
        onClicked:
        {
            db.addList(nazwaListy.text)
            pageStack.push(addElementsPage)
        }
    }
        Component {
            id: addElementsPage
            HPSPage
            {
                ColumnLayout {
                    Repeater {
                        model: db.getCategory
                        delegate: ElementListyNoImage {
                            header: modelData
                            color: db.getCategoryColor[index]
                        }
                    }
                }
            }
        }
    }
}

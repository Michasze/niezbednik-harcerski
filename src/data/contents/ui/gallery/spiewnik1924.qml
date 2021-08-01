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
import org.kde.kirigami 2.4 as Kirigami


HPSPage
{
 id: page
 title: qsTr("Harcerski śpiewnik z 1924 roku")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        visible: !Kirigami.Settings.isMobile ? true : false
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList
     Controls.Label
     {
    Layout.fillWidth: true
    wrapMode: Text.WordWrap
    Layout.rightMargin: 10
    textFormat: Text.StyledText
    text: "<b>Zbiórek nowszych piosenek.

Warszawa 1924

Kooperatywa Harcerska Drużyn Warszawskich. Warszawa, Chmielna 26.

Przedmioty codziennego użytku Harcerek i Harcerzy.

Pisma, książki harcerskie. Przedmioty wyekwipowania i umundurowania harc.

Oferty, cenniki na żądanie odwrotnie. </b><br>

<i>Zachowano oryginalną pisownię</i>"   
         
     }
     Kirigami.BasicListItem {
            id: listItem1
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/mysmy.qml"))
            }
            label: "Myśmy przyszłością narodu" 
        }
        Kirigami.BasicListItem {
            id: listItem2
                        onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/niechOrly.qml"))
            }
            label: "Niech orły górą płyną" 
        }
        Kirigami.BasicListItem {
            id: listItem3
                        onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/naKresach.qml"))
            }
            label: "Na kresach czuwa straż" 
        }
        Kirigami.BasicListItem {
            id: listItem4
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/niema.qml"))
            }
            label: "Niema życia jak w obozie" 
        }
        Kirigami.BasicListItem {
            id: listItem5
                        onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/wstan.qml"))
            }
            label: "Wstań" 
        }
        Kirigami.BasicListItem {
            id: listItem6
                                    onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/podTwa.qml"))
            }
            label: "Pod twą obronę Ojcze" 
        }
        Kirigami.BasicListItem {
            id: listItem7
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/przylecieli.qml"))
            }
            label: "Przylecieli Sokołowie" 
        }
                Kirigami.BasicListItem {
            id: listItem8
                        onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/podKrakowem.qml"))
            }
            label: "Pod Krakowem ciemny las" 
        }
                Kirigami.BasicListItem {
            id: listItem9
                                    onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/zaGorami.qml"))
            }
            label: "Za górami za lasami" 
        }
            Kirigami.BasicListItem {
            id: listItem10
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/wMurowanej.qml"))
            }
            label: "W murowanej piwnicy" 
        }
            Kirigami.BasicListItem {
            id: listItem11
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/czyWRadzie.qml"))
            }
            label: "Czy w radzie czy w zwadzie" 
        }
            Kirigami.BasicListItem {
            id: listItem12
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/druzyna.qml"))
            }
            label: "Drużyna Strzelecka" 
        }
            Kirigami.BasicListItem {
            id: listItem13
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/wojence.qml"))
            }
            label: "Wojence służyć" 
        }
            Kirigami.BasicListItem {
            id: listItem14
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/madelon.qml"))
            }
            label: "Madelon" 
        }
            Kirigami.BasicListItem {
            id: listItem15
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/ptacy.qml"))
            }
            label: "Ptacy na wędrówce" 
        }
            Kirigami.BasicListItem {
            id: listItem16
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/hejSokoly.qml"))
            }
            label: "Hej Sokoły" 
        }
            Kirigami.BasicListItem {
            id: listItem17
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/razDwa.qml"))
            }
            label: "Raz, dwa, trzy" 
        }
            Kirigami.BasicListItem {
            id: listItem18
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/jasko.qml"))
            }
            label: "Jaśko" 
        }
            Kirigami.BasicListItem {
            id: listItem19
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/przybyli.qml"))
            }
            label: "Przybyli ułani" 
        }
                    Kirigami.BasicListItem {
            id: listItem20
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/juzRok.qml"))
            }
            label: "Już rok drugi jak Legjony" 
        }
            Kirigami.BasicListItem {
            id: listItem21
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/uNas.qml"))
            }
            label: "U nas na obozie" 
        }
            Kirigami.BasicListItem {
            id: listItem22
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/raduje.qml"))
            }
            label: "Raduje się serce" 
        }
            Kirigami.BasicListItem {
            id: listItem23
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/niedaleko.qml"))
            }
            label: "Niedaleko od Krakowa" 
        }
            Kirigami.BasicListItem {
            id: listItem24
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/wStarym.qml"))
            }
            label: "W starym piecu" 
        }
            Kirigami.BasicListItem {
            id: listItem25
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/Marcysia.qml"))
            }
            label: "Marcysia" 
        }
            Kirigami.BasicListItem {
            id: listItem26
            onClicked: {
                pageStack.push(Qt.resolvedUrl("spiewnik1924/ulani.qml"))
            }
            label: "Ułani Beliny" 
        }
        
    }


}

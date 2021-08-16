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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage

{
    title: "Lista znanych byłych harcerzy"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: 20
                ElementListyNoImage
        {
            color: "green"
            header: "<h3>Harcerstwo</h3>"
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Andrzej Celiński"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Andrzej Duda"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Andrzej Jaworski"
             }
                }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Andrzej Wajda"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Antoni Macierewicz"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Bronisław Komorowski"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
   wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Ewa Drzyzga"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jan Dziedziczak"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Konrad Ciesiołkiewicz"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Piotr Naimski"
             }
        }                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Szymon Majewski"
             }
        }
                ElementListyNoImage
        {
            color: "blueviolet"
            align: 1
            header: "<h3>Scouting</h3>"
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Barack Obama"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Bill Gates"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Buzz Aldrin"
             }
                }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Charles Duke"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Chris Pratt"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Dan Reynolds"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "David Lynch"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Derek Hough"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Dwight D. Eisenhower"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Edward Michael “BearGrylls”"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Gerald Ford"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Guion Bluford"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Hank Aaron"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Harrison Ford"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jack Black"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "James Andrews"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jay Leno"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jim Morrison"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jimmy Buffett"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Joe Biden"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "John F. Kennedy"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "John Lithgow"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Jon Heder"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Lee Berger"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Michael Bloomberg"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Michael Jordan"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Michael Moore"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Mike Rowe"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Neil Armstrong"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Nolan Gould"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Peter Agre"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Richard Gere"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Rob Corddry"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Roger Chaffee"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Steven Holcomb"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Steven Spielberg"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Thomas Cech"
             }
        }
                Kirigami.BasicListItem {
             Controls.Label {
             font.pointSize: invisibleSlider.value
    wrapMode: Text.WordWrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
            text: "Zach Galifianakis"
             }
        }

                      }
}

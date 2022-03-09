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
import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls

HPSPage {
  id: page
  title: qsTr("Dla zastępów HS")
  Controls.Pane {
    Column {
      anchors.fill: parent
      spacing: 10
      ListModel {
        id: mainList
        ListElement { title: "Wprowadzenie do metodyki starszoharcerskiej"; adres: "wprowadzenie.qml" }
        ListElement { title: "Instrumenty metodyczne"; adres: "instrumenty.qml" }
        ListElement { title: "Praca ze stopniami i sprawnościami"; adres: "stopnie.qml" }
        ListElement { title: "Projekt starszoharcerski - jako go ugryźć?"; adres: "projekt.qml" }
        ListElement { title: "Formy pracy w zastępie starszoharcerskim"; adres: "formy.qml" }
        ListElement { title: "Cechy i zasady dobrej zbiórki"; adres: "cechy.qml" }
        ListElement { title: "Dobry zastępowy"; adres: "zastepowy.qml" }
        ListElement { title: "System kar i nagród"; adres: "systemkar.qml" }
        ListElement { title: "Konspekty zbiórek"; adres: "konspekty.qml" }
        ListElement { title: "Obrzędowość zastępu"; adres: "obrzedowosc.qml" }
        ListElement { title: "Plany pracy zastępu"; adres: "plan.qml" }
        ListElement { title: "Skąd czerpać inspiracje"; adres: "inspiracje.qml" }
      }
      Repeater {
        model: mainList
        delegate: ElementListyNoLayout {
          header: title
          MouseArea {
            anchors.fill: parent
            onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/" + adres))
          }
        }
      }
    }
  }
}

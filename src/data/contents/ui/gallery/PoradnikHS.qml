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
import QtQuick.Layouts 1.2


HPSPage
{
 id: page
 title: qsTr("Dla zastępów HS")
    ColumnLayout {
     id: mainList
        ElementListyNoImage {
    header: "Wprowadzenie do metodyki starszoharcerskiej"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/wprowadzenie.qml"))
    }
  }
        ElementListyNoImage {
    header: "Instrumenty metodyczne"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/instrumenty.qml"))
    }
  }
        ElementListyNoImage {
    header: "Praca ze stopniami i sprawnościami"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/stopnie.qml"))
    }
  }
        ElementListyNoImage {
    header: "Projekt starszoharcerski - jak go ugryźć?"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/projekt.qml"))
    }
  }
        ElementListyNoImage {
    header: "Formy pracy w zastępie starszoharcerskim"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/formy.qml"))
    }
  }
      ElementListyNoImage {
    header: "Cechy i zasady dobrej zbiórki"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/cechy.qml"))
    }
  }
      ElementListyNoImage {
    header: "Dobry zastępowy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/zastepowy.qml"))
    }
  }
      ElementListyNoImage {
    header: "System kar i nagród"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/systemkar.qml"))
    }
  }
      ElementListyNoImage {
    header: "Konspekty zbiórek"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/konspekty.qml"))
    }
  }
      ElementListyNoImage {
    header: "Obrzędowość zastępu"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/obrzedowosc.qml"))
    }
  }
      ElementListyNoImage {
    header: "Plan pracy zastępu"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/plan.qml"))
    }
  }
      ElementListyNoImage {
    header: "Skąd czerpać inspiracje?"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikHS/inspiracje.qml"))
    }
  }
    }


}

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
 title: qsTr("Dla zastępów wędrowniczych")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList

ElementListyNoImage {
    color: "Green"
    header: "Druhno zastępowa! Druhu zastępowy! <br>
Trzymasz w rękach wędrownictwo przelane na papier.<br>
Ten styl życia jednak jest praktyką — żywą służbą i aktywną pracą nad sobą.<br><br>
Życzę Tobie i Twoim wędrownikom, abyście to, co jest zawarte w tym poradniku — wcielili w życie, a wędrując Jego krętymi drogami, zawsze mieli przed sobą harcerskie ideały. <br><br>
Czuwaj! <br>

drużynowa 316 RwDW <br>
Kinga Żeglińska HO <br><br>

Co znajdziesz w Poradniku?"
          }

ElementListyNoImage {
    header: "1. Filary wędrownictwa"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/filary.qml"))
    }
  }
ElementListyNoImage {
    header: "2. Zbiórka od kuchni"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/zbiorka.qml"))
    }
  }
ElementListyNoImage {
    header: "3. Inspiracje programowe"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/inspiracje.qml"))
    }
  }
ElementListyNoImage {
    header: "4. Jaki jest zastępowy wędrowniczy?"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/zastepowy.qml"))
    }
  }
ElementListyNoImage {
    header: "5. Wędrownicze formy pracy"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/formy.qml"))
    }
  }
ElementListyNoImage {
    header: "6. Instrumenty metodyczne"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/instrumenty.qml"))
    }
  }
  ElementListyNoImage {
    header: "7. Rys historyczny wędrownictwa"
        MouseArea {
    anchors.fill: parent
    onClicked: pageStack.push(Qt.resolvedUrl("poradnikWedro/rys.qml"))
    }
  }
    }


}

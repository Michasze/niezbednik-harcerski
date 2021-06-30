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
import ".."

HPSPage {
        id: rozdzial6
        Layout.fillHeight: true
        title: qsTr("Jaki jest zastępowy wędrowniczy?")
        ColumnLayout {
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p>Wędrownicza praca może się odbywać w zastępach lub patrolach, działających albo w przy drużynie wielopoziomowej lub wędrowniczej. Zastępowy wędrowniczy nie jest wodzem ani przywódcą ale kompanem i przyjacielem - jest częścią składową całości, spoiwem.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p>Potrafi dostrzegać potrzeby grupy i zawiązać z nimi relację nie na zasadzie wyższości, ale równości - jak w grupie rówieśniczej. Inicjuje formy prowadzenia zbiórek.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p>Zastęp/patrol wędrowniczy jest zespołem. Każdy członek ma w niego swój wkład. Zastępowy głową tego ciała, słucha i rozumie resztę.</p>"
          }
        }
    }

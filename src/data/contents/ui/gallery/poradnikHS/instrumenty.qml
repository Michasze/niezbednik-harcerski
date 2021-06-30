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
import org.kde.kirigami 2.13 as Kirigami
import ".."

HPSPage {
        id: rozdzial2
        Layout.fillHeight: true
        title: qsTr("Instrumenty metodyczne")
actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        ColumnLayout {
            ElementListyNoImage {
                color: "royalblue"
                header: "<h3> Próba harcerza</h3>"
            }
            Lista {
                tresc: "zakończona Przyrzeczeniem Harcerskim "
            }
            Lista {
                tresc: "ma za zadanie przygotować HS-a do wejścia w harcerski świat, „zarazić go harcerskim bakcylem\"  "
            }
            Lista {
                tresc: "początek harcerskiej drogi "
            }
ElementListyNoImage {
                color: "royalblue"
                header: "<h3>Stopnie harcerskie</h3>"
            }
            Lista {
                tresc: "realzowane odpowiedno do wieku (HS = pionierka/odkrywca i samarytanka/ćwik)"
            }
            Lista {
                tresc: "zadania realizowane podczas zbiórek, wyjazdów i w życiu codziennym"
            }
ElementListyNoImage {
                color: "royalblue"
                header: "<h3>Sprawności ** i ***</h3>"
            }
            Lista {
                tresc: "mają za zadanie rozwinąć harcerza na różnych płaszczyznach "
            }
            Lista {
                tresc: "realilzowane przede wszystkim podczas zbiórek"
            }
            Lista {
                tresc: "sprawności miesiąca jako zachęta do zdobywania sprawności"
            }
ElementListyNoImage {
                color: "royalblue"
                header: "<h3>Projekt starszoharcerski</h3>"
            }
            Lista {
                tresc: "uczy pracy zespołowej i współpracy"
            }
            Lista {
                tresc: "kształtuje odpowiedzialność"
            }
            Lista {
                tresc: "chciałabym, jak pewnie każdy drużynowy starszoharcerski, żebyście realizowali ich Jak najwięcej :P"
            }

        }
    }


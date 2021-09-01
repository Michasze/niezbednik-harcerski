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
import ".."

HPSPage {
        id: rozdzial2
        Layout.fillHeight: true
        title: qsTr("Instrumenty metodyczne")
        ColumnLayout {
            ElementListyNoImage {
                color: "royalblue"
                header: "<b> Próba harcerza</b>"
            }
            HPSLista {
                label: "zakończona Przyrzeczeniem Harcerskim "
            }
            HPSLista {
                label: "ma za zadanie przygotować HS-a do wejścia w harcerski świat, „zarazić go harcerskim bakcylem\"  "
            }
            HPSLista {
                label: "początek harcerskiej drogi "
            }
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Stopnie harcerskie</b>"
            }
            HPSLista {
                label: "realizowane odpowiednio do wieku (HS = pionierka/odkrywca i samarytanka/ćwik)"
            }
            HPSLista {
                label: "zadania realizowane podczas zbiórek, wyjazdów i w życiu codziennym"
            }
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Sprawności ** i ***</b>"
            }
            HPSLista {
                label: "mają za zadanie rozwinąć harcerza na różnych płaszczyznach "
            }
            HPSLista {
                label: "realizowane przede wszystkim podczas zbiórek"
            }
            HPSLista {
                label: "sprawności miesiąca jako zachęta do zdobywania sprawności"
            }
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Projekt starszoharcerski</b>"
            }
            HPSLista {
                label: "uczy pracy zespołowej i współpracy"
            }
            HPSLista {
                label: "kształtuje odpowiedzialność"
            }
            HPSLista {
                label: "chciałabym, jak pewnie każdy drużynowy starszoharcerski, żebyście realizowali ich jak najwięcej :P"
            }

        }
    }


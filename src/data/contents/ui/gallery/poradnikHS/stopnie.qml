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
        id: rozdzial3
        Layout.fillHeight: true
        title: qsTr("Praca ze stopniami i sprawnościami")
        ColumnLayout {
            ElementListyNoImage {
                color: "#FF003c00"
                header: "<p>Stopnie i sprawności są nieodłącznym elementem pracy harcerskiej, powinny być jej podstawą. Są sposobem na rozwój harcerski i pozaharcerski - w końcu zdobywamy umiejętności, które są przydatne w codziennym życiu. W Waszej gestii leży motywowanie członków swojego zastępu do ich realizacji, między innymi poprzez realizowanie zadań na zbiórkach zastępu.</p> "
            }
            ElementListyNoImage {
                color: "#FF003c00"
                header: "<p>Czasem też trzeba pomóc w realizacji któregoś zadania, podsunąć pomysł, jak dane zadanie można wykonać. Ale musicie pamiętać, że HS jest samodzielny i trzeba stawiać przed nim wyzwania - nie za proste, nie za trudne. Nie jest łatwo znaleźć ten złoty środek, ale nikt nie mówił że będzie łatwo!</p>"
            }
        }
    }

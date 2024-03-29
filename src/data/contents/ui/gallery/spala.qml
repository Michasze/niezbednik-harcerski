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
    title: "Zlot w Spale"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            Image {
                source: "qrc:/contents/ui/img/spala.svg"
                fillMode: Image.PreserveAspectFit
                sourceSize.width: isHorizontal ? page.height / 3 : page.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                color: "Black"
                width: parent.width
                header: "Jubileuszowy Zlot ZHP w Spale- zorganizowany przez Związek Harcerstwa Polskiego w jego 25 rocznicę powstania w dniach 10-25 lipca 1935.

Spała jest to miejscowość położona w województwie Łódzkim. Znajduje się w Puszczy Pilickiej, niegdyś zwanej Lasami Spalskimi. W miejscowości znajdowała się rezydencja Prezydenta RP.

W zlocie uczestniczyło około 25 tysięcy osób, w tym zagraniczne delegacje. Wydarzenie rozpoczęło się na stadionie w Spale w obecności protektora ZHP prezydenta Ignacego Mościckiego, po odśpiewaniu hymnu odbyła się defilada, którą uświetniała orkiestra. 

Komendantem obozu był harcmistrz Antoni Olbromski, który swoją historię z skautingiem zaczął już w 1915 roku w Polskiej Organizacji Skautowej działającej w części Królestwa Kongresowego.

Każdy z uczestników zlotu musiał mieć wyhaftowany na mundurze herb swojej miejscowości.

Do obozu który miał powierzchnię 11 kilometrów kwadratowych i dzielił się na 16 podobozów poprowadzono tory kolejowe oraz szosę, nad rzeką zbudowano mosty, a na terenie całego obozu było około 160 drewnianych budynków.. Prace budowlane wykonała Grupa Harcerskich Drużyn Robotniczych, dwa plutony saperów oraz okoliczni mieszkańcy.

Harcerze mieli możliwość zdeponowania swoich pieniędzy w Zlotowej Ekspozyturze PKO, aby w ten sposób zabezpieczyć się przed ich utratą."
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignHCenter
                width: parent.width
                header:"Juliusz Idzikowski"
            }
        }
    }
}

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
        Layout.fillHeight: true
        title: qsTr("Dodatkowe pomysły")
     actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }       ColumnLayout {
        id: rozdzial
        property int naglowekSize: 12
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Fotograficzna ścieżka"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Wykonujemy fotografię trasy, którą mają przejść nasi harcerze. Należy pamiętać o tym, żeby na zdjęciach widać było charakterystyczne elementy otoczenia. Oczywiście musimy przed zbiórką zadbać o to, żeby mieć w jakiej formie przekazać te zdjęcia naszym harcerzom. Możemy je dać np. na starym aparacie. Wtedy jest też szansa, że harcerze zwrócą uwagę np. na godzinę wykonania z zdjęć i na tej podstawie będą próbowali oszacować, ile zajmie im przejście od jednego zdjęcia do drugiego. Dodatkowo należy pamiętać o naładowaniu baterii. Nie ma powodu, żeby dawać harcerzom najlepszy aparat jaki mamy, bo szkoda będzie jeśli taki aparat się zniszczy.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "A gdyby tak \"nie przyjść\" na początek zbiórki?"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Umieść wiadomość w takim miejscu harcówki lub jej okolicy, żeby na pewno ktoś ją zobaczył.
Poinformuj o swoim planie przynajmniej jedną osobę, co do której masz pewność, że będzie na zbiórce. Dzięki temu unikniesz chaosu, a dodatkowo taki jegomość będzie ewentualnie mógł porozmawiać z rodzicem, który odprawił młodego harcerza i zastanawia go taka sytuacja.
Zadbaj o dokładne instrukcje sporządzenia listy obecności i zawrzyj je w liście rozpoczynającym zbiórkę.
Bądź w pobliżu, ale niezauważalny na wypadek, gdyby coś jednak nie zadziałało.  </p>"
        }
    }
}

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
    id: page
        Layout.fillHeight: true
        title: qsTr("Jak tworzyć punkty:")
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
            header: "#leavenotrace"
        }
        HPSLista
        {
            label: "Używaj już raz wykorzystane kartki. Stare kserówki na egzamin z botaniki czy stare wyblakłe paragony."
        }
        HPSLista
        {
            label: "Nie przyklejaj punktów taśmą do drzewa, schowaj punkt w korzeniach. Ochronisz go przed zniknięciem, a przy okazji przed wzrokiem osób, które nie powinny go znaleźć."
        }
        HPSLista
        {
            label: "Jeśli chcesz ochronić punkt przed deszczem schowaj go w takim miejscu, żeby nie trzeba było używać foliówek."
        }
        HPSLista
        {
            label: "Pamiętaj, żeby zebrać kartki po grze terenowej lub niech zbiera je ostatni patrol, który pojawi się na punkcie. Niech patrole wpisują magicznego Xa na kartce. Jeśli będzie tyle Xów ile jest patroli to znaczy, że kartkę trzeba zabrać."
        }
        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Jak sprawić, żeby nasze punkty nie znikały?"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Poza odpowiednim ukrywaniem punktu warto na kartce z punktem dodać podpis “Ta kartka to element gry harcerskiej (data)”. Dzięki temu jest większa szansa, że nasz punkt zostanie tam, gdzie powinien.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Prosta legenda"
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe1.svg"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Podobnie jak w wypadku tłumaczenia zasad samej gry, dobrze jest dać patrolom spisane rodzaje punktów jakie znajdują się na mapie.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            textSize: rozdzial.naglowekSize
            header: "Jaki efekt wywoła dane rozstawienie punktów?"
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe2.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "Dowolna trasa przejścia"
        }
        HPSLista
        {
            label: "Brak motywacji do szybszego marszu"
        }
        HPSLista
        {
            label: "Ryzyko, że patrole będą chodziły razem"
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe3.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "Wcześniej zaplanowana kolejność przejścia."
        }
        HPSLista
        {
            label: "Można zmusić patrole do niewspółpracowania."
        }
        HPSLista
        {
            label: "Większa motywacja do zdobycia punktów."
        }
        HPSLista
        {
            label: "Często pojawia się problem dwóch różnych długości tras, dlatego warto się zastanowić jak ewentualnie zrekompensować jednemu z patroli dłuższy spacer."
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe4.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "Szansa na zauważenie temperamentu naszych patrolowych i patroli. Niektórzy będą unikać zbierania znaków zapytania, inni zbierać je tylko kiedy są blisko, a jeszcze inni pochłaniać jednego za drugim niczym sarlacc."
        }
        HPSLista
        {
            label: "Mniej obliczalna trasa przemarszu."
        }
        HPSLista
        {
            label: "Mniejsza szansa na łączenie się patroli."
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe5.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "Punkt, na który nie wolno wchodzić potrafi być barierą samą w sobie, ale dobra fabuła pomaga go uwiarygodnić. Możemy taki punkt oznaczyć też na przykład kartkami na drzwiach (tym razem w widocznych miejscach) “Miejsce skażone”, “uwaga pole minowe”, “ruchome piaski”."
        }
        HPSLista
        {
            label: "Mniej obliczalna trasa przemarszu."
        }
        HPSLista
        {
            label: "Brak istotnego wpływu na współzawodnictwo w porównaniu z innymi mapami."
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe6.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "Duży nacisk na współzawodnictwo."
        }
        HPSLista
        {
            label: "Bardzo nieprzewidywalna trasa przemarszu."
        }
        HPSLista
        {
            label: "Prawdopodobnie patrolowi poświęcą chwilę na zaplanowanie trasy przejścia, tak żeby zebrać jak najwięcej punktów dodatkowych."
        }
        HPSLista
        {
            label: "Patrole prawdopodobnie będą chciały się unikać i będą starały się zbierać punkty możliwie jak najszybciej. "
        }
        HPSLista
        {
            label: "Widać temperament patrolowych, jeszcze bardziej niż przy samych znakach zapytania. "
        }
        Image {
        Layout.maximumHeight: 400
        Layout.preferredWidth: page.width
         source: "qrc:/contents/ui/img/terenowe7.png"
           Layout.fillWidth: true
         fillMode: Image.PreserveAspectFit
         Layout.alignment: Qt.AlignHCenter
        }
        HPSLista
        {
            label: "W tym wypadku najlepiej postawić punktowych na obowiązkowych do zdobycia punktach. Dzięki temu nie będą jak Kevin sam w domu."
        }
        HPSLista
        {
            label: "Wymusza pewną trasę przemarszu, patrole prawdopodobnie pominą część punktów."
        }
        ElementListyNoImage
        {
            color: "green"
            alignH: Text.AlignJustify
            header: "<p>Jakie mogą być rodzaje punktów?</p>"
        }
                HPSLista
        {
            label: "Ruchome"
        }
        HPSLista
        {
            label: "Ograniczone czasowo"
        }
        HPSLista
        {
            label: "Z punktowym"
        }
                HPSLista
        {
            label: "Kartka"
        }
        HPSLista
        {
            label: "Znak na miejscu"
        }
        HPSLista
        {
            label: "Wirtualne"
        }
        ElementListyNoImage
        {
            color: "green"
            alignH: Text.AlignJustify
            header: "<p>Koordynaty GPS - o czym należy pamiętać:</p>"
        }
        HPSLista
        {
            label: "Sprawdzić ich poprawny zapis i to czy nasi harcerze wiedzą jak z tego korzystać."
        }
        HPSLista
        {
            label: "Uczulić naszych harcerzy, że przy słabym zasięgu GPS (w telefonie) może mieć problemy."
        }
        }
    }

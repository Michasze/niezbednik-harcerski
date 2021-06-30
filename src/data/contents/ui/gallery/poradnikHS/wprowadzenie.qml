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
        id: rozdzial1
        Layout.fillHeight: true
        title: qsTr("Wprowadzenie do metodyki starszoharcerskiej")
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
                header: "<h3>Założenia ogólne</h3>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Charakterystyczną formą aktywności HS-ów jest poszukiwanie, polegające na przewartościowywaniu dotychczasowego patrzenia na świat i autorytety.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Harcerze starsi to młodzież od 13 do 15 roku życia. Jest to trzecia z kolei metodyka, plasująca się między harcerzami a wędrownikami. </p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Harcerze starsi są w wieku zmian psychicznych i fizycznych - zaczyna się proces dojrzewania, u dziewcząt kształtuje się kobieca sylwetka, rosną piersi; u chłopców występuje przyrost barków (\"sylwetka trójkąta\”). U obu zaś płci zaczyna pojawiać się owłosienie na ciele i w okolicach intymnych. Dla wielu ludzi Jest to temat tabu, ale zastępowy musi zdawać sobie sprawę z tego, co dzieje się z Jego podopiecznymi - ponieważ oni sami często są w tym wszystkim zagubieni.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Skoro już przebrnęliśmy przez sferę fizyczną, którą na pewno każdy z Was również zna z autopsji, przejdźmy do sfery psychicznej.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Harcerze starsi poszukują swoich życiowych pasji, stoją przed wyborem szkoły, która zaważy nad ich przyszłością zawodową, zaczynają patrzeć na świat oczami nastolatka - dotychczas ich autorytetami były osoby z najbliźszego otoczenia: rodzice, dziadkowie. Teraz natomiast zaczynają szukać autorytetów stricte pasujących do ich patrzenia na rzeczywistość. Nie zawsze będą to autorytety dobre — HS-om może wydawać się, że osoba X jest godna naśladowania, ale wynikać to będzie bardziej z potrzeby buntu HS-a niż z pozytywnych osiągnięć osoby X. Takie autorytety nazywamy autorytetami pozornymi.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Zadaniem zastępowego jest pokazać im autorytety rzeczywiste — mogą to być postacie związane z harcerstwem, ale nie zamykajmy się w takim gronie. Jest tak wielu niesamowitych ludzi!</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Autorytetem może być przecież także osoba, z którą mamy styczność na co dzień - na przykład instruktor harcerski. Pamiętajcie, że waszym zadaniem NIE jest podanie harcerzom na tacy ich gotowego autorytetu. Oni mają sami do tego dążyć, a Wy macie im podsunąć pomysł, Jak dojść do celu. Mają poszukiwać.</p>"
            }
        }
    }


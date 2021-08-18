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
        id: rozdzial4
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.minimumWidth: 1920
        title: qsTr("Projekt starszoharcerski")
        ColumnLayout {
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Odnoszę wrażenie, że projekt starszoharcerski jest niedocenianym instrumentem metodycznym. Wszyscy wiedzą o realizacji stopni i sprawności, zdobywanie ich idzie lepiej lub gorzej w zależności od środowiska, ale rzadko, ku mojej rozpaczy, słyszy się o zrealizowaniu projektu SH. A to przecież forma dająca tak wiele możliwości, które ogranicza tylko wyobraźnia i chęci zastępu! Projekt SH oferuje Wam wachlarz możliwości i przygód, które możecie przeżyć, współpracując ze swoim zastępem. O dziwo, dopiero na kursie drużynowych - tak, drużynowych! - poznałam prawdziwą wartość tego instrumentu metodycznego. Wcześniej w mojej drużynie nie realizowało się ich - teraz staram się je wprowadzić, przy pomocy moich niezastąpionych zastępowych - którzy pewnie też czytają ten poradnik :P</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Są oni świetnym przykładem na to, że tak bardzo wiele zależy od podejścia zastępowego. To Wy jesteście wodzem zastępu i Jeżeli członkowie nie będą widzieć z Waszej strony tego pozytywnego impulsu do działania, sami nie zaczną działać. Potrzebują motywacji, Jak my wszyscy, dlatego starajcie się pokazywać nowe możlwości, sami również zdobywać nowe umiejętności, także poprzez realizację projektów starszoharcerskich. </p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Pytania, które warto zadać grupie podczas rozpisywania projektu SH:</p>"
            }
            HPSLista {
                label: "Co chciałbym zrobić dla siebie?"
            }
            HPSLista {
                label: "Co mogę dać od siebie innym?"
            }
            HPSLista {
                label: "Czego potrzebuje moje otoczenie?"
            }
            HPSLista {
                label: "Gdzie potrzebne jest wsparcie?"
            }
            HPSLista {
                label: "Jaką świetną akcję chcemy przeżyć z zastępem?"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Wbrew pozorom działanie z projektem SH nie jest trudne. Po pierwsze, usiądźcie z zastępem na zbiórce, weźcie kartkę i odpowiedzcie na powyższe pytania. Zróbcie też mapę myśli, w jakim kierunku chcielibyście pójść: zorganizowanie zbliórki żywności, wyjście drużyny do schroniska dla zwierząt, zaprojektowanie koszulek zastępu, udekorowanie harcówki, stworzenie harc-zespołu, a może coś jeszcze innego?</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Następnie zastanówcie się, jak przystąpicie do realizacji celu. Podzielcie między siebie zadania tak, aby każdy miał swój wkład w projekt, każdy był za coś odpowiedzialny. Liderem w tym przypadku jest zastępowy. Współpraca i odpowiedzialność - oto idea projektu SH.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Gdy spiszecie już to wszystko na Karcie Projektu Starszoharcerskiego i rozpiszecie  harmonogram (umieszczone na końcu poradnika), zgłoście drużynowemu, że chcecie otworzyć projekt. Rada drużyny przejrzy go, powie Wam, co ewentualnie poprawić; następnym krokiem będzie otworzenie projektu w rozkazie i przystąpienie do działania.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                alignH: Text.AlignJustify
                header: "<p>Optimum trwania projektu to 2-3 miesiące. Po zrealzowaniu wszystkich zadań zastęp spotyka się i podsumowuje pracę: co sprawiło trudności, czy udało się osiągnąć cel. Lider informuje radę drużyny o zakończeniu realizacji projektu i przedstawia dokumentację. Po zatwierdzeniu projektu przez radę, drużynowy ogłasza to rozkazem.</p>"
            }

}
        }

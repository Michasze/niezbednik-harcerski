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

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Mapa miejsc wędrówkowych"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>A komu to potrzebne?</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        header: "<p>Mapa miejsc wędrówkowych w obrębie jednej drużyny nie jest zbyt użyteczna. Zazwyczaj większość osób w drużynie zna często odwiedzane miejsca. Jednak, jak się okazało, w moim związku drużyn nie wszyscy znali te same miejsca w które można się wybrać na wędrówkę. Podczas jednej z rozmów wpadłem na pomysł stworzenia mapy miejsc wędrówkowych, która pozwoliłaby nam na wymianę informacji.</p>"
        alignH: Text.AlignJustify
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>Gdzie stworzyć mapę?</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Najlepiej mieć jakiś wygodny “nośnik” na którym stworzymy mapę. Oczywiście, może to być np. duża mapa powieszona w biurze komendy hufca, ale czy ktoś będzie ją wykorzystywać? Za każdym razem kiedy trzeba będzie ją uzupełnić, musisz pojawić się w biurze. A stos kartek przyczepianych do niej będzie zatrważał serca minimalistów.</p> "
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Dużo lepszym rozwiązaniem wydaje się stworzenie wirtualnej mapy. Możesz stworzyć własną stronę internetową, ale jeśli nie masz takich umiejętności, nic straconego.
Strona/aplikacja Moje Mapy jest wręcz stworzona do takiego wykorzystania. Oferuje nam możliwość nanoszenia punktów na mapę, tworzenia do nich opisów i oznaczania ich kolorystycznie.</p>"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Możemy też wgrywać zdjęcia z danego miejsca, a to wyjątkowo przydatna opcja. Zawsze dobrze wiedzieć jak duże jest to oczko wodne, nad które się wybieramy… żeby nie okazało się, że jakiś amerykański skaut opisał tak Bałtyk.</p>"
     }

     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Jak przygotować mapę?"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Najpierw zapoznaj się z działaniem strony, nanieś kilka punktów, spróbuj zaznaczyć trasę przejścia itd. Zrób listę swoich miejsc wędrówkowych i nanieś je na mapę. Dobrze jest udostępnić swój projekt w momencie, gdy już coś się na nim znajduje. Pokaże to innym w jaki sposób tworzyć takie punkty i na jakie informacje zwrócić uwagę.</p>
<p>Możesz stworzyć szablon opisu miejsc wędrówkowych i biwakowych.</p>
<p>Sugerowany opis miejsc:</p>
<p><b>Schronienie:</b> (czy jest dostępne jakieś zadaszenie)</p>
<p><b>Dostęp do wody:</b> (czy w pobliżu jest dostęp np. do strumienia)</p>
<p><b>Miejsce ogniskowe:</b> (czy jest dostępne miejsce wyznaczone przez nadleśnictwo)</p>
<p><b>Dojazd:</b> (czy możliwy jest legalny dojazd na miejsce)</p>
<p><b>Ludzie:</b> (czy często pojawiają się osoby postronne)</p>
<p><b>Pozostałe informacje:</b> (np. do kogo należy ten teren, jeśli konieczne umówienie się z właścicielem terenu)</p>"
     }
    ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Jak znaleźć więcej miejsc?"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Najłatwiejszym sposobem jest udostępnienie takiej mapy na grupie hufca lub związku drużyn. Oczywiście najlepiej jest poprosić, aby miejsca zgłaszać do nas przez maila lub messengera, dzięki temu będziemy mogli dokonać ewentualnej korekty opisów."
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Możemy też bezpośrednio zwracać się do drużynowych, żeby podsunęli jakieś ciekawe miejscówki. Nie zapominajmy również do innych instruktorach z hufca, możemy też popytać o dawnych drużynowych. W końcu ciekawie byłoby się wybrać na wędrówkę w miejsce, w które już pięćdziesiąt lat temu chodzili harcerze. "
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "Warto też:"
     }
        Lista
        {
            tresc: "- skontaktować się z nadleśnictwem w sprawie takich miejsc"
            alignH: Text.AlignJustify
        }
        Lista
        {
            tresc: "- zajrzeć do muzeum regionalnego i spróbować zapytać o ciekawe miejsca w okolicach"
            alignH: Text.AlignJustify
        }
        Lista
        {
            tresc: "- przeczytać broszury turystyczne"
            alignH: Text.AlignJustify
        }
        Lista
        {
            tresc: "- spróbować zdobyć dostęp do starych map"
            alignH: Text.AlignJustify
        }
        Lista
        {
            tresc: "- przejrzeć aplikację geocaching"
            alignH: Text.AlignJustify
        }
    ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Przykładowa mapa:"
     }
        Controls.Label
        {
            text: "<a href=\"https://www.google.com/maps/d/u/0/edit?mid=1hNgVm4Iz8dIQRquf3U7qXYlvGWdiJTBh&usp=sharing\">link</a>"
            font.pointSize: invisibleSlider.value
            onLinkActivated: Qt.openUrlExternally(link)
        }

            }


}

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
               id: rozdzial12
        Layout.fillHeight: true
        title: qsTr("Skąd czerpać inspiracje?")
        actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: !Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        }
    }
        ColumnLayout {
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "Ileż to razy siadałeś, żeby zaplanować następną zbiórkę zastępu, a w głowie była tylko pustka? Kompletny zanik szarych komórek. Spokojnie, to zdarza się każdemu. Zastępowemu, drużynowemu, komendantowi - każdy czasem potrzebuje inspiracji."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "1. Drużynowy i przyboczni - jesteśmy od tego, żeby wspierać zastępowych. Udzielimy rady, pomożemy zorganizować element zbiórki. Nie bójcie się do nas zwracać o pomoc, bo od tego jesteśmy!"
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "2. Inni zastępowi - kto lepiej zaradzi na brak weny niż kumpel z branży? Współpraca z resztą zastępowych z drużyny to nie przestępstwo, ba! Polecam, bo to pomaga."
        }
        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "3. Instruktorzy hufca, znajomi z innych drużyn, rodzina - każdy człowiek może Was zainspirować. Czasem wystarczy o coś zapytać, a czasem nawet czyjaś postawa czy zajęcia, które ta osoba prowadziła, mogą stanowić inspirację."
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "4. Centralny Bank Pomysłów ZHP - cbp.pl — to wielka baza wszelkiej maści konspektów zbiórek, zajęć, propozycji programowych i wiele więcej!"
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "5. skauciak.pl — przydatne porady dla zastępowych, tematy do refleksji, ciekawe artykuły — nic tylko polecać!"
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "6. czuwaj.pl — miesięcznik dla instruktorów ZHP. Na stronie umieszczane są artykuły, z których można wiele się dowiedzieć, skłaniają do refleksji i niejednokrotnie insprują do działania."
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "7. propozycje programowe WOSM, WAGGGS, ZHP - na facebooku wszystkich tych organizacji można znaleźć niezliczoną ilość propozycji programowych, na których można oprzeć temat zbiórki. Enjoy!"
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "8. harcerskie.com - duża ilość gawęd, konspektów zbiórek, które można wykorzystać w codziennej pracy."
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "9. issuu - platforma z elektronicznymi wydaniami magazynów i książek. Jest tam wiele publikacji ZHP, niezliczoność inspirujących materiałów."
        }        ElementListyNoImage
        {
            color: "#FF003c00"
            header: "10. ...i wiele innych - Internet, książki (nie tylko harcerskie!), muzyka, wydarzenia z życia... Trzeba tylko uważnie patrzeć, a wszystko może stać się Twoją inspiracją!"
        }        ElementListyNoImage
        {
            color: "royalblue"
            header: "<h3>RÓWNIEŻ TY BĄDŹ INSPIRACJĄ DLA SWOICH HARCERZY!<br>
NA CO JESZCZE CZEKASZ? DZIAŁAJ, POSZUKUJ, INSPIRUJ —<br>
CZUWAJ!</h3>"
        }
        }
    }


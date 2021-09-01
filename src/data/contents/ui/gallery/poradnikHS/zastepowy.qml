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
        id: rozdzial7
        Layout.fillHeight: true
        title: qsTr("Dobry zastępowy")
        ColumnLayout {
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Kim jest dobry zastępowy</b>"
            }
            ElementListyNoImage {
                color: "black"
                alignH: Text.AlignJustify
                format: Text.PlainText
                header: "Dobry zastępowy Jest przyjacielem swojego zastępu. Zastęp może się go poradzić w każdej sytuacji, zarówno związanej z wiedzą harcerską, jak i życiem codziennym.\n
Zastępowy jest jak starszy brat, siostra, która potrafi więcej i przekazuje tę wiedzę swojemu zastępowi. Rozwija się ze swoimi harcerzami z wewnętrznej potrzeby samorozwoju.\n
Zastępowy jest pomocny, pozytywny, potrafi zorganizować czas. Jest odpowiedzialny za siebie i swoich harcerzy. Ma poczucie obowiązku.\n
Każdy ma swoje wady - tak. Ale istotą bycia harcerzem jest dążenie do ideałów - chcąc kształtować postawy HS-ów, kształtujmy siebie.\n
Zastępowy jest WZOREM do naśladowania, niezależnie od sytuacji.\n
Pamiętajcie, że harcerze patrzą na Wasz przykład - jeżeli z Waszej strony jest obojętność, a czasem nawet okazywanie niechęci do pracy i wręcz chwalenie się swoimi wadami i lenistwem, zaprowadzi Was to absolutnie donikąd. Was i Wasz zastęp. Pamiętajcie, że macie pod pieczą garść osób, którym przewodzicie i również spoczywa na Was odpowiedzialność za ich rozwój.\n
„Druhno, a co jeśli moi harcerze już wszystko potrafią?”... Wielokrotnie słyszałam, że członkowie zastępu przerośli wiedzą zastępowego, lub że są tak wybitni że już nic więcej nie da się ich nauczyć.\n
BZDURA! Nie wątpię w wybitność harcerzy, ale zawsze jest coś, co można szlifować, zawsze jest coś do poznania, odkrycia, nawet nie stricte związanego ze stereotypowo pojmowaną wiedzą harcerską. Nie ograniczajcie się do wyrecytowania dat z historii harcerstwa. Posłuchajcie — lub przeprowadźcie — wywiady z seniorami lub choćby starszymi instruktorami harcerskimi, którzy pamiętają czasy starsze niż Wy. Jest harcyliard możliwości do przeprowadzenia zbiórki na jeden, pozomie drętwy i oklepany temat. Tak jak już pisałam - ogranicza Was tylko kreatywność.\n
A co, jeśli zastępowy nie jest w stanie przeprowadzić zbiórki na dany temat, bo zwyczajnie nie ma odpowiedniej do tego wiedzy? Nikt nie jest wszechwiedzący, to wiadome. Ale nie wiem czy wiecie - zastępowymi jesteście również dla własnego rozwoju. Jeśli przekażecie całą swoją wiedzę zastępowi, co dalej? Nie zatrzymujcie się w miejscu! Robiąc research, przygotowując się do zbiórki, szukając alternatywnych rozwiązań, rozwijacie również siebie. Nie osiadajcie na laurach twierdząc, że wszystko już potraficie i więcej się nie da.\n
Pamiętajcie, że członkowie zastępu też mają swoje zainteresowania - warto raz na jakiś czas pozwolić harcerzom poprowadzić zbiórkę zastępu na temat związany z ich hobby, pasją. To świetny sposób na integrację zastępu."
            }
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Prawa zastępowego:</b>"
            }
            HPSLista {
                label: "prawo do korzystania z pomocy innych funkcyjnych i ich wsparcia"
            }
            HPSLista {
                label: "prawo do korzystania z różnorodnych inspiracji"
            }
            HPSLista {
                label: "prawo do przekazania prowadzenia danej zbiórki podzastępowemu lub innej osobie"
            }
            HPSLista {
                label: "prawo do tworzenia obrzędowości i identyfikacji zastępu"
            }
            HPSLista {
                label: "prawo do samodoskonalenia, zdobywania stopni i sprawności wraz z zastępem"
            }
            HPSLista {
                label: "prawo do oddania zastępu swojemu następcy"
            }
            ElementListyNoImage {
                color: "royalblue"
                header: "<b>Obowiązki zastępowego:</b>"
            }
            HPSLista {
                label: "obowiązek prowadzenia zbiórek zastępu"
            }
            HPSLista {
                label: "obowiązek pisania konspektów zbiórek i terminowego przekazywania drużynowemu"
            }
            HPSLista {
                label: "zastępowy bierze też odpowiedzialność za członków zastępu, gdy podopieczny zwraca się o pomoc, zastępowy ma powinność udzielenia jej (jeżeli nie jest w stanie pomóc, zwraca się do osoby wyższej funkcją)"
            }
            HPSLista {
                label: "obowiązek zaplanowania pracy zastępu w planie pracy zastępu (zależnie od środowiska)"
            }
            HPSLista {
                label: "obowiązek sprawdzania obecności na zbiórkach zastępu"
            }
            HPSLista {
                label: "obowiązek zgłaszania niepokojących sytuacji wyższym funkcyjnym"
            }
            HPSLista {
                label: "obowiązek dawania dobrego przykładu (nie tylko w mundurze!)"
            }
            HPSLista {
                label: "obowiązek pracy zgodnie z metodą harcerską"
            }
            HPSLista {
                label: "obowiązek samodoskonalenia"
            }
        }
    }

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

import QtQuick 2.0
import QtQuick.Controls 2.15 as Controls
import ".."

HPSPage {
    title: qsTr("Jak budować fabułę?")
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            id: rozdzial
            ElementListyNoLayout
            {
                color: "green"
                header: "<b>Zasady dobrej fabuły:</b>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Spójna z mechaniką gry i ze samą sobą."
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Fabuła musi być w miarę spójna i składać się w logiczną całość. Jak chcecie dowiedzieć się jak zrobić nielogiczną i niespójną fabułę polecam najnowszą trylogię Star Wars.</p>
<p>Mechanika waszej gry musi być również spójna z fabułą. Poruszanie się jedynie za pomocą rzucania kostką, kiedy nie mamy wpływu na wydarzenia fabularne nie pasuje zbytnio ani do zagadek kryminalnych ani do gier wiedźmińskich.</p>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Ciągła i mająca istotny wpływ na przebieg gry."
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Jeśli fabuła jest trochę oderwana od waszej gry. Dobrze, jeśli w jakiś sposób miejsce, w którym odbywa się gra oddziałuje na wyobraźnię albo na odbywające się wydarzenia. O ile jest to możliwe.</p>
<p>Ciągłość fabuły jest jeszcze ważniejsza. Jeśli jeden punkt jest fabularny i meldujemy się na nim w języku norweskim, bo akurat gra jest w takiej tematyce to dużym wyzwaniem będzie punktowy, który każe się zameldować normalnie.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Namacalna, czyli musi dać się zauważyć częściej niż jedynie na początku gry."
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Dobrze, jeśli fabuła nie kończy się na liście rozpoczynającym grę. Im bardziej jest namacalna tym lepiej, ale o tym zaraz.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Pomoce przy budowaniu fabuły"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Charyzmatyczne postaci (poeta, król, smok)</p>
<p>Dobrze odegrana postać to sztuka. Czasem mamy w drużynie osobę, która świetnie sprawdza się w roli poety… albo królewskiego kata. Taka zaangażowana osoba pozwoli nam dużo lepiej wczuć się w fabułę.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Rekwizyty"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Zbiórka o tematyce Księstwa Warszawskiego, a ty przypadkiem masz w domu kapelusz w kształcie pieroga i 168 centymetrów wzrostu? To idealny moment, aby zostać Cesarzem Francuzów.</p>
<p>Zbiórka o pierwszym locie na księżyc, a ty masz w do miniaturkę Saturna V? Tak, zabierz ją koniecznie.</p>
<p>Pozwoli to harcerzom fizycznie zetknąć się z fabułą, a to oznacza większe zaangażowanie.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Stroje"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Stroje nie muszą być pełne. Mogą być symboliczne. Nawet element stroju będzie sprawiał, że harcerze będą mogli się lepiej wczuć w fabułę. W tym wypadku również dobrze zachować zasadę ciągłości, czyli jeśli decydujemy się na stroje to wszyscy punktowi powinni jakieś stroje mieć. Oczywiście, jeśli mamy w drużynie kogoś kto zajmuje się cosplayem, może mieć on bardziej zaawansowany strój niż reszta punktowych, ale mimo to reszta również powinna jakieś mieć. </p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Listy, wiersze"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Pomagają one budować fabułę. Oczywiście jeśli coś jest zatytułowane jako wiersz dobrze, żeby rzeczywiście nim było.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Nagrania głosowe"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Można stworzyć krótkie słuchowisko wprowadzające do fabuły, nagranie rozmowy telefonicznej czy wiele innych. Ogranicza nas jedynie nasza kreatywność. Nagrania możemy wykonać na przykład za pomocą programu audacity.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Filmiki"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Takie nagrania są bardzo często dużo bardziej angażujące niż listy, zwłaszcza jeśli podłożysz pod nie dobrą muzykę. Jest taka nawet na darmowych licencjach. A proste programy do montażu są dostępne nawet na telefon.</p>"
            }        ElementListyNoLayout
            {
                color: "green"
                header: "Gawędy"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Świetnie się sprawdzają jako podsumowanie całodziennej gry terenowej na obozie lub biwaku.</p>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Ozdobne mapy"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Średniowieczna mapa z google? Nie wygląda to najlepiej. Dużo lepiej przygotować prosty szkic z jakąś łacińską sentencją w tytule i dodatkowo postarzyć ją herbatą.</p>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Posty na facebooku czy instagramie z zapowiedzią zbiórki"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Dużą rolę we wczuciu się w grę pełni nastawienie. Jeśli ktoś już wcześniej będzie zainteresowany tematem to dużo chętniej weźmie w samej grze.</p>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Klimatyczne miejsca"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Nie ma lepszego miejsca na grę średniowieczną niż ruiny zamku… no chyba, że po prostu macie zamek.</p>"
            }
            ElementListyNoLayout
            {
                color: "green"
                header: "Jak wykorzystywać stroje na zbiórkach?"
            }
            ElementListyNoLayout
            {
                color: "black"
                alignH: Text.AlignJustify
                header: "<p>Poinformować o konieczności ich przygotowania co najmniej z tygodniowym wyprzedzeniem.</p>
<p>Stroje powinno się dać wykonać z łatwo dostępnych materiałów.</p>
<p>Harcerzom musi być w nich wygodnie, bo inaczej nie będą mogli zaangażować się w grę. Stroje powinny umożliwiać na przykład bieganie. Muszą też być dopasowane do terenu gry i warunków pogodowych, bo inaczej skończymy jak Edifis i zakrzykniemy “Co to za miejsce nie do życia?”. </p>"
            }
        }
    }
}

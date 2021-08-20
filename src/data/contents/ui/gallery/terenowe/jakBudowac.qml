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
        title: qsTr("Jak budować fabułę?")
        ColumnLayout {
        id: rozdzial
        ElementListyNoImage
        {
            color: "green"
            header: "<h3>Zasady dobrej fabuły:</h3>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Spójna z mechaniką gry i ze samą sobą."
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Fabuła musi być w miarę spójna i składać się w logiczną całość. Jak chcecie dowiedzieć się jak zrobić nielogiczną i niespójną fabułę polecam najnowszą trylogię Star Wars.</p>
<p>Mechanika waszej gry musi być również spójna z fabułą. Poruszanie się jedynie za pomocą rzucania kostką, kiedy nie mamy wpływu na wydarzenia fabularne nie pasuje zbytnio ani do zagadek kryminalnych ani do gier wiedźmińskich.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Ciągła i mająca istotny wpływ na przebieg gry."
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Jeśli fabuła jest trochę oderwana od waszej gry. Dobrze, jeśli w jakiś sposób miejsce, w którym odbywa się gra oddziałuje na wyobraźnię albo na odbywające się wydarzenia. O ile jest to możliwe.</p>
<p>Ciągłość fabuły jest jeszcze ważniejsza. Jeśli jeden punkt jest fabularny i meldujemy się na nim w języku norweskim, bo akurat gra jest w takiej tematyce to dużym wyzwaniem będzie punktowy, który każe się zameldować normalnie.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Namacalna, czyli musi dać się zauważyć częściej niż jedynie na początku gry."
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Dobrze, jeśli fabuła nie kończy się na liście rozpoczynającym grę. Im bardziej jest namacalna tym lepiej, ale o tym zaraz.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Pomoce przy budowaniu fabuły"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Charyzmatyczne postaci (poeta, król, smok)</p>
<p>Dobrze odegrana postać to sztuka. Czasem mamy w drużynie osobę, która świetnie sprawdza się w roli poety… albo królewskiego kata. Taka zaangażowana osoba pozwoli nam dużo lepiej wczuć się w fabułę.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Rekwizyty"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Zbiórka o tematyce Księstwa Warszawskiego, a ty przypadkiem masz w domu kapelusz w kształcie pieroga i 168 centymetrów wzrostu? To idealny moment, aby zostać Cesarzem Francuzów.</p>
<p>Zbiórka o pierwszym locie na księżyc, a ty masz w do miniaturkę Saturna V? Tak, zabierz ją koniecznie.</p>
<p>Pozwoli to harcerzom fizycznie zetknąć się z fabułą, a to oznacza większe zaangażowanie.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Stroje"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Stroje nie muszą być pełne. Mogą być symboliczne. Nawet element stroju będzie sprawiał, że harcerze będą mogli się lepiej wczuć w fabułę. W tym wypadku również dobrze zachować zasadę ciągłości, czyli jeśli decydujemy się na stroje to wszyscy punktowi powinni jakieś stroje mieć. Oczywiście, jeśli mamy w drużynie kogoś kto zajmuje się cosplayem, może mieć on bardziej zaawansowany strój niż reszta punktowych, ale mimo to reszta również powinna jakieś mieć. </p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Listy, wiersze"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Pomagają one budować fabułę. Oczywiście jeśli coś jest zatytułowane jako wiersz dobrze, żeby rzeczywiście nim było.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Nagrania głosowe"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Można stworzyć krótkie słuchowisko wprowadzające do fabuły, nagranie rozmowy telefonicznej czy wiele innych. Ogranicza nas jedynie nasza kreatywność. Nagrania możemy wykonać na przykład za pomocą programu audacity.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Filmiki"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Takie nagrania są bardzo często dużo bardziej angażujące niż listy, zwłaszcza jeśli podłożysz pod nie dobrą muzykę. Jest taka nawet na darmowych licencjach. A proste programy do montażu są dostępne nawet na telefon.</p>"
        }        ElementListyNoImage
        {
            color: "green"
            header: "Gawędy"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Świetnie się sprawdzają jako podsumowanie całodziennej gry terenowej na obozie lub biwaku.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Ozdobne mapy"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Średniowieczna mapa z google? Nie wygląda to najlepiej. Dużo lepiej przygotować prosty szkic z jakąś łacińską sentencją w tytule i dodatkowo postarzyć ją herbatą.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Posty na facebooku czy instagramie z zapowiedzią zbiórki"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Dużą rolę we wczuciu się w grę pełni nastawienie. Jeśli ktoś już wcześniej będzie zainteresowany tematem to dużo chętniej weźmie w samej grze.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Klimatyczne miejsca"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Nie ma lepszego miejsca na grę średniowieczną niż ruiny zamku… no chyba, że po prostu macie zamek.</p>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "<h3>Jak wykorzystywać stroje na zbiórkach?</h3>"
        }
        ElementListyNoImage
        {
            color: "green"
            header: "Spójna z mechaniką gry i ze samą sobą."
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            header: "<p>Poinformować o konieczności ich przygotowania co najmniej z tygodniowym wyprzedzeniem.</p>
<p>Stroje powinno się dać wykonać z łatwo dostępnych materiałów.</p>
<p>Harcerzom musi być w nich wygodnie, bo inaczej nie będą mogli zaangażować się w grę. Stroje powinny umożliwiać na przykład bieganie. Muszą też być dopasowane do terenu gry i warunków pogodowych, bo inaczej skończymy jak Edifis i zakrzykniemy “Co to za miejsce nie do życia?”. </p>"
        }
        }
    }

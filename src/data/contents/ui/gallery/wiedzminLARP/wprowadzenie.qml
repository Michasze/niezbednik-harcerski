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
    id: page
    title: "Wprowadzenie"
    Controls.Pane
    {
        Column
        {
            spacing: 10
            width: parent.width
            ElementListyNoLayout {
                color: "black"
                alignH: Text.AlignJustify
                header: "Dokładnie wiosnę temu do waszej wioski trafiła piękna młoda kobieta. Była obiecującą zielarką. Od razu przyciągnęła uwagę wśród młodych mężczyzn. Wielu próbowało ją zachwycić, ale żadnemu się to nie udało. Dopiero druid Myszowór był w stanie tego dokonać. Przyniósł jej najpiękniejszy z kwiatów do jej małego zielonego ogródka. W zamian za podarek zielarka poszła z nim na przechadzkę po lesie. Następnego dnia musiała wyjechać z wioski, ale obiecała, że wróci z następną wiosną. Myszowór obiecał, że będzie na nią czekać. Następna wiosna przyszła i była piękniejsza niż zwykle. Wiśnie zakwitły wcześniej i wszędzie unosiły się białe płatki kwiatów. Zielarka jak obiecała, tak zrobiła i niedługo po pierwszych kwitnących chabrach przybyła do wioski. Pełna uśmiechu i radości wkroczyła do domu Myszowora. Kilka dni później całą wioskę w nocy obudziły krzyki i płacz. Wszystkie te odgłosy dochodzi ze  skraju lasu. Cała wioska zebrała się, żeby przyglądać się widowisku. Jednak kiedy tam dotarli zobaczyli Myszowora trzymającego małe zawiniątko oraz płaczącą zielarkę. Krzyczała ona do Myszowora: ”Jesteś taki jak inni, patrzysz tylko oczami, a przecież wiesz o wiele więcej”. Po tych słowach obróciła się w stronę ludzi z wioski. Patrząc na nich ze złością mówiła: „Wy nie jesteście też lepsi, zapłacicie za wszystko co mi wyrządziliście”. Okazało się, że zielarka była potężną czarownicą, przeklęła wszystkich, którzy mieszkali w wiosce, a słowa klątwy brzmiały tak:"
            }
            ElementListyNoLayout {
                color: "black"
                alignH: Text.AlignJustify
                header: "<i>„Staniecie się demonami z waszych najgorszych koszmarów. Nie będziecie pamiętać jacy byliście  przedtem, ani co się wydarzyło. Będziecie odczuwać tylko strach, będziecie nieustannie dążyć do wykonania celu, tylko to przyniesie wam ukojenie. Każdemu z was zostawię jedno wspomnienie o  mnie. Wrócicie do dawnej swej postaci, jak odkryjecie prawdę.”</i>"
            }
        }
    }
}

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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls

HPSPage {
    id: page
    title: "Andrzej Małkowski"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            HPSIconNoLayout {
                source: "image://images/Andrzej_Malkowski.jpg,10"
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
                header: "Andrzej Juliusz Małkowski urodził się 31 października 1888 roku w Trębkach, zmarł 16 stycznia 1919 roku w Zatoce Mesyńskiej.

Jego ojciec brał udział w powstaniu styczniowym, za co Małkowscy byli represjonowani. Już w szkole wykazywał duże zainteresowanie działalnością społeczną i został współzałożycielem abstynenckiej organizacji “Młodzież”. Studiował we Lwowie, ale studiów nie ukończył. Należał do organizacji takich jak “Eleusis”, “Zarzewie” czy “Sokół”.

Był elewem w Organizacji Armii Polskiej, gdzie za dwukrotne spóźnienie, musiał przetłumaczyć kawałek “Scouting for boys”. Książka ta wzbudziła w Małkowskim chęć do przeniesienia skautingu na polskie ziemie.

W 1911 roku przeprowadził pierwszy kurs skautowy we Lwowie. Rozpoczął też wydawanie czasopisma “Skaut”, które stało się nośnikiem idei ruchu skautowego. Był on inicjatorem wprowadzenia abstynencji w Polskiej wersji prawa skautowego. Widział on szansę w idei skautowej na odrodzenie młodzieży. Drużyny i zastępy, które tworzył nie składały się jedynie z wzorowych dzieci. Znajdowała się tam również trudna młodzież na przykład chłopcy odpowiedzialni za napad. Wizytował również drużyny i zastępy, między innymi zastęp skautowy utworzony przez Stefana Grota Roweckiego.  W 1912 roku Małkowski wyjechał do Londynu, gdzie zbierał informacje do swojej książki. Kiedy wrócił na ziemie polskie został jednak odsunięty od pracy w Naczelnej Komendzie Skautowej i czasopiśmie “Skaut”."
            }
            HPSIconNoLayout {
                source: "image://images/Andrzej_Malkowski2.jpg,10"
                fillMode: Image.PreserveAspectFit
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
                header: "W 1913 roku wziął ślub z Olgą Drahonowską w Zakopanem, ślubu udzielił im ksiądz Kazimierz Lutosławski. Tam razem tworzyli niezależny ośrodek skautowy.

Kiedy wybuchła I wojna światowa Małkowski wstąpił do Legionów Piłsudskiego. W trakcie służby zachorował na tyfus. Wyjechał na kurację do Zakopanego, gdzie nie zaprzestał działalności niepodległościowej. Próbował on utworzyć niepodległą Rzeczpospolitą Podhalańską. Z powodu zagrożenia represjami musiał wyjechać za granicę: najpierw do Anglii, potem do Stanów. W obu tych miejscach tworzył drużyny skautowe. Następnie wyjechał do Kanady, gdzie po ukończeniu szkoły wojskowej walczył w ramach armii kanadyjskiej we Francji. Trafił do armii Generała Hallera, który oddelegował Małkowskiego do Odessy, aby ten pomógł przy ewakuacji znajdujących się tam Polaków.

Małkowski wypłynął z Marsylii na statku “Chaouia”. Statek uderzył w zabłąkaną na morzu minę i zatonął w pobliżu Messyny. W katastrofie zginęło ponad czterysta osób. Ciała Małkowskiego nigdy nie odnaleziono."
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignHCenter
                format: Text.PlainText
                header: "Juliusz Idzikowski"
            }
        }
    }
}

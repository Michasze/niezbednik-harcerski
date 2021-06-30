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
        id: rozdzial6
        Layout.fillHeight: true
        title: qsTr("Instrumenty metodyczne")
        ColumnLayout {
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p>Instrumenty metodyczne w wielkim skrócie to narzędzia mające  motywować harcerza do samorozwoju i kształtowania siebie.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Próba harcerza</b> - wprowadza młodego człowieka w harcerski świat. Kończąc próbę i znając już podstawy harcersklego działania, harcerz składa uroczyste Przyrzeczenie i otrzymuje Krzyż Harcerski.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Próba wędrownicza</b> - to taki element inicjacji, który przechodzi harcerz który ukończył 16 rok życia i dołącza do grona wędrowników. Otwierana po złożeniu Przyrzeczenia (są drużyny, które łączą obie te próby). Próby są tworzone w drużynach, zazwyczaj zawierają zadania związane z filarami wędrownictwa, a ich najważniejszym punktem jest wyczyn. Drużyna może wymagać opiekuna próby, jednak nie musi. Zawsze jest ona otwierana rozkazem drużynowego - jeśli przy drużynie działa Kapituła Stopni Wędrowniczych, próba otwierana jest na jej wniosek. Celem próby jest uświadomienie harcerza na czym polega wędrownictwo, wprowadzenie do sposobu pracy. Trwa od 3 do 6 miesięcy. Otwiera drogę do zdobycia stopni wędrowniczych, czyli...</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Stopnie wędrownicze</b> - Harcerz Orli/Harcerka Orla i Harcerz Rzeczypospolitej/Harcerka Rzeczypospolitej - próba jest indywidualna, wraz z opiekunem próby harcerz dopasowuje do siebie zadania, na podstawie wymagań próby. Otwieranie i zamykanie odbywa się na takiej samej zasadzie, jak naramiemnik. Kapituła może wymagać wniosku o otwarcie i zamknięcie, a także sprawozdania z przebiegu próby.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Uprawnienia, odznaki, sprawności</b> - jednym słowem, wyższy level zdobywania umiejętności. Wiążą się one z pasjami wędrowników, np. kurs pierwszej pomocy, kurs Kwalifkowanej Pierwszej Pomocy (18+), kurs pilotażu szybowcowego, kurs operatora ścianki wspinaczkowej, patent żeglarski odznaki PTTK a także sprawności mistrzowskie — Trzy Pióra, Kartograf — czego wędrownicza dusza zapragnie!</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Znaki służb</b> - uczą pracy w zespole i przygotowują do podjęcia stałej służby. Można zdobywać je zastępem lub w tzw. patrolach zadaniowych, czyli grupce kilku osób. Wędrownicy przygotowują plan zdobywania znaku służby i po zatwierdzeniu go przez radę drużyny realizują zadania w czasie od kilku miesięcy do roku. Po zrealizowaniu zadań podsumowują pracę i dokonują samooceny. Końcowo zwracają się do rady drużyny, a ta rozpatruje i - mam szczerą nadzieję że w 100% przypadków - zamyka pozytywnie. Obecnie Jest ich 10 możliwych do zdobycia:<br><br>

- znak służby dziecku<br><br>

- znak służby gospodarce<br><br>

- znak służby kulturze<br><br>

- znak służby nauce<br><br>

- znak służby pamięci<br><br>

- znak służby przyjaźni<br><br>

- znak służby przyrodzie<br><br>

- znak służby turystyce<br><br>

- znak służby wspólnocie lokalnej<br><br>

- znak służby zdrowiu</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Stopnie instruktorskie</b> — w gestii wędrowników zasadniczo leży pierwszy z trzech, czyli przewodnik/przewodniczka. Wiele zależy tutaj od Hufcowej Komisji Stopni Instruktorskich. Osoba, która chce otworzyć stopień przewodnika musi ukończyć 16 rok życia, znaleźć opiekuna (w tym przypadku osoba w stopnu minimum podharcmistrza), rozpisać zadania i stawić się na posiedzeniu KSI. Dalej już tylko z górki - realizacja zadań, wniosek o zamknięcie... I przyjęcie na siebie obowiązków instruktora Związku Harcerstwa Polskiego.</p>"
          }
        }
    }

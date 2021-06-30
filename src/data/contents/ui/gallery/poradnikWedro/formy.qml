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
        id: rozdzial6
        Layout.fillHeight: true
        title: qsTr("Wędrownicze formy pracy")
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        ColumnLayout {
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Burza mózgów</b> - pobudzająca kreatywność i angażująca forma pracy, pozwalająca wykreować wiele pomysłów. Można połączyć ją z tworzeniem map myśl.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Dyskusja</b> - może odbywać się na przeróżne tematy. Poznajemy punkt widzenia innych ludzi, przedstawiamy swój. Każdy prowadzi dyskusje w życiu - nawet nieświadomie. Ważne jest, aby prowadzący pilnował czasu i kultury wypowiedzi.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Studium przypadku</b> - forma dyskusyjna, której założeniem jest rozważanie pewnego problemu na podstawie przykładu wziętego z życia i wypracowaniu dalszego ciągu historii, sformułowania lub rozwiązania zawartego w niej problemu.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Scenka, pantomima, drama</b> - czyli formy ekspresji ruchowej.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Spotkanie z ekspertem</b> - ratownik, cieśla, malarz, muzyk, policjant, strażak, żołnierz — szukajcie a znajdziecie. Bardzo często rodzice i znajomi wędrowników są chętni żeby pokazać i opowiedzieć o swoim fachu.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Kuźnica</b> - jedna z najbardziej charakterystycznych form wędrowniczej pracy. Jest refleksyjna, obrzędowa. Jej zasady są bardzo konkretne - każdy ma prawo do wypowiedzenia własnego zdania, kolejne wypowiedzi nie mogą być komentarzem czy osądem poprzedniej opinii (nie komentujemy słów poprzednika, a wyrażamy czysto swoje zdanie) — a wszystko, co zostaje powiedziane pozostaje w kręgu uczestników.</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Ogniobranie</b> - to kolejna refleksyjna forma, często organizowana np podczas nadania naramiennika wędrowniczego. Zazwyczaj idzie się z punktu do punktu, w którym zapalony jest ogień/świeca, a każdemu z nich towarzyszy jakaś forma przemyśleń - wygłaszana gawęda, zadawane pytania, czytane cytaty (z rozwieszonych karteczek).</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p><b>Wędrówka fizyczna</b> - może mieć różne cele, rozwój siły fizycznej, poznanie nowych miejsc, stworzenie więzi, etc...</p>"
          }
          ElementListyNoImage
          {
             color: "#FF003c00"
             align: 0
             header: "<p>Powyższe formy są charakterystyczne dla metodyki wędrowniczej, Co nie oznacza, że nie możesz wprowadzać swoich lub korzystać z form ogólnych dla metodyk: gra strategiczna, gawęda, piosenka, majsterkowanie, gra terenowa, zwiad, ognisko, manewry (np. z I pomocy), warsztaty, RPG, pląs, InO, akcja zarobkowa, śpiewogranie, zbiórka w terenie i wiele innych.<br><br>
Rozbudowane opisy powyższych i mniej znanych wędrowniczych form pracy znajdziesz tutaj:<br><br>
<i>http://cbp.zhp.pl/wp-content/uploads/2018/01/Formy-pracy-w-drużynie-wędrowniczej.pdf</i></p>"
          }
        }
    }

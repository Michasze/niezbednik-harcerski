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
    title: "Najważniejsze daty"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            Repeater {
                model: ["Narodziny Generała Roberta Baden Powella <b>22 lutego 1857</b>",
                        "Bitwa o Mafeking <b>1899</b>",
                        "Pierwszy obóz skautowy na wyspie Brownsea <b>1907</b>",
                        "Wydanie książki “Scouting for boys” <b>1908</b>",
                        "Powstanie pierwszych drużyn skautowych na ziemiach polskich <b>1909</b>",
                        "Andrzej Małkowski przetłumaczył “Scouting for boys” <b>1909</b>",
                        "Pierwsza Wojna Światowa <b>1914-1918</b>",
                        "Założenie Związku Harcerstwa Polskiego <b>1-2 listopada 1918</b>",
                        "Powstanie World Organization of the Scout Movement (WOSM) <b>1922</b>",
                        "Powstanie World Association of Girl Guides and Girl Scouts (WAGGGS) <b>1928</b>",
                        "Jubileuszowy Zlot w Spale <b>1935</b>",
                        "Wybuch II Wojny Światowej 1-ego września <b>1939</b>",
                        "Atak Związku Radzieckiego na Polskę <b>17 września 1939</b>",
                        "Przejście harcerstwa do konspiracji <b>27 września 1939</b>",
                        "Przyjęcie przez konspiracyjne harcerstwo kryptonimu Szare Szeregi <b>1940</b>",
                        "Akcja pod Arsenałem “Meksyk II” <b>26 marca 1943</b>",
                        "Powstanie Warszawskie <b>od 1 sierpnia do 3 października 1944</b>",
                        "Rozwiązanie Szarych Szeregów przez naczelnika Floriana Marciniaka <b>18 stycznia 1945</b>",
                        "Usunięcie ZHP ze struktur WOSM i WAGGGS <b>1947</b>",
                        "Bezprawne wcielenie ZHP do Związku Młodzieży Polskiej <b>1950</b>",
                        "Przywrócenie działalności ZHP <b>1956</b>",
                        "Utworzenie Nieprzetartego Szlaku <b>1958</b>",
                        "Powstanie Kręgu Instruktorów Harcerskich im. Andrzeja Małkowskiego <b>1980</b>",
                        "Powstanie ZHR I ZHP-1918 <b>1989</b>"]
                delegate: ElementListyNoLayout {
                    header: "• " + modelData
                }
            }
        }
    }
}

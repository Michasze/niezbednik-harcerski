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

HPSPage {
    id: page
    title: "gen. \"Nil\""
    Controls.Pane
    {
        Column {
            spacing: 10
            anchors.fill: parent
            Image {
                source: "image://images/Nil.jpg,10"
                sourceSize.width: isHorizontal ? page.height / 3 : page.width / 2
                width: isHorizontal ? page.height / 3 : page.width / 2
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
                header: "August Emil Fieldorf pseudonim ”Nil” urodzony 20 marca 1895 roku w Krakowie. Dowódca Kedywu, zastępca Komendanta Głównego Armii Krajowej, dowódca organizacji  ”NIE”.

Swoją służbę wojskową rozpoczął w 1914 roku wstępując do 1 Brygady Legionów, którą dowodził sam Józef Piłsudski. Następnie po zakończeniu I Wojny Światowej, kontynuował swoją karierę, brał między innymi udział w wojnie polsko - bolszewickiej (1919-1920). Po klęsce jego oddziałów w Kampanii Wrześniowej (1939), przedostał się do Francji, gdzie został wyznaczony emisariuszem Rządu i Naczelnego Wodza w kraju. Po powrocie do Polski działał w Związku Walki Zbrojnej, następnie został wyznaczony dowódcą Kedywu Komendy Głównej Armii Krajowej. Był odpowiedzialny za organizację wykonywania wyroków na najgroźniejszych niemieckich oficerach, takich jak brawurowa akcja likwidacji Franza Kutschery, dowódcy SS i Gestapo w Dystrykcie Warszawskim."
            }
            Image {
                source: "image://images/Nil3.jpg,10"
                sourceSize.width: isHorizontal ? page.height / 2 : page.width - 50
                width: isHorizontal ? page.height / 2 : page.width - 50
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
                header: "Po upadku Powstania Warszawskiego został aresztowany przez NKWD pod fałszywym nazwiskiem. Został zesłany na Ural gdzie przebywał, aż do 1947 roku, w którym powrócił do Polski. Nie chciał już kontynuować walki konspiracyjnej. Ujawnił się w 1948 roku podczas amnestii. Mimo to, że podał swoje prawdziwe dane został wpisany do ewidencji Rejonowej Komendy Uzupełnień pod przybranym nazwiskiem. Po kolejnej próbie podania w RKU swoich prawdziwych danych został aresztowany przez UB. Był wielokrotnie torturowany, ale wciąż odmawiał współpracy.
W wyniku nieuczciwego procesu został skazany na śmierć za wydawanie rozkazów likwidacji ”sojuszniczych” partyzantów radzieckich. Wyrok śmierci przez powieszenie wykonano 24 lutego 1953 roku."
            }
            ElementListyNoLayout
            {
                alignH: Text.AlignHCenter
                format: Text.PlainText
                color: "Black"
                header: "Juliusz Idzikowski"
            }
        }
    }
}

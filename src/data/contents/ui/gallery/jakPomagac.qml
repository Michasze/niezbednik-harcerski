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
import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls

HPSPage {
    title: "Jak pomagać uchodźcom?"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyNoLayout {
                color: "green"
                header: "1.Uśmiech na twarzy."
            }
            ElementListyNoLayout {
                color: "black"
                header: "To czyni cuda, zarówno wśród innych wolontariuszy, uchodźców czy pracowników."
            }
            ElementListyNoLayout {
                color: "green"
                header: "2.Mundur."
            }
            ElementListyNoLayout {
                color: "black"
                header: "Zdecydowanie chętniej pytano osoby, które noszą jakiś mundur."
            }
            ElementListyNoLayout {
                color: "green"
                header: "3.Tłumacz"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Warto się zaopatrzyć w tłumacza Google z językiem ukraińskim i rosyjskim"
            }
            ElementListyNoLayout {
                color: "green"
                header: "4.Igła do tacek z kartami sim."
            }
            ElementListyNoLayout {
                color: "black"
                header: "Na dworach są darmowe punkty, gdzie Ukraińcy otrzymują startery. Dlatego igły do otwierania tacek są na wagę złota. Chociaż spinacz do papieru czy cienki drucik od kluczy też daje radę."
            }
            ElementListyNoLayout {
                color: "green"
                header: "5.Rozkład jazdy"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Warto zainstalować na telefonie aplikację z rozkładem jazdy kolei czy np. jak dojadę."
            }
            ElementListyNoLayout {
                color: "green"
                header: "6.Paczka chusteczek w kieszeni"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Czasem będziemy świadkami różnych emocji."
            }
            ElementListyNoLayout {
                color: "green"
                header: "7.Picie"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Butelka wody albo termos z kawą dla nas 😉."
            }
            ElementListyNoLayout {
                color: "green"
                header: "8.Link z ważnymi informacjami"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Przyda się zapisany w telefonie link do strony internetowej na której znajdują się ważne informacje dla uchodźców np. informacje o lekarzach, darmowych przejazdach czy lokalnych centrach pomocy."
            }
            ElementListyNoLayout {
                color: "green"
                header: "9.Numer do konsulatu"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Warto mieć zapisany numer do najbliższego konsulatu."
            }
            ElementListyNoLayout {
                color: "green"
                header: "10.Telefony od rejestrowanych kierowców"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Jeśli pojawią się w waszym punkcie kierowcy, którzy są gotowi zawieźć uchodźców gdzieś na granicę do Niemiec, Włoch czy Hiszpanii, koniecznie zbierajcie od nich numery telefonów. Oczywiście, jeśli są rejestrowani w bazach kierowców."
            }
            ElementListyNoLayout {
                color: "green"
                header: "11.Miejsca siedzące"
            }
            ElementListyNoLayout {
                color: "black"
                header: "W wielu pociągach szybko brakuje miejsc siedzących. A dalekobieżne pociągi jadą niekiedy po kilka-kilkanaście godzin i uchodźcy boją się, że np. ich starsi krewni nie będą mogli usiąść całą drogę. Oczywiście należy im też mówić, że w takiej sprawie można się też zwrócić do obsługi pociągu, jednak trzeba zrozumieć, że mogą się oni bać takiej podróży zwłaszcza jeśli nie mówią po polsku i angielsku."
            }
            ElementListyNoLayout {
                color: "green"
                header: "12.Ukraińskie jedzenie i nie tylko"
            }
            ElementListyNoLayout {
                color: "black"
                header: "Jeśli ktoś będzie was pytał, jakie rzeczy kupić dla Ukraińców warto zaproponować kupienie jakichś rzeczy ukraińskich. Nie tylko dlatego, że wspieramy ich gospodarkę, ale również dostają oni jedzenie do którego są przyzwyczajeni. Tak podpowiadał wczoraj jeden z Ukraińców mieszkających w Polsce, który przyniósł sporo rybnych konserw."
            }
        }
    }
}

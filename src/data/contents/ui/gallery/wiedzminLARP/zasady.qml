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
    title: "Zasady"
    Controls.Pane
    {
        Column
        {
            spacing: 10
            width: parent.width
            ElementListyNoLayout {
                color: "Green"
                alignH: Text.AlignJustify
                header: "Aby wydobyć informację od leśniczego demony muszą wykonać zadania:"
            }
            Repeater {
                model: ["Opowiedzieć jak poprawnie rozpalić ognisko w lesie.",
                        "Muszą narysować 5 zwierząt występujących w lasach Słowian.",
                        "Muszą stworzyć zielnik z 7 roślinami i go opisać."]
                delegate: HPSLista {
                    label: modelData
                }
            }
            ElementListyNoLayout {
                color: "Green"
                alignH: Text.AlignHCenter
                header: "Informacje:"
            }
            ElementListyNoLayout {
                color: "black"
                alignH: Text.AlignJustify
                header: " Z całej historii możesz powiedzieć im tylko 3 rzeczy.<br><br>
Zielarka przybyła do wioski cztery wiosny wcześniej. Przybyła leczyć ludzi w czasie wielkiego strachu. W tym czasie jedna z czarownic wybiła kilka wiosek i ludzie byli przerażeni. Zielarka sprawnie leczyła ludzi i wielu jej ufało. Zimą w wiosce pojawiła się bardzo ciężka choroba, która zabierała nawet silnych mężczyzn. Poproszono zielarkę o pomoc. Dobrosułka, bo tak się nazywała  zielarka, po zbadaniu chorych wiedziała, że młodzi mężczyźni umierają przez zaklęcie rusałek z pobliskiego lasu. Zachorował także i Myszowór, którego Dobrosułka darzyła sympatią. Dla niego  odkryła przez wioską swą prawdziwą tożsamość, była czarodziejką. Powiedziała, że może usunąć rusałki z lasu, dzięki swojej magii. Kiedy zabiła wszystkie rusałki, klątwa rzucona przez nie została  zdjęta i wszyscy chorzy wyzdrowieli. Ale ludzie z wioski bali się o swoje życie. Do nich również dochodziły wieści o czarownicach, które zabijały całe wioski. W nocy podłożyli ogień pod domek  Dobrosułki. Myszowór uratował ją wtedy. Obiecali sobie wtedy miłość na wieki. Myszoworowi  udało się wyprowadzić Dobrosułkę z wsi i kazał jej uciekać i wrócić z 3 wiosny, kiedy chabry będa  kwitnąć. Nie mogła jednak ona wtedy pokazać, że zna Myszowora. Umówili się więc, że po 3  adoratorach, którzy będą prosić o rękę Dobrosułki, przyjdzie do niej i Myszowór z chabrami."
            }
            ElementListyNoLayout {
                color: "Brown"
                alignH: Text.AlignHCenter
                header: "Czego gracze muszą się dowiedzieć:"
            }
            Repeater {
                model: ["Imię zielarki/czarownicy-Dobrosułka",
                        "Dlaczego tak wybuchła gniewem  na Myszowora",
                        "Czy Myszowór żyje?",
                        "Co trzymał w swoich rękach?",
                        "Bieg prawdziwej historii",
                        "Dlaczego zielarka odtrącała innych chłopców?",
                       "Kto podłożył ogień pod dom zielarki? - Ciechomir"]
                delegate: HPSLista {
                    label: modelData
                }
            }
            ElementListyNoLayout {
                color: "Green"
                alignH: Text.AlignHCenter
                header: "<b>Autor: Agata Węglarz<br>
Redakcja: Juliusz Idzikowski</b>"
            }
        }
    }
}

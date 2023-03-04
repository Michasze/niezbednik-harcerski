/*
 *   Copyright 2023 HPS <aplikacjahps@gmail.com>
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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    title: "Zajęcia na kreatywność"
    ColumnLayout {
        ElementListyNoImage {
            color: "Green"
            format: Text.PlainText
            header: "Metodyka: Wędrownicy, kadra drużyn, instruktorzy"
        }
        ElementListyNoImage {
            color: "Brown"
            format: Text.PlainText
            header: "Forma: Zajęcia warsztatowe"
        }
        ElementListyNoImage {
            color: "royalblue"
            format: Text.PlainText
            header: "Miejsce: harcówka lub inna sala z dostępem do prądu"
        }
        ElementListyNoImage {
            color: "Brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Materiały:"
        }
        Repeater {
            model: ["laptop",
                    "projektor",
                    "prezentacja",
                    "kartki papieru",
                    "długopisy",
                    "piłka"]
            delegate: HPSLista {
                label: modelData
            }
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Czas trwania: około 1,5 godziny"
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Definicje kreatywności:"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Kreatywny według Słownika języka polskiego“tworzący coś nowego lub oryginalnego”."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "W psychologii jest ponad 60 definicji kreatywności, co oznacza, że nawet dla badaczy nadal pozostaje czymś nieuchwytnym i trudnym do jednoznacznego określenia."
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Ćwiczenie trzydziestu kółek:"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "każdy z uczestników ma swoją kartkę, na której rysuje 30 pustych kółek, a następnie jego zdaniem jest zapełnić je przedmiotami, każdy przedmiot jest przypisany tylko do jednej kategorii, wypełniający sami wymyślają kategorię i przedmioty. Ważne jest to, żeby do każdej kategorii był przypisany tylko jeden przedmiot, ale to uczestnicy decydują czy pieczarka jest jedzeniem czy grzybem. Aby ułatwić wymyślanie kolejnych rzeczy można stymulować uczestników poprzez polecenie im np. zwizualizowania sobie swojego pokoju, harcówki i tak dalej. Warto poprosić uczestników o podzielenie się swoimi najciekawszymi pomysłami na kategorie i przedmioty."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Celem zadania jest pobudzenie u uczestników myślenia twórczego już na początku zajęć. Pozwala ono na spojrzeniem na twórczość w sposób prostszy. Powoduje, że widzimy proces twórczy jako oderwany od np. planowania zbiórki. Ważnym jest, aby uszeregować ćwiczenia od najmniej skomplikowanych, do najbardziej skomplikowanych. Nie oznacza to, że najprostsze ćwiczenie będzie jednocześnie najłatwiejszym."
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Metoda odwracania problemu"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Pytania do uczestników (czekamy na jak najwięcej odpowiedzi):"
        }
        Repeater {
            model: ["Co muszę zrobić, żeby iść do szkoły?",
                    "Co muszę zrobić, żeby zaspać na zbiórkę?",
                    "Co muszę zrobić, żeby nie pojechać na biwak?"]
            delegate: HPSLista {
                label: modelData
            }
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Dzięki temu otrzymujemy informację o tym jakie są warunki konieczne do tego, żeby daną czynność wykonać. A to może ułatwić jej realizację, bo jeśli żeby nie pojechać na biwak należy nie złożyć karty biwaku do hufca to, żeby na niego pojechać należy taką kartę złożyć. Podobnie jest z myśleniem problemowym. Czy widzisz jakiś problem w ZHP? Nie? A czy uważasz, że ZHP jest idealne? "
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Burza mózgów"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Zasady:"
        }
        Repeater {
            model: ["nie oceniamy pomysłów",
                    "każdy pomysł warto zapisać",
                    "liczy się ilość pomysłów, a nie ich jakość",
                    "w roju absurdalnych pomysłów, pojawiają się też prawdziwe perełki "]
            delegate: HPSLista {
                label: modelData
            }
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Warto podzielić uczestników na grupy 2-3 osobowe."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Temat burzy mózgów: Jak prowadzić kawiarnię?"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Po czasie na burzę mózgów (10 minut), prosimy grupy o odczytanie, ale o pomijanie pomysłów, które odczytały już osoby ze wcześniejszych grup."
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Szybka piłka"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Uczestnicy ustawiają się w koło. Rzucają piłkę do wybranej przez siebie osoby, a ta osoba ma za zadanie podać słowo na daną literę. Prowadzący co kilka rzutów zmienia literę. Jeśli ktoś złapie piłkę i w przeciągu 3 sekund nie poda słowa i nie odrzuci piłki, to wypada z kręgu."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Zadanie ma na celu trochę rozruszać uczestników, a jednocześnie możemy na chwilę oderwać się od tych już bardziej skomplikowanych tematów. Jeśli gra idzie zbyt łatwo, możemy wymieniać imiona lub miejscowości na daną literę."
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Skąd czerpać inspiracje?"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Po zadaniu pytania czekamy na odpowiedzi uczestników, a następnie warto podać jeszcze kilka:"
        }
        Repeater {
            model: ["Pinterest",
                    "Centralny Bank Pomysłów ",
                    "Instagramy i facebook drużyn",
                    "Filmiki z różnych gier i uroczystości",
                    "Od innych osób robiących podobne rzeczy",
                    "Aplikacje harcerskie",
                    "Seriale i filmy",
                    "Zainteresowania nasze lub harcerzy",
                    "Książki, prasa",
                    "Propozycje programowe",
                    "Kursy, szkolenia, warsztaty"]
            delegate: HPSLista {
                label: modelData
            }
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Analiza filmiku"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.StyledText
            header: "Uczestnicy oglądają filmik i mają za zadanie wypisać jak najwięcej aktywności w których biorą udział harcerze. Będą mogli sami je wykorzystywać podczas swoich zbiórek, a dodatkowo jest to nauka analizowania obrazu i tego co się na nim dzieje. Dzięki temu łatwiej będzie później szukać inspiracji, a pobudza kreatywność.

<a href=\"https://www.youtube.com/watch?v=ysBqVL9kMUE\">link</a>

Oglądamy filmik wcześniej, aby być w stanie określić czy uczestnicy coś pominęli."
        }
        ElementListyNoImage {
            color: "brown"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Planowanie zbiórki"
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Dowolny temat, może być absurdalny, dziwaczny itd."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Zbiórka nie musi być konspektem, wystarczy, żeby była planem. Dobrze, żeby zwrócić uczestnikom uwagę na to czy ich pomysł jest bezpieczny. Taki plan będzie wymagał zapewne dopracowania, ale jednocześnie pozwala to na posiadanie zapasowego konspektu, który nam się podoba. Jest to również przełożenie wcześniejszych ćwiczeń na praktykę. Można tutaj zalecić też uczestnikom np. zastosowanie niektórych z wcześniejszych ćwiczeń do przygotowania zbiórki. Dla przykładu, puste koła jako elementy dobrej zbiórki i tak dalej."
        }
    }
}

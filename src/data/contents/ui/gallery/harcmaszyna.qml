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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    title: "Harcmaszyna"
    ColumnLayout {
        Image {
            source: "image://images/harcmaszyna2.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            width: isHorizontal ? page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
        ElementListyNoImage {
            color: "transparent"
            format: Text.PlainText
            header: "W ostatnich latach ulice większych miast są bogato usiane reklamami różnych biegów takich jak Survival Race lub Runmageddon. Popularność tych imprez pokazuje, że cieszą się one dużym zainteresowaniem. I jest to ciekawa forma aktywności, którą można w pewnej części przenieść na grunt harcerski. Jednak należy zwrócić uwagę na kilka ważnych elementów przy przygotowywaniu takiej gry."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Imprezy takie mają często charakter masowy (maratony) lub przynajmniej jest to większa grupa ludzi. Również w tym wypadku będzie konieczne zebranie większej grupy zawodników. Między innymi dlatego, aby uzyskać klimat takich biegów. Wydaje mi się, że taki, że najlepiej będzie się w biegu weźmie udział minimum 20-30 osób. Jednak należy pamiętać, że po trasie muszą być też rozstawieni punktowi."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Klimat! To jest jedna z najważniejszych rzeczy przy organizacji tego typu przedsięwzięć. Oczywiście najważniejsze jest bezpieczeństwo. Jak zbudować więc klimat? Wymyśl nazwy tras np. “Harcmaszyna”, “Harcownik”, “Rekrut” i tak dalej. Trzy trasy, każda z innymi poziomem trudności, aby harcerze nawet Ci młodsi mogli wziąć w niej udział i dobrze się bawić. Harcerze będą mogli sami wybrać trasy, a dzięki temu poczują, że sami są odpowiedzialni za swoje decyzje. Często na biegach stosuje się numery startowe, jeśli macie taką możliwość jest to świetny pomysł, jeśli nie… można użyć markera (taki, który łatwiej będzie zmyć) i każdy z harcerzy może mieć napisany np. numer drużyny i swój numer startowy. My mając dodatkową chwilę czasu rysowaliśmy sobie różne “dziary” wielkie logo drużyny? Sprzedam opla w gazie? A może kocie wąsy? Proszę bardzo! Warto również zapowiedzieć taki bieg wcześniej, dzięki temu np. cały zastęp lub drużyna będzie mogła biec w takich samych koszulkach. Warto to podpowiedzieć drużynowym i zastępowym."
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "I na koniec najważniejsze, wasza postawa i wasz przykład. Organizujesz taki bieg, pokaż swoim harcerzom, że jesteś z nimi. Nie ważne czy robisz to jako drużynowy, oboźny czy inny instruktor. Pobiegnij z nimi, pokaż swoje zaangażowanie w organizację tego wydarzenia. Krzyknij z nimi parę okrzyków, zróbcie sobie wspólne zdjęcie przed biegiem."
        }
        ElementListyNoImage {
            color: "red"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Bezpieczeństwo:"
        }
        Repeater {
            model: ["*harcerze muszą biegać w patrolach minimalnie 2 osobowych",
                    "*punktowi na trasie powinni posiadać telefony i być rozstawieni w miarę równomiernie",
                    "*trasa powinna przebiegać po leśnych ścieżkach i nie przecinać ulic",
                    "*punkty powinny być zaopatrzone w wodę, a harcerze mieć bidony",
                    "*po trasie powinni poruszać się również organizatorzy, można wykorzystać np. jednego z harcerzy nie biorących udziału w grze do jazdy na rowerze, po terenie trasy",
                    "*jeśli po trasie porusza się np. fotograf to powinien mieć on również apteczkę i dodatkową butelkę wody",
                    "*punktowi i obsługa trasy powinna posiadać apteczkę",
                    "*jeśli mamy taką możliwość warto wyposażyć punktowych w PMRki",
                    "*jeśli bieg organizujemy w momencie, gdy harcerze mają dostęp do w pełni naładowanych telefonów, to warto, żeby mieli oni aplikację Life360, która pozwala na dokładną lokalizację uczestników",
                    "*przeszkody powinny być wymagające, ale nie niebezpieczne",
                    "*harcerze powinni poruszać się po trasie w odpowiednim obuwiu, bieganie w trampkach czy glanach po leśnej ścieżce nie jest dobrym pomysłem, nie trzeba mieć specjalnych butów do trailu zwykłe sportowe buty w większości wypadków powinny wystarczyć",
                    "*trasa powinna być dobrze oznaczona, aby nikt się na niej nie zgubił. Nie ma co żałować znaczników",
                    "*dobrze, żeby na którymś z punktów znajdowały się jakieś przekąski, mogą to być batoniki, musy itd."]
            delegate: HPSLista {
                label: modelData
            }
        }
        ElementListyNoImage {
            color: "black"
            format: Text.PlainText
            header: "Trasa niech będzie dużą pętlą tak, żeby nie potrzeba było aż tak wielu punktowych. Harcmaszyna okrąża trasę 3 razy, a inne poziomy 2 razy i raz. Dzięki temu łatwiej będzie też ustalić limit czasowy okrążeń. "
        }
        ElementListyNoImage {
            color: "green"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Przeszkody:"
        }
        Repeater {
            model: ["rzut oszczepem - tak, dobrze myślisz ta stara zniszczona zapałka od dychy wygląda idealnie - zamiast rzucać jak najdalej można rzucać do celu",
                    "skok na wyspy - rozkładasz stare koce lub inne punkty i należy przeskakiwać z jednego na drugi",
                    "skok przez płotki - Ale skąd ja Ci wezmę płotki w lesie cwaniaczku? - można użyć taśmy oznaczeniowe i rozwiesić ją między drzewami",
                    "czołganie - jest i ono - warto wyposażyć punktowego w dodatkową wodę do poprawiania naszej kałuży",
                    "spacer z pieskiem - bierzecie sporą solidną kłodę, która nie będzie się łamać ",
                    "jeśli macie niedaleko zbiornik wodny z bezpiecznym zejście, można wykorzystać go do biegu z miską pełną wody. Uczestnik musi przebiec odcinek z pustą miską potem nabrać wodę i wrócić z miską przynajmniej do połowy napełnioną",
                    "między drzewami można rozwiesić pasy do mocowania ładunku na tirach. Jeden po których będą chodzić harcerze, a drugi który asekuracyjnie trzymają rękami. Można również wykorzystać liny, ale należy pamiętać, że muszą być one bardzo mocne. Linki powinny być rozwieszone nisko, 40-50 centymetrów nad ziemią w zupełności powinno wystarczyć.",
                    "Noszenie baniaków 5-litrów - dla młodszych harcerzy może być jeden, a dla starszych 2. Warto mieć kilka na punkcie, gdyby któryś się przedziurawił gdy komuś wypadnie. ",
                    "Podbiegi wyznaczcie trasę tak, żeby trzeba było podbiec pod bardzo strome wzniesienie. To będzie wycisk!",
                    "Pająk - rozwieszamy linki między drzewami i należy się przeczołgać z jednej strony na drugą bez ich dotknięcia ",
                    "oruszanie się skokami albo skipem? Czemu nie! Punktowy na tym punkcie może zawiesić taśmę wyznaczającą długość odcinka na której wykonuje się ćwiczenie.",
                    "Na ziemi można zaznaczyć pola na które zawodnicy mają skoczyć na jednym z punktów. Coś w stylu podłoga to lawa."]
            delegate: HPSLista {
                label: modelData
            }
        }
        Image {
            source: "image://images/harcmaszyna3.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            width: isHorizontal ? page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
        ElementListyNoImage
        {
            Layout.fillWidth: true
            alignH: Text.AlignHCenter
            format: Text.PlainText
            color: "Green"
            header:"twórcy:
phm. Beniamin Marek, pwd. Juliusz Idzikowski, ćw. Szymon Chmielewski

opisał: Juliusz Idzikowski

zdjęcia: Gabriela Salej"
        }

    }
}

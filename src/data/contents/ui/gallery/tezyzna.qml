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
import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
    title: "Tężyzna fizyczna"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        //visible: !Kirigami.Settings.isMobile ? true : false
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: Units.smallSpacing

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Kirigami.Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Tężyzna fizyczna, czyli inaczej sprawność fizyczna.

Temat ten jest bardzo ważny, zarówno w działaniach zastępu jak i całego harcerstwa. Nie może być poruszany w zbyt wąskiej perspektywie, ponieważ prowadzi to do pominięcia wielu bardzo ważnych informacji, które są z nim związane. Jeśli rozmawiamy o tężyźnie fizycznej nie możemy zapominac na przykład o prawidłowym odżywianiu.

Aktywności fizycznych z którymi kojarzone jest harcerstwo jest bardzo wiele. Prawdopodobnie dominują wędrówki i bieganie. Niestety, ale bardzo często wśród harcerzy występują problemy z tymi aktywnościami. Zmęczenie po kilku kilometrach? Zadyszka po krótkiej przebieżce? Niestety, ale często o tym słyszymy.

Sporym błędem byłoby pominięcie diety. Nie chodzi w żadnym wypadku o zmuszanie naszych harcerzy do liczenia kalorii czy rezygnacji z jedzenia słodyczy. Chodzi o przekazanie podstawowej wiedzy, której nasi harcerze często nie wynoszą z domu czy szkoły. Nie możemy robić tego poprzez nudne wykłady, chociaż czasem warto jest im zwrócić na to uwagę na przykład podczas posiłku. Najlepszy będzie przykład praktyczny.
A taki możemy zaprezentować podczas biwaku, a najlepiej na wszystkich biwakach 
i obozach. Jest to jedna z rzeczy, którą powinniśmy wziąć pod uwagę podczas już na etapie planowania biwaku. Zadbanie o pełnowartościowe posiłki podniesie sprawność naszych harcerzy i ich morale. 

Zdarza się, że nasi harcerze przychodzą na zbiórki pomimo tego, że nie zjedli śniadania czy obiadu. Jest to szkodliwe, zarówno dla nich, jak i dla drużyny. Tacy harcerze będą mieli mniej energii na zbiórkach oraz częściej mogą się pojawiać na przykład przypadki omdleń.
Problemem są też posiłki, które składają się jedynie z samych cukrów. Wywołują tak zwany “sugar rush”, który powoduje nagłego kopa energii, a następnie bardzo duży jej spadek. Dlatego kanapki z dżemem i żelki nie są najlepszym sposobem na rozpoczęcie dnia pełnego aktywności fizycznej. Posiłki powinny być pełnowartościowe zawierać: białko,tłuszcze, cukry (nie tylko te proste), witaminy czy błonnik. Nie wymaga to wielkiej wiedzy, z pomocą przybywa nam wiele aplikacji, które pozwolą nam sprawdzić ile i jakich wartości odżywczych ma dany produkt. Dobrymi aplikacjami do tego są: My Fitness Pal czy Fitatu (chociaż ostatnio jest sporo reklam).

Brak aktywności fizycznej dotyka nie tylko harcerzy, ale całego naszego społeczeństwa. Wynika to z nieumiejętnego gospodarowania czasem spędzonym przed komputerem, a tym wykorzystywanym na aktywność fizyczną. Oczywiście jest wiele problemów z którymi wszyscy się borykamy, dlatego należy dostosowywać aktywność do naszych możliwości. Nikt nie powinien nadwyrężać swojego zdrowia, karygodnym byłoby kazać komuś z chorymi kolanami robić przysiady. Jednocześnie nie powinno wykluczać to na przykład wędrowania, jeśli nie będzie ono szkodzić. Podczas zbiórek możemy wędrować i dzięki temu poprawiać naszą sprawność fizyczną. Wydaje się to oczywiste, że podczas zbiórek wychodzi się do lasu na grę terenową lub do miasta na grę miejską, ale niestety czasem zbyt dużo czasu spędzamy w harcówkach.

Dbanie o naszą aktywność fizyczną to także spacery, czy jazda na rowerze. Jak zachęcić naszych harcerzy do takich aktywności? 
Na przykład poprzez zbieranie geoskrzynek, konkurs fotograficzny na zrobienie zdjęcia ciekawego miejsca w parku i tak dalej.

\"Istotę życia skautowego stanowi pełne tężyzny życie w terenie.\"
Generał Robert Baden-Powell

Dbanie o tężyznę fizyczną to nie tylko sport. To również zwykła aktywność fizyczna, która powinna stać się zdrową codziennością naszych harcerzy, której nie możemy zaniedbywać. Bo kiedy przyjdzie czas sprawdzenia sprawności naszego harcerza ten powinien sobie poradzić.

Juliusz Idzikowski
"
        }
        }
}

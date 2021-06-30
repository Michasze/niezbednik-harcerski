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
import QtQuick 2.15
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

HPSPage
{
 id: page
 title: "Myśmy przyszłością narodu"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
 Controls.Label
 {
  id: tresc
  text: "
Myśmy przyszłością narodu
Pierś nasza pełna jest sił-pełna sił
Doszliśmy Wolności grodu
Naprzód, lecz nigdy w tył-ach nigdy w tył

Laurami przystrójmy głowy
Nie znajmy w życiu swym trwóg- w życiu trwóg

Polskiej ojczystej na mowy
Nie wydrze żaden wróg-żaden wróg

Zdobędźmy skrzydła sokole
Nauce poświęćmy czas-poświęćmy czas
A światło zdobyte w szkole
Nieśmy do ludu do mas-do ludu mas

Laurami przystrójmy głowy
Nie znajmy w życiu swym trwóg- w życiu trwóg

Polskiej ojczystej na mowy
Nie wydrze żaden wróg-żaden wróg

Gotów bądź do twórczej pracy w noc czy dzień

Przeszkód moc przed tobą piętrzy się
Wszystko zwalcz co ci tamować drogę śmie
Naprzód idź i ciosy znóś bez drgnień

Czuwaj! patrz! mocno stój!
Ciało ćwicz! ducha zbrój!
Z całej piersi wołaj-Hej, czuj duch!

Wkoło ciebie tyle bólu nędzy łez
Tyle oczu gasi smutku cień
Wszędzie idź z zapałem wszędzie z pieśnią śpiesz
Naprzód idź nieś pomoc w noc i w dzień 

Czuwaj! patrz! mocno stój!
Ciało ćwicz! ducha zbrój!
Z całej piersi wołaj-Hej, czuj duch!

Hańba tym co głusi są na bratni jęk 
Tonącym Ty dłoń pomocy nieś
Nie zna skaut co przed największym trudem lęk
Młodym jest więc pragnienie pomoc nieść 
Czuwaj! patrz! mocno stój!
Ciało ćwicz! ducha zbrój!
Z całej piersi wołaj-Hej, czuj duch!"
 }
}

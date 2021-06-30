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
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami


HPSPage
{
 id: page
 title: qsTr("Stefan Mirowski - cytaty")
    actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    ColumnLayout {
     id: mainList
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„Prawdziwy autorytet tworzy tylko osobisty przykład, prawdziwość czynów, odpowiedzialność, porządek i konsekwencja.“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„My też jesteśmy „kamieniami rzuconymi na szaniec”. Mamy te same ideały! Nie musimy pięknie umierać. Ale czy umiemy pięknie żyć?“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„Nasz harcerski styl potraktujmy jako wkład w wychowanie obywatelskie, w styl życia współczesnego nam społeczeństwa.“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„„Nie było i nie będzie w harcerstwie lustracji, zaglądania do sumień, do teczek, nie będzie upokarzającego powtarzania Przyrzeczenia. ZHP, jak mało które stowarzyszenie, przeszedł spokojnie przez ferment ostatnich lat… Nie dopuśćmy do działań niezgodnych z Prawem Harcerskim. Oczyszczanie z błędów przeszłości jest procesem długotrwałym… Wiemy, jak dużo mamy jeszcze do zrobienia, ale miejmy świadomość, że w tej wędrówce ku szczęściu jesteśmy na dobrym tropie…“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„Najtrudniej być porządnym człowiekiem, gdy nikt nie widzi.“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„Mieć zaszczyt. Traktować harcerską służbę jako zaszczytny obowiązek, nie oczekując nagród, odznaczeń, wyróżnień. I tylko jedna nagroda za służbę: poczucie spełnionego obowiązku, oceniane we własnym sumieniu. Nie medale, nie premie, nie dyplomy, tylko – a może aż – spokojne sumienie, źródło wewnętrznego zadowolenia, szczęścia. Ku temu zmierza harcerskie, obywatelskie wychowanie.“") 
     }
     Cytat
     {
    autor: "Stefan Mirowski"
    tresc: qsTr("„Jest złudzeniem, że harcerstwo może być apolityczne. Trzeba tylko wyraźnie rozróżnić: czy harcerstwo ma służyć polskiej racji stanu, czy też partykularnym interesom partii politycznych…“") 
     }
       
    }
}

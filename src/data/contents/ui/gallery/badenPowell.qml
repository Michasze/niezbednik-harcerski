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
import org.kde.kirigami 2.13

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Robert Baden-Powell"

/*    actions.main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        }
        */
    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
        Image {
         source: "qrc:/contents/ui/img/bp1.jpg"
          Layout.fillWidth: true
         Layout.maximumHeight: 400
         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Robert Stephenson Smyth Baden Powell - urodził się 22 lutego 1857 roku w Londynie. Jego ojciec był duchownym anglikańskim oraz profesorem geometrii na uniwersytecie w Oksfordzie. Jego matka była wnuczką admirała Williama Smytha. Robert jako dziecko nauczył się grać na pianinie i skrzypcach.

Uczył się w Charterhouse School. Tam w ramach zabaw w przyszkolnym parku, szkolił swoich kolegów w tropieniu i zacieraniu śladów. Po ukończeniu szkoły wstąpił do Royal Military Academy Sandhurst, gdzie dostał się z bardzo dobrymi wynikami. Wybrał służbę w kawalerii, został przydzielony do 13 pułku huzarów stacjonującego w Indiach.

Brał udział w działaniach armii na terenie Afryki i Indii, w tym w Wojnach Burskich. Podczas jednego ze swoich pobytów w Afryce otrzymał przydomek “Impeesa”, czyli “Wilk, który nigdy nie śpi”."
        }
        Image {
         source: "qrc:/contents/ui/img/bp2.jpg"
          Layout.fillWidth: true
         Layout.maximumHeight: 400
         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Settings.isMobile ? 12 : 14
                format: Text.AutoText
                color: "Black"
            header: "Podczas II Wojny Burskiej dowodził Obroną Mafekingu. Jako zwiadowców i łączników wykorzystywał wtedy chłopców podzielonych na małe grupy. Napisał książkę “Wskazówki dla zwiadowców”, która była wykorzystywana jako podręcznik dla żołnierzy, ale też wykorzystywały ją organizacje młodzieżowe. W 1907 roku zorganizował eksperymentalny obóz na wyspie Brownsea. Testował tam między innymi system małych grup, czyli system zastępów. Na podstawie swoich doświadczeń wydał w 1908 roku książkę Scouting for boys. Chciał on zapewnić młodzieży z wielkich miast lepszy kontakt z naturą.

W 1909 został założony Ruch Skautek, który prowadziłą siostra Baden Powella, na jego prośbę. W 1912 roku ożenił się z Olave. Poznał ją na statku płynącym do Nowego Jorku.

W momencie wybuchu I Wojny Światowej chciał służyć w armii brytyjskiej, ale jego zwierzchnicy zadecydowali, że powinien jednak zajmować się w tym czasie ruchem skautowym.

Na pierwszym Jamboree w 1920 roku został wybrany pierwszym skautem świata. Za swoją pracę skaut otrzymał tytuł lorda Gilwell.

W 1939 roku wyjechał na leczenie do Kenii, gdzie zmarł w 1941 roku


Juliusz Idzikowski"
        }
    }
}

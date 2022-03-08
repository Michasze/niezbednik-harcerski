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
import Filter 1.0
import HPSCardModel 1.0

HPSPage
{
    id: page
    property string tytul
    property string query
    title: tytul
    //HACK nie wiem jak doładować dynamicznie zawartość więc załadujmy model
    //dopiero po zmianie języka. To w sumie niespecjalnie rozwiązuje problem
    //ale może do następnej wersji coś wymyślę

    HPSCardModel
    {
        id: categoryModel
    }
    Controls.Pane
    {
        Column {
            anchors.fill: parent
            spacing: 10
            ElementListyImageNoLayout {
                id: postacie
                visible: page.title === qsTr("Historia")
                height: 150
                ikona: "image://images/Baden-Powell.jpg,20"
                isUrl: false
                odnosnik: "postacie.qml"
                header: "Postacie"
            }
            HPSFilter
            {
                id: filteredModel
                sourceModel: categoryModel
                filterRole: "category"
                secondRole: ""
                filterRegularExpression: RegExp("%1".arg(page.query), "i")
            }
            Repeater {
                model: filteredModel
                delegate: KartaStronaNoLayout {
                    header: model.header
                    opis: model.description
                    ikona: model.image
                    adres: model.address
                }
            }
        }
    }
}

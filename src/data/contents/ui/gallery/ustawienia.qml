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

HPSPage {
    id: page
    Layout.fillWidth: true
    title: qsTr("Ustawienia")
    ColumnLayout
    {
        Controls.Label
        {
            text: qsTr("Pokazuj:")
        }
        HPSCheckBox
        {
            id: box1
            checked: !hpsSettings.neverShowIsToggled ? true : false
            tresc: qsTr("Wiadomość powitalną")
            onToggled:
            {
                if(box1.checked == true)
                {
                    hpsSettings.neverShowIsToggled = false
                }
                else
                {

                    hpsSettings.neverShowIsToggled = true
                }
            }
        }
        HPSCheckBox
        {
            id: box2
            checked: !hpsSettings.neverShow2IsToggled ? true : false
            tresc: qsTr("Powiadomienie o gestach")
            onToggled:
            {
                if(box2.checked == true)
                {
                    hpsSettings.neverShow2IsToggled = false
                }
                else
                {

                    hpsSettings.neverShow2IsToggled = true
                }
            }
        }
        HPSCheckBox
        {
            id: box3
            checked: !hpsSettings.neverShow3IsToggled ? true : false
            tresc: qsTr("Powiadomienie o kopiowaniu cytatów")
            onToggled:
            {
                if(box3.checked == true)
                {
                    hpsSettings.neverShow3IsToggled = false
                }
                else
                {

                    hpsSettings.neverShow3IsToggled = true
                }
            }
        }
        HPSCheckBox
        {
            id: box4
            checked: !hpsSettings.neverShow4IsToggled ? true : false
            tresc: qsTr("Powiadomienie o kopiowaniu szyfrów")
            onToggled:
            {
                if(box4.checked == true)
                {
                    hpsSettings.neverShow4IsToggled = false
                }
                else
                {

                    hpsSettings.neverShow4IsToggled = true
                }
            }
        }

        /*    HPSCheckBox
              {
              id: box5
              tresc: "Ciemny motyw"
              checked: !hpsSettings.darkThemeIsToggled ? false : true
              onToggled:
              {
              if(box5.checked == true)
              {
              invisibleCheckbox.checked = true
              hpsSettings.darkThemeIsToggled = true
              }
              else
              {
              invisibleCheckbox.checked = false
              hpsSettings.darkThemeIsToggled = false
              }
              }
              } */
        Controls.Label
        {
            text: qsTr("Rozmiar tekstu (bez śpiewnika):")
        }


        HPSRadioButton
        {
            text: qsTr("Bardzo mały")
            checked: hpsSettings.textSize == 10 ? true : false
            onClicked:
            {
                hpsSettings.textSize = 10
                invisibleSlider.value = 10
            }
        }
        HPSRadioButton
        {
            text: qsTr("Mały")
            checked: hpsSettings.textSize == 12 ? true : false
            onClicked:
            {
                hpsSettings.textSize = 12
                invisibleSlider.value = 12
            }
        }
        HPSRadioButton
        {
            text: qsTr("Średni")
            checked: hpsSettings.textSize == 14 ? true : false
            onClicked:
            {
                hpsSettings.textSize = 14
                invisibleSlider.value = 14
            }
        }
        HPSRadioButton
        {
            text: qsTr("Duży")
            checked: hpsSettings.textSize == 16 ? true : false
            onClicked:
            {
                hpsSettings.textSize = 16
                invisibleSlider.value = 16
            }
        }
        HPSRadioButton
        {
            text: qsTr("Bardzo duży")
            checked: hpsSettings.textSize == 18 ? true : false
            onClicked:
            {
                hpsSettings.textSize = 18
                invisibleSlider.value = 18
            }
        }
        ElementListyNoImage
        {
            header: qsTr("Podgląd")
            Layout.fillWidth: true
            textSize: invisibleSlider.value
        }
    }
}

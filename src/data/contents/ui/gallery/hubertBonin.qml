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
import QtQuick.Layouts 1.2

HPSPage {
    id: page
    Layout.fillWidth: true
    title: "Hubert Bonin"
    ColumnLayout {
        width: page.width
        Image {
            source: "image://images/HubertBonin.jpg,10"
            sourceSize.width: isHorizontal ?  page.height / 3 : page.width / 2
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignHCenter
        }
            ElementListyNoImage
            {
                Layout.fillWidth: true
                alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
                header: "Czuwaj! Chciałbym przedstawić wam bardzo ciekawą postać z mojego miasta. Jego życie z pewnością nadawałoby się na film akcji
 
11 listopada jeden z parków w moim mieście otrzyma imię druha Huberta Bonina. 
Harcmistrz Hubert Bonin, założyciel pierwszej drużyny harcerskiej w Bolesławcu, Bolesławieckiej \"Jedynki\". Urodził się 13 września 1912 roku. Naukę w szkole rozpoczął później niż inne dzieci, ponieważ jego rodzice nie chcieli, aby uczył się w języku niemieckim. W 1929 roku wstąpił do VII Bydgoskiej Drużyny Harcerskiej im. Jana Karola Chodkiewicza. Odbył służbę wojskową w kompanii sanitarnej Szpitala Wojskowego w Toruniu. Następnie pracował w drogerii i prowadził drużynę harcerską. W 1939 roku uzyskał stopień podharcmistrza. Uczestniczył w Kampani Wrześniowej, podczas której został pojmany i trafił do obozu jenieckiego. Po zwolnieniu z obozu wstąpił do Szarych Szeregów i Związku Walki Zbrojnej. Pracował przymusowo w fabryce materiałów wybuchowych, ponieważ jego rodzina odmówiła podpisania volkslisty. Dzięki jego informacjom fabryka została wysadzona przez AK. Został pojmany przez Gestapo i torturowany. Następnie on i jego brat zostali załadowani na więzienną barkę, która miała zostać zatopiona na Bałtyku. Hubertowi Boninowi udało się uciec, niestety jego bratu nie.  

Już po wojnie wraz ze swoją przyszłą żoną Jadwigą przybył do Bolesławca, gdzie założył  pierwszą w mieście drużynę harcerską im. Józefa Poniatowskiego. Komunistyczna władza wymusiła zmianę patrona drużyny na Gustawa Morcinka. Hubert Bonin został odsunięty od pracy z młodzieżą. Powrócił dopiero w 1956 roku. 

Nabory do swojej drużyny prowadził chodząc w mundurze po mieście, dzieci zaciekawione mundurem chciały wstępować do harcerstwa. Mieszkańcy miasta często widywali umundurowanych harcerzy, stojących w pocztach podczas wielu uroczystości czy na uroczystościach kościelnych. Mieszkańcy miasta wspominają również przemarsze harcerzy, które były uświetnione przez werblistów. 

Do końca życia wychowywał mieszkańców mojego miasta w duchu przedwojennego harcerstwa. 

Zmarł 26 marca 2008 roku. 


Juliusz Idzikowski"
        }
    }
}

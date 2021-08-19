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

    title: "Ludwik Idzikowski"
    ColumnLayout {
        width: page.width
        spacing: 20
        Image {
            source: "image://images/LudwikIdzikowski.jpg,10"
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
            header: "Ludwik Idzikowski - major Wojska Polskiego, pilot w czasie okresu międzywojennego. Urodził się w Warszawie w 1891 roku.

Maturę zdał w Rosji, później studiował w Belgii na wydziale górniczym. Podczas I wojny światowej trafił do armii rosyjskiej gdzie został przydzielony do lotnictwa. Po rewolucji październikowej (1917) powrócił do Polski gdzie wstąpił do Wojska Polskiego.

Walczył w trakcie wojny polsko-ukraińskiej w obronie Lwowa, w wojny polsko-bolszewickiej latał bojowo przeciwko Rosjanom. Po zakończeniu wojny został instruktorem w Wyższej Szkole Pilotów. W 1926 roku objął dowodzenie nad dywizjonem lotnictwa.  

Następnie został przydzielony do polskiej misji wojskowej zakupów we Francji, gdzie testował samoloty które Polska chciała zakupić. Wpadł on wtedy na pomysł oblecenia Ziemi w kierunku zachodnim, dużo trudniejszym, wymagającym lotu pod wiatr, co jeszcze nikomu się nie udało. Władze zakupiły bombowiec Amiot 123, któremu nadano mu imię “Marszałek Piłsudski”. Idzikowskiego awansowano do stopnia majora oraz przydzielono mu nawigatora  majora Kazimierza Kubalę. 

Wystartowali 3 sierpnia 1928 roku z lotniska znajdującego się niedaleko Paryża. Po kilku godzinach lotu załoga zauważyła uszkodzenie zbiornika oleju i zdecydowała się zawrócić 
w kierunku Europy. Major Idzikowski podjął decyzję o wodowaniu w pobliżu niemieckiego statku. Załoga statku ocaliła lotników oraz zabrała na pokład ich samolot. 
Rok później postanowili powtórzyć próbę. Zakupiono nowy samolot Amiot 123
z mocniejszym silnikiem, został nazwany \"Orzeł Biały\". Wystartowali 13 lipca 1929 roku 
z tego samego lotniska niedaleko Paryża. Po przeleceniu około dwóch tysięcy kilometrów samolot doznał awarii silnika. Zdecydowano lądować na wyspie Graciosa, podczas lądowania samolot natrafił na pas kamieni i doszło do zapłonu silnika. 

W katastrofie 13 lipca 1929 zginął Major Ludwik Idzikowski, a major Kazimierz Kubala odniósł lekkie obrażenia. 

Ciało majora zostało przetransportowane do Polski. Został pochowany na Cmentarzu Powązkowskim.


Juliusz Idzikowski

"
        }
    }
}

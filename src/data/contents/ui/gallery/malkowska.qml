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
    title: "Olga Małkowska"

    ColumnLayout {
        width: page.width
        Image {
         source: "qrc:/contents/ui/img/Olga_Malkowska.jpg"
          Layout.fillWidth: true
         Layout.maximumHeight: 300
         fillMode: Image.PreserveAspectFit
        }
            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Olga Drahonowska urodziła się w Krzeszowicach 1 września 1888 roku. Ojciec jej był pochodzenia ormiańskiego, a matka czeskiego.

Od dziecka wykazywała talent do sztuki: malarstwa, rzeźbiarstwa czy poezji. W “Sokole” była instruktorką: jazdy konnej, pływania czy gimanstyki. W Eleusis poznała Andrzeja Małkowskiego, który zwerbował ją do organizacji niepodległościowej “Zarzewie”.

W 1911 roku we Lwowie została podjęta decyzja o założeniu organizacji skautowej w Polsce. Przeprowadzono pierwszy kurs skautowy, a udało się to dzięki poparciu naczelnika “Sokoła” Kazimierza Wyrzykowskiego. Powstała wtedy również pierwsza Komenda Skautowa. Olga Drahnowska objeła funkcję drużynowej w III Lwowskiej Drużynie Skautek im. Emilii Plater. W 23 numerze “Skauta” opublikowała Ignacego Kozielewskiego “Wszystko co nasze Polsce oddamy” z uzupełnionym refrenem o “Ramię pręż słabość krusz” został on przystosowany do melodii rewolucyjnej pieśni “Na barykady ludu robotniczy”.

W 1913 roku wyjechała do Zakopanego z powodu nacieku płuc. Przyjechali tam również Andrzej Małkowski i ks. Kazimierz Lutosławski. Ksiądz Lutosławski udzielił im tam ślubu. Po wyleczeniu zaczęła prowadzić w Zakopanem drużynę żeńską, a gdy Małkowski wyjechał do Legionów, Olga prowadziła również męską drużynę. Zorganizowała tam również pocztę skautową, jadłodajnię czy organizowała opiekę dla sierot. Pod rozkazami Olgi tworzono tajne magazyny broni w okolicach Zakopanego. Zostały one wykryte przez Austriaków, ale Małkowskim udało się uniknąć aresztowania dzięki ostrzeżeniom górali.

Przez Wiedeń Małkowscy udali się do Stanów Zjednoczonych gdzie Andrzej zaczął tworzyć polonijne drużyny harcerskie. W Stanach urodził się im syn Lutyk. Wyjechała z synem do Szwajcarii, a później do Londynu.

W 1921 roku powróciła do Polski. W Zakopanem prowadziła naukę języka angielskiego i gimnastyki. W 1922 zapoczątkowała szkołę instruktorską dla Instruktorek ZHP. Była komendantką delegacji polskich harcerek na Zlot w Foxlease. W 1927 roku otrzymała stopień Harcmistrzyni Rzeczypospolitej. W 1935 roku pojawiła się na Jubileuszowym Zlocie w Spale.

Po klęsce wojny obronnej polski wyjechała do Anglii w obawie przed prześladowaniami przez Gestapo. Tam prowadziła Dom Dziecka Polskiego. W 1942 roku została powołana na przewodniczącą Komitetu Naczelnego ZHP na czas wojny. Wspierała również działania mające nieść pomoc dzieciom na terenach wyzwalanych spod okupacji niemieckiej.

W latach 1948-1960 prowadziła sierociniec dla polskich dzieci w Wielkiej Brytanii. Powróciła do Polski w 1961 roku. Przez jakiś czas mieszkała we Wrocławiu, a następnie powróciła do Zakopanego. Zmarła w 1979 roku, została pochowana na tamtejszym cmentarzu. "
        }

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                format: Text.PlainText
                color: "Black"
            header: "Juliusz Idzikowski"
        }
    }
}

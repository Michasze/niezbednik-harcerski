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
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2


HPSPage {
    id: page
    title: qsTr("Postacie")
ColumnLayout{
    KartaStrona {
        header: "Robert Baden-Powell"
        opis: "Twórca skautingu"
        ikona: "image://images/Baden-Powell.jpg"
        adres: "badenPowell.qml"
    }
    KartaStrona {
        header: "gen. August Fieldorf pseudonim \"Nil\""
        opis: "Dowódca Kedywu, zastępca Komendanta AK"
        ikona: "image://images/Nil2.jpg"
        adres: "Nil.qml"
    }
    KartaStrona {
        header: "Jan Bytnar \"Rudy\""
        opis: "Komendant hufca \"Ochota\" "
        ikona: "image://images/rudy2.jpg"
        adres: "rudy.qml"
    }
    KartaStrona {
        header: "Andrzej Małkowski"
        opis: " "
        ikona: "image://images/Andrzej_Malkowski.jpg"
        adres: "malkowski.qml"
    }
    KartaStrona {
        header: "Olga Małkowska"
        opis: " "
        ikona: "image://images/Olga_Malkowska.jpg"
        adres: "malkowska.qml"
    }
    KartaStrona {
        header: "Święty Jerzy"
        opis: "Ciekawostki o patronie harcerstwa"
        ikona: "image://images/swJerzy2.jpg"
        adres: "swJerzy.qml"
    }
    KartaStrona {
        header: "Hubert Bonin"
        opis: "O życiu założyciela harcerstwa w Bolesławcu"
        ikona: "image://images/HubertBonin.jpg"
        adres: "hubertBonin.qml"
    }
    KartaStrona {
        header: "Stefan \“Grot\” Rowecki"
        opis: "Dowódca Armii Krajowej, Komendant Związku Walki Zbrojnej"
        ikona: "image://images/Grot2.jpg"
        adres: "Grot.qml"
    }
        KartaStrona {
        header: "Marian Pluciński"
        opis: "pseudonim \"Mściciel\""
        ikona: "image://images/msciciel.jpg"
        adres: "msciciel2.qml"
    }
        KartaStrona {
        header: "Ludwik Idzikowski"
        opis: "Pilot okresu międzywojennego"
        ikona: "image://images/LudwikIdzikowski2.jpg"
        adres: "LudwikIdzikowski.qml"
    }
        KartaStrona {
        header: "Stanisław Skalski"
        opis: "lotnik w Wojsku Polskim w trakcie II wojny światowej"
        adres: "stanislawSkalski.qml"
        ikona: "image://images/Stanislaw_skalski2.jpg"
    }
        KartaStrona {
        header: "Janusz Brochwicz-Lewiński pseudonim \"Gryf\" "
        opis: "żołnierz batalionu AK \"Parasol\""
        adres: "gryf.qml"
        ikona: "image://images/gryf2.jpg"
    }

        KartaStrona { 
        header: "Zabójstwo Władysława Mroza"
        opis: "Porównanie informacji prasowych"
        adres: "zabojstwo_mroza.qml"
        ikona: "image://images/zabojstwo_mroza.jpg"
    }

        KartaStrona { 
        header: "Władysław Mróz"
        opis: "Dowódca I batalionu 5 pułku Strzelców Podhalańskich"
        ikona: "image://images/mroz3.jpg"
        adres: "mroz.qml"
    }


        KartaStronaNoImage { 
        header: "Jan Borysewicz"
        opis: "pseudonim \"Krysia\", \"Mściciel\""
        adres: "msciciel.qml"
    }
}

        
}


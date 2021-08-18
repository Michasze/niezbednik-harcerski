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
import org.kde.kirigami 2.13 as Kirigami
import ".."

HPSPage {
        id: rozdzial5
        Layout.fillHeight: true
        title: qsTr("Formy pracy w zastępie starszoharcerskim")
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: !Kirigami.Settings.isMobile ? true : false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        ColumnLayout {
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Wyobraź sobie dwa brzegi rzeki oraz metalowe przęsła - szkielet mostu zawieszony ponad nurtem. Stoisz na jednym brzegu razem ze swoim zastępem, a po drugiej stronie czeka cel — realizacja zadania w próbie, sprawności, projekcie lub inny cel, który obierzesz sobie na danej zbiórce.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Musicie dostać się na drugą stronę - niby możecie przejść na przełaj, ale jaki to będzie miało sens wychowawczy dla zastępu? Rozwiązaniem są formy pracy. To deski, po których przejdziecie na drugą stronę.</p>"
            }
            ElementListyNoImage {
                color: "#FF003c00"
                align: 0
                header: "<p>Idziesz pierwszy i wykładasz przed stopami kolejne formy pracy, po których Twoi harcerze starsi przechodzą ku celowi.</p>"
            }
            HPSLista {
                label: "film (noc filmowa, seans) - humorystyczny dla integracji, a może poruszający problem środowiska, społeczności, zastępu? YouTube, cda.pl, Netflix, i wiele innych platform, a nawet płyty DVD pozwalają na integrację zastępu i poruszenie ważnych kwestii."
            }
            HPSLista {
                label: "gra strategiczna — kolejny sposób na integrację zastępu połączoną z rozwijaniem umiejętności i wiedzy. Logiczne myślenie, szybkość i spryt harcerzom niestraszne!"
            }
            HPSLista {
                label: "próba - na sprawność, stopień harcerski, instruktorski, naramiennik wędrowniczy..."
            }
            HPSLista {
                label: "gawęda - zazwyczaj o charakterze refleksyjnym, czytana lub opowiadana przy ogniu, skłaniająca do przemyśleń związanych z tematem zbiórki."
            }
            HPSLista {
                label: "piosenka - dobrana odpowiednio do tematyki potrafi poruszyć, rozbawić. Korzystajcie z muzycznych zdolności harcerzy — gitara, keyboard, trąbka, a może jeszcze coś innego? Rozpalcie chęć działania w grajkach!"
            }
            HPSLista {
                label: "scenki — aktywna forma pozwalająca nie tylko ruszyć się z miejsca, ale też rozwinąć kreatywność i umiejętność współpracy. Wcielcie się w rycerzy z 5. punktu Prawa Harcerskiego, w szaroszeregowców z czasów wojny, w kogo tylko chcecie!"
            }
            HPSLista {
                label: "gra terenowa - róbcie je jak najczęściej, w pogodę i niepogodę, w lesie i mieście, po miejscach znanych i takich, które wymagają eksploracji przez nieustraszonych HS-ów! Wszystko w granicach rozsądku, oczywiście :P"
            }
            HPSLista {
                label: "zwiad - forma podobna do gry terenowej, z tą różnicą, że celem nie jest zebranie wszystkich punktów i dojście do mety, ale zebranie jak najwięcej informacji o danym zabytku, charakterystycznym elemencie miasta lub o regionie."
            }
            HPSLista {
                label: "ognisko - chyba każdy kocha chwile przy ogniu spędzone z przyjaciółmi przy dźwięku gitary, wzbogacone fabułą, opowieściami sprzed lat. Jest to jedna z moich ulubionych form pracy i bardzo polecam!"
            }
            HPSLista {
                label: "manewry (np. z I pomocy, ratownictwa taktycznego, kamuflażu, etc.)"
            }
            HPSLista {
                label: "wycieczka - kino, teatr, zoo, escape room, basen, paintball, park linowy - do wyboru do koloru, dobre do integracji i zdobywania fizycznych, a czasem poznawczych umiejętności."
            }
            HPSLista {
                label: "warsztaty - z terenoznawstwa, kartografii, kuchmistrzostwa, ratownictwa — możliwości jest bez liku, a z odpowiednimi ludźmi z wiedzą i przydatnymi kwalifikacjami można naprawdę wiele zdziałać."
            }
            HPSLista {
                label: "wędrówka - paręnaście kilometrów świetnych przeżyć stoi przed Wami otworem!"
            }
            HPSLista {
                label: "ogniobranie - to refleksyjna gra terenowa, zamiast zwyczajowych punktów są rozpalone świece, z cytatami, zdaniami odpowiednimi do tematu."
            }
            HPSLista {
                label: "RPG - można przenieść się do średniowiecza, prehistorii albo przyszłości — wszystko zależy od Was, mistrza gry oraz kostek!"
            }
            HPSLista {
                label: "pląs - każdy z Was zna ich na pewno wiele, działajcie! Poznawajcie też pląsy z innych środowisk, to zawsze fajne doświadczenie."
            }
            HPSLista {
                label: "śpiewogranie - gitara, parę gardeł, świece, śpiewnik - czego chcieć więcej?"
            }
            HPSLista {
                label: "burza mózgów - co zastęp głów, to nie jedna! Macie problem - rozwiąźcie go wspólnie."
            }
            HPSLista {
                label: "dyskusja — świetna do poznania opinii reszty na dany temat, prowadzona z szacunkiem do zdania innych jest bardzo konstruktywna."
            }
            HPSLista {
                label: "spotkanie z gościem - ratownik medyczny, leśnik, informatyk, policjant, dziennikarz, żołnierz - a nuż któryś z rodziców harcerzy lub instruktor z hufca zechce opowiedzieć o swojej profesji albo hobby?"
            }
            HPSLista {
                label: "zbiórka w terenie - nie siedźcie w czterech ścianach, wyjdźcie w świat!"
            }
            HPSLista {
                label: "zbiórka z kodami QR - świetna i inmnowacyjna metoda. Można rozwiesić karteczki z kodami po danym obszarze gry, z zapisanymi w kodzie informacjami, szyframi, wskazówkami do następnego punktu. Wymagane posiadanie przez uczestników co najmniej jednego telefonu z aplikacją do odczytywania kodów QR."
            }
            HPSLista {
                label: "kahoot - kolejna nowoczesna forma pracy; to platforma pozwalająca tworzyć i rozwiązywać quizy w wiele osób. Wymagany 1 telefon na osobę lub zespół, laptop i dobrze jest też dysponować rzutnikiem."
            }
            HPSLista {
                label: "i wiele, wiele więcej - ogranicza Cię tylko Twoja kreatywność!"
            }
        }
    }

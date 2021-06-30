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
import QtGraphicalEffects 1.15

HPSPage {
    id: page
    Layout.fillWidth: true
    //implicitWidth: Units.gridUnit * (Math.floor(Math.random() * 35) + 8)

    title: "Wybór noża"

    actions {
        main: Action {
           iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        }
    }

    ColumnLayout {
        width: page.width
        spacing: Units.smallSpacing
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>Jeśli nie masz ochoty czytać całego poradnika to:</p>"
     }
        HPSLista
        {
            alignH: Text.AlignJustify
            label: "<p>Kup jakąś more. Jeśli nie masz pojęcia czym jest stal węglowa to znak, że powinieneś kupić morę ze stali nierdzewnej.</p>"
        }
        HPSLista
        {
            label: "<p>Nie daj się nabrać na wszelkie super taktyczne tanie noże za 50zł pokroju Kandara. Taki nóż będzie się tępił bardzo szybko, a często zdarza się, po prostu połamie. Dodatkowo zazwyczaj są w kiepskiej jakości parcianych pokrowcach, które nie trzymają noża i łatwo się niszczą przez co szybko go zgubisz.</p>"
        }
        HPSLista
        {
            label: "<p>*Lepiej kupić tanią morę (Companion albo Basic) niż jakiś nóż z bazaru. Takim bazarowym nożem, w dodatku składanym łatwo zrobić sobie krzywdę. No chyba, że traficie na jakiegoś używanego Ka-Bara.</p>"
        }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        header: "<p>Wybór odpowiedniego noża do harcerskiego działania nie jest rzeczą prostą. Zwłaszcza jeśli nie jesteśmy pewni na co zwrócić uwagę. Nóż to przede wszystkim narzędzie, które ma nam służyć. </p>"
        alignH: Text.AlignJustify
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<p>Dlaczego kupić More?</p>
"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Kup morę to chyba jeden z najczęściej słyszanych tekstów na grupach związanych z bushcraftem i survivalem, w pewnym sensie stał się memem. Mory to jedne z najlepszych noży dla początkujących użytkowników. Dlaczego? Są tanie. Nierdzewki są proste w obsłudze, a dodatkowo są dostępne w naprawdę wielu wariantach, które umożliwiają dobranie odpowiedniego do naszych potrzeb. Zwykła mora Companion jest też świetnym nożem, kiedy jeszcze nie wiemy czego od tego narzędzia oczekujemy.</p> "
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Do czego będę wykorzystywać ten nóż?"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>To pytanie praktycznie definiuje to jaki nóż mamy wybrać. Pomaga określić optymalny rozmiar, rodzaj stali czy kształt noża.</p>
<p>Obieranie ziemniaków Glockiem nie należy do moich ulubionych zajęć. Chociaż znam takich co opanowali to do perfekcji. Z kolei próby batonowania mora skończą się połamaniem jej rączki, a może nawet ostrza. A nie ma nic gorszego niż dźwięk pękających 35.99.</p>
<p>Czy to oznacza, że któryś z tych noży jest zły?</p>
<p>Nie. To są noże przeznaczone do wykonywania nimi zupełnie różnych prac. </p>
<p>Do lekkich prac, takich jak: ostrzenie kijków, przygotowanie posiłków czy przecinanie sznurków lepiej sprawdzą się konstrukcje o cieńszym ostrzy do około 2.5 mm. I nie za długim ostrzu do około 10-11 centymetrów. Głownia nie może być też zbyt krótka, bo będzie nam to przeszkadzało w oddaniu się jakże porywającemu zajęciu - krojeniu cebuli.</p>
<p>Do cięższych prac sprawdzi się nóż o grubości 3mm lub więcej. Dzięki temu będzie odporniejszy na uszkodzenia. Ale z drugiej strony cienkie plasterki twojego pomidora będą grubsze niż kromka.</p>
<p>Oczywiście wielkość noża dobrze jest dopasować do swoich własnych preferencji. Jednak nóż o długości naszego przedramienia nie sprawdzi się raczej na obozie, a w lasach deszczowych.</p>"
     }
    ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Czy wiem, jak dbać o nóż?"
     }
     ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "O tym będzie trochę więcej w temacie stali jednak, jeśli nie mamy zbyt dużego pojęcia o nożach warto zaopatrzyć się w nóż ze stali nierdzewnej. Nieumiejętne posługiwanie się nożem ze stali węglowej sprawi, że taki nóż po prostu nam zardzewieje, a przez to straci na używalności."
     }
     ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Jak będę go przenosił?"
     }
    ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Nóż można przenosić na pasie, w kieszeni czy w plecaku. No chyba, że chcesz zostać drużynowym wiedźminem. Nie żebym Cię podpuszczał. Jeśli kupimy zbyt duży nóż jego przenoszenie w kieszeni czy na pasie będzie niekomfortowe.</p>
<p>Z drugiej strony nóż składany, który łatwiej przenosić jest konstrukcyjnie mniej wytrzymały. Dlatego nie używa się go do obozowych prac.</p>
<p>Warto zwrócić uwagę na pokrowiec w jakim otrzymujemy nóż, zwłaszcza jeśli nie potrafimy samemu takiej pochwy uszyć albo nie mamy dodatkowe budżetu na zakup jakiejś.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Czy często gubię rzeczy?"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Jak to mówił Obi Wan do Anakina - \"Następnym razem postaraj się jej nie zgubić. Ta broń to twoje życie.\" A tak na serio to kupowanie bardzo drogiego noża w momencie, kiedy często coś gubimy mija się z celem. Lepiej kupić tańszy nóż i móc sobie pozwolić na ewentualny zakup nowego egzemplarza.</p>

<p>[*] Niech rdza będzie lekką wszystkim zgubom.</p> "
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Konserwacja stali:"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "O nóż trzeba dbać. Najlepiej po każdy użyciu najszybciej jak to możliwe go wyczyścić. Tak, aby nie pozostały na nim zabrudzenia, a zwłaszcza wilgoć. Chociaż oczywiście jest to swego rodzaju utopią, że zawsze będziemy o tym pamiętać i mieć na to czas. Z pewnością dużo pilniej trzeba dbać o nóż ze stali węglowej. Nóż należy ostrzyć i konserwować jakimś rodzajem oleju lub smaru. Do noży które wykorzystuję do jedzenia używam oleju lnianego, a do noży do prac obozowych wykorzystuję smar syntetyczny. Dzięki temu moje noże są zabezpieczone przed korozją… chyba, że pożyczę taki nóż młodszemu harcerzowi, to wtedy już nic go nie ochroni."
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Rodzaje noży"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Hidden tang</b> - nóż o ostrzu osadzonym w rękojeści. Zazwyczaj jest lżejszy od noża full tang, przez krótsze ostrze. Nóż taki jest nie najlepszym wyborem do ciężkich prac pionierskich, ponieważ może się na przykład wyłamać z okładzin (rękojeści).</p>
<p><b>Full tang</b> - nóż o ostrzu przechodzącym przez całe ostrze. Odporniejszy na uszkodzenia, cięższy. Jednocześnie łatwiej w takim nożu wymienić okładziny, są one zazwyczaj dokręcane do głowni.</p>
<p><b>Składane</b> - nóż z ostrzem składanym do rękojeści. Jego największą zaletą jest rozmiar i to, że nie musimy przenosić takiego noża w pokrowcu. Wadą jest to, że taki nóż jest znacząco mniej wytrzymały do prac leśnych. Należy pamiętać o smarowaniu mechanizmu otwieraniu noża, żeby płynnie on działał.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Kształty ostrzy:"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Drop Point</b>- charakteryzują się wytrzymałością czubka i dobrymi właściwościami tnącymi.</p>
<p><b>Clip Point</b>- z uwagi na inną budowę, nie ma tak dobrych właściwości tnących, ale zamiast tego posiada lepsze właściwości, jeśli chodzi o przebijanie.</p>
<p><b>Spear Point</b>- kształt głowni z obu stron jest podobny, ale jedna jest ostra, a druga nie. Nie posiada najlepszych właściwości tnących.</p>
<p><b>Dagger</b> - po prostu sztylet. Ostrze z obu stron głowni. Niby fajnie, ale nie ma możliwości np. oparcia palca o głownię noża. Raczej nie będzie to sensowny nóż do harcerstwa.</p>
<p><b>Tanto</b> - kształt ostrza wzorowany na katanie. Ciekawie wygląda, ale ma raczej kiepskie właściwości, jeśli chodzi o używanie w naszych harcerskich klimatach. Na pewno jego zaletą jest gruby czubek, który ciężko połamać.</p>
<p><b>Bowie</b>- posiada bardzo dobre właściwości tnące, ale jednocześnie ma słaby czubek.</p>

<b>*są również inne, ale wydaje mi się, że niekoniecznie mają one jakieś większe zastosowanie w działalności harcerskiej.</b>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<h3>Rodzaje stali</h3>"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        header: "Z grubsza stale dzielą się na:"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Stale Nierdzewne"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Stale o większej odporności na rdzewienie, ale nadal w złych warunkach mogą rdzewieć. Dobry wybór na pierwszy nóż dla harcerzy lub dla takich, którzy chcą używać go jedynie okazyjnie i niekoniecznie chcą się skupić na konserwacji swojego narzędzia. Stale tego typu zazwyczaj mają trochę gorsze właściwości tnące, ale z drugiej strony, jeśli pokroimy tym nożem raz na jakiś czas cytrynę to nie będziemy czuć różnicy. Tak? Ja nic nie czuję.</p>"
     }

ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        alignH: Text.AlignHCenter
        header: "Stal Węglowa "
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Stal węglowa jest podatna na rdzewienie i na przykład na patynowanie. Zazwyczaj charakteryzuje się lepszymi właściwościami mechanicznymi w danej cenie. Dla przykładu taka stal węglowa C100 słynie z tego, że można ją naostrzyć o spód ceramicznego kubka.</p>
<p>O taki nóż trzeba jednak bardziej dbać. Nie może zostać mokry lub brudny od jedzenia, bo skończy się to rdzewieniem. Jeśli pokroimy takim nożem jakiegoś cytrusa na nożu pojawią się “plamy” wywołane przez reakcję chemiczną. Jeśli włożymy nóż z takiej stali do soku z cytryny lub chrzanu możemy uzyskać ciekawą patynę, która nada lepszą odporność na korozję naszemu ostrzu. Jednak po takim patynowaniu należy nóż powtórnie naostrzyć.</p>
<p>Jak możecie przeczytać całkiem sporo zachodu z taką stalą. Dlatego do jej wybrania powinny się skłaniać osoby, które mają już jakieś doświadczenie z nożami lub chcą się spróbować w czymś trudniejszym.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Stal Pół Nierdzewna "
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p>Stale te mają lepsze właściwości nierdzewne niż stale węglowe, ale ze względu na swój skład chemiczny nie są uznawane za stale nierdzewne. Przykładem takiej stali jest stal D2, która charakteryzuje się wysoką zawartością chromu.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "<h3>Rodzaje okładzin:</h3>"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Plastik</b>- polimery syntetyczne są dość trwałe, chociaż zależy też od ich jakości. Nóż hidden tang potrafi się wyłamać z plastikowej rękojeści. Wszelkie plastiki są zazwyczaj również dość lekkie i przede wszystkim odporne na działanie warunków atmosferycznych.</p>
<p><b>Drewno</b>- świetnie wygląda, waga zależy od konkretnego rodzaju drewna jaki został użyty. Prawdopodobnie będzie odporniejsze na złamania niż plastik, ale za to łatwiej zbiera “obicia”, chociaż tutaj też wszystko zależy od rodzaju obróbki. Drewniane rękojeści są impregnowane, aby drewno było odporne na wilgoć. Dlatego jeśli np. odłamie się nam kawałek drewnianej rękojeści impregnację należałoby powtórzyć, aby chronić drewno.</p>
<p><b>Micarta</b>- laminat żywiczny, jest całkowicie odporny na wilgoć. Można go bez problemu czyścić, jest również wytrzymały mechanicznie. Jeśli nie jest oszlifowany na “ślisko” zapewnia również bardzo dobry chwyt.</p>
<p><b>Stal</b>- zazwyczaj jest to jakaś stal nierdzewna, chociaż pewnie da się znaleźć rękojeści wykonane z innych metali. Stale są bardzo wytrzymałe, chociaż nawet te nierdzewne mogą zardzewieć.</p>"
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Kilka stali, na które warto zwrócić uwagę:<br>
*wszystkich dobrych nie sposób wymienić"
     }
ElementListyNoImage
     {
        color: "black"
        align: 0
        alignH: Text.AlignJustify
        header: "<p><b>Nierdzewne:</b></p>
<p><b>12C27 Sandvik</b> - całkiem przyjemna stał nierdzewna używana między innymi w nierdzewnej morce. </p>
<p><b>Stal 440c</b>- stal często używana do ręcznego wytwarzania noży. Ma inną zawartość węgla niż stal 440a i 440b (te dwie raczej odradzam). Jakościowo jest trochę poniżej stali N690</p>
<p><b>8Cr13MoV</b>- budżetowa chińska stal, ale w swojej cenie jest chwalona. Porównywana jest z AUS8 i 440B.</p>
<p><b>CPM S30V</b> - stal proszkowa, spotykana raczej w droższych nożach ze względu na koszt produkcji samej stali. Jest spiekana z metali oraz węglików metali, dzięki temu ma bardzo dobre właściwości. Dodaję trochę jako ciekawostkę, ale jak ktoś ma ochotę...</p>
<p><b>AUS 8</b> - dość łatwo się ostrzy, ale jednocześnie szybko się tępi. Zdania internetowych rabinów są podzielone. Sam korzystałem z rata-1, który jest zrobiony z tej stali. Nóż był całkiem przyjemny, chociaż pod względem trzymania ostrości wypada gorzej niż D2.</p>
<p><b>N690</b>- wysoko kobaltowa stal nierdzewna. Dobrze się spisuje ze względu na jej odporność na ścieranie.</p>
<p><b>154CM</b>- bardzo dobra stal, która jest modyfikacją stali 440C, jest raczej wykorzystywana w droższych nożach, jest nawet zaliczana do grupy super stali. </p><br>

<p><b>Pół Nierdzewne:</b></p>

<p><b>D2</b>- bardzo lubiana stal często stosowana przez knifemakerów. Dość dobrze trzyma ostrość, ale za to jest trudniejsza w zaostrzeniu.</p><br>

<p><b>Węglowe:</b></p>

<p><b>1095</b>- dość dobrze się ostrzy, stosowana między innymi w ratach 3 i 5, świetnie sprawdza się do prac obozowych.</p>
<p><b>C100</b>- przyzwoita stal stosowana w morach. Tępi się w oczach, ale jednocześnie można ją naostrzyć o spód ceramicznego kubka.</p> "
     }
ElementListyNoImage
     {
        color: "royalblue"
        align: 0
        header: "Rodzaje szlifów"
     }
        Image {
            id: test
fillMode: Image.PreserveAspectFit
           Layout.fillWidth: true
//         Layout.maximumHeight: 300
//            width: 100
            height: 300
//           width: page.width
            visible: false
            source: "qrc:/contents/ui/img/szlify.svg"
        antialiasing: true
   }
 ColorOverlay{
        source:test
            Layout.fillWidth: true
 //        Layout.maximumHeight: 300
     color:"white"
//     width: 100
     height: test.height
     width: test.width
        transform:rotation
//           width: page.width
        antialiasing: true
    }

            }
 
    
}

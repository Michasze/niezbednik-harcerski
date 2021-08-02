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
import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
    id: pageFoto
    title: "Zbiórki w terenie"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        //visible: !Kirigami.Settings.isMobile ? true : false
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
                ColumnLayout {
        width: pageFoto.width
        spacing: Units.smallSpacing

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Kirigami.Settings.isMobile ? 12 : 14
                format: Text.PlainText
                color: "Black"
            header: "Przemyślenia te rozpocząłem już kilka lat temu, patrząc na wyniki ankiet na grupie Harcerze- Poznajemy Się. Ankiety dotyczyły miejsca odbywania się zbiórek: \"W terenie czy pomieszczeniu?\". Wyniki były różne, ale zawsze na korzyść zbiórek w pomieszczeniu. Pięć zbiórek w harcówce do jednej na dworze taki jest wynik najnowszej ankiety. Wydaje się, że to nie jest to najlepsza droga, którą może iść harcerstwo. Odchodzimy od naszych puszczańskich korzeni.

W takim razie: \"Co bardziej odpowiada idei harcerskiej, zbiórki w pomieszczeniu czy w terenie?\".

Weźmy dla przykładu Prawo Harcerskie. Najoczywistszym skojarzeniem jest szóste prawo: \"Harcerz miłuje przyrodę i stara się ją poznać\". Skoro harcerz stara się poznać przyrodę, to powinien z nią obcować, między innymi na zbiórkach. Czy spędzanie większości czasu zbiórek w pomieszczeniu nie jest ograniczaniem poznawania przyrody? Ogranicza możliwości kontaktu z nią i jej poznawania w różnych porach roku czy mniej sprzyjających warunkach pogodowych, dlatego “zła” pogoda nie może być wymówką do spędzania czasu w pomieszczeniu.

Jak powiedział Generał Robert Baden Powell \"Każdy osioł potrafi być dobrym skautem podczas pogody\". Oczywiście, pogoda może być metaforą trudnych wydarzeń, ale spójrzmy dosłownie na ten cytat. Jeśli podczas zbiórek drużyny nie będziemy wychodzić na dwór argumentując to złą pogodą, to nasi harcerze nie będą radzić sobie dobrze z taką niedogodnością podczas obozów czy biwaków. Deszcz podczas biwaku jest dużo bardziej  dotkliwy niż podczas zbiórki, dlatego nasi harcerze muszą być z nim oswojeni. Jeśli nauczymy ich dobrze się ubierać i zapewnimy im dodatkowe środki, które mają zadbać o ich zdrowie, jak np. punkt z ciepła herbatą, przekonamy też ich rodziców do siebie, damy im dowód na to, że jesteśmy rozważni i dbamy o ich dzieci.

\"Nie jesteśmy klubem ani szkółką niedzielną, ale szkołą – puszczaństwa.\"
Generał Robert Baden Powell.

Skauting, a co za tym idzie harcerstwo, ma być szkołą puszczaństwa. Z czym kojarzy się klub albo szkółka niedzielna? Mi z rysowaniem plakatów, odgrywaniem scenek i sprzedawaniem ciastek. I tutaj zasadnicze pytanie. Czy poświęcanie większości zbiórek na takie zajęcia nie jest zaprzeczeniem idei harcerstwa? Oczywiście, takie formy pracy również mogą być pożyteczne, ale czy nie powinny być mniejszą częścią naszego harcerskiego działania? Czy nie powinny dominować takie formy jak gry terenowe czy prace pionierskie? Nasi harcerze dużo lepiej zapamiętają, że była akcja \“Meksyk II\” jeśli wezmą w niej udział niż gdyby mieli słychać wykładu na ten temat. Młodzi harcerze mają w sobie dużo energii i potencjału, który trzeba wykorzystać, bo właśnie to ich rozwinie najlepiej.

\"Istotę życia skautowego stanowi pełne tężyzny życie w terenie.\" 
Generał Robert Baden Powell.

Skoro istotą skautingu jest życie w terenie w dodatku pełne tężyzny fizycznej czy nie  działamy wbrew tej istocie, jeśli większość zbiórek spędzamy w harcówce? Moglibyśmy w tym czasie działać w terenie podczas wędrówek czy organizując zawody sportowe, budując naszą sprawność.

\"Skauting pociąga najmocniej przez poznawanie przyrody i puszczaństwo.\" 
Generał Robert Baden Powell 

Wiele osób narzeka, że w harcerstwie brakuje ludzi, że drużyny są mniejsze niż kiedyś. Czy  to, że odeszliśmy od puszczaństwa i działań w terenie nie jest tego powodem? Brak działania i aktywności ruchowej robi się bardzo szybko nudny dla młodych ludzi, a zwłaszcza dla młodych chłopców.

\"Życie byłoby mdłe, gdyby wszystko było słodkie. I sama sól jest gorzka, ale trochę soli do potrawy nadaje smak. Trudności są solą życia.\" 
Generał Robert Baden Powell.

Bardzo często się słyszy, że harcerze nie chcą wychodzić zimną z harcówki. Może trzeba ich do tego zachęcić czy nawet zmusić? Ale przy okazji trzeba im pokazać, że również zimą  można się dobrze bawić mimo trudniejszych warunków pogodowych. Pogoda, zmęczenie czy wyzwania najlepiej hartują naszych harcerzy nie tylko fizycznie, ale też psychicznie. 

\„Harce to radosna gra na łonie natury, gdzie mężczyźni z duszą chłopca idą razem z chłopcami na poszukiwanie przygody. Przyniosą stamtąd zdrowie i szczęście, zręczność i zaradność.\”
Wskazówki dla skautmistrzów. Generał Robert Baden Powell

Po raz kolejny twórca skautingu pisze o tym,że ważne są działania na łonie natury, bo to  właśnie tam uczymy się zaradności i tam nabieramy sprawności fizycznej. Chłopcy  i mężczyźni działają na łonie natury i to ich ciekawi. Może dlatego w dzisiejszych czasach, gdy odchodzimy od działania w terenie pojawia się coraz mniej chłopców w harcerstwie?  Dlatego, że nie dostosowujemy się do ich potrzeb.

\"Jesteśmy zbyt dużymi fanami ciepła, żeby wyjść na dwór. Chyba byśmy zamarzli.\" - jeden z komentarzy na grupie HPS.

Czy to podejście jest harcerskie? Moim zdaniem nie. I gdybym był drużynowym takiej  drużyny starałbym się to zmienić. I zachęcić harcerzy do wychodzenia na dwór lub narzucić to przez po prostu stwierdzenie, że dziś idziemy na grę terenową. Harcerstwo jest organizacją wychowawczą, mającą rozwijać właśnie poprzez stawianie wyzwań. Bardzo często mam kontakt z harcerzami z różnych organizacji i środowisk. Wymieniamy się spostrzeżeniami na temat zbiórek czy biwaków. 

Wielu harcerzy po usłyszeniu o tym, że większość zbiórek, nawet tych zimowych, odbywa się na dworze reaguje bardzo entuzjastycznie i stwierdza, że chciałoby brać udział w takich zbiórkach. Skoro harcerze chcą brać udział w takich zbiórkach to trzeba je robić! 

A zatem: Druhu drużynowy! Druhu zastępowy! Przygotuj swoją następną zbiórkę na dworze!

Juliusz Idzikowski"
        }
        }
}

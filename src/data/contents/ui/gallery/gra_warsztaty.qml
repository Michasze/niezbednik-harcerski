import QtQuick 2.6
import QtQuick.Layouts 1.2

HPSPage
{
    id: pageFoto
    title: "Gra w klimatach PRL"
        ColumnLayout {
        width: pageFoto.width

        ElementListyNoImage
        {
        color: "green"
        textSize: 14
        alignH: Text.AlignHCenter
        format: Text.PlainText
        header: "Wskazówki dla prowadzącego:"
}
        ElementListyNoImage
        {
        color: "black"
        format: Text.PlainText
        header: "Czas gry: od godziny 1,5-2 w zależności od ilości patroli\n
Zalecana ilość patroli: 2-3"
}
        ElementListyNoImage
        {
        color: "green"
            alignH: Text.AlignHCenter
            format: Text.PlainText
            header: "Wskazówki:"
}
            HPSLista
            {
            label: "*przygotować kronikę filmową jeśli będziemy w miejscu bez internetu"
             }
            HPSLista
            {
            label: "*schować bajońską sumę"
             }
            HPSLista
            {
            label: "*schować inne baterie niż te, które mają być w latarce, stwierdzić, że nie zapłacimy za zlecenie, bo zaszła jakaś pomyłka"
             }
            HPSLista
            {
            label: "*puścić knajpę morderców Stanisław Staszewski lub Kult"
             }
            HPSLista
            {
            label: "*ukryć pocztówkę winylową w bezpiecznym miejscu"
             }
            HPSLista
            {
            label: "*dać Cinkciarzowi monetę emisyjną, tak żeby mógł ją sprzedać patrolowi (za niższą stawkę niż u karczmarza) lub zagrał o nią w karty"
             }
            HPSLista
            {
            label: "*wydrukować kartki dwa razy, na wypadek zniszczenia lub zgubienia"
             }

ElementListyNoImage
{
             header: "Zasady:"
             textSize: 14
    alignH: Text.AlignHCenter
             color: "green"
}
ElementListyNoImage
{
  header: "Główne zasady:"
   color: "black"
}
            HPSLista
            {
            label: "*Podział na patrole."
             }
            HPSLista
            {
            label: "*Patrole nie mogą się rozdzielać."
             }
            HPSLista
            {
            label: "*Każdy patrol zaczyna z kwotą 10 fenigów."
             }
ElementListyNoImage
{
  header: "Hazard:"
   color: "black"
}
            HPSLista
            {
            label: "*Knajpa morderców- można obstawiać posiadane pieniądze. Do wyboru są dwie gry: kości i karty. Grze kości decyduje wyrzucenie większej ilości oczek. W grze karty decyduje wybranie wyższej karty. Gra się przeciwko karczmarzowi, w wyniku zleceń może pojawić się również kolejna postać z którą można zagrać. Karczmarz może obstawiać w stosunku innym niż 1:1, ale trzeba się z nim o to targować."
             }
        ElementListyNoImage
        {
        color: "black"
            alignH: Text.AlignHCenter
            header: "Zlecenia:"
}
            HPSLista
            {
            label: "*Na wykonanie zlecenia jest określony czas, który jest opisany na dole zlecenia. Czas odmierzany jest przez karczmarza. Jeśli, któryś patrol nie wykona zlecenia płaci karę, której wysokość ustalona jest na karcie zlecenia."
             }
            HPSLista
            {
            label: "*Niektóre zlecenia są jednorazowe, czyli może je wykonać tylko jeden patrol. "
             }
            HPSLista
            {
            label: "*Nie można dwa razy wykonywać tego samego zlecenia."
             }
            HPSLista
            {
            label: "*Jeśli zlecenie nie zostanie wykonane wraca do puli zleceń \"do wzięcia\"."
             }
            HPSLista
            {
            label: "*Jeśli patrol zdecyduje się jednak nie wykonywać zlecenia, może je oddać do puli zleceń pod warunkiem, że zrobi to przed upłynięciem limitu czasowego."
             }
            HPSLista
            {
            label: "*Do wykonania niektórych zleceń konieczne są określone przedmioty, które można zdobywać w innych zleceniach i zadaniach."
             }
            HPSLista
            {
            label: "*Do wykonania zleceń potrzebny jest odpowiedni status majątkowy, który jest wyszczególniony w zleceniu. I będzie sprawdzany przez karczmarza."
             }
ElementListyNoImage
{
  header: "Zadania:"
   color: "black"
}
            HPSLista
            {
            label: "*Zadania można wykonywać bez określonego czasu."
             }
            HPSLista
            {
            label: "*Patrole mogą wykonywać to samo zadanie jednocześnie."
             }
            HPSLista
            {
            label: "*Za niewykonanie zadania nie są naliczane kary."
             }
ElementListyNoImage
{
  header: "Domy:"
   color: "black"
}
            HPSLista
            {
                label: "*Dom mały kosztuje 20 fenigów, a dom duży kosztuje 30 fenigów. Można je nabywać u Karczmarza. Każdy mały dom na koniec gry wart jest 21 fenigów a duży 32 fenigi."
            }
ElementListyNoImage
{
  header: "Monety:"
   color: "black"
}
            HPSLista
            {
                label: "*U karczmarza można nabywać również specjalne monety, które będziecie emitować mieszkańcom swojego kraju, monety podnoszą poziom szczęścia w waszym państwie. "
            }
            HPSLista
            {
                label: "*Każde z państw MUSI posiadać przynajmniej jedną monetę na koniec gry. Każda moneta zwiększa mnożnik majątku o 0.2. Początkowy mnożnik wynosi 1."
            }
            HPSLista
            {
                label: "*Emisja specjalnych monet kosztuje 40 fenigów."
            }
ElementListyNoImage
{
  header: "Warunki wygranej:"
   color: "black"
}
            HPSLista
            {
                label: "*Patrol MUSI posiadać przynajmniej jedną specjalną monetę."
            }
            HPSLista
            {
                label: "*Wygrywa patrol który ma najwięcej pieniędzy lub największy majątek."
            }
ElementListyNoImage
{
  header: "Fabularny wstęp na początek zbiórki:"
   textSize: 14
   color: "green"
}
            HPSLista
            {
                label: "Każdy z patroli tworzy osobne państwo bloku wschodniego (NRD, Czechosłowacja, Polska Rzeczpospolita Ludowa). Musicie zapewnić swoim obywatelom szczęście oraz poprowadzić jedyną słuszną gospodarkę centralną do rozkwitu. Wasze działania to działania na miarę naszych czasów."
            }
ElementListyNoImage
{
  header: "Zlecenia:"
   color: "green"
}
ElementListyNoImage
{
    alignH: Text.AlignJustify
  header: "<b>1. Ministerstwo Armii złożyło zamówienie na sporą ilość latarek. W konkursie wygrał projekt Michaiła Pawliczenki. Latarki nie posiadają baterii, aby mogły trafić w ręce twoich żołnierzy musisz zdobyć ogniwa. Produkuje je fabryka Leśny Potok. Ogniwa znajdują się przy światłach. Czas na wykonanie zlecenia to: 15 minut.</b><br><br>
Jeśli wykonasz zlecenie w czasie otrzymasz 30 fenigów, lecz jeśli się spóźnisz musisz zapłacić 15 fenigów kary...<br><br>
Aby podjąć to zlecenie należy posiadać przynajmniej 15 fenigów.<br><br>
<b>2. Ministerstwo rolnictwa złożyło zamówienie na pozyskanie szyszek, aby móc je rozdystrybuować przed świętami. Dzięki temu Papa Mróz będzi mógł przynieść w tym roku prezenty. Musicie zebrać 50 szyszek.</b><br><br>
Czas na wykonanie zlecenia to: 10 minut.<br><br>
Jeśli wykonasz zlecenia otrzymasz 20 fenigów lecz jeśli się spóźnisz musisz zapłacić karę 10 fenigów.<br><br>
Aby podjąć się zlecenia należy posiadać przynajmniej 10 fenigów.<br><br>
<b>3. Wyrwij murom zęby krat. Wiesz, że w twoim państwie w niedługim czasie dojdzie do protestów. Musisz przygotować kontr piosenkę do tej śpiewanej przez wywrotowców. Ułóżcie przerobioną komunistyczną wersję swojej piosenki.</b><br><br>
Jeśli wykonasz zlecenie otrzymasz 35 fenigów, lecz jeśli się spóźnisz zapłacisz karę w wysokości 5 fenigów,<br><br>
Aby rozpocząć zlecenie trzeba mieć 5 fenigów.<br><br>
Czas na wykonanie zlecenia to 20 minut.<br><br>
<b>4. Cinkciarz posiada obcą walutę, ale pragnąłby również mieć własną talię kart. Musisz mu ją dostarczyć. O miejsce w którym się znajduje musicie zapytać karczmarza.</b><br><br>
Za to zlecenie otrzymasz 30 fenigów. Jeśli nie wykonasz zadania musisz zapłacić karę w wysokości 15 fenigów.<br><br>
Czas na wykonanie zlecenia to 20 minut.<br><br>
Aby rozpocząć to zadanie musisz mieć 15 fenigów oraz posiadać talię kart.<br><br>
<b>5. Biskupin- ministerstwo edukacji złożyło zamówienie na budowę drewnianej rekonstrukcji zamku w biskupinie. Wykonajcie miniaturę zamku.</b><br><br>
Czas na wykonanie zlecenia to 15 minut.<br><br>
Jeśli wykonasz zlecenie otrzymasz 40 fenigów, jeśli nie wykonasz zadania musisz zapłacić karę w wysokości 10 fenigów.<br><br>
Aby rozpocząć wykonywanie zadania musisz zdobyć specjalne narzędzia (zadanie u myśliwego) oraz posiadać minimum 10 fenigów.<br><br>
<b>6. Pewna piękna niewiasta jest znudzona tym, że w sklepach są tylko takie same ubrania. Dlatego musicie zdobyć dla niej farby, żeby mogła sprawić, że jej będą wyjątkowe. Farby możecie zakupić u myśliwego, który znajduje się niedaleko działek. Niewiasta odbierze wasze zamówienie u karczmarza.</b><br><br>
Za zlecenie możecie dostać 50 fenigów.<br><br>
Aby je wykonać potrzebujecie 20 fenigów oraz farb.<br><br>
Czas na wykonanie 30 minut"
   color: "black"
}
ElementListyNoImage
{
  header: "Zadania:"
   color: "green"
}
            ElementListyNoImage
            {
                alignH: Text.AlignJustify
                color: "black"
                header: "<b>1. Trybuna ludu poszukuje fotoreporterów.</b><br><br>
Wykonajcie dziesięć dobrych zdjęć podczas wykonywania jednego ze zleceń, aby udokumentować wasze działania ku chwale socjalistycznego państwa.<br><br>
*Ogólna liczba zdjęć jaką możecie wykonać nie może być większa niż 36 zdjęć. Redakcji nie stać na zmarnowanie aż dwóch rolek kliszy.<br><br>
Nagroda: 5-7 fenigów.<br><br>
<b>2. Ośrodek wypoczynkowo-rekreacyjny w Ciechocinku musi przygotować jadłospis na kolejny sezon wakacyjny.</b><br><br>
Musicie przygotować przepis na najlepsze śledzie w śmietanie. Przepis musi zawierać: listę składników, czas przygotowania oraz konkretne instrukcje.<br><br>
Nagroda: 1 a 10 fenigów.<br><br>
<b>3. Trybuna ludu ogłosiła konkurs na nową okładkę, zaprojektujcie ją a otrzymacie nagrodę.</b><br><br>
Jeśli wcześniej prowadziliście już jakąś współpracę z gazetą z możecie uzyskać większe wynagrodzenie.<br><br>
Nagroda: 1 do 10 fenigów.<br><br>
<b>4. Ludzie w twoim państwie potrzebują rozrywki, aby ją zapewnić musicie zorganizować olimpiadę.</b><br><br>
Nagrajcie filmiki na których nasi zawodnicy biorą udział w czterech wymyślonych przez was konkurencjach sportowych.<br><br>
Nagroda: 5 a 10 fenigów.<br><br>
<b>5. Legenda poszukiwaczy złota.</b><br><br>
Wedle tej legendy po jednym z mostków w lesie została ukryta bajońska suma pieniędzy. (zadanie jednorazowe)<br><br>
<b>6. Wykonajcie projekt nowoczesnego (socmodernistycznego) bloku dla mieszkańców waszego państwa.</b><br><br>
Nagroda: 5-10 fenigów.<br><br>
<b>7. Przygotujcie mały, ale porządny szałas.</b><br><br>
Ma on zapewnić schronienie waszej doborowej armii podczas zbliżających się ćwiczeń “Dunaj”.<br><br>
Nagroda: 5-15 fenigów.<br><br>
<b>8. Myśliwy skończył 35 lat, dlatego decyduje się sprzedać swój ekwipunek, ponieważ przechodzi na emeryturę.</b><br><br>
Możecie odkupić jego nóż za 5 fenigów, pod warunkiem, że dostarczycie mu trochę kory brzozy. (zadanie jednorazowe)<br><br>
<b>9. Odnajdźcie zaginioną pocztówkę winylową, ukrytą w okolicach niewielkich ruin niedaleko schodów.</b><br><br>
Nagroda: 10 fenigów.<br><br>
<b>10.  Narysujcie liść monstery.</b><br><br>
Monstera jest pięknym kwiatem sprowadzonym z dalekich krajów.<br><br>
Nagroda:  5 fenigów.<br><br>
<b>11. Obejrzyjcie fragment kroniki filmowej.</b>
Nagroda: 10 fenigów.<br><br>
<b>12. Dowiedzcie się z jakiego serialu wziął się tekst: \"Suchy chleb dla konia\".</b><br><br>
Nagroda: 10 fenigów.<br><br>
(zadanie które każdy patrol może wykonać tylko raz)"
            }
ElementListyNoImage
{
  header: "Potrzebne rzeczy: "
   color: "green"
}
            HPSLista
            {
                label: "*Wydrukowane zlecenia x2"
            }

            HPSLista
            {
                label: "*Wydrukowane zadania x2"
            }

            HPSLista
            {
                label: "*Nóż"
            }

            HPSLista
            {
                label: "*Monety fenigi, duża ilość, dobrze mieć również drobne nominały"
            }

            HPSLista
            {
                label: "*Monety PRL najlepiej z ciekawymi obrazkami"
            }

            HPSLista
            {
                label: "*Ołówki i długopisy"
            }

            HPSLista
            {
                label: "*Kartki"
            }

            HPSLista
            {
                label: "*Baterie (niepasujące do latarki)"
            }

            HPSLista
            {
                label: "*Latarka"
            }

            HPSLista
            {
                label: "*Dwie talie kart"
            }

            HPSLista
            {
                label: "*Pocztówka winylowa"
            }

            HPSLista
            {
                label: "*Laptop"
            }

            HPSLista
            {
                label: "*Domki z monopoly"
            }

            HPSLista
            {
                label: "*Kości"
            }

            HPSLista
            {
                label: "*Farby"
            }
        ElementListyNoImage
        {
            Layout.fillWidth: true
            alignH: Text.AlignHCenter
            format: Text.PlainText
            color: "Green"
            header:"Juliusz Idzikowski"
        }

        }
}

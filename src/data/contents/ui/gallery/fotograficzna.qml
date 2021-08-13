import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
    id: page
    title: "Pomysł na zbiórkę fotograficzną"
        ColumnLayout {
        width: pageFoto.width
HPSImage {
         source: "image://images/fotograficzna.jpg,10"
        }
        ElementListyNoImage
        {
        color: "green"
        header: "O potrzebnych materiałach warto poinformować kilka dni wcześniej, żeby każdy mógł coś sobie przygotować.<br><br>
Potrzebne materiały:"
}
HPSLista {
            label: "*Discord lub inny komunikator"
        }
HPSLista {
            label: "*Każdy harcerz musi mieć telefon lub aparat"
        }
HPSLista {
            label: "*Figurki (najlepiej LEGO, bo można nimi ruszać, pamiętajcie, że kiedy kradniecie je bratu warto rozrzucić kilka przed drzwiami, żeby nie mógł wejść do waszego pokoju)"
        }
HPSLista {
            label: "*Światło! Przy robieniu zdjęć ogromne znaczenie ma światło. Można wykorzystać lampki choinkowe, żarówki o różnej barwie i mocy czy nawet ekran komputera."
        }
HPSLista {
            label: "*Inne ciekawe elementy wystroju: kawałek materiału, stare części od komputera itd."
        }
ElementListyNoImage
{
             header: "Jak przeprowadzić zbiórkę:"
             color: "green"
}
ElementListyNoImage
{
  header: "Sposób pierwszy:

Opowiadamy historię. Tworzymy historyjkę składająca się ze zdjęć. Ważnym jest, aby historia miała zachowaną w miarę logiczną spójność.<br><br>

*Dobrze mieć przygotowany scenariusz przed zbiórką, ale modyfikować go wedle pomysłów i możliwości harcerzy."
   color: "darkcyan"
}
ElementListyNoImage
{
  header: "Sposób drugi:

Wykonujemy zdjęcia na różne sposoby, Lord Vader na Mustafar (panorama pokoju okraszona czerwonym światłem) lub Hełmu Detale (zdjęcie makro).

*Tutaj warto połączyć to z pracą np. w Canvie, tak żeby każdy mógł obrobić swoje zdjęcie. Kontrolę nad pracą w Canvie możemy mieć dzięki funkcji streamingu na discordzie."
  color: "Brown"
}
  ElementListyNoImage
  {
    header: "Pamiętajcie, że taka zbiórka jest świetnym momentem do zaproponowania naszym harcerzom zdobywania sprawności fotograficznych.<br><br>

Powodzenia!<br><br>

Juliusz Idzikowski"
    color: "green"
        }
        }
}

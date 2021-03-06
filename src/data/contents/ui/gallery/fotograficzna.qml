import QtQuick 2.6
import QtQuick.Layouts 1.2

HPSPage
{
    id: page
    title: "Pomysł na zbiórkę fotograficzną"
        ColumnLayout {
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
  header: "<b>Sposób pierwszy:</b>

Opowiadamy historię. Tworzymy historyjkę składająca się ze zdjęć. Ważnym jest, aby historia miała zachowaną w miarę logiczną spójność.<br><br>

*Dobrze mieć przygotowany scenariusz przed zbiórką, ale modyfikować go wedle pomysłów i możliwości harcerzy."
   color: "black"
}
ElementListyNoImage
{
  header: "<b>Sposób drugi:</b>

Wykonujemy zdjęcia na różne sposoby, Lord Vader na Mustafar (panorama pokoju okraszona czerwonym światłem) lub Hełmu Detale (zdjęcie makro).

*Tutaj warto połączyć to z pracą np. w Canvie, tak żeby każdy mógł obrobić swoje zdjęcie. Kontrolę nad pracą w Canvie możemy mieć dzięki funkcji streamingu na discordzie."
  color: "black"
}
  ElementListyNoImage
  {
    header: "Pamiętajcie, że taka zbiórka jest świetnym momentem do zaproponowania naszym harcerzom zdobywania sprawności fotograficznych.<br><br>

Powodzenia!"
  }
                ElementListyNoImage
                {
                    Layout.fillWidth: true
                    alignH: Text.AlignHCenter
                    format: Text.PlainText
                    color: "green"
                    header: "Juliusz Idzikowski"
        }
        }
}

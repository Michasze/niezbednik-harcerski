/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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
import QtQuick.Controls 2.15 as Controls

HPSPage
{
    id: page
    title: "Ekosystem w słoiku"
    Controls.Pane {
        Column {
            anchors.fill: parent
            spacing: 10
            HPSImage
            {
                id: autor
                width: isHorizontal ? page.height / 2 : page.width / 2
                source: "image://images/ekosystem.jpg,10"
            }
            ElementListyNoLayout
            {
                header: "Potrzebne materiały:"
                align: 1
                color: "green"
            }
            HPSLista {
                label: "• Słoik. Najlepiej plastikowe wieczko, jeśli nie może być metalowe, ale wtedy dodatkowo potrzebujemy kawałka folii spożywczej"
            }
            HPSLista {
                label: "• Kamyczki. Mogą być zwykłe, mogą być kolorowe, co kto lubi"
            }
            HPSLista {
                label: "• Węgiel. W lesie łatwo go znaleźć w miejscach po dawnych ogniskach"
            }
            HPSLista {
                label: "• Piasek"
            }
            HPSLista {
                label: "• Ziemia do kwiatków. W przeciwieństwie do samodzielnie pobranej nie ma robaków"
            }
            HPSLista {
                label: "• 4 łyżki wody"
            }
            HPSLista {
                label: "• Można wrzucić własną plastikową figurkę"
            }
            HPSLista {
                label: "• Roślinka, może być nawet malutkie drzewko - skarłowacieje. Roślinka musi mieć korzonek!"
            }
            ElementListyNoLayout
            {
                header: "Nie bierzemy mchu, bo jest pod ochroną."
                align: 1
                color: "green"
            }
            ElementListyNoLayout
            {
                header: "Jak zrobić?"
                align: 1
                color: "green"
            }
            HPSLista {
                label: "1. Myjemy dokładnie słoik i wycieramy do sucha."
            }
            HPSLista {
                label: "2. Myjemy roślinkę, którą przynieśliśmy. (robaki)"
            }
            HPSLista {
                label: "3. Dodajemy węgiel z ogniska."
            }
            HPSLista {
                label: "4. Dodajemy piasek."
            }
            HPSLista {
                label: "5. Dodajemy ziemię do kwiatków. Patrzymy czy nie ma w niej robaków!"
            }
            HPSLista {
                label: "6. Sadzimy naszą roślinkę."
            }
            HPSLista {
                label: "7. Dodajemy ozdobną figurkę."
            }
            HPSLista {
                label: "8. Dodajemy 4 łyżki wody."
            }
            HPSLista {
                label: "9. Jeśli mamy plastikowe wieczko zakręcamy. Jeśli nie podkładamy plastikową folię tak, żeby wystawała na zewnątrz i zakręcamy. Ma izolować nakrętkę od środka słoika, żeby nie zardzewiała."
            }
            HPSLista {
                label: "10. Nie trzymamy na ostrym słońcu."
            }

            ElementListyNoLayout
            {
                color: "green"
                header: "Juliusz Idzikowski"
                align: 1
            }
        }
    }
}

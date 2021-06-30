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
import QtGraphicalEffects 1.12

HPSPage
{
    id: pageEko
    title: "Ekosystem w słoiku"
    /*
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
    */
        ColumnLayout {
        width: pageEko.width
        spacing: 10
Image {
         id: autor
         source: "qrc:/contents/ui/img/ekosystem.jpg"   
         visible: true
          Layout.fillWidth: true
         Layout.maximumHeight: 350
//          Layout.maximumWidth: tresc.implicitWidth
         verticalAlignment: Image.AlignTop
         fillMode: Image.PreserveAspectFit
        }
        ElementListyNoImage
        {
            header: "Potrzebne materiały:"
            align: 1
            color: "green"
          }
HPSLista {
            label: "• Słoik (najlepiej plastikowe wieczko, jeśli nie może być metalowe, ale wtedy dodatkowo potrzebujemy kawałka folii spożywczej)"
             }
HPSLista {
            label: "• Kamyczki (mogą być zwykłe mogą być kolorowe co kto lubi)"
             }
HPSLista {
            label: "• Węgiel (w lesie łatwo znaleźć po dawnych ogniskach)"
             }
HPSLista {
            label: "• Piasek"
             }
HPSLista {
            label: "• Ziemia do kwiatków (nie ma robaków)"
             }
HPSLista {
            label: "• 4 łyżki wody"
             }
HPSLista {
            label: "• Można wrzucić własną plastikową figurkę"
             }
HPSLista {
            label: "• Roślinka, może być nawet malutkie drzewko. (skarłowacieje) Roślinka musi mieć korzonek!"
             }
ElementListyNoImage
{
  header: "Nie bierzemy mchu, bo jest pod ochroną."
  align: 1
  color: "green"
}
ElementListyNoImage
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
            label: "5. Dodajemy ziemię do kwiatków. (patrzymy czy nie ma w niej robaków!)"
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

        ElementListyNoImage
        {
          color: "green"
          header: "Powodzenia!<br><br>

Juliusz Idzikowski"
          align: 1
        }
        }
}

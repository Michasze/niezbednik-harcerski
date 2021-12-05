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
import Data 1.0

HPSPage

{
    id: page
    title: "Pakowanie według BP"
    HPSSettings
    {
        id: hpsSettings
    }
    Clipboard
    {
        id: clipboard
    }
        ColumnLayout {
            id: lista
            Controls.Button
            {
              Layout.alignment: Qt.AlignHCenter
              highlighted: true
              text: "kopiuj"
              onClicked:
              {
                  var trescListy = "";
                  for (var i = 0; i < lista.children.length; ++i)
                  {
                      if (!lista.children[i].header && !lista.children[i].model)
                      {
                          trescListy = trescListy + lista.children[i].text + "\n"
                      }
                      else if (!lista.children[i].model)
                      {
                          trescListy = trescListy + lista.children[i].header + "\n"
                      }
                  }
                  trescListy = trescListy.replace("</b>","\n")
                  trescListy = trescListy.replace("<b>","")
                  clipboard.paste = trescListy
                  showPassiveNotification("Skopiowano do schowka", 2000)
              }
            }
                ElementListyNoImage
        {
            color: "green"
            header: "<b>Ekwipunek obozowy dla każdego Skauta według Baden Powella</b>"
        }
                ElementListyNoImage
        {
            color: "darkolivegreen"
            align: 1
            header: "Ubrania:"
        }

            Repeater
            {
                model: ["kurtka lub płaszcz nieprzemakalny",
                        "flanelowa koszula",
                        "para kalesonów",
                        "dwie pary skarpet",
                        "podkoszulek i bluza",
                        "nocna bielizna flanelowa lub piżama",
                        "para silnych butów lub półbutów sportowych",
                        "para tenisówek",
                        "sweter lub ciepła bluza",
                        "spodenki kąpielowe "
                       ]
                delegate: przedmiotComponent
            }
                ElementListyNoImage
        {
            color: "plum"
            align: 1
            header: "Higiena:"
        }

            Repeater
            {
                model: ["szczotka do włosów ",
                        "mydło i ręcznik ",
                        "szczoteczka do zębów ",
                        "dwie chusteczki"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "darkolivegreen"
            align: 1
            header: "Wyposażenie:"
        }
Repeater
            {
                model: ["sznur lub rzemień",
                        "torebki na cukier, herbatę, sól, pieprz, mąkę i proszek do pieczenia",
                        "laska",
                        "gwizdek",
                        "część namiotu",
                        "plecak",
                        "koce lub worki do spania"]
                delegate: przedmiotComponent
            }
ElementListyNoImage
        {
            color: "plum"
            align: 1
            header: "Kuchenne:"
        }
Repeater
            {
                model: ["mały kociołek",
                        "nóż",
                        "widelec",
                        "łyżka"]
                delegate: przedmiotComponent
            }
    Component {
        id: przedmiotComponent
        HPSCheckable
        {}
    }

                        }
}

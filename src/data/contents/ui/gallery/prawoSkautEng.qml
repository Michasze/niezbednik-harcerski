
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

HPSPage {
    id: page
    Layout.fillWidth: true

    title: "Prawo Skautowe"

    ColumnLayout {
        width: page.width
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>Tekst przetłumaczonego prawa skautowego z 1907 roku: </b>"
        }
        ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>1.</b> Godność skauta polega na tym, że można mu zaufać."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>2.</b> Skaut jest lojalny względem Króla, swego kraju, przełożonych, rodziców, pracodawców i podwładnych."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>3.</b> Obowiązkiem skauta jest bycie pożytecznym i niesienie pomocy bliźnim."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>4.</b> Skaut jest przyjacielem wszystkich, a bratem każdego innego skauta, bez względu na to, do jakiej należy on klasy społecznej."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>5.</b> Skaut jest rycerski,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>6.</b> Skaut jest przyjacielem zwierząt,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>7.</b> Skaut jest posłuszny bez zastrzeżeń rodzicom, zastępowemu i skautmistrzowi."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>8.</b> Skaut śmieje się i gwiżdże w każdej ciężkiej przygodzie."
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>9.</b> Skaut jest oszczędny,"
        }
                ElementListyNoImage
        {
            color: "royalblue"
            header: "<b>10.</b> Skaut jest czysty w myśli, mowie i czynie."
        }
    }


}

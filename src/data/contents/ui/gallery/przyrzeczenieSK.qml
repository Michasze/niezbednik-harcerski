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
import QtQuick 2.15

HPSPage {
    id: page
    title: "Przyrzeczenie"

ElementListyNoLayout
        {
            color: "brown"
            format: Text.PlainText
            isPromise: true
            header: "Wyznaję, że Jezus jest moim Panem i Zbawicielem.
Z Jego pomocą uczynię wszystko,
aby służyć Bogu, Kościołowi oraz bliźnim
przestrzegając prawa Skautów Króla
i wprowadzając w życie Złotą Zasadę Ewangelii."
        }
    }



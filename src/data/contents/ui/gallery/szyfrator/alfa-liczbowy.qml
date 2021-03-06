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

import QtQuick 2.0
import QtQuick.Layouts 1.2
import ".."
import Cipher 1.0
import Decipher 1.0

HPSPage {
    id: page
    title: "Szyfrator"
    Cipher {
        id: cipher
    }
    Decipher {
        id: decipher
    }
    ColumnLayout {
        width: page.width
        ElementListyNoImage {
            id: naglowek
            color: "brown"
            header: "Szyfr alfabetyczno-liczbowy"
        }
        HPSText {
            id: pole
            onTextChanged:
            {
                if (activeFocus)
                {
                    cipher.alfa = pole.text
                    pole2.text = cipher.alfa
                }
            }
        }
        HPSText {
            id: pole2
            deszyfrowanie: true
            onPressAndHold:
            {
                clipboard.paste = pole2.text
                showPassiveNotification("Tekst skopiowany do schowka", 2000)
            }
            onTextChanged:
            {
                if (activeFocus)
                {
                    decipher.alfaDec = pole2.text
                    pole.text = decipher.alfaDec
                }
            }
        }
    }
}

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
import ".."

HPSPage {
        id: rozdzial11
        Layout.fillHeight: true
        title: qsTr("Plan pracy zastępu")
        ColumnLayout {
        ElementListyNoImage
        {
            color: "#FF003c00"
            format: Text.PlainText
            header: "Plan pracy zastępu powinien opierać się o plan pracy drużyny. Nie mogą ze sobą kolidować, a najlepiej, jeśli wzajemnie ze sobą współgrają, co wymaga współpracy kadry. Starajcie się, by formy pracy, które planujecie, były atrakcyjne - nie można powtarzać trzeci rok z rzędu tych samych schematów. Może pomoże inna forma, a może zupełne inne spojrzenie na dany temat?"
        }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            format: Text.PlainText
            header: "1) poproś drużynowego o dostęp do planu pracy drużyny, aby Wasze plany ze sobą współgrały, a nie kolidowały\n
2) zrób analizę SWOT zastępu (załącznik 2) i charakterystykę zastępu:"
        }
            HPSLista
            {
            label: "jak długo zastęp działa?"
            }
            HPSLista
            {
            label: "kto jest zastępowym i podzastępowym?"
            }
            HPSLista
            {
            label: "ilu zastęp ma członków?"
            }
            HPSLista
            {
            label: "ile osób złożyło Przyrzeczenie?"
            }
            HPSLista
            {
            label: "ile osób ma jaki stopień harcerski?"
            }
        ElementListyNoImage
        {
            color: "black"
            alignH: Text.AlignJustify
            format: Text.PlainText
            header: "3) wypisz z zastępem cele na ten rok - co chcielibyście zrobić dla siebie i dla innych, co trzeba poprawić na podstawie analizy SWOT, jakie mocne strony możecie wykorzystać. Powiąż to z planem pracy drużyny i metodą harcerską.\n
4) stwórz harmonogram pracy — rozplanuj najlepiej w tabelce wstępne tematy wszystkich zbiórek i ich terminy, mogą być pogrupowane tematycznie do miesięcy lub w sposób jaki praktykuje Twoja drużyna."
        }
        }
    }

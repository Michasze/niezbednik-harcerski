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
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

HPSPage
{
 id: page
 title: "Iskierka... naszych czasów"
 actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+Q"
    }
 Controls.Label
 {
  id: tresc
  wrapMode: Text.WordWrap
  text: "
Na drodze naszych zbiórek stanął Covid
Zamieszał mocno w naszym planie pracy
Harcerzy teraz mocno trzyma w szachu
I nie pozwala na normalną pracę

Chodź, chodź ze mną przy lapku siądź (przy lapku siądź, przy kompie siądź),
Ja załączam kamerkę swą ( i mikrofon)
Tak jak ja wpatrzony w ekran bądź, (w ekran bądź, w ekran bądź)
Na zbiórce online razem z nami bądź (bądź, bądź)

A już niebawem przyjdzie taki dzień
Że całkiem pokonamy wirus ten
Siądziemy razem przy ognisku swym
By zaplanować swoje nowe dni

Chodź, chodź ze mną przy ogniu siądź ( przy ogniu siądź, przy ogniu siądź)
Będziemy patrzeć w ogniska toń (czerwoną toń)
Zaplanujemy dalsze życie swe (życie swe, życie swe)
Będziemy zawsze wspierać się...(wspierać się)

dh. Adam Madejski
"
 }
}

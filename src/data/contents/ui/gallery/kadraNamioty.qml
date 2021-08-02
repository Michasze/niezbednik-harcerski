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

HPSPage
{
    title: "Namiot kadry"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: false
        onTriggered: pageStack.pop(-1);
        shortcut: "Alt+B"
    }
        Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-home.svg"
        text: qsTr("Powrót")
        onTriggered: pageStack.pop(-2);
        shortcut: "Alt+Q"
    }
        ColumnLayout {
        width: pageFoto.width
        spacing: Units.smallSpacing

            ElementListyNoImage
            {
            Layout.fillWidth: true
            alignH: Text.AlignJustify
                textSize: !Kirigami.Settings.isMobile ? 12 : 14
                format: Text.PlainText
                color: "Black"
            header: "Tak to już jest w naszym świecie, że wiele z pozoru prostych tematów dla starszych harcerzy wydaje się nie oczywiste dla tych młodszych. I tak jest też z namiotami kadry na obozach czy innymi \"przywilejami\". I oczywiście-nie można obrosnąć w wygodnictwo i pozwalać sobie czy innej kadrze na bycie pączkiem w biwakowym maśle. We wszystkim należy zachowywać umiar i zdrowy rozsądek.

Namioty to jeden z głównych przykładów takich \"przywilejów\". Dlaczego kadra je ma?

Powodów jest wiele, ja skupię się jedynie na kilku, które wydają mi się najważniejsze.

Materiały programowe, dokumenty, notatki itd. Nie ma nic bardziej deprymującego niż to, że szykujesz grę terenową i cały twój namiot na obozie już wie co będzie się działo. Wyjąłeś krzyże z pudełka albo chustę? Ooo ktoś otrzyma barwy drużyny albo złoży Przyrzeczenie Harcerskie… a miało to być niespodzianką. W namiotach mamy też ważne dokumenty, które nie powinny być dostępne dla każdego. I oczywiście większość z nas posiada zamykane na kłódkę skrzynie czy inne formy ich przetrzymywania, ale nadal człowiek czuje się pewniej kiedy wie, że ktoś nie znajdzie jego śmiesznego zdjęcia z legitymacji szkolnej.

Chwila spokoju. Drużynowy czy komendant na obozie jest ważny dla wszystkich. Każdy chce go o coś zapytać, ma jakąś ważną sprawę. Cały dzień jesteśmy otoczeni ludźmi. I oczywiste, większość osób pełniących te funkcje czuje się w takiej sytuacji bardzo dobrze i potrafią okiełznać ten żywioł, ale nawet oni potrzebują czasem chwili samotności, żeby przygotować zajęcia na kolejny dzień.

Różnica wieku jest chyba zbyt oczywista, żeby ją tłumaczyć, ale z pewnością jest jednym z ważnych aspektów tego rozwiązania.

Pamiętajcie, świat nie jest czarno biały. Czasem coś co wydaje się nam niesprawiedliwe jest bardzo przemyślanym rozwiązaniem, które ma zagwarantować dobrą i wygodną pracę.
Juliusz Idzikowski
"
        }
        }
}

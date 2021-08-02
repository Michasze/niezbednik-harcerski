import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

HPSPage
{
    id: pageFoto
    title: "ZJAZD ZHP w Bydgoszczy"
        actions.main: Kirigami.Action {
        iconName: "qrc:/contents/ui/img/go-previous.svg"
        text: qsTr("Powrót do listy")
        visible: !Kirigami.Settings.isMobile ? true : false
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
            header: "  Dokładnie 30 lat temu, 6 grudnia 1990 roku, w Bydgoszczy rozpoczął obrady XXVII Zjazd ZHP. Uważany za przełomowy, chociaż półtora roku wcześniej odbył się Zjazd ZHP, który podjął szereg bardzo ważnych decyzji dla naszego stowarzyszenia, rozpoczynając zasadnicze zmiany. Ale dzisiaj krótko, w możliwej tutaj formule, o „legendzie zjazdu bydgoskiego”.
            
    Zjazd ten był, moim zdaniem, spełnieniem znacznej części oczekiwań, które miały swój początek w okresie polskiego sierpnia 1980 roku. Tamtego entuzjazmu, chęci zmian, determinacji, następne lata nie były w stanie już w pełni zatrzymać.

    Komu zjazd bydgoski powierzył Związek ?

    Przychodziliśmy z bardzo różnych stron, mając różne życiowe doświadczenia, ale wspólne spojrzenie na współczesne i przyszłe harcerstwo. Może dzisiaj warto przypomnieć kto znalazł się w grupie szczególnie odpowiedzialnych za przeprowadzenie zmian i przyszły kształt ZHP.

    To przedstawiciele Szarych Szeregów: przewodniczący ZHP Stefan Mirowski (pierwszy komendant „Zawiszy”, działacz „Solidarności”) i wiceprzewodnicząca Hanka Zawadzka (siostra Tadeusza Zawadzkiego „Zośki”).
To osoby związane z KIHAM; profesor medycyny Maria Hrabowska, Roman Koturbasz, Wiesław Maślanka (wtedy komendant SHS „Perkoz” – szczególnego, twórczego miejsca w Harcerstwie).
Profesor prawa Wojciech Katner – wiceprzewodniczący, w sierpniu 80. roku zaangażowany w działalność opozycyjną na Uniwersytecie Łódzkim.
Jarosław Balon – wiceprzewodniczący ZHP, komendant chorągwi krakowskiej, członek Kręgu Białej Podkładki (również byłem członkiem KBP i reprezentowałem krąg w Radzie Naczelnej) oraz Paweł Winiarski – komendant Chorągwi Łódzkiej.
Maria Łyczko – twórczyni Nieprzetartego Szlaku.
Wanda Czarnota – kierowniczka wydziału kształcenia i metodyki ZHP, wcześniej komendantka Hufca Warszawa Ochota.

    I ja, Ryszard Pacławski, komendant Hufca w Sanoku. W 1981 roku rzecznik prasowy strajku studentów UMCS. Uznawałem, że będę skuteczniej pracował dla Harcerstwa będąc obecnym w ówczesnej polityce.
Byliśmy dojrzali wiekowo (Stefan Mirowski miał 70 lat) i bardzo młodzi – Jacek Smura (wtedy drużynowy) – 23 lata, Wiesiek Maślanka – 26 lat.
Pokazuję z jak różnych środowisk pochodziliśmy i wbrew upowszechnianym wówczas opiniom, trudno byłoby nas zakwalifikować jako „obrońców komunizmu”. Zresztą takie zróżnicowanie było cechą także poprzedniej Głównej Kwatery.
x x x

    Warto wiedzieć, że wówczas w Polsce trwała rewolucja. W dniu 9 grudnia 1990 roku, w dniu naszych wyborów w ZHP, wybieraliśmy w powszechnych wyborach Prezydenta RP, którym został Lecha Wałęsa (otrzymał wtedy 75 % poparcia).
Kilkanaście miesięcy wcześniej, 4 czerwca 1989 roku odbyły się pierwsze częściowo wolne wybory do Sejmu i Senatu, 1 sierpnia zniesiono … kartki na mięso. W dniu 9 listopada zburzono mur berliński, w listopadzie i grudniu zburzono symboliczne pomniki F. Dzierżyńskiego (w Warszawie) i W. Lenina w Krakowie. 25 grudnia rozstrzelano rumuńskiego dyktatora N. Caucescu, a 29 grudnia Vaclav Havel został wybrany prezydentem Czechosłowacji. 29 grudnia Sejm przywrócił historyczna nazwę Rzeczpospolita Polska oraz dawne godło – orła w koronie.
Cały rok 1990 to czas nadzwyczajnych wydarzeń w Harcerstwie. W marcu 1990 roku, po okupacji budynku GK ZHP, podpisanie porozumienia o utworzeniu Społecznej Rady ZHP i Komisji Zjazdowej, która miała przygotować wspólny Zjazd organizacji harcerskich. 22 września w Chorzowie odbył się XXVII Nadzwyczajny Zjazd ZHP. Skrócił kadencję władz ZHP, co miało pozwolić na zwołanie kolejnego, wspólnego zjazdu z udziałem delegatów ze wszystkich organizacji harcerskich. 23 listopada sąd wpisał do rejestru stowarzyszeń ... Związek Harcerstwa Polskiego 1918. Ówczesny naczelnik ZHP Krzysztof Grzebyk zaskarżył postanowienie sądu (uchylone ostatecznie w jesieni 1991 roku).
30 listopada rozpoczął się we Wrocławiu II Zjazd ZHR, a 1 grudnia w Krakowie … XVIII Walny Zjazd ZHP (organizowany przez ZHP 1918).
W takim czasie, w takim często niezrozumiałym dla postronnych obserwatorów biegu zdarzeń, 6 grudnia 1990 roku w Bydgoszczy rozpoczął się XXVIII Zjazd ZHP.
Wiedzieliśmy, że zgodnie z przesłaniem słynnego listu „Bandy Czworga” – bierzemy w swoje ręce losy harcerstwa.
x x x
    
    Należy dodać, że wszystko czyniliśmy z przekonaniem, że jesteśmy kolejnym pokoleniem odpowiedzialnym za kształt Związku Harcerstwa Polskiego. Uważaliśmy, że jedną z najważniejszych cech ZHP jest jego wielopokoleniowość. Bowiem my nie jesteśmy właścicielami Związku; są nimi wszyscy, którzy byli, są obecnie i będą w przyszłości w Harcerstwie. Bez tego poczucia wspólnoty ZHP nie odradzałby się tak, jak w tuż po wojnie, jak w 1956 roku i współcześnie. Dlatego w naszej pracy, ja w swojej działalności jako naczelnik ZHP, słuchaliśmy nie tylko siebie, ale też naszych poprzedników. Szanowaliśmy przeszłość umiejąc jednocześnie być krytycznym wobec tych okresów i zdarzeń, które na to zasługują.
    
    Dzisiaj, po 30 latach pracy ZHP w wolnej Polsce, widzimy , że warto było podjąć pracę, trud i poświęcenie dla przyszłości ZHP. Stowarzyszenia szanującego tradycyjne wartości, demokratycznego, proponującego młodym ludziom atrakcyjny program.
    
    Należy podziękować wszystkim, którzy przez kolejne lata budowali tożsamość ZHP i jego mocną pozycję w kraju, w ruchu harcerskim oraz w europejskim i światowym skautingu.
Czuwaj !
Ryszard Pacławski
Naczelnik ZHP 1990-2000
P.S. Więcej w przygotowywanej do druku książce „Gra o harcerstwo” .
Podobnie jak w 100 lecie ZHP tak i teraz nie zdążyłem na czas…
Dziękuję wszystkim Przyjaciołom w Harcerstwie."
        }
        }
} 

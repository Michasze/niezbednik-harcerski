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
#include "InfoData.h"
#include <QDebug>
#include <QRandomGenerator>

InfoData::InfoData(QObject *parent)
  : QAbstractListModel(parent)
{
  m_cytat = getList();
}
int InfoData::rowCount(const QModelIndex &parent) const
{
  if (parent.isValid())
    {
      return 0;
    }
  return m_cytat.count();
}
QVariant InfoData::data(const QModelIndex &index, int role) const
  {
    if( !index.isValid() )
      {
        return QVariant();
      }
    const Cytat &cytat = m_cytat.at(index.row());
    if ( role == ContentRole )
      {
        return cytat.tresc;
      }
    else if ( role == AuthorRole )
      {
        return cytat.autor;
      }
    else {
      {
        return QVariant();
      }
    }
  }
QHash<int, QByteArray> InfoData::roleNames() const
  {
    static QHash<int, QByteArray> mapping {
      {ContentRole, "tresc"},
      {AuthorRole, "autor"}
    };
  return mapping;
  }
const QString InfoData::losuj()
 {
   losowa =  QRandomGenerator::global()->bounded(m_cytat.size());
   if (90 > losowa)
     {
       m_losowyCytat = m_cytat.at(losowa);
     }
   else {
     m_losowyCytat = m_cytat.at(losowa - 1);
   }
   return m_losowyCytat.tresc;
 }
const QString InfoData::losowyAutor()
{
  losowyAutorChanged();
  return m_losowyCytat.autor;
}
QVector< Cytat > InfoData::getList()
  {
    QVector< Cytat > m_quotes;
    m_quotes
      << Cytat("„Zarówno dla skauta jak i dla żołnierza dyscyplina i posłuszeństwo są równie ważne jak dzielność.“", "Robert Baden-Powell")
      << Cytat("„We wszystkim więc co czynicie, pamiętajcie przede wszystkim o swoim kraju.“", "Robert Baden-Powell")
      << Cytat("„Wychowanie nasze nie jest militarystyczne ani w celach, ani w środkach.“", "Robert Baden-Powell")
      << Cytat("„Jeśli drużynowy obdarzy prawdziwą odpowiedzialnością zastępowego, (…) uczyni więcej dla ukształtowania charakteru tego chłopca.“", "Robert Baden-Powell")
      << Cytat("„Skauci są dziećmi wolnych przestrzeni, a skauting to braterstwo w służbie i świeże powietrze.“", "Robert Baden-Powell")
      << Cytat("„Czuwajcie – to znaczy postępujcie tak, by móc szczęśliwie żyć.“", "Robert Baden-Powell")
      << Cytat("„Istotę życia skautowego stanowi pełne tężyzny życie w terenie.“", "Robert Baden-Powell")
      << Cytat("„Chłopcy robią wszystko to, co robi drużynowy. Drużynowy odbija się w swoich chłopcach jak w lustrze.“", "Robert Baden-Powell")
      << Cytat("„Staraj się i ty dopóki jesteś na ziemi przez dobry czyn zrobić dziurę w kocu. Pamiętajcie też, że po zakończenia obozu winniście pozostawić po sobie te dwie rzeczy:\n1. nic,\n2. podziękowanie dla właściciela gruntu.“", "Robert Baden-Powell")
      << Cytat("„Być dobrym , ale postępować dobrze to znacznie więcej.“", "Robert Baden-Powell")
      << Cytat("„Celem wychowania skautowego jest podniesienie poziomu przyszłych, obywateli, szczególnie pod względem charakteru i zdrowia; zastąpienie samolubstwa służbą dla bliźnich, usprawnienie chłopców pod względem moralnym i fizycznym, aby mogli pełnić służbę bliźnim“", "Robert Baden-Powell")
      << Cytat("„Musimy nauczyć naszych chłopców nie tylko jak żyć, ale jak cieszyć się życiem“", "Robert Baden-Powell")
      << Cytat("„Teraz możecie uczynić to co jest głównym obowiązkiem skauta, mianowicie pomóc tym, co się znajdują w potrzebie, wszelkim sposobem jaki jest w waszej mocy“", "Robert Baden-Powell")
      << Cytat("„Starajcie się zostawić ten świat troszkę lepszym niż go zastaliście“", "Robert Baden-Powell")
      << Cytat("„Nie błądzi tylko, ten kto nic nie robi“", "Robert Baden-Powell")
      << Cytat("„Trudności są solą życia“", "Robert Baden-Powell")
      << Cytat("„Każdy osioł potrafi być dobrym człowiekiem podczas pogody“", "Robert Baden-Powell")
      << Cytat("„Życie bez przygód byłoby strasznie głupie“", "Robert Baden-Powell")
      << Cytat("„Życie byłoby miłe, gdyby wszystko było słodkie. I sama sól jest gorzka, ale trochę soli do potrawy nadaje smak“", "Robert Baden-Powell")
      << Cytat("„Nie to ma wielkie znaczenie, czy aktualnie osiągamy nasze najwyższe ideały, lecz to, ze są one wysokie“", "Robert Baden-Powell")
      << Cytat("„Posłannictwem moim jest rozprzestrzenianie przyjaźni i braterstwa na całym świecie“", "Robert Baden-Powell")
      << Cytat("„Nie można nazwać wychowanym nikogo, kto nie jest gotów i nie pragnie zrobić swej cząstki pracy dla świata i nie ma po temu wykształconej zdolności“", "Robert Baden-Powell")
      << Cytat("„Zwyczajne kłamstwo jest nadzwyczaj częstą wadą wśród młodzieży i niestety poważną chorobą całego świata. Spotkacie ją zarówno u niecywilizowanych plemion jak i w kulturalnych krajach. Mówienie prawdy, a w konsekwencji wyniesienie człowieka na poziom autorytetu, zmienią całkowicie charakter człowieka i charakter narodu. Dlatego ciąży na nas obowiązek by zrobić wszystko, co można, aby wpoić chłopcom poczucie honoru i nauczyć ich prawdomówności“", "Robert Baden-Powell")
      << Cytat("„Niech chłopcy zrozumieją, że czystość jest rzeczą męską. Dajcie im pełnię zdrowych zajęć a w ten sposób najlepiej pomożecie im pozbyć się brudnych myśli i niewłaściwych nawyków.“", "Robert Baden-Powell")
      << Cytat("„Obóz jest podstawową rzeczą w prowadzeniu drużyny. Ale obóz musi być pełen pracowitości a nie szkołą bezcelowego leniuchowania...“", "Robert Baden-Powell")
      << Cytat("„Jeżeli chłopiec idzie po ulicy uśmiechnięty, to już coś znaczy. Niejeden przechodzień rozpogodzi się na ten widok. Warto potrudzić się, żeby nauczyć chłopców tego uśmiechu jako pierwszego kroku ku szczęściu.“", "Robert Baden-Powell")
      << Cytat("„Najlepsze wyniki osiągają te drużyny, gdzie najbardziej zaufano zastępowym. Tu leży tajemnica powodzenia wychowania skautowego.“", "Robert Baden-Powell")
      << Cytat("„Harce to radosna gra na łonie natury, gdzie mężczyźni z duszą chłopca idą razem z chłopcami na poszukiwanie przygody. Przyniosą stamtąd zdrowie i szczęście, zręczność i zaradność.“", "Robert Baden-Powell")
      << Cytat("„Nie sądzę, by przez to, że umie dobrze posługiwać się strzelbą, miał się skaut od razu stać krwiożerczy i płonąć chęcią wojowania [...].“", "Robert Baden-Powell")
      << Cytat("„Czasem trudno uniknąć picia ostrych napoi, jeśli spotka się przyjaciół [...]. Jeśli jednak nalegają, możecie wziąć bezalkoholowe piwo lub coś równie nieszkodliwego.“", "Robert Baden-Powell")
      << Cytat("„Tak samo jest z chłopcem, który przyzwyczaił się słuchać rozkazów od razu, bez względu na to, czy łączy się z tym ryzyko, czy nie; gdy w czynnej służbie zlecicie mu coś wykonać, zrobi to, choćby było nie wiem jak niebezpieczne […]“", "Robert Baden-Powell")
      << Cytat("„Ukochanie i odczucie idei bardziej ją wcieli w życie niż najokrutniejsze regulaminy.“", "Andrzej Małkowski")
      << Cytat("„Niech nikt nie żąda czegokolwiek od organizacji, jeśli sam nie przyczynia się do jej istnienia.“", "Andrzej Małkowski")
      << Cytat("„Jeśli wymagam stosowania Prawa od dziewięcioletniego smyka, to o ileż bardziej muszę tego wymagać od siebie.“", "Andrzej Małkowski")
      << Cytat("„Dla naszego narodowego pożytku, dla naszej zbożnej pracy braterskiej, w której między zabawą w polu i gawędą dokoła obozowego ogniska kryje się myśl poważna — należy zdać sprawę z rzeczy towarzyszących i przez to zachęcić do podobnej pracy u nas.“", "Andrzej Małkowski")
      << Cytat("„Nie w tym jest wart człowiek,co przemyslał i przezył, ale co zrobił dobrego na świecie.“", "Andrzej Małkowski")
      << Cytat("„Prawdziwy autorytet tworzy tylko osobisty przykład, prawdziwość czynów, odpowiedzialność, porządek i konsekwencja.“", "Stefan Mirowski")
      << Cytat("„My też jesteśmy „kamieniami rzuconymi na szaniec”. Mamy te same ideały! Nie musimy pięknie umierać. Ale czy umiemy pięknie żyć?“", "Stefan Mirowski")
      << Cytat("„Nasz harcerski styl potraktujmy jako wkład w wychowanie obywatelskie, w styl życia współczesnego nam społeczeństwa.“", "Stefan Mirowski")
      << Cytat("„Nie było i nie będzie w harcerstwie lustracji, zaglądania do sumień, do teczek, nie będzie upokarzającego powtarzania Przyrzeczenia. ZHP, jak mało które stowarzyszenie, przeszedł spokojnie przez ferment ostatnich lat… Nie dopuśćmy do działań niezgodnych z Prawem Harcerskim. Oczyszczanie z błędów przeszłości jest procesem długotrwałym… Wiemy, jak dużo mamy jeszcze do zrobienia, ale miejmy świadomość, że w tej wędrówce ku szczęściu jesteśmy na dobrym tropie…“", "Stefan Mirowski")
      << Cytat("„Najtrudniej być porządnym człowiekiem, gdy nikt nie widzi.“", "Stefan Mirowski")
      << Cytat("„Mieć zaszczyt. Traktować harcerską służbę jako zaszczytny obowiązek, nie oczekując nagród, odznaczeń, wyróżnień. I tylko jedna nagroda za służbę: poczucie spełnionego obowiązku, oceniane we własnym sumieniu. Nie medale, nie premie, nie dyplomy, tylko – a może aż – spokojne sumienie, źródło wewnętrznego zadowolenia, szczęścia. Ku temu zmierza harcerskie, obywatelskie wychowanie.“", "Stefan Mirowski")
      << Cytat("„Jest złudzeniem, że harcerstwo może być apolityczne. Trzeba tylko wyraźnie rozróżnić: czy harcerstwo ma służyć polskiej racji stanu, czy też partykularnym interesom partii politycznych…“", "Stefan Mirowski")
      << Cytat("„Być wychowawcą – znaczy: dawać, służyć, pomagać, inspirować (...).", "Aleksander Kamiński")
      << Cytat("„Dużo marzę. I znów o Niej, o tej Białej, Ukochanej Najjaśniejszej Polsce. Pamiętam, jak przed laty myślałem o Tobie. Byłaś mi Ideałem, Prawdą, Sprawiedliwością. Pamiętam, jak łzy szczęścia kapały mi z oczu, gdyś wstała z grobu... Marzyłem o Tobie! Bo nie dość jest myśleć i chcieć o Polsce i dla Polski. Trzeba samemu reprezentować Polskę!“", "Aleksander Kamiński")
      << Cytat("„Harcerstwo jest organizacją nastawioną nie na „żądanie” od społeczeństwa, ale na „dawanie” społeczeństwu, służenie mu.“", "Aleksander Kamiński")
      << Cytat("„Jeśli harcerstwo chce nadal żyć i pełnić swoją funkcję, to musi samo zdobyć się na próbę odszukania własnego oblicza w dzisiejszym polskim życiu. Harcerska postawa powinna być postawą pozytywnego dążenia do zmian na lepsze... Dążeniem naszym jest, aby harcerstwo było organizacją samorządną, kierowaną przez władze wyłonione z wyborów, aby ZHP harmonizując swe prace z ideałami i potrzebami nowej Polski, dokonywał tego w ścisłym związku z tradycją skautingu i harcerstwa…“", "Aleksander Kamiński")
      << Cytat("„Jeżeli mam swe życzenia przekazać młodym dni dzisiejszych – tym, którzy mnie rozumieją – to nade wszystko życzę, by coraz silniej odczuwali smak „dawania”, a coraz słabiej – smak „brania”. „Dawania” bliskim i dalekim, znanym i nieznanym, żyjącym i tym, którzy żyć będą kiedyś. W „dawaniu” bowiem rośnie prawdziwa radość życia.“", "Aleksander Kamiński")
      << Cytat("„Nie w tym jest wart człowiek, co przemyślał i co przeżył, ale co zrobił dobrego na świecie. Bądźmy dzielni na co dzień. Dzielność jest fundamentem charakteru.“", "Aleksander Kamiński")
      << Cytat("„Staraj się być odważnym, silnym, prawdomównym, sprytnym, zręcznym – jednym słowem staraj się być dzielnym. Po to – żeby być dla wszystkich pożytecznym. Żeby z tobą było wszystkim dobrze.“", "Aleksander Kamiński")
      << Cytat("„Wolę swoją wykuję, zmuszę się do bezwzględnej pracowitości i karności! Zduszę ambicję, przerobię siebie na ideał harcerza!“", "Aleksander Kamiński")
      << Cytat("„Współczesna dzielność musi być przeniknięta panowaniem nad sobą i męstwem, rozwagą i sprawiedliwością.“", "Aleksander Kamiński")
      << Cytat("„Wychowanie nie poparte miłością do wychowanka jest bez wartości. Biada wychowawcy, który przyszedł do dzieci z chłodnym sercem. To jego tyczy się starożytne przysłowie o przekleństwie wychowywania cudzych dzieci. O człowieku, który przyszedł do dzieci z miłością – Chrystus mówi, że jest błogosławiony.“", "Aleksander Kamiński")
      << Cytat("„Rozejrzyjcie się wokół siebie: Czyż tylko zło nosi wysoko głowę? Czyż nie dostrzegacie przejawów zwycięstwa dobra?...“", "Aleksander Kamiński")
      << Cytat("„Cóż by ci przyszło z wolnej ojczyzny, gdyby Kościół miał na tym stracić?“", "Ks. Kazimierz Lutosławski")
      << Cytat("„Nasze poczucie moralne, zgodnie z uświęconą tradycyą Kościoła, uznaje Ojczyznę i Naród za naczelne dobro doczesne, które pomiędzy przyrodzonymi środkami zbawienia pierwsze zajmuje miejsce.“", "Ks. Kazimierz Lutosławski")
      << Cytat("„Skaut jest karny i szczególnie posłuszny rodzicom i przełożonym. Wie on, że jego własna wola nie jest ostatnią racyą jego postępowania, ale poczucie obowiązku, wyższe prawo moralne, dobro społeczne – których wyrazem bywa wola powołanych przełożonych w życiu rodzinnem i narodowem, przewodników, mających komendę, w życiu skautowem.“", "Ks. Kazimierz Lutosławski")
      << Cytat("„Skaut nie żyje dla siebie, ale całe życie jest sługą społeczeństwa, któremu z poświęceniem oddaje wszystkie swoje siły. (…) Obowiązek jest motorem jego czynów; obowiązki nie są mu ciężarem, ale życiem samem. W przełożonych widzi wyraz tego prawa, które mu obowiązek nakłada, i dlatego jest im wierny i stoi przy nich w dobrej i złej woli; nawet mówić źle o nich przy sobie nie pozwala.“", "Ks. Kazimierz Lutosławski")
      << Cytat("„Wianek z dębu i wawrzynu oznacza cele do zdobycia: siłę i umiejętność, sprawność i wiedzę. Oplata on główny symbol skautowy: krzyż z hasłem „Czuwaj”. Kształt tego krzyża jest dawny; takiego użyto do naszego orderu waleczności: Virtuti Militari; uprzytamnia on szczególnie obowiązek dzielności. Ma on w pośrodku kółko – symbol doskonałości, a w nim gwiazdę promienną, jakby światło przewodnie: „ad astra!” A sam krzyż znaczy: per aspera, bo wskazuje drogę ciężką, cierniami walki z własnemi słabościami usłaną, a przy tem oznacza też gotowość do tej walki i do wszelkich poświęceń – aż do męczeństwa za wiarę, aż do śmierci za Ojczyznę: Bóg i Ojczyzna są treścią wewnętrzną tego znaku. Hasło „Czuwaj” na nim – to pobudka, ostrzeżenie; oznacza gotowość ducha do pracy nieustannej.“", "Ks. Kazimierz Lutosławski")
      << Cytat("„Balansujcie dopóki się da, a gdy się już nie da, podpalcie świat!“", "Józef Piłsudski")
      << Cytat("„Bo ni z tego ni z owego mamy Polskę na pierwszego.“", "Józef Piłsudski")
      << Cytat("„Być zwyciężonym i nie ulec to zwycięstwo, zwyciężyć i spocząć na laurach to klęska. Kto chce, ten może, kto chce, ten zwycięża, byle chcenie nie było kaprysem lub bez mocy.“", "Józef Piłsudski")
      << Cytat("„Gdy dookoła nas wre wszędzie kłótnia i zawiść partyjna, gdy dygoce i rozpala się niechęć dzielnicowa, trudno, by żołnierz był spokojny.“", "Józef Piłsudski")
      << Cytat("„Głową muru nie przebijesz, ale jeśli zawiodły inne metody, należy spróbować i tej.“", "Józef Piłsudski")
      << Cytat("„Kto nie szanuje i nie ceni swojej przeszłości, ten nie jest godzien szacunku, teraźniejszości ani prawa do przyszłości.“", "Józef Piłsudski")
      << Cytat("„A po maturze chodziliśmy na kremówki.“", "Jan Paweł II")
      << Cytat("„A siły ducha są w człowieku. I działa też w sercach ludzkich miłość, która jest z Ducha Świętego.“", "Jan Paweł II")
      << Cytat("„Antysemityzm jest grzechem przeciwko Bogu i ludzkości.“", "Jan Paweł II")
      << Cytat("„Bogatym nie jest ten, kto posiada, ale ten, kto „rozdaje”, kto zdolny jest dawać.“", "Jan Paweł II")
      << Cytat("„Człowiek jest wielki nie przez to, co posiada, lecz przez to, kim jest; nie przez to, co ma, lecz przez to, czym dzieli się z innymi.“", "Jan Paweł II")
      << Cytat("„Człowiek nie jest tylko sprawcą swoich czynów, ale przez te czyny jest zarazem w jakiś sposób „twórcą siebie samego“", "Jan Paweł II")
      << Cytat("„Człowiek nie może siebie sam do końca zrozumieć bez Chrystusa. Nie może zrozumieć, ani kim jest, ani jaka jest jego prawdziwa godność, ani jakie jest jego powołanie i ostatecznie przeznaczenie.“", "Jan Paweł II")
      << Cytat("„Człowieka trzeba mierzyć miarą serca – sercem.“", "Jan Paweł II")
      << Cytat("„Człowiekowi współczesnemu grozi duchowa znieczulica, a nawet śmierć sumienia. Śmierć sumienia jest natomiast czymś gorszym od grzechu.“", "Jan Paweł II")
      << Cytat("„Człowiek rodzi się, kocha i umiera nie na próbę.“", "Jan Paweł II")
      << Cytat("„[Człowiek] szuka miłości, bo w głębi serca wie, że tylko miłość może uczynić go szczęśliwym.“", "Jan Paweł II")
      << Cytat("„Dobry przykład działa nie tylko zewnętrznie, lecz przenika do głębi i sprawia w drugim bardzo cenne i bardzo aktywne dobro, jakim jest umocnienie się w swoim powołaniu chrześcijańskim.“", "Jan Paweł II")
      << Cytat("„Dopóki zwycięstwo jednych w klęsce drugich, dopóty żadna klęska nie jest ostatnia.“", "Jan Paweł II")
      << Cytat("„Droga do celu to nie połowa przyjemności, to cała przyjemność.“", "Jan Paweł II")
      << Cytat("„Dzieci są nadzieją, która rozkwita wciąż na nowo, projektem, który nieustannie się urzeczywistnia, przyszłością, która pozostaje zawsze otwarta.“", "Jan Paweł II")
      << Cytat("„Ja wiem, co to jest wojna, lecz muszę powiedzieć, że wojna nie rozwiązuje problemów, ale je mnoży.“", "Jan Paweł II")
      << Cytat("„Jak można kochać Boga który jest niewidzialny, nie kochając człowieka który jest obok nas.“", "Jan Paweł II")
      << Cytat("„Ja wiem, co to jest wojna, lecz muszę powiedzieć, że wojna nie rozwiązuje problemów, ale je mnoży.“", "Jan Paweł II")
      << Cytat("„Jesteśmy tym bogatsi im więcej rzeczy zbędnych zdołamy odrzucić.“", "Jan Paweł II")
      << Cytat("„Każdy z was, młodzi przyjaciele, znajduje też w życiu jakieś swoje Westerplatte, jakiś wymiar zadań, które trzeba podjąć i wypełnić, jakąś słuszną sprawę, o którą nie można nie walczyć, jakiś obowiązek, powinność, od której nie można się uchylić, nie można zdezerterować. Wreszcie, jakiś porządek prawd i wartości, które trzeba utrzymać i obronić, tak jak to Westerplatte. Utrzymać i obronić, w sobie i wokół siebie, obronić dla siebie i dla innych.“", "Jan Paweł II")
      << Cytat("„Kto nie wierzy w diabła, nie wierzy w Ewangelię.“", "Jan Paweł II")
      << Cytat("„Miłość i służba nadają sens naszemu życiu.“", "Jan Paweł II")
      << Cytat("„Musicie od siebie wymagać, nawet gdyby inni od was nie wymagali.“", "Jan Paweł II")
      << Cytat("„Muszę Wam powiedzieć, że ja osobiście, chociaż mam już wiele lat, nigdy nie mogę się doczekać, kiedy przyjdzie Boże Narodzenie i kiedy mi to drzewko postawią w mieszkaniu.“", "Jan Paweł II")
      << Cytat("„Najbardziej twórczą ze wszystkich prac jest praca nad sobą, która pozwala odnajdywać urok młodości.“", "Jan Paweł II")
      << Cytat("„Nie bój się, nie lękaj! Wypłyń na głębię!“", "Jan Paweł II")
      << Cytat("„Nie ma większego bogactwa w narodzie nad światłych obywateli.“", "Jan Paweł II")
      << Cytat("„W każdym mieszka dobro, i zło i tylko to drugie jest aktywne.“", "Jan Paweł II")
      << Cytat("„Wczoraj do ciebie nie należy. Jutro niepewne… Tylko dziś jest twoje.“", "Jan Paweł II")
      << Cytat("“Zadaniem instruktora jest dawać, a nie brać.”", "Henryk Glass")
      << Cytat("“Liche charaktery podleją w ogniu wydarzeń, a silne hartują się jak stal i nie dają się złamać.”", "Henryk Glass")
      << Cytat("“Programy [w harcerstwie] są różne i zmienne, ale istnieje to samo wspólne dla wszystkich źródło rzeczy: Prawo Harcerskie, metoda, system zastępowy.”", "Ewa Grodecka")
      << Cytat("“Harcerstwo nie jest starą, skostniałą wiedzą, którą wpajać masz w swoje dziewczęta. Jest ono życiem.”", "Ewa Grodecka")
      << Cytat("“Jest tedy Harcerstwo ruchem, organizacją i systemem wychowawczym, w istocie swej głęboko polskim, choć realizującym najpiękniejsze idee ogólnoludzkie”", "Ewa Grodecka")
      << Cytat("„Trudności życia są błogosławieństwem, gdyż przezwyciężanie ich oznacza zwycięstwo.“", "Olga Małkowska")
      << Cytat("„Skautostwo baden-powellowskie posiada tak niezmiernie bogatą treść i jest tak świetnie dostosowane do wrodzonych skłonności młodzieży, że zarówno chłopcy, jak i dziewczęta mogą nieograniczenie zeń czerpać. Dlatego nie uzasadnionym jest twierdzenie niektórych osób, jakoby skautki były tylko naśladownictwem chłopców.“", "Olga Małkowska")
      << Cytat("„Bo kto nie był ni razu człowiekiem, temu człowiek nic nie pomoże.“<br> <b>Dziady część II</b>", "Adam Mickiewicz")
      << Cytat("„Bo serce nie jest sługa, nie zna, co to pany,<br> I nie da się przemocą okuwać w kajdany.“<br><br><b>Pan Tadeusz</b>", "Adam Mickiewicz")
      << Cytat("„Tam sięgaj, gdzie wzrok nie sięga; <br> Łam, czego rozum nie złamie“<br><b>Wiersze</b>", "Adam Mickiewicz")
      << Cytat("„... Nasz naród jak lawa,<br>Z wierzchu zimna i twarda, sucha i plugawa,<br>Lecz wewnętrznego ognia sto lat nie wyziębi;<br> Plwajmy na tę skorupę i zstąpmy do głębi.“<br><b>Dziady część III</b>", "Adam Mickiewicz")
      << Cytat("„Ciemno wszędzie, głucho wszędzie,<br> Co to będzie, co to będzie?“<br><b>Dziady część II</b>", "Adam Mickiewicz")
      << Cytat("„Kto nie dozna goryczy ni razu, Ten nie dozna słodyczy w niebie.“<br><b>Dziady część II</b>", "Adam Mickiewicz")
      << Cytat("„Źle mnie w złych ludzi tłumie,<br> Płaczę, a oni szydzą;<br>Mówię, nikt nie rozumie;<br>Widzę, oni nie widzą!“<br><b>Ballady i romanse</b>", "Adam Mickiewicz")
      << Cytat("„Lecz zaklinam - niech żywi nie tracą nadziei<br>I przed narodem niosą oświaty kaganiec;<br>A kiedy trzeba, na śmierć idą po kolei,<br>Jak kamienie przez Boga rzucone na szaniec!“<br><b>Testament Mój</b>", "Juliusz Słowacki")
      << Cytat("„Biada, kto daje ojczyźnie pół duszy,<br>A drugie tu pół dla szczęścia zachowa.“<br><b>Beniowski</b>", "Juliusz Słowacki")
      << Cytat("„Nie czas żałować róż, gdy płoną lasy.“<br><b>Lilla Weneda</b>", "Juliusz Słowacki")
      << Cytat("„Gdzież anioł przeczucia? Czy przyjdzie? poprowadzi? Więc myśli i uczucia Trzeba skąpca przykładem, na lata rozłożyć, I nigdy zmysłów w jednej nie utracić burzy. Trzeba się dziś zwyciężyć, aby jutra dożyć. Dziwna ciekawość życia prowadzi w podróży. A za ciekawość trzeba nieszczęściami płacić, I nigdy zmysłów w jednej burzy nie utracić…“<br><b>Kordian</b>", "Juliusz Słowacki")
      << Cytat("„Każdy człowiek, który się poświęca<br>Za wolność – jest człowiekiem, nowym Boga tworem.“<br><b>Kordian</b>", "Juliusz Słowacki")
      << Cytat("“W świecie pełnym niepewności i niepokoju nasz Ruch błyszczy jak złoty łańcuch na ciemnym tle…”", "Lady Olave Baden-Powell")
      << Cytat("“Przez braterstwo skautów do braterstwa narodów oto dewiza poczynań skautowych.”", "Antoni Olbromski")
      << Cytat("“Spójrzmy równocześnie w przyszłość, zdajmy sobie sprawę, czego Polska spodziewa się po nas młodych, idących w życie”", "Antoni Olbromski")
      << Cytat("“Przed nami dwa tygodnie codziennego życia obozowego, wypełnionego zwykłemi zajęciami obozowemi. Każdy z nas jest kółeczkiem w tej maszynie. Jeśli jedno choćby najdrobniejsze szwankuje cała maszyna odczuwa to.”", "Antoni Olbromski")
      << Cytat("“Uśmiech jako wyraz pogody i radości stworzy ten nastrój harcerski, bez którego obóz byłby przytłaczającym, przymusowym obowiązkiem.”", "Antoni Olbromski")
      << Cytat("“Nic nie znaczą słowa Przyrzeczenia, jeśli się wielokrotnie nie przełamały w pryzmacie codziennego życia.”", "Jadwiga Falkowska")
      << Cytat("“Harcerz wie, że trzeba zawsze wytrwać i przetrwać, by nareszcie zwyciężyć, a nie tracić nadziei i nie mówić przedwcześnie, że wszystko stracone.”", "Józef Haller")
      << Cytat("“Ideał wychowawczy skautowy jest czynnikiem równowagi przez przenoszenie pierwiastka harmonii w świat ludzi i narodów.”", "Maria Kapiszewska")
      << Cytat("“Wierność Ojczyźnie była i jest naczelnym prawem harcerskim.”", "Tadeusz Strumiłło")
      << Cytat("“Nie wolno rezygnować z najwyższych wymagań ani obniżać poziomu ideowego na korzyść popularności.”", "Jadwiga Wierzbiańska")
      << Cytat("“Do harcerstwa się nie należy, harcerką się jest lub się nią nie jest”", "Maria Wocalewska")
      << Cytat("“Ruch harcerski musi się rozwijać i rosnąć nie tylko wszerz, przez pozyskiwanie nowych zwolenników, ale i w głąb przez rozwijanie swych zasad, ulepszanie metod pracy.”", "Stanisław Sedlaczek");
    return m_quotes;
  }

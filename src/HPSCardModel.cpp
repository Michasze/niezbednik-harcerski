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

#include "HPSCardModel.h"
#include <QDebug>

HPSCardModel::HPSCardModel(QObject *parent) :
  QAbstractListModel(parent)
{
  m_data =  dane();
}

int HPSCardModel::rowCount(const QModelIndex &parent) const
{
  if (parent.isValid())
    {
      return 0;
    }
  return m_data.count();
}
QVariant HPSCardModel::data(const QModelIndex &index, int role) const
{
  if( !index.isValid() )
    {
      return QVariant();
    }
  const Data &data = m_data.at(index.row());
  if ( role == HeaderRole )
    {
      return data.header;
    }
  else if ( role ==  ImgRole )
    {
      return data.image;
    }
  else if ( role == UrlRole )
    {
      return data.address;
    }
  else if ( role == CategoryRole )
    {
      return data.category;
    }
  else if ( role == DescriptionRole )
    {
      return data.description;
    }
  else
    {
      return QVariant();
    }
}
QHash<int, QByteArray> HPSCardModel::roleNames() const
{
  static QHash<int, QByteArray> mapping {
    {HeaderRole, "header"},
    {ImgRole, "image"},
    {UrlRole, "address"},
    {CategoryRole, "category"},
    {DescriptionRole, "description"}
  };
  return mapping;
}
QVector< Data > HPSCardModel::dane()
{
  QVector< Data > m_dane;
  m_dane
    << Data("Royal Rangers", "qrc:/contents/ui/img/RR.svg", "przyrzeczenieRR.qml", "roty przyrzeczenia", "")
    << Data("ZHP", "qrc:/contents/ui/img/zhp.svg", "przyrzeczenieZHP.qml", "roty przyrzeczenia", "")
    << Data("ZHR", "qrc:/contents/ui/img/zhr.svg", "przyrzeczenieZHR.qml", "roty przyrzeczenia", "")
    << Data("SHK ???Zawisza???", "qrc:/contents/ui/img/fse.svg", "przyrzeczenieFSE.qml", "roty przyrzeczenia", "")
    << Data("Organizacja Harcerska ???Rod??o???", "qrc:/contents/ui/img/rodlo.svg", "przyrzeczenieOH.qml", "roty przyrzeczenia", "")
    << Data("Skauci Kr??la", "qrc:/contents/ui/img/tarcza.svg", "przyrzeczenieSK.qml", "roty przyrzeczenia", "")
    << Data("Dawne roty przyrzeczenia", "image://icons/zwoj.svg,white", "histPrzyrzeczenia.qml", "roty przyrzeczenia", "")
    << Data("Harcerstwo Zwi??zku Narodowego Polskiego", "qrc:/contents/ui/img/HZNP.svg", "HZNP.qml", tr("historia"), "Organizacja harcerska w Stanach Zjednoczonych")
    << Data("Harcerz", "qrc:/contents/ui/img/harcerz.svg", "harcerz.qml", tr("historia"), "Sk??d pochodzi ten wyraz?")
    << Data("Zlot ZHP w Spale", "qrc:/contents/ui/img/spala.svg", "spala.qml", tr("historia"), "Jubileuszowy Zlot w Spale")
    << Data("Kamie?? pami??tkowy", "image://images/kamien.jpg", "kamien.qml", tr("historia"), "Ku czci harcerzy poleg??ych w walce o polsko???? Wroc??awia")
    << Data("Kto przet??umaczy?? \"Scouting for boys\"?", "image://images/ktoPrzetlumaczyl.jpg", "ktoPrzetlumaczyl.qml", tr("historia"), "O przek??adzie podr??cznika BP")
    << Data("Wyj??tkowe krzy??e harcerskie", "image://images/krzyz2.jpg", "wyjatkowe.qml", tr("historia"), "Ciekawe i nietypowe formy krzy??a")
    << Data("Lista znanych os??b, kt??re by??y w harcerstwie", "image://images/neilA.jpg", "listaZnanych.qml", tr("historia"), "Znani harcerze i skauci")
    << Data("Dzie?? My??li Braterskiej", "image://icons/dmb.svg,white", "DMB.qml", tr("historia"), "Historia ??wi??ta skaut??w")
    << Data("Najwa??niejsze daty w historii harcerstwa", "image://icons/1907.svg,white", "daty.qml", tr("historia"), "")
    << Data(tr("Robert Baden-Powell"), "image://images/Baden-Powell.jpg", "badenPowell.qml", "postacie", "Tw??rca skautingu")
    << Data("gen. August Fieldorf pseudonim \"Nil\"", "image://images/Nil2.jpg", "Nil.qml", "postacie", "Dow??dca Kedywu, zast??pca Komendanta AK")
    << Data("Jan Bytnar \"Rudy\"", "image://images/rudy2.jpg", "rudy.qml", "postacie", "Komendant hufca \"Ochota\"")
    << Data("Andrzej Ma??kowski", "image://images/Andrzej_Malkowski.jpg", "malkowski.qml", "postacie", "")
    << Data("Olga Ma??kowska", "image://images/Olga_Malkowska.jpg", "malkowska.qml", "postacie", "")
    << Data("??wi??ty Jerzy", "image://images/swJerzy2.jpg", "swJerzy.qml", "postacie", "Ciekawostki o patronie harcerstwa")
    << Data("Hubert Bonin", "image://images/HubertBonin.jpg", "hubertBonin.qml", "postacie", "")
    << Data("Stefan ???Grot??? Rowecki", "image://images/Grot2.jpg", "Grot.qml", "postacie", "Dow??dca Armii Krajowej, Komendant Zwi??zku Walki Zbrojnej")
    << Data("Marian Pluci??ski", "image://images/msciciel.jpg", "msciciel2.qml", "postacie", "pseudonim \"M??ciciel\"")
    << Data("Ludwik Idzikowski", "image://images/LudwikIdzikowski2.jpg", "LudwikIdzikowski.qml", "postacie", "Pilot okresu mi??dzywojennego")
    << Data("Stanis??aw Skalski", "image://images/Stanislaw_skalski2.jpg", "stanislawSkalski.qml", "postacie", "lotnik w Wojsku Polskim w trakcie II wojny ??wiatowej")
    << Data("Janusz Brochwicz-Lewi??ski pseudonim \"Gryf\"", "image://images/gryf2.jpg", "gryf.qml", "postacie", "??o??nierz batalionu AK \"Parasol\"")
    << Data("Zab??jstwo W??adys??awa Mroza", "image://images/zabojstwo_mroza.jpg", "zabojstwo_mroza.qml", "postacie", "Por??wnanie informacji prasowych")
    << Data("W??adys??aw Mr??z", "image://images/mroz3.jpg", "mroz.qml", "postacie", "Dow??dca I batalionu 5 pu??ku Strzelc??w Podhala??skich")
    << Data("Jan Borysewicz", "qrc:/contents/ui/img/user.svg", "msciciel.qml", "postacie", "pseudonim \"Krysia\", \"M??ciciel\"")
    << Data("Ekosystem w s??oiku", "image://icons/applications-science.svg,white", "ekosystem.qml", tr("pomys??y na zbi??rki"), "Jak przygotowa?? ro??link?? w s??oiku?")
    << Data("Wied??mi??ski LARP", "image://icons/wiedzmin.svg,white", "wiedzmin.qml", tr("pomys??y na zbi??rki"), "Zbi??rka o tematyce Wied??mina")
    << Data("Podr????e ma??e i du??e", "image://icons/edit-paste-in-place.svg,white", "podroze.qml", tr("pomys??y na zbi??rki"), "Harcerskie w??drowanie tam i z powrotem.")
    << Data("Gra fabularna", "image://icons/kosci.svg,white", "gra_warsztaty.qml", tr("pomys??y na zbi??rki"), "W klimatach bloku wschodniego.")
    << Data("Geoguessr", "image://icons/atmosphere.svg,white", "geoguessr.qml", tr("pomys??y na zbi??rki"), "Pomys?? na zdaln?? zbi??rk?? z ??wiczeniem spostrzegawczo??ci.")
    << Data("Zbi??rka fotograficzna", "image://icons/camera-photo.svg,white", "fotograficzna.qml", tr("pomys??y na zbi??rki"), "Jak przygotowa?? zbi??rk?? fotograficzn?? online?")
    << Data("Harcerska geoskrytka", "image://icons/geo2.svg,white", "geo.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak organizowa?? gry terenowe?", "image://icons/kosci.svg,white", "terenowe.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Ultralight", "image://icons/plecak.svg,white", "ultralight.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak spa?? ciep??o podczas biwak??w i w??dr??wek?", "image://icons/spiwor.svg,white", "jakSpac.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak stworzy?? map?? miejsc w??dr??wkowych?", "image://icons/mapa.svg,white", "mapaMiejsc.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak pomaga?? uchod??com z Ukrainy?", "image://icons/transform-browse.svg,white", "jakPomagac.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Porady i harc tricki na wyjazdy harcerskie", "image://icons/karimata.svg,white", "porady.qml", "poradniki harcerskie", "Julia ???Inka??? Karpowicz")
    << Data("Ma??a ksi??ga szyfr??w", "", "malaKsiega.qml", tr("szyfry"), "Opracowa??: Piotr Parkita HO")
    << Data("Program szyfruj??cy", "", "szyfrator.qml", tr("szyfry"), "Autor: Osio??ek")
    << Data("Znaki s??u??b ZHP", "image://icons/przyrodzie.svg", "znaki.qml", "symbolika", "")
    << Data("Krzy?? harcerski", "image://icons/krzyz.svg,white", "symbolikaKrzyz.qml", "symbolika", "")
    << Data("WOSM", "image://icons/wosm_tlo.svg", "symbolikaWosm.qml", "symbolika", "")
    << Data("WAGGGS", "image://icons/wagggs.svg", "symbolikaWagggs.qml", "symbolika", "")
    << Data("Znaczek zucha", "image://icons/znaczek-zucha.svg", "symbolikaZnaczek.qml", "symbolika", "")
    << Data("Watra w??drownicza", "image://icons/watra.svg", "watra.qml", "symbolika", "")
    << Data("Naramiennik starszoharcerski", "image://icons/roza.svg", "naramiennik.qml", "symbolika", "")
    << Data("Ksi????ki dla harcerzy", "image://icons/sznur.svg,#747f81", "ksiazkiHarcerz.qml", tr("ksi????ki"), "")
    << Data("Ksi????ki dla zast??powych", "image://icons/sznur.svg,#574136", "ksiazkiZastepowy.qml", tr("ksi????ki"), "")
    << Data("Ksi????ki dla dru??ynowych", "image://icons/sznur.svg,mediumblue", "ksiazkiDruzynowy.qml", tr("ksi????ki"), "")
    << Data("Fazy rozwoju dru??ynowego", "", "pracaNauczyciela.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("Zbi??rki w terenie", "", "zbiorkiWTerenie.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("Jak promowa?? harcerstwo?", "", "promocja.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("T????yzna fizyczna", "", "tezyzna.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("Ekwipunek harcerski", "", "nowoczesny.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("Dlaczego kadra ma w??asne namioty?", "", "kadraNamioty.qml", "artyku??y", "Juliusz Idzikowski")
    << Data("Zjazd ZHP w Bydgoszczy - 30 lat min????o", "", "zjazd.qml", "artyku??y", "Ryszard Pac??awski")
    << Data("Prawie wszystko o sprawno??ciach", "", "prawie.qml", "artyku??y", "Janusz Sikorski")
    << Data("Poradnik dla zast??powych zast??p??w starszoharcerskich", "qrc:/contents/ui/img/HS.svg", "PoradnikHS.qml", "poradnik zast??powego", "Opracowanie: Kinga ??egli??ska HO")
    << Data("Poradnik dla zast??powych zast??p??w w??drowniczych", "qrc:/contents/ui/img/Wedro.svg", "PoradnikWedro.qml", "poradnik zast??powego", "Opracowanie: Kinga ??egli??ska HO")
    << Data("Poradnik wyboru no??a", "image://icons/noz.svg,white", "noz.qml", "poradniki wyboru sprz??tu", "")
    << Data("Jak wybra?? odpowiedni ??piw??r?", "image://icons/spiwor.svg,white", "Spiwor.qml", "poradniki wyboru sprz??tu", "")
    << Data("Wyb??r karimaty, maty lub materaca", "image://icons/karimata.svg,white", "maty.qml", "poradniki wyboru sprz??tu", "")
    << Data("Ekwipunek obozowy wed??ug BP", "image://images/Baden-Powell.jpg", "pakowanieBP.qml", "pakowanie", "Lista rzeczy do spakowania dla ka??dego skauta")
    << Data("Ob??z", "image://icons/namiot_dycha.svg,white", "pakowanieOboz.qml", "pakowanie", "Co zabra?? na ob??z?")
    << Data("Wyjazd rowerowy", "image://icons/rower.svg,white", "pakowanieRower.qml", "pakowanie", "Lista rzeczy na wyjazd rowerowy")
    << Data("Biwak z hamakami", "image://icons/hamak.svg,white", "pakowanieHamaki.qml", "pakowanie", "Lista rzeczy do zabrania na hamaki")
    << Data("Biwak zim?? trwaj??cy 3 dni", "image://icons/namiot_biwakowy.svg,white", "pakowanieZima.qml", "pakowanie", "Zimowy biwak z wieloma w??dr??wkami")
    << Data("Biwak", "image://icons/domek.svg,white", "pakowanieBiwaki.qml", "pakowanie", "Co spakowa?? na trzydniowy biwak w budynku?")
    << Data("ZHP", "image://icons/zhp.svg", "stopnieZHP.qml", tr("stopnie harcerskie"), "")
    << Data("ZHR", "image://icons/zhr.svg", "stopnieZHR.qml", tr("stopnie harcerskie"), "")
    << Data("Stowarzyszenie Harcerskie", "image://icons/sh.svg", "stopnieSH.qml", tr("stopnie harcerskie"), "")
    << Data("Organizacja Harcerska ???Rod??o???", "image://icons/rodlo.svg", "stopnieOH.qml", tr("stopnie harcerskie"), "")
    << Data("SHK ???Zawisza???", "image://icons/fse.svg", "stopnieFSE.qml", tr("stopnie harcerskie"), "")
    << Data("ZHP", "image://icons/zhp.svg", "prawoZHP.qml", tr("prawo harcerskie"), "")
    << Data("ZHR", "image://icons/zhr.svg", "prawoZHR.qml", tr("prawo harcerskie"), "")
    << Data("SHK ???Zawisza???", "image://icons/fse.svg", "prawoFSE.qml", tr("prawo harcerskie"), "")
    << Data("Stowarzyszenie Harcerskie", "image://icons/sh.svg", "prawoSH.qml", tr("prawo harcerskie"), "")
    << Data("Royal Rangers", "image://icons/RR.svg", "prawoRR.qml", tr("prawo harcerskie"), "")
    << Data("Organizacja Harcerska ???Rod??o???", "image://icons/rodlo.svg", "prawoOH.qml", tr("prawo harcerskie"), "")
    << Data("Skauci Kr??la", "image://icons/tarcza.svg", "prawoSK.qml", tr("prawo harcerskie"), "")
    << Data("Historyczne prawa harcerskie", "image://icons/zwoj.svg,white", "histPrawa.qml", tr("prawo harcerskie"), "")
    << Data("Powstaniec", "image://icons/kotwica.svg,white", "powstaniec.qml", "gaw??dy", "autorzy: ??wikowie na pr??bie 2021 Chom??towo")
    << Data("Zwyczaje przy ognisku", "image://icons/ognisko.svg,white", "zwyczaje.qml", "gaw??dy", "autor: Wojciech Jakubczyk")
    << Data("Iskra Braterstwa", "image://icons/thunderbolt.svg,white", "iskra.qml", "gaw??dy", "autor: Alicja Kowalska")
    << Data("Opowie???? o grzybiarzu", "image://icons/grzyb.svg,white", "grzybiarz.qml", "gaw??dy", "autor: Jacek W??troba");
  return m_dane;
}
void HPSCardModel::setFilteredDane( const QString &query)
{
  if( m_query != query )
    {
      m_query = query;
    }
}
QVector< Data > HPSCardModel::filteredDane()
{
  QVector< Data > m_filteredData;
  for (int i=0; i < m_data.size(); i++)
    {
      if (m_data.at(i).category == m_query)
        {
          m_filteredData.append(m_data.at(i));
        }
    }
  return m_filteredData;
}
void HPSCardModel::reload()
{
  QModelIndex topLeft = createIndex(8,0);
  QModelIndex bottomRight = createIndex(35,0);
  beginResetModel();
  endResetModel();
  m_data = dane();
  Q_EMIT dataChanged(topLeft, bottomRight);
}

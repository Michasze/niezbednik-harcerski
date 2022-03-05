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
    << Data("Royal Rangers", "qrc:/contents/ui/img/RR.svg", "przyrzeczenieRR.qml", "przyrzeczenia", "")
    << Data("Związek Harcerstwa Polskiego", "qrc:/contents/ui/img/zhp.svg", "przyrzeczenieZHP.qml", "przyrzeczenia", "")
    << Data("Związek Harcerstwa Rzeczypospolitej", "qrc:/contents/ui/img/zhr.svg", "przyrzeczenieZHP.qml", "przyrzeczenia", "")
    << Data("SHK „Zawisza”", "qrc:/contents/ui/img/fse.svg", "przyrzeczenieFSE.qml", "przyrzeczenia", "")
    << Data("Organizacja Harcerska „Rodło”", "qrc:/contents/ui/img/rodlo.svg", "przyrzeczenieOH.qml", "przyrzeczenia", "")
    << Data("Skauci Króla", "qrc:/contents/ui/img/tarcza.svg", "przyrzeczenieSK.qml", "przyrzeczenia", "")
    << Data("Harcerstwo Związku Narodowego Polskiego", "qrc:/contents/ui/img/HZNP.svg", "HZNP.qml", "historia", "Organizacja harcerska w Stanach Zjednoczonych")
    << Data("Harcerz", "qrc:/contents/ui/img/harcerz.svg", "harcerz.qml", "historia", "Skąd pochodzi ten wyraz?")
    << Data("Zlot ZHP w Spale", "qrc:/contents/ui/img/spala.svg", "spala.qml", "historia", "Jubileuszowy Zlot w Spale")
    << Data("Kamień pamiątkowy", "image://images/kamien.jpg", "kamien.qml", "historia", "Ku czci harcerzy poległych w walce o polskość Wrocławia")
    << Data("Kto przetłumaczył \"Scouting for boys\"?", "image://images/ktoPrzetlumaczyl.jpg", "ktoPrzetlumaczyl.qml", "historia", "O przekładzie podręcznika BP")
    << Data("Wyjątkowe krzyże harcerskie", "image://images/krzyz2.jpg", "wyjatkowe.qml", "historia", "Ciekawe i nietypowe formy krzyża")
    << Data("Lista znanych osób, które były w harcerstwie", "image://images/neilA.jpg", "listaZnanych.qml", "historia", "Znani harcerze i skauci")
    << Data("Dzień Myśli Braterskiej", "image://icons/dmb.svg,white", "DMB.qml", "historia", "Historia święta skautów")
    << Data("Najważniejsze daty w historii harcerstwa", "image://icons/1907.svg,white", "daty.qml", "historia", "")
    << Data("Dawne roty przyrzeczenia", "image://icons/zwoj.svg,white", "histPrzyrzeczenia.qml", "historia", "")
    << Data("Historyczne prawa harcerskie", "image://icons/zwoj.svg,white", "histPrawa.qml", "historia", "")
    << Data("Robert Baden-Powell", "image://images/Baden-Powell.jpg", "badenPowell.qml", "postacie", "Twórca skautingu")
    << Data("gen. August Fieldorf pseudonim \"Nil\"", "image://images/Nil2.jpg", "Nil.qml", "postacie", "Dowódca Kedywu, zastępca Komendanta AK")
    << Data("Jan Bytnar \"Rudy\"", "image://images/rudy2.jpg", "rudy.qml", "postacie", "Komendant hufca \"Ochota\"")
    << Data("Andrzej Małkowski", "image://images/Andrzej_Malkowski.jpg", "malkowski.qml", "postacie", "")
    << Data("Olga Małkowska", "image://images/Olga_Malkowska.jpg", "malkowska.qml", "postacie", "")
    << Data("Święty Jerzy", "image://images/swJerzy2.jpg", "swJerzy.qml", "postacie", "Ciekawostki o patronie harcerstwa")
    << Data("Hubert Bonin", "image://images/HubertBonin.jpg", "hubertBonin.qml", "postacie", "")
    << Data("Stefan \“Grot\” Rowecki", "image://images/Grot2.jpg", "Grot.qml", "postacie", "Dowódca Armii Krajowej, Komendant Związku Walki Zbrojnej")
    << Data("Marian Pluciński", "image://images/msciciel.jpg", "msciciel2.qml", "postacie", "pseudonim \"Mściciel\"")
    << Data("Ludwik Idzikowski", "image://images/LudwikIdzikowski2.jpg", "LudwikIdzikowski.qml", "postacie", "Pilot okresu międzywojennego")
    << Data("Stanisław Skalski", "image://images/Stanislaw_skalski2.jpg", "stanislawSkalski.qml", "postacie", "lotnik w Wojsku Polskim w trakcie II wojny światowej")
    << Data("Janusz Brochwicz-Lewiński pseudonim \"Gryf\"", "image://images/gryf2.jpg", "gryf.qml", "postacie", "żołnierz batalionu AK \"Parasol\"")
    << Data("Zabójstwo Władysława Mroza", "image://images/zabojstwo_mroza.jpg", "zabojstwo_mroza.qml", "postacie", "Porównanie informacji prasowych")
    << Data("Władysław Mróz", "image://images/mroz3.jpg", "mroz.qml", "postacie", "Dowódca I batalionu 5 pułku Strzelców Podhalańskich")
    << Data("Jan Borysewicz", "", "msciciel.qml", "postacie", "pseudonim \"Krysia\", \"Mściciel\"")
    << Data("Ekosystem w słoiku", "qrc:/contents/ui/img/applications-science.svg", "ekosystem.qml", "pomysły na zbiórki", "Jak przygotować roślinkę w słoiku?")
    << Data("Wiedźmiński LARP", "image://icons/wiedzmin.svg,white", "wiedzmin.qml", "pomysły na zbiórki", "Zbiórka o tematyce Wiedźmina")
    << Data("Podróże małe i duże", "image://icons/edit-paste-in-place.svg,white", "podroze.qml", "pomysły na zbiórki", "Harcerskie wędrowanie tam i z powrotem.")
    << Data("Gra fabularna", "image://icons/kosci.svg,white", "gra_warsztaty.qml", "pomysły na zbiórki", "W klimatach bloku wschodniego.")
    << Data("Geoguessr", "image://icons/atmosphere.svg,white", "geoguessr.qml", "pomysły na zbiórki", "Pomysł na zdalną zbiórkę z ćwiczeniem spostrzegawczości.")
    << Data("Zbiórka fotograficzna", "qrc:/contents/ui/img/camera-photo.svg", "fotograficzna.qml", "pomysły na zbiórki", "Jak przygotować zbiórkę fotograficzną online?")
    << Data("Harcerska geoskrytka", "image://icons/geo2.svg,white", "geo.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak organizować gry terenowe?", "image://icons/kosci.svg,white", "terenowe.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Ultralight", "image://icons/plecak.svg,white", "ultralight.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak spać ciepło podczas biwaków i wędrówek?", "image://icons/spiwor.svg,white", "jakSpac.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Jak stworzyć mapę miejsc wędrówkowych?", "image://icons/mapa.svg,white", "mapaMiejsc.qml", "poradniki harcerskie", "pwd. Juliusz Idzikowski")
    << Data("Porady i harc tricki na wyjazdy harcerskie", "image://icons/karimata.svg,white", "porady.qml", "poradniki harcerskie", "Julia “Inka” Karpowicz")
    << Data("Mała księga szyfrów", "", "malaKsiega.qml", "szyfry", "Opracował: Piotr Parkita HO")
    << Data("Program szyfrujący", "", "szyfrator.qml", "szyfry", "Autor: Osiołek")
    << Data("Znaki służb ZHP", "image://icons/przyrodzie.svg", "znaki.qml", "symbolika", "")
    << Data("Krzyż harcerski", "image://icons/krzyz.svg,white", "symbolikaKrzyz.qml", "symbolika", "")
    << Data("WOSM", "image://icons/wosm_tlo.svg", "symbolikaWosm.qml", "symbolika", "")
    << Data("WAGGGS", "image://icons/wagggs.svg", "symbolikaWagggs.qml", "symbolika", "")
    << Data("Znaczek zucha", "image://icons/znaczek-zucha.svg", "symbolikaZnaczek.qml", "symbolika", "")
    << Data("Watra wędrownicza", "image://icons/watra.svg", "watra.qml", "symbolika", "")
    << Data("Książki dla harcerzy", "image://icons/sznur.svg,#747f81", "ksiazkiHarcerz.qml", "książki", "")
    << Data("Książki dla zastępowych", "image://icons/sznur.svg,#574136", "ksiazkiZastepowy.qml", "książki", "")
    << Data("Książki dla drużynowych", "image://icons/sznur.svg,mediumblue", "ksiazkiDruzynowy.qml", "książki", "")
    << Data("Fazy rozwoju drużynowego", "", "pracaNauczyciela.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Zbiórki w terenie", "", "zbiorkiWTerenie.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Jak promować harcerstwo?", "", "promocja.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Tężyzna fizyczna", "", "tezyzna.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Ekwipunek harcerski", "", "nowoczesny.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Dlaczego kadra ma własne namioty?", "", "kadraNamioty.qml", "artykuły", "Juliusz Idzikowski")
    << Data("Zjazd ZHP w Bydgoszczy - 30 lat minęło", "", "zjazd.qml", "artykuły", "Ryszard Pacławski")
    << Data("Prawie wszystko o sprawnościach", "", "prawie.qml", "artykuły", "Janusz Sikorski")
    << Data("Poradnik dla zastępowych zastępów starszoharcerskich", "qrc:/contents/ui/img/HS.svg", "PoradnikHS.qml", "poradniki dla zastępowych", "")
    << Data("Poradnik dla zastępowych zastępów wędrowniczych", "qrc:/contents/ui/img/Wedro.svg", "PoradnikWedro.qml", "poradniki dla zastępowych", "")
    << Data("Poradnik wyboru noża", "image://icons/noz.svg,white", "noz.qml", "poradniki wyboru sprzętu", "")
    << Data("Jak wybrać odpowiedni śpiwór?", "image://icons/spiwor.svg,white", "Spiwor.qml", "poradniki wyboru sprzętu", "")
    << Data("Wybór karimaty, maty lub materaca", "image://icons/karimata.svg,white", "maty.qml", "poradniki wyboru sprzętu", "")
    << Data("Ekwipunek obozowy według BP", "image://images/Baden-Powell.jpg", "pakowanieBP.qml", "pakowanie", "Lista rzeczy do spakowania dla każdego skauta")
    << Data("Obóz", "image://icons/namiot_dycha.svg,white", "pakowanieOboz.qml", "pakowanie", "Co zabrać na obóz?")
    << Data("Wyjazd rowerowy", "image://icons/rower.svg,white", "pakowanieRower.qml", "pakowanie", "Lista rzeczy na wyjazd rowerowy")
    << Data("Biwak z hamakami", "image://icons/hamak.svg,white", "pakowanieHamaki.qml", "pakowanie", "Lista rzeczy do zabrania na hamaki")
    << Data("Biwak zimą trwający 3 dni", "", "pakowanieZima.qml", "pakowanie", "Zimowy biwak z wieloma wędrówkami")
    << Data("Biwak", "", "pakowanieBiwaki.qml", "pakowanie", "Co spakować na trzydniowy biwak w budynku?")
    << Data("ZHP", "image://icons/zhp.svg", "stopnieZHP.qml", "stopnie harcerskie", "")
    << Data("ZHR", "image://icons/zhr.svg", "stopnieZHR.qml", "stopnie harcerskie", "")
    << Data("Stowarzyszenie Harcerskie", "image://icons/sh.svg", "stopnieSH.qml", "stopnie harcerskie", "")
    << Data("Organizacja Harcerska „Rodło”", "image://icons/rodlo.svg", "stopnieOH.qml", "stopnie harcerskie", "")
    << Data("SHK „Zawisza”", "image://icons/fse.svg", "stopnieFSE.qml", "stopnie harcerskie", "")
    << Data("ZHP", "image://icons/zhp.svg", "prawoZHP.qml", "prawo", "")
    << Data("ZHR", "image://icons/zhr.svg", "prawoZHR.qml", "prawo", "")
    << Data("SHK „Zawisza”", "image://icons/fse.svg", "prawoFSE.qml", "prawo", "")
    << Data("Stowarzyszenie Harcerskie", "image://icons/sh.svg", "prawoSH.qml", "prawo", "")
    << Data("Royal Rangers", "image://icons/RR.svg", "prawoRR.qml", "prawo", "")
    << Data("Organizacja Harcerska „Rodło”", "image://icons/rodlo.svg", "prawoOH.qml", "prawo", "")
    << Data("Skauci Króla", "image://icons/tarcza.svg", "prawoSK.qml", "prawo", "")
    << Data("Opowieść o grzybiarzu", "", "grzybiarz.qml", "gawędy", "autor: Jacek Wątroba")
    << Data("Powstaniec", "", "powstaniec.qml", "gawędy", "autorzy: Ćwikowie na próbie 2021 Chomętowo")
    << Data("Zwyczaje przy ognisku", "", "zwyczaje.qml", "gawędy", "autor: Wojciech Jakubczyk")
    << Data("Iskra Braterstwa", "", "iskra.qml", "gawędy", "autor: Alicja Kowalska");
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
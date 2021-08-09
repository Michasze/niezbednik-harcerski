#include "Spiewnik.h"
#include <QDebug>
#include <QFile>

Spiewnik::Spiewnik(QObject *parent)
    : QObject(parent)
      {
  QByteArray spiewnikData;
  QFile file ("://spiewniki.json");
if(file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        spiewnikData = file.readAll();
        file.close();
    }
   data = QJsonDocument::fromJson(spiewnikData, &jsonError);
    spiewnikData.clear();
     if(jsonError.error != QJsonParseError::NoError)
{
    qDebug() << QString("JsonError: %1").arg(jsonError.errorString());
}
// jeżeli tabela zawiera dane, konwertuj zawartość sekcji cytaty
// na wartość, następnie na tabelę
    if (!data.isEmpty()) {
        jsonObject = data.object();
    }
        value = jsonObject.value("spiewnik");
        array = value.toArray();
      }
  void Spiewnik::setIndex(const int &a)
    {
       if (a != m_spiewnikIndex)
         {
           m_spiewnikIndex = a;
           indexChanged();
         }
    }
  int Spiewnik::spiewnikIndex()
    {
      return m_spiewnikIndex;
    }
  QStringList Spiewnik::nazwaSpiewnika()
  {
     m_nazwaSpiewnika.clear();
     for (int i = 0; i < array.size(); i++)
       {
         indexValue = array.at(i);
         m_nazwaSpiewnika.append(indexValue.toObject().value("tytuł").toString());
       }
//     qInfo() << indexValue.toObject();
     nazwaChanged();
     return m_nazwaSpiewnika;
  }
  QStringList Spiewnik::nazwaPiosenki()
    {
      m_nazwaPiosenki.clear();
      m_tekstPiosenki.clear();
      m_autorPiosenki.clear();
      m_ikonaPiosenki.clear();
      songArray = array.at(m_spiewnikIndex).toObject().value("piosenka").toArray();
      autorArray = array.at(m_spiewnikIndex).toObject().value("autor").toArray();
      textArray = array.at(m_spiewnikIndex).toObject().value("tresc").toArray();
      iconArray = array.at(m_spiewnikIndex).toObject().value("ikona").toArray();
      for (int i = 0; i < songArray.size(); i++)
        {
          m_nazwaPiosenki.append(songArray.at(i).toString());
          m_autorPiosenki.append(autorArray.at(i).toString());
          m_tekstPiosenki.append(textArray.at(i).toString());
          if (iconArray.at(i).toString() == "")
            {
          m_ikonaPiosenki.append("nuta");
            }
          else {
          m_ikonaPiosenki.append(iconArray.at(i).toString());
          }
        }
      qInfo() << m_ikonaPiosenki;
      piosenkaChanged();
      return m_nazwaPiosenki;
    }
  QStringList Spiewnik::tekstPiosenki()
    {
      return m_tekstPiosenki;
    }
  QStringList Spiewnik::autorPiosenki()
    {
      return m_autorPiosenki;
    }
  QStringList Spiewnik::ikonaPiosenki()
    {
      return m_ikonaPiosenki;
    }

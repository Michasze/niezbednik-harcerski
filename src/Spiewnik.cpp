#include "Spiewnik.h"
#include <QDebug>
#include <QFile>

Spiewnik::Spiewnik(QObject *parent)
    : QObject(parent)
      {
      }
  void Spiewnik::setAdres(const QString &f)
    {
      if (m_file != f)
        {
          m_file = f;
          qInfo() << "url: " << m_file;
          adresChanged();
        }
    }
  QString Spiewnik::adres()
    {
      return m_file;
    }
  QJsonArray Spiewnik::content()
    {
  QByteArray spiewnikData;
  QFile file (m_file);
if(file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qInfo() << "odczytano plik";
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
        value = jsonObject.value("piosenka");
        array = value.toArray();
      return array;
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
  QJsonArray Spiewnik::nazwaPiosenki()
    {
      m_nazwaPiosenki.clear();
      m_tekstPiosenki.clear();
      m_autorPiosenki.clear();
      autorArray = jsonObject.value("autor").toArray();
      textArray = jsonObject.value("tresc").toArray();
      iconArray = jsonObject.value("ikona").toArray();
      piosenkaChanged();
      return textArray;
    }
  QStringList Spiewnik::tekstPiosenki()
    {
      return m_tekstPiosenki;
    }
  QStringList Spiewnik::autorPiosenki()
    {
      return m_autorPiosenki;
    }
  QJsonArray Spiewnik::ikonaPiosenki()
    {
      if (iconArray.size() == 0)
        {
            qInfo() << "tabela z nutami pusta";
            //FIXME: replace with correct value
        for (int i = 0; i < 20; i++)
          {
            iconArray.append("nuta");
          }
        }
      qInfo() << iconArray;
      return iconArray;
    }

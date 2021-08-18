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
    if (!data.isEmpty()) {
        jsonObject = data.object();
    }
        array = jsonObject.value("piosenka").toArray();
      autorArray = jsonObject.value("autor").toArray();
      textArray = jsonObject.value("tresc").toArray();
      iconArray = jsonObject.value("ikona").toArray();
      return array;
    }
  QJsonArray Spiewnik::nazwaPiosenki()
    {
      iconArray = QJsonArray();
      piosenkaChanged();
      return textArray;
    }
  QJsonArray Spiewnik::autorPiosenki()
    {
      return autorArray;
    }
  QJsonArray Spiewnik::ikonaPiosenki()
    {
      if (iconArray.size() == 0)
        {
        for (int i = 0; i < array.size(); i++)
          {
            qInfo() << "uzupełniam bufor ikon...";
            iconArray.append("nuta.svg,white");
          }
        }
      qInfo() << iconArray;
      return iconArray;
    }

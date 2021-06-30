#include "InfoData.h"
#include <QDebug>
#include <QFile>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>
#include <QVariantMap>
#include <QMap>
#include <QRandomGenerator>

InfoData::InfoData(QObject *parent)
    : QObject(parent)
{
  QByteArray infoSheetData;
  // nazwa pliku z danymi:
  QFile file ("://info-data.json");
  // otwórz plik i skopiuj jego zawartość do pamięci
if(file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        infoSheetData = file.readAll();
        file.close();
    }
 // konwertuj na typ Qt
    data = QJsonDocument::fromJson(infoSheetData, &jsonError);
    infoSheetData.clear();
     if(jsonError.error != QJsonParseError::NoError)
{
    qDebug() << QString("JsonError: %1").arg(jsonError.errorString());
}
// jeżeli tabela zawiera dane, konwertuj zawartość sekcji cytaty
// na wartość, następnie na tabelę
    if (!data.isEmpty()) {
        jsonObject = data.object();

    }
        value = jsonObject.value("cytaty");
        array = value.toArray();
}
void InfoData::setAutorIndex(const int &a)
  {
   if(a != m_index)
     {
       m_index = a;
       setComponentData();
       autorIndexChanged();
     }
  }
int InfoData::autorIndex()
  {
    return m_index;
  }

QStringList InfoData::tresc()
  {
    return m_tresc;
  }
QStringList InfoData::autor()
  {
    m_autor.clear();
    m_image.clear();
foreach (const QJsonValue & v, array)
          {
        m_autor.append(v.toObject().value("autor").toString());
        m_image.append(v.toObject().value("zdjecie").toString());
        }
        autorChanged();
    return m_autor;
  }
QStringList InfoData::naglowek()
  {
    m_naglowek.clear();
       foreach (const QJsonValue & v, array)
         {
           m_naglowek.append(v.toObject().value("naglowek").toString());
         }
       return m_naglowek;
  }
QStringList InfoData::image()
  {
    return m_image;
  }
QString InfoData::autorString()
  {
    m_autorString = m_autor.at(m_index);
    return m_autorString;
  }
void InfoData::clearComponentData()
{
    m_tresc.clear();
    m_autor.clear();
}
void InfoData::setTresci()
  {
    for (int i = 0; i < array.size(); i++)
      {
        secondValue = array.at(i);
        m_tresci = secondValue["tresc"].toArray();
        m_autorzy = secondValue["autor"].toString();
        m_cytaty.append(m_tresci.toVariantList());
        for (int a = m_trescAutor.size(); a < m_cytaty.size(); a++)
          {
            m_trescAutor[m_cytaty.at(a).toString()] = m_autorzy;
//            qInfo() << "Tabelka:" << m_trescAutor;
          }
//            last = m_trescAutor.size();
      }

//        qInfo() << "cytaty:" << m_cytaty;
//        qInfo() << "autor:" << m_trescAutor;
  }
QVariantList InfoData::tresci()
  {
    setTresci();
    tresciChanged();
    return  m_cytaty;
  }
QVariant InfoData::losuj()
  {
losowa =  QRandomGenerator::global()->bounded(m_cytaty.size());
//       qInfo() << "Losowa:" << losowa;
       m_losowyCytat = m_cytaty.at(losowa);
       m_tresciAutorzy = m_trescAutor.value(m_losowyCytat.toString());
//       qInfo() << "Autor:" << m_tresciAutorzy;
       return m_cytaty.at(losowa);
  }
QString InfoData::losowyAutor()
  {
    losowyAutorChanged();
    return m_tresciAutorzy;
  }
void InfoData::setComponentData()
  {

    if (!array.isEmpty()) {
        secondValue = array.at(m_index);
trescValue = secondValue["tresc"];
        trescArray = trescValue.toArray();
  for (int i = 0; i < trescArray.size(); i++)
          {
        m_tempTresc.append(trescArray.at(i).toString());
        }
        m_tresc = m_tempTresc;
        m_tempTresc.clear();
        cytatChanged();
 }
  }

#ifndef __SPIEWNIK_H_
#define __SPIEWNIK_H_
#include <QObject>
#include <QString>
#include <QList>
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonValue>
#include <QJsonParseError>

class Spiewnik : public QObject
{
  Q_OBJECT

  Q_PROPERTY(QStringList nazwaSpiewnika READ nazwaSpiewnika NOTIFY nazwaChanged)
  Q_PROPERTY(QStringList nazwaPiosenki READ nazwaPiosenki NOTIFY piosenkaChanged)
  Q_PROPERTY(QStringList tekstPiosenki READ tekstPiosenki NOTIFY tekstChanged)
  Q_PROPERTY(QStringList autorPiosenki READ autorPiosenki NOTIFY autorChanged)
  Q_PROPERTY(QStringList ikonaPiosenki READ ikonaPiosenki NOTIFY ikonaChanged)
  Q_PROPERTY(int spiewnikIndex READ spiewnikIndex WRITE setIndex NOTIFY indexChanged)

public:
  Spiewnik(QObject *parent=0);
  QJsonDocument data;
  QStringList nazwaSpiewnika();
  int spiewnikIndex();
  QStringList nazwaPiosenki();
  QStringList tekstPiosenki();
  QStringList autorPiosenki();
  QStringList ikonaPiosenki();
  void setIndex(const int &a);

signals:
  void nazwaChanged();
  void indexChanged();
  void piosenkaChanged();
  void tekstChanged();
  void autorChanged();
  void ikonaChanged();

private:
  QStringList m_nazwaSpiewnika;
  QStringList m_nazwaPiosenki;
  QStringList m_tekstPiosenki;
  QStringList m_autorPiosenki;
  QStringList m_ikonaPiosenki;
  int m_spiewnikIndex;
  QJsonParseError jsonError;
  QJsonObject jsonObject;
  QJsonValue value;
  QJsonArray array;
  QJsonValue indexValue;
  QJsonArray songArray;
  QJsonArray textArray;
  QJsonArray autorArray;
  QJsonArray iconArray;
  };
#endif // __SPIEWNIK_H_

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
  Q_PROPERTY(int spiewnikIndex READ spiewnikIndex WRITE setIndex NOTIFY indexChanged)

public:
  Spiewnik(QObject *parent=0);
  QJsonDocument data;
  QStringList nazwaSpiewnika();
  int spiewnikIndex();
  QStringList nazwaPiosenki();
  QStringList tekstPiosenki();
  QStringList autorPiosenki();
  void setIndex(const int &a);

signals:
  void nazwaChanged();
  void indexChanged();
  void piosenkaChanged();
  void tekstChanged();
  void autorChanged();

private:
  QStringList m_nazwaSpiewnika;
  QStringList m_nazwaPiosenki;
  QStringList m_tekstPiosenki;
  QStringList m_autorPiosenki;
  int m_spiewnikIndex;
  QJsonParseError jsonError;
  QJsonObject jsonObject;
  QJsonValue value;
  QJsonArray array;
  QJsonValue indexValue;
  QJsonArray songArray;
  QJsonArray textArray;
  QJsonArray autorArray;
  };
#endif // __SPIEWNIK_H_

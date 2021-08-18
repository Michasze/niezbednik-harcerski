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

  Q_PROPERTY(QString adres READ adres WRITE setAdres NOTIFY adresChanged)
  Q_PROPERTY(QJsonArray content READ content NOTIFY contentChanged)
  Q_PROPERTY(QStringList nazwaSpiewnika READ nazwaSpiewnika NOTIFY nazwaChanged)
  Q_PROPERTY(QJsonArray nazwaPiosenki READ nazwaPiosenki NOTIFY piosenkaChanged)
  Q_PROPERTY(QStringList tekstPiosenki READ tekstPiosenki NOTIFY tekstChanged)
  Q_PROPERTY(QJsonArray autorPiosenki READ autorPiosenki NOTIFY autorChanged)
  Q_PROPERTY(QJsonArray ikonaPiosenki READ ikonaPiosenki NOTIFY ikonaChanged)
  Q_PROPERTY(int spiewnikIndex READ spiewnikIndex WRITE setIndex NOTIFY indexChanged)

public:
  Spiewnik(QObject *parent=0);
  void setAdres(const QString &f);
  QString adres();
  QJsonArray content();
  QJsonDocument data;
  QStringList nazwaSpiewnika();
  int spiewnikIndex();
  QJsonArray nazwaPiosenki();
  QStringList tekstPiosenki();
  QJsonArray autorPiosenki();
  QJsonArray ikonaPiosenki();
  void setIndex(const int &a);

signals:
  void adresChanged();
  void contentChanged();
  void nazwaChanged();
  void indexChanged();
  void piosenkaChanged();
  void tekstChanged();
  void autorChanged();
  void ikonaChanged();

private:
  QString m_file;
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
  QJsonArray iconArray;
  };
#endif // __SPIEWNIK_H_

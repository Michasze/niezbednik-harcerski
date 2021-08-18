#ifndef __SPIEWNIK_H_
#define __SPIEWNIK_H_
#include <QObject>
#include <QString>
#include <QList>
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonParseError>

class Spiewnik : public QObject
{
  Q_OBJECT

  Q_PROPERTY(QString adres READ adres WRITE setAdres NOTIFY adresChanged)
  Q_PROPERTY(QJsonArray content READ content NOTIFY contentChanged)
  Q_PROPERTY(QJsonArray nazwaPiosenki READ nazwaPiosenki NOTIFY piosenkaChanged)
  Q_PROPERTY(QJsonArray autorPiosenki READ autorPiosenki NOTIFY autorChanged)
  Q_PROPERTY(QJsonArray ikonaPiosenki READ ikonaPiosenki NOTIFY ikonaChanged)

public:
  Spiewnik(QObject *parent=0);
  void setAdres(const QString &f);
  QString adres();
  QJsonArray content();
  QJsonDocument data;
  QJsonArray nazwaPiosenki();
  QJsonArray autorPiosenki();
  QJsonArray ikonaPiosenki();

signals:
  void adresChanged();
  void contentChanged();
  void piosenkaChanged();
  void autorChanged();
  void ikonaChanged();

private:
  QString m_file;
  QJsonParseError jsonError;
  QJsonObject jsonObject;
  QJsonArray array;
  QJsonArray songArray;
  QJsonArray textArray;
  QJsonArray autorArray;
  QJsonArray iconArray;
  };
#endif // __SPIEWNIK_H_

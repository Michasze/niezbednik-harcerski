#ifndef HPSDATABASE_H_
#define HPSDATABASE_H_
#include "HPSCardModel.h"
#include <QObject>
#include <QString>
#include <QSqlDatabase>

class HPSDatabase : public QObject
{
  Q_OBJECT

public:
  HPSDatabase(QObject *parent = nullptr);
  Q_INVOKABLE QStringList getList(const QString &query);
  
private:
  QSqlDatabase m_database;
  QStringList m_categoryList;

Q_SIGNALS:
  void catNameChanged();
  void catIconChanged();
};

#endif // HPSDATABASE_H_

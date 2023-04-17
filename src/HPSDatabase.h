#ifndef HPSDATABASE_H_
#define HPSDATABASE_H_
#include <QObject>
#include <QString>
#include <QSqlDatabase>

class HPSDatabase : public QObject
{
  Q_OBJECT

public:
  HPSDatabase(QObject *parent = nullptr);
  Q_INVOKABLE QStringList getList(const QString &query);
  QSqlDatabase m_database;
  
private:
  QStringList m_categoryList;

};

#endif // HPSDATABASE_H_

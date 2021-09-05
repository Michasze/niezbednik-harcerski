#ifndef HPSDATABASE_H_
#define HPSDATABASE_H_
#include <QObject>
#include <QString>
#include <QStringList>
#include <QSqlDatabase>

class HPSDatabase : public QObject
{
  Q_OBJECT

  Q_PROPERTY(QStringList getList READ getList NOTIFY listChanged)

public:
  HPSDatabase(QObject *parent=0);
  Q_INVOKABLE  void addList(const QString &list);
  Q_INVOKABLE void addCategory(const QString &category);
  Q_INVOKABLE void deleteCategory(const QString &category);
  QStringList getList();

private:
  QSqlDatabase m_database;
  QString m_listName;
  QStringList m_categoryList;

signals:
  void listChanged();
};

#endif // HPSDATABASE_H_

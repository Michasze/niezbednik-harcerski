#ifndef HPSDATABASE_H_
#define HPSDATABASE_H_
#include <QObject>
#include <QString>
#include <QStringList>
#include <QSqlDatabase>

class HPSDatabase : public QObject
{
  Q_OBJECT

  Q_PROPERTY(QStringList getCategory READ getCategory NOTIFY listChanged)
  Q_PROPERTY(QStringList getListColor READ getCategoryColor NOTIFY colorListChanged)
  Q_PROPERTY(QStringList getList READ getList )

public:
  HPSDatabase(QObject *parent=0);
  Q_INVOKABLE  void addList(const QString &list);
  Q_INVOKABLE void addCategory(const QString &category, const QString &color);
  Q_INVOKABLE void deleteCategory(const QString &category, const QString &color);
  QStringList getCategory();
  QStringList getCategoryColor();
  QStringList getList();
  Q_INVOKABLE void deleteList(const QString &list);

private:
  QSqlDatabase m_database;
  QString m_listName;
  QStringList m_packingList;
  QStringList m_categoryList;
  QStringList m_colorList;

signals:
  void listChanged();
  void colorListChanged();
};

#endif // HPSDATABASE_H_

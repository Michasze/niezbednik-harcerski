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
  Q_PROPERTY(QStringList getCategoryColor READ getCategoryColor NOTIFY colorListChanged)
  Q_PROPERTY(QStringList getList READ getList NOTIFY packingChanged)
  Q_PROPERTY(QStringList itemList READ itemList NOTIFY itemListChanged)
  Q_PROPERTY(QStringList categoryList READ categoryList NOTIFY categoryListChanged)

public:
  HPSDatabase(QObject *parent=0);
  Q_INVOKABLE  void addList(const QString &list);
  Q_INVOKABLE void addCategory(const QString &category, const QString &color);
  Q_INVOKABLE void deleteCategory(const QString &category, const QString &color);
  QStringList getCategory();
  QStringList getCategoryColor();
  QStringList getList();
  Q_INVOKABLE void deleteList(const QString &list);
  Q_INVOKABLE void saveCategory();
  Q_INVOKABLE void addItem(const QString &item, const QString &kategoria);
  Q_INVOKABLE void setList(const QString &list);
  Q_INVOKABLE void getItemList(const QString &category);
  Q_INVOKABLE void getCategoryList(const QString &list);
  Q_INVOKABLE void clearCategory();
  QStringList categoryList();
  QStringList itemList();

private:
  QSqlDatabase m_database;
  QString m_listName;
  QString m_currentList;
  QStringList m_packingList;
  QStringList m_categoryList;
  QStringList m_colorList;
  QStringList m_itemList;

signals:
  void listChanged();
  void colorListChanged();
  void packingChanged();
  void itemListChanged();
  void categoryListChanged();
};

#endif // HPSDATABASE_H_

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
  Q_PROPERTY(QString getCurrentList READ getCurrentList NOTIFY currentListChanged)
  Q_PROPERTY(QString getCurrentCategory READ getCurrentCategory NOTIFY currentCategoryChanged)
  Q_PROPERTY(int index READ index NOTIFY indexChanged)

public:
  HPSDatabase(QObject *parent = nullptr);
  Q_INVOKABLE  void addList(const QString &list);
  Q_INVOKABLE void addCategory(const QString &category, const QString &color);
  Q_INVOKABLE void deleteCategory(const QString &category, const QString &color);
  QStringList getCategory();
  QStringList getCategoryColor();
  QStringList getList();
  Q_INVOKABLE void deleteList(const QString &list);
  Q_INVOKABLE void saveCategory();
  Q_INVOKABLE void addItem(const QString &item, const QString &kategoria, const int index);
  Q_INVOKABLE void setList(const QString &list);
  Q_INVOKABLE QStringList getItemList(const QString &category);
  Q_INVOKABLE void getCategoryList(const QString &list);
  Q_INVOKABLE void clearCategory();
  QStringList categoryList();
  QStringList itemList();
  QString getCurrentList();
  QString getCurrentCategory();
  int index();
  Q_INVOKABLE void deleteItem(const QString &item);

private:
  QSqlDatabase m_database;
  QString m_listName;
  QString m_currentList;
  QString m_currentCategory;
  QStringList m_packingList;
  QStringList m_categoryList;
  QStringList m_colorList;
  QStringList m_itemList;
  int m_currentIndex;

Q_SIGNALS:
  void listChanged();
  void colorListChanged();
  void packingChanged();
  void itemListChanged();
  void categoryListChanged();
  void currentListChanged();
  void currentCategoryChanged();
  void indexChanged();
};

#endif // HPSDATABASE_H_

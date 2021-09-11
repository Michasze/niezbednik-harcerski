#include "HPSDatabase.h"
#include <QStandardPaths>
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

HPSDatabase::HPSDatabase(QObject *parent)
    : QObject(parent)
    , m_database(QSqlDatabase::addDatabase(QStringLiteral("QSQLITE"), QStringLiteral("packing")))
{
    const QString loc = QStandardPaths::writableLocation(QStandardPaths::GenericDataLocation) + QStringLiteral("/hps");
    m_database.setDatabaseName(loc + QStringLiteral("/pakowanie.sqlite"));
    const bool open = m_database.open();
    qInfo() << open;
    QSqlQuery createTable(m_database);
    createTable.prepare(QStringLiteral("CREATE TABLE IF NOT EXISTS packingLists (name TEXT)"));
    createTable.exec();
    createTable.prepare(QStringLiteral("CREATE TABLE IF NOT EXISTS packingCategories (name TEXT, category TEXT, color TEXT)"));
    createTable.exec();
    createTable.prepare(QStringLiteral("CREATE TABLE IF NOT EXISTS packingItems (item TEXT, category TEXT, list TEXT)"));
    createTable.exec();
    QSqlError error = createTable.lastError();
    qInfo() << "error:" << error;
}
void HPSDatabase::addList(const QString &list)
  {
    QSqlQuery addlist(m_database);
    addlist.prepare(QStringLiteral("INSERT INTO packingLists ( name) VALUES ( :name)"));
    addlist.bindValue(QStringLiteral(":name"), list);
    m_listName = list;
    addlist.exec();
    packingChanged();
  }
void HPSDatabase::setList(const QString &list)
    {
        m_currentList = list;
    }
QStringList HPSDatabase::getList()
    {
        m_packingList.clear();
        QSqlQuery getList(m_database);
        getList.prepare(QStringLiteral("SELECT name FROM packingLists ORDER BY name"));
        getList.exec();
        while(getList.next())
            {
               m_packingList.append(getList.value(0).toString());
            }
        return m_packingList;
    }
void HPSDatabase::deleteList(const QString &list)
    {
        QSqlQuery removeList(m_database);
        removeList.prepare(QStringLiteral("DELETE FROM packingLists WHERE name = :name"));
        removeList.bindValue(QStringLiteral(":name"), list);
        removeList.exec();
        removeList.prepare(QStringLiteral("DELETE FROM packingCategories WHERE name = :name"));
        removeList.bindValue(QStringLiteral(":name"), list);
        removeList.exec();
        removeList.prepare(QStringLiteral("DELETE FROM packingItems WHERE list = :list"));
        removeList.bindValue(QStringLiteral(":item"), list);
        removeList.exec();
    }
void HPSDatabase::clearCategory()
    {
        m_categoryList.clear();
    }
void HPSDatabase::addCategory(const QString &category, const QString &color)
    {
        m_categoryList.append(category);
        m_colorList.append(color);
        qDebug() << m_categoryList << m_colorList;
    }
void HPSDatabase::deleteCategory(const QString &category, const QString &color)
    {
        m_categoryList.removeOne(category);
        m_colorList.removeOne(color);
        qDebug() << m_categoryList << m_colorList;
    }
QStringList HPSDatabase::getCategory()
    {
        qDebug() << m_categoryList;
        return m_categoryList;
    }
QStringList HPSDatabase::getCategoryColor()
    {
        return m_colorList;
    }
void HPSDatabase::getCategoryList(const QString &list)
    {
        m_categoryList.clear();
        QSqlQuery fetch(m_database);
        fetch.prepare(QStringLiteral("SELECT category FROM packingItems WHERE (list = :list)"));
        fetch.bindValue(QStringLiteral(":list"), list);
        fetch.exec();
        while (fetch.next())
            {
                m_categoryList.append(fetch.value(0).toString());
            }
        qInfo() << list;
        qInfo() << "Category list:" << m_categoryList;
    }
QStringList HPSDatabase::categoryList()
    {
        return m_categoryList;
    }
void HPSDatabase::saveCategory()
    {
        QSqlQuery save(m_database);
        qInfo() << "packingCategories" << m_categoryList;
        for (int i = 0; i < m_categoryList.size(); i++)
            {
                save.prepare(QStringLiteral("INSERT INTO packingCategories (name, category, color ) VALUES (:name, :category, :color)"));
                save.bindValue(QStringLiteral(":name"), m_listName);
                save.bindValue(QStringLiteral(":category"), m_categoryList.at(i));
                save.bindValue(QStringLiteral(":color"), m_colorList.at(i));
                save.exec();
                               }
    }
void HPSDatabase::addItem(const QString &item, const QString &category)
    {
        QSqlQuery add(m_database);
        add.prepare(QStringLiteral("INSERT INTO packingItems (item, category, list) VALUES (:item, :category, :list)"));
        add.bindValue(QStringLiteral(":item"), item);
        add.bindValue(QStringLiteral(":category"), category);
        add.bindValue(QStringLiteral(":list"), m_currentList);
        add.exec();
        itemListChanged();
    }
void HPSDatabase::getItemList(const QString &category)
    {
        m_itemList.clear();
        QSqlQuery fetch(m_database);
        fetch.prepare(QStringLiteral("SELECT item FROM packingItems WHERE (list = :list) AND (category = :category)"));
        fetch.bindValue(QStringLiteral(":list"), m_currentList);
        fetch.bindValue(QStringLiteral(":category"), category);
        fetch.exec();
        while(fetch.next())
            {
               m_itemList.append(fetch.value(0).toString());
            }
        qInfo() << m_itemList;
    }
QStringList HPSDatabase::itemList()
    {
        return m_itemList;
    }

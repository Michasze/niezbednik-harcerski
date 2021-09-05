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
  }
QStringList HPSDatabase::getList()
    {
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
        qInfo() << "List name: " << list;
        removeList.exec();
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

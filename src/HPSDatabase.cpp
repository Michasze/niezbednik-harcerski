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
void HPSDatabase::addCategory(const QString &category)
    {
        m_categoryList.append(category);
        qDebug() << m_categoryList;
    }
void HPSDatabase::deleteCategory(const QString &category)
    {
        m_categoryList.removeOne(category);
        qDebug() << m_categoryList;
    }
QStringList HPSDatabase::getList()
    {
        qDebug() << m_categoryList;
        return m_categoryList;
    }

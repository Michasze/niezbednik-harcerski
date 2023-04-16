#include "HPSPakowanie.h"
#include <QStandardPaths>
#include <QSqlQuery>
#include <QSqlError>
#include <QDir>
#include <QDebug>

HPSPakowanie::HPSPakowanie(QObject *parent)
    : QObject(parent)
    , m_database(QSqlDatabase::addDatabase(QStringLiteral("QSQLITE"), QStringLiteral("packing")))
{
    // Dostęp do GenericDataLocation na Androidzie wymaga uprawnień więc skorzystajmy z innego folderu
    #ifdef Q_OS_ANDROID
    const QString loc = QStandardPaths::writableLocation(QStandardPaths::HomeLocation);
    #else
    QDir dir(QStandardPaths::writableLocation(QStandardPaths::GenericDataLocation) + QStringLiteral("/hps"));
        //utwórz folder z bazą jeśli nie istnieje
        if(!dir.exists())
            {
                dir.mkpath("../hps");
            }
    const QString loc = QStandardPaths::writableLocation(QStandardPaths::GenericDataLocation) + QStringLiteral("/hps");
    #endif
    m_database.setDatabaseName(loc + QStringLiteral("/pakowanie.sqlite"));
    const bool open = m_database.open();
    qInfo() << "test:" << open;
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
void HPSPakowanie::addList(const QString &list)
  {
    QSqlQuery addlist(m_database);
    addlist.prepare(QStringLiteral("INSERT INTO packingLists ( name) VALUES ( :name)"));
    addlist.bindValue(QStringLiteral(":name"), list);
    m_listName = list;
    addlist.exec();
    packingChanged();
  }
void HPSPakowanie::setList(const QString &list)
    {
        m_currentList = list;
    }
QString HPSPakowanie::getCurrentList()
    {
        return m_currentList;
    }
QString HPSPakowanie::getCurrentCategory()
    {
        return m_currentCategory;
    }
QStringList HPSPakowanie::getList()
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
void HPSPakowanie::deleteList(const QString &list)
    {
        QSqlQuery removeList(m_database);
        removeList.prepare(QStringLiteral("DELETE FROM packingLists WHERE name = :name"));
        removeList.bindValue(QStringLiteral(":name"), list);
        removeList.exec();
        removeList.prepare(QStringLiteral("DELETE FROM packingCategories WHERE name = :name"));
        removeList.bindValue(QStringLiteral(":name"), list);
        removeList.exec();
        removeList.prepare(QStringLiteral("DELETE FROM packingItems WHERE list = :list"));
        removeList.bindValue(QStringLiteral(":list"), list);
        removeList.exec();
    }
void HPSPakowanie::deleteItem(const QString &item)
    {
        QSqlQuery removeItem(m_database);
        removeItem.prepare(QStringLiteral("DELETE FROM packingItems WHERE (list = :list) AND (item = :item)"));
        removeItem.bindValue(QStringLiteral(":list"), m_currentList);
        removeItem.bindValue(QStringLiteral(":item"), item);
        removeItem.exec();
    }
void HPSPakowanie::clearCategory()
    {
        m_categoryList.clear();
        m_colorList.clear();
    }
void HPSPakowanie::addCategory(const QString &category, const QString &color)
    {
        m_categoryList.append(category);
        m_colorList.append(color);
        qInfo() << "current color list state: " << m_colorList;
    }
void HPSPakowanie::deleteCategory(const QString &category, const QString &color)
    {
        m_categoryList.removeOne(category);
        m_colorList.removeOne(color);
    }
QStringList HPSPakowanie::getCategory()
    {
        return m_categoryList;
    }
QStringList HPSPakowanie::getCategoryColor()
    {
        qInfo() << m_colorList;
        return m_colorList;
    }
void HPSPakowanie::getCategoryList(const QString &list)
    {
        m_categoryList.clear();
        m_colorList.clear();
        //HACK: z jakiegoś powodu modele z c++ nie zawsze działają w QMLu prawidłowo
        // W tym przypadku konieczne jest przesunięcie modelu o jeden
        m_categoryList.append("");
        m_colorList.append("");
        QSqlQuery fetch(m_database);
        fetch.prepare(QStringLiteral("SELECT category, color FROM packingCategories WHERE (name = :name)"));
        fetch.bindValue(QStringLiteral(":name"), list);
        fetch.exec();
        while (fetch.next())
            {
                m_categoryList.append(fetch.value(0).toString());
                m_colorList.append(fetch.value(1).toString());
            }
    }
QStringList HPSPakowanie::categoryList()
    {
        return m_categoryList;
    }
void HPSPakowanie::saveCategory()
    {
        QSqlQuery save(m_database);
        for (int i = 0; i < m_categoryList.size(); i++)
            {
                save.prepare(QStringLiteral("INSERT INTO packingCategories (name, category, color ) VALUES (:name, :category, :color)"));
                save.bindValue(QStringLiteral(":name"), m_listName);
                save.bindValue(QStringLiteral(":category"), m_categoryList.at(i));
                save.bindValue(QStringLiteral(":color"), m_colorList.at(i));
                save.exec();
                               }
        m_colorList.clear();
    }
void HPSPakowanie::addItem(const QString &item, const QString &category, const int index)
    {
        QSqlQuery add(m_database);
        add.prepare(QStringLiteral("INSERT INTO packingItems (item, category, list) VALUES (:item, :category, :list)"));
        add.bindValue(QStringLiteral(":item"), item);
        add.bindValue(QStringLiteral(":category"), category);
        add.bindValue(QStringLiteral(":list"), m_currentList);
        add.exec();
        m_currentIndex = index;
        getItemList(category);
        // categoryListChanged();
        listChanged();
        itemListChanged();
    }
int HPSPakowanie::index()
    {
        qInfo() << "index: " << m_currentIndex;
        return m_currentIndex;
    }
QStringList HPSPakowanie::getItemList(const QString &category)
    {
        m_itemList.clear();
        QSqlQuery fetch(m_database);
        fetch.prepare(QStringLiteral("SELECT item FROM packingItems WHERE (list = :list) AND (category = :category)"));
        fetch.bindValue(QStringLiteral(":list"), m_currentList);
        fetch.bindValue(QStringLiteral(":category"), category);
        fetch.exec();
        while(fetch.next())
            {
               qInfo() << "selecting item " << fetch.value(0).toString() << "from category" << category;
               m_itemList.append(fetch.value(0).toString());
            }
        qInfo() << m_itemList;
        return m_itemList;
    }
QStringList HPSPakowanie::itemList()
    {
        qInfo() << "Item List: " << m_itemList;
        return m_itemList;
    }

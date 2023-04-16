#include "HPSDatabase.h"
#include <QStandardPaths>
#include <QSqlQuery>
#include <QSqlError>
#include <QDir>
#include <QFile>
#include <QDebug>

HPSDatabase::HPSDatabase(QObject *parent)
  : QObject(parent)
  , m_database(QSqlDatabase::addDatabase(QStringLiteral("QSQLITE"), QStringLiteral("hps")))
{
  QString dbName = QStringLiteral("hps.db");
  QFile file ("://hps.db");
  QString dir(QStandardPaths::writableLocation(QStandardPaths::GenericDataLocation) + QStringLiteral("/hps/"));
  QString destFile (dir + dbName);
  // Baza musi zostać przekopiowana do folderu w którym można zapisywać, inaczej nie chce działać,
  // nawet jeśli jest tylko do odczytu
  // usuń bazę jeśli już istnieje (QFile::copy z jakiegoś powodu nie nadpisuje istniejącego pliku
  if(QFile(destFile).exists())
    {
      QFile(destFile).remove();
    }
  file.copy(file.fileName(), destFile);
  m_database.setDatabaseName(dir + dbName);
  qInfo() << m_database.lastError();
  m_database.open();
}

QStringList HPSDatabase::getList(const QString &query)
{
  m_categoryList.clear();
  QSqlQuery getList(m_database);
  //HACK: bindowanie nie chciało mi działać więc lepiej skleić stringa
  getList.prepare(QString("SELECT " + query + " FROM categories"));
  getList.exec();
  while(getList.next())
    {
      m_categoryList.append(getList.value(0).toString());
    }
  Q_EMIT catNameChanged();
  Q_EMIT catIconChanged();
  return m_categoryList; 
}

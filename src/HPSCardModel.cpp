/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include "HPSCardModel.h"
#include "HPSDatabase.h"
#include <QSqlQuery>
#include <QDebug>

HPSCardModel::HPSCardModel(QObject *parent) :
  QAbstractListModel(parent)
{
  qInfo() << "open" << QSqlDatabase::database().isOpen();
  QSqlQuery getModelData;
  getModelData.prepare("SELECT * FROM cards");
  getModelData.exec();
  while(getModelData.next())
    {
      const Data &queryData = Data(getModelData.value(0).toString(), getModelData.value(1).toString(), getModelData.value(2).toString(), getModelData.value(3).toString(), getModelData.value(4).toString());
      m_dbData.append(queryData);
    }
}
int HPSCardModel::rowCount(const QModelIndex &parent) const
{
  if (parent.isValid())
    {
      return 0;
    }
  return m_dbData.count();
}
QVariant HPSCardModel::data(const QModelIndex &index, int role) const
{
  if( !index.isValid() )
    {
      return QVariant();
    }
  const Data &currentDbData = m_dbData.at(index.row());
  if ( role == HeaderRole )
    {
      return currentDbData.header;
    }
  else if ( role ==  ImgRole )
    {
      return currentDbData.image;
    }
  else if ( role == UrlRole )
    {
      return currentDbData.address;
    }
  else if ( role == CategoryRole )
    {
      return currentDbData.category;
    }
  else if ( role == DescriptionRole )
    {
      return currentDbData.description;
    }
  else
    {
      return QVariant();
    }
}
QHash<int, QByteArray> HPSCardModel::roleNames() const
{
  static QHash<int, QByteArray> mapping {
    {HeaderRole, "header"},
    {ImgRole, "image"},
    {UrlRole, "address"},
    {CategoryRole, "category"},
    {DescriptionRole, "description"}
  };
  return mapping;
}
void HPSCardModel::reload()
{
  QModelIndex topLeft = createIndex(8,0);
  QModelIndex bottomRight = createIndex(35,0);
  beginResetModel();
  endResetModel();
  Q_EMIT dataChanged(topLeft, bottomRight);
}

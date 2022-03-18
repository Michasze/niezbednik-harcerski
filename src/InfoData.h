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
#ifndef __INFODATA_H_
#define __INFODATA_H_
#include <QAbstractListModel>

struct Cytat {
  Cytat() {}
  Cytat( const QString& tresc, const QString& autor )
    : tresc(tresc), autor(autor) {}
  QString tresc;
  QString autor;
};

class InfoData : public QAbstractListModel
{
  Q_OBJECT

  Q_PROPERTY(const QString losuj READ losuj NOTIFY losujChanged)
  Q_PROPERTY(const QString losowyAutor READ losowyAutor NOTIFY losowyAutorChanged)

public:
  explicit InfoData(QObject *parent = nullptr);
  int rowCount(const QModelIndex &parent) const override;
  QVariant data(const QModelIndex &index, int role) const override;
  QHash<int, QByteArray> roleNames() const override;
  QVector< Cytat > cytat();
  QVector< Cytat > m_cytat;
  QVector< Cytat > getList();
  const QString losuj();
  const QString losowyAutor();
  enum Roles {
    ContentRole,
    AuthorRole
  };

Q_SIGNALS:
  void losujChanged();
  void losowyAutorChanged();

private:
  int losowa;
  Cytat m_losowyCytat;
};

#endif // __INFODATA_H_

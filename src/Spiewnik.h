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
#ifndef __SPIEWNIK_H_
#define __SPIEWNIK_H_
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonParseError>

class Spiewnik : public QObject
{
  Q_OBJECT
  Q_PROPERTY(QString adres READ adres WRITE setAdres NOTIFY adresChanged)
  Q_PROPERTY(QJsonArray content READ content NOTIFY contentChanged)
  Q_PROPERTY(QJsonArray nazwaPiosenki READ nazwaPiosenki NOTIFY piosenkaChanged)
  Q_PROPERTY(QJsonArray autorPiosenki READ autorPiosenki NOTIFY autorChanged)
  Q_PROPERTY(QJsonArray ikonaPiosenki READ ikonaPiosenki NOTIFY ikonaChanged)

public:
  Spiewnik(QObject *parent = nullptr);
  void setAdres(const QString &f);
  QString adres();
  QJsonArray content();
  QJsonDocument data;
  QJsonArray nazwaPiosenki();
  QJsonArray autorPiosenki();
  QJsonArray ikonaPiosenki();

Q_SIGNALS:
  void adresChanged();
  void contentChanged();
  void piosenkaChanged();
  void autorChanged();
  void ikonaChanged();

private:
  QString m_file;
  QJsonParseError jsonError;
  QJsonObject jsonObject;
  QJsonArray array;
  QJsonArray songArray;
  QJsonArray textArray;
  QJsonArray autorArray;
  QJsonArray iconArray;
};
#endif // __SPIEWNIK_H_

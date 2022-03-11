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
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonParseError>

class InfoData : public QObject
{
  Q_OBJECT

  Q_PROPERTY(int autorIndex READ autorIndex WRITE setAutorIndex NOTIFY autorIndexChanged)
  Q_PROPERTY(QStringList tresc READ tresc NOTIFY cytatChanged)
  Q_PROPERTY(QStringList autor READ autor NOTIFY autorChanged)
  Q_PROPERTY(QStringList image READ image NOTIFY autorChanged)
  Q_PROPERTY(QString autorString READ autorString NOTIFY autorStringChanged)
  Q_PROPERTY(QStringList naglowek READ naglowek NOTIFY naglowekChanged)
  Q_PROPERTY(QVariantList tresci READ tresci NOTIFY tresciChanged)
  Q_PROPERTY(QVariant losuj READ losuj NOTIFY losujChanged)
  Q_PROPERTY(QString losowyAutor READ losowyAutor NOTIFY losowyAutorChanged)

public:
  InfoData(QObject *parent = nullptr);
  QJsonDocument data;
  int autorIndex();
  QString autorString();
  QStringList m_tempTresc;
  QStringList tresc();
  QStringList autor();
  QStringList image();
  QStringList naglowek();
  QVariantList tresci();
  QVariant losuj();
  QString losowyAutor();
  void setZakladka(const QString &autorCytatu);
  void setAutorIndex(const int &a);

Q_SIGNALS:
  void zakladkaChanged();
  void autorIndexChanged();
  void cytatChanged();
  void autorChanged();
  void naglowekChanged();
  void autorStringChanged();
  void tresciChanged();
  void losujChanged();
  void losowyAutorChanged();

private:
  QJsonValue value;
  QJsonValue secondValue;
  QJsonValue trescValue;
  QJsonArray array;
  QJsonArray trescArray;
  QStringList m_tresc;
  QJsonParseError jsonError;
  QJsonObject jsonObject;
  QJsonObject object;
  QStringList m_autor;
  QJsonArray m_tresci;
  QString m_autorzy;
  QVariant m_losowyCytat;
  QString m_tresciAutorzy;
  QMap<QVariant, QString> m_trescAutor;
  int last;
  QVariantList m_cytaty;
  QStringList m_image;
  QStringList m_naglowek;
  int m_index;
  int losowa;
  QString m_autorString;
  void clearComponentData();
  void setComponentData();
  void setTresci();
};

#endif // __INFODATA_H_

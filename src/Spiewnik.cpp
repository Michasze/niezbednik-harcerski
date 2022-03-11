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
#include "Spiewnik.h"
#include <QFile>

Spiewnik::Spiewnik(QObject *parent)
  : QObject(parent)
{
}
void Spiewnik::setAdres(const QString &f)
{
  if (m_file != f)
    {
      m_file = f;
      adresChanged();
    }
}
QString Spiewnik::adres()
{
  return m_file;
}
QJsonArray Spiewnik::content()
{
  QByteArray spiewnikData;
  QFile file (m_file);
  if(file.open(QIODevice::ReadOnly | QIODevice::Text)) {
    spiewnikData = file.readAll();
    file.close();
  }
  data = QJsonDocument::fromJson(spiewnikData, &jsonError);
  spiewnikData.clear();
  if(jsonError.error != QJsonParseError::NoError)
    {
      return QJsonArray();
    }
  if (!data.isEmpty()) {
    jsonObject = data.object();
  }
  array = jsonObject.value("piosenka").toArray();
  autorArray = jsonObject.value("autor").toArray();
  textArray = jsonObject.value("tresc").toArray();
  iconArray = jsonObject.value("ikona").toArray();
  return array;
}
QJsonArray Spiewnik::nazwaPiosenki()
{
  iconArray = QJsonArray();
  piosenkaChanged();
  return textArray;
}
QJsonArray Spiewnik::autorPiosenki()
{
  return autorArray;
}
QJsonArray Spiewnik::ikonaPiosenki()
{
  if (iconArray.size() == 0)
    {
      for (int i = 0; i < array.size(); i++)
        {
          iconArray.append("nuta.svg,white");
        }
    }
  return iconArray;
}

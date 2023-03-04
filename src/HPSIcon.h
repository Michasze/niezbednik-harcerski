/*
 *   Copyright 2023 HPS <aplikacjahps@gmail.com>
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

#ifndef HPSICON_H_
#define HPSICON_H_

#include <QPainter>
#include <QSvgRenderer>
#include <QQuickImageProvider>
#include "HPSSettings.h"

class HPSIcon : public QQuickImageProvider
{

public:
  HPSIcon()
    : QQuickImageProvider(QQuickImageProvider::Image)
  {

  }
  QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
  {
    Q_UNUSED(size);
    QStringList list = id.split(QLatin1Char(','), Qt::SkipEmptyParts);
    QColor color;
    QString adres;
    if(list.size() == 2)
      {
        adres = list[0];
	if (list.at(1) == QVariant())
	  color = QColorConstants::White;
	else
        color = list.at(1);
      }
    else
      {
        adres = id;
      }
    int width = 400;
    QSvgRenderer render(QString(u"://contents/ui/img/" + adres));
    render.setAspectRatioMode(Qt::KeepAspectRatio);
    QSize imgSize = render.defaultSize();
    float ratio = (float) imgSize.width() / (float) imgSize.height();
    int fixedHeight = (float) requestedSize.width() / ratio;
    QImage image(requestedSize.width() > 0 ? requestedSize.width() : width, fixedHeight > 0 ? fixedHeight : 400, QImage::Format_ARGB32);
    image.fill(Qt::transparent);
    QPainter painter(&image);
    render.render(&painter);
    HPSSettings settings;
    if(list.size() == 2)
      {
        painter.setCompositionMode(QPainter::CompositionMode_SourceIn);
	if(color == QColorConstants::White && settings.iconColor() != QVariant())
          painter.fillRect(image.rect(), settings.iconColor());
	else
          painter.fillRect(image.rect(), color);
        painter.end();
      }
    return image;
  }
};

#endif // HPSICON_H_

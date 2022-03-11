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

#ifndef __HPSIMAGE_H_
#define __HPSIMAGE_H_

#include <QImageReader>
#include <QQuickImageProvider>

class HPSImage : public QQuickImageProvider
{

public:
  HPSImage()
    : QQuickImageProvider(QQuickImageProvider::Image)
  {

  }
  QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
  {
    Q_UNUSED(size);
    int width = 400;
    QString adres;
    int radius = 0;
    QStringList list = id.split(QLatin1Char(','), Qt::SkipEmptyParts);
    if(list.size() == 2)
      {
        adres = list[0];
        radius = list.at(1).toInt();
      }
    else {
      adres = id;
    }
    QImageReader reader(QStringLiteral("://contents/ui/img/") + adres, "jpg");
    QSize imgSize = reader.size();
    float ratio = (float) imgSize.width() / (float) imgSize.height();
    int fixedHeight = (float) requestedSize.width() / ratio;
    reader.setScaledSize(QSize(requestedSize.width() > 0 ? requestedSize.width() : width, fixedHeight > 0 ? fixedHeight : 400));
    QImage image(reader.read());
    if(list.size() == 2)
      {
        QImage out(image.width(), image.height(), QImage::Format_ARGB32);
        out.fill(Qt::transparent);
        QPainter painter(&out);
        painter.setRenderHint(QPainter::Antialiasing);
        painter.setCompositionMode(QPainter::CompositionMode_Source);
        painter.setBrush( image );
        painter.drawRoundedRect(image.rect(), radius, radius, Qt::RelativeSize);
        painter.end();
        return out;
      }
    else {
      return image;
    }
  }
};

#endif // __HPSIMAGE_H_

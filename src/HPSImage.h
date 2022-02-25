#ifndef __HPSIMAGE_H_
#define __HPSIMAGE_H_

#include <QObject>
#include <QImage>
#include <QImageReader>
#include <QDebug>
#include <QPainter>
#include <QColor>
#include <QStringList>
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

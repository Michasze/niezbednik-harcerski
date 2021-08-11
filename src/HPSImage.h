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
  int width = 400;
  QImageReader reader(QString("://contents/ui/img/") + id, "jpg");
  QSize imgSize = reader.size();
  float ratio = (float) imgSize.width() / (float) imgSize.height();
  qInfo() << "ratio: " << ratio;
  int fixedHeight = (float) requestedSize.width() / ratio;
  reader.setScaledSize(QSize(requestedSize.width() > 0 ? requestedSize.width() : width, fixedHeight > 0 ? fixedHeight : 400));
  QImage image(reader.read());
  QImage out(image.width(), image.height(), QImage::Format_ARGB32);
  out.fill(Qt::transparent);
  QPainter painter(&out);
  painter.setCompositionMode(QPainter::CompositionMode_Source);
//  painter.fillRect(QRect(0,0, 2048, 1152), QColor("red"));
  painter.setBrush( image );
  painter.drawRoundedRect(image.rect(), requestedSize.width() / 8, requestedSize.width() / 8);
  painter.end();
  return out;
}
};


#endif // __HPSIMAGE_H_

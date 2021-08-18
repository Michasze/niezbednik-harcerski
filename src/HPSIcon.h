#ifndef HPSICON_H_
#define HPSICON_H_

#include <QObject>
#include <QImage>
#include <QDebug>
#include <QPainter>
#include <QColor>
#include <QStringList>
#include <QSvgRenderer>
#include <QQuickImageProvider>

class HPSIcon : public QQuickImageProvider
{

public:
  HPSIcon()
    : QQuickImageProvider(QQuickImageProvider::Image)
    {

    }
 QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
{
  QStringList list = id.split(QLatin1Char(','), Qt::SkipEmptyParts);
  QColor color;
  QString adres;
  if(list.size() == 2)
    {
      adres = list[0];
         color = list.at(1);
    }
  else
    {
      adres = id;
    }
  int width = 400;
  QSvgRenderer render(QString("://contents/ui/img/" + adres));
  render.setAspectRatioMode(Qt::KeepAspectRatio);
  QSize imgSize = render.defaultSize();
  float ratio = (float) imgSize.width() / (float) imgSize.height();
  int fixedHeight = (float) requestedSize.width() / ratio;
  QImage image(requestedSize.width() > 0 ? requestedSize.width() : width, fixedHeight > 0 ? fixedHeight : 400, QImage::Format_ARGB32);
  image.fill(Qt::transparent);
  QPainter painter(&image);
  render.render(&painter);
  if(list.size() == 2)
    {
  painter.setCompositionMode(QPainter::CompositionMode_SourceIn);
  painter.fillRect(image.rect(), color);
  painter.end();
  }
  return image;
}
};

#endif // HPSICON_H_

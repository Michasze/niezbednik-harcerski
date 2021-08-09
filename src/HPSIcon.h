#ifndef HPSICON_H_
#define HPSICON_H_

#include <QObject>
#include <QImage>
#include <QDebug>
#include <QVariant>
#include <QPainter>
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
  QImage image;
  QSvgRenderer render(QString("://contents/ui/img/szyfry/morse.svg"));
  QPainter painter(&image);
  render.render(&painter);
  qInfo() << render.isValid();
  return image;
}
};

#endif // HPSICON_H_

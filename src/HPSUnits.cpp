#include "HPSUnits.h"
#include <QFontMetricsF>
#include <QGuiApplication>
#include <QDebug>

HPSUnits::HPSUnits(QObject *parent)
  : QObject(parent)
{
    QFontMetricsF metrics(QGuiApplication::font());
    m_gridUnit = metrics.height();
}

int HPSUnits::gridUnit()
  {
    return m_gridUnit;
  }
int HPSUnits::longDuration()
  {
    return 200;
  }
int HPSUnits::smallSpacing()
  {
    int m_smallSpacing = m_gridUnit / 4;
    return m_smallSpacing;
  }

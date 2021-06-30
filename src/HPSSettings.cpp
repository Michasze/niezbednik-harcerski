#include "HPSSettings.h"
#include <QDebug>


HPSSettings::HPSSettings(QObject *parent)
    : QObject(parent)
{
  QSettings  m_settings("HPS", "Niezbędnik Harcerski");
}

void HPSSettings::neverToggle(const bool &a)
  {
    m_settings.setValue("showStartupPopup", a);
  }

bool HPSSettings::neverShowIsToggled()
{
  return m_settings.value("showStartupPopup").toBool();
}
void HPSSettings::neverToggle2(const bool &a)
  {
    m_settings.setValue("showStartupPopup2", a);
  }

bool HPSSettings::neverShow2IsToggled()
{
  return m_settings.value("showStartupPopup2").toBool();
}
void HPSSettings::neverToggle3(const bool &a)
  {
    m_settings.setValue("showStartupPopup3", a);
  }

bool HPSSettings::neverShow3IsToggled()
{
  return m_settings.value("showStartupPopup3").toBool();
}
void HPSSettings::neverToggle4(const bool &a)
  {
    m_settings.setValue("showStartupPopup4", a);
  }

bool HPSSettings::neverShow4IsToggled()
{
  return m_settings.value("showStartupPopup4").toBool();
}

void HPSSettings::darkTheme(const bool &b)
  {
    m_settings.setValue("darkTheme", b);
  }

bool HPSSettings::darkThemeIsToggled()
{
  qInfo() << m_settings.value("darkTheme");
  return m_settings.value("darkTheme", true).toBool();
}

void HPSSettings::setTextSize(const int &b)
  {
    qInfo() << b;
    m_settings.setValue("textSize", b);
  }
int HPSSettings::textSize()
  {
    return m_settings.value("textSize", 14).toInt();
  }
void HPSSettings::setSpiewnikTextSize(const int &c)
  {
    qInfo() << c;
    m_settings.setValue("spiewnikTextSize", c);
  }
int HPSSettings::spiewnikTextSize()
  {
    return m_settings.value("spiewnikTextSize", 14).toInt();
  }
void HPSSettings::setPakowanieId(const QString &d)
  {
    if (d != m_pakowanieId)
      {
        m_pakowanieId = d;
        qInfo() << m_pakowanieId;
      }
  }
QString HPSSettings::pakowanieId()
  {
    return m_pakowanieId;
  }
void HPSSettings::pakowanieToggle(const bool &e)
  {
    qInfo() << "set " << e;
    m_settings.setValue(m_pakowanieId, e);
  }
bool HPSSettings::pakowanieIsToggled()
  {
    qInfo() << "get " << m_settings.value(m_pakowanieId);
    return m_settings.value(m_pakowanieId).toBool();
  }

#include "HPSSettings.h"
#include <QDebug>


HPSSettings::HPSSettings(QObject *parent)
    : QObject(parent)
{
  QSettings  m_settings("HPS", "Niezbednik");
#if (defined(Q_OS_ANDROID) || defined(Q_OS_IOS))
        isTabletModeAvailable = true;
         m_tabletMode= true;
#else
        // Mostly for debug purposes and for platforms which are always mobile,
        // such as Plasma Mobile
        if (qEnvironmentVariableIsSet("QT_QUICK_CONTROLS_MOBILE") || qEnvironmentVariableIsSet("KDE_KIRIGAMI_TABLET_MODE")) {
            /* clang-format off */
             m_tabletMode=
                (QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("1")
                    || QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("true"))
                || (QString::fromLatin1(qgetenv("KDE_KIRIGAMI_TABLET_MODE")) == QStringLiteral("1")
                    || QString::fromLatin1(qgetenv("KDE_KIRIGAMI_TABLET_MODE")) == QStringLiteral("true"));
            isTabletModeAvailable = m_tabletMode;
        }
// TODO: case for Windows
// #else
//         isTabletModeAvailable = false;
//          m_tabletMode= false;
#endif
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
void HPSSettings::setIsMobile(const bool &f)
{
  m_mobile = f;
  isMobileChanged();
}
bool HPSSettings::isMobile()
{
#if defined(Q_OS_ANDROID) || defined(Q_OS_IOS) || defined(UBUNTU_TOUCH)
  m_mobile = true;
#else
  // Mostly for debug purposes and for platforms which are always mobile,
  // such as Plasma Mobile
  if (qEnvironmentVariableIsSet("QT_QUICK_CONTROLS_MOBILE")) {
    m_mobile = QByteArrayList{"1", "true"}.contains(qgetenv("QT_QUICK_CONTROLS_MOBILE"));
  } else {
    m_mobile = false;
  }
#endif
  // return m_mobile
  //  #HACK Usunąć najszybciej jak możliwe
  return true;
}
QStringList HPSSettings::information() const
{
  return {
    tr("Szkielety KDE %1").arg(QStringLiteral("5.90.0")),
    tr("System okien %1").arg(QGuiApplication::platformName()),
    tr("Qt %2 (zbudowany na %3)").arg(QString::fromLocal8Bit(qVersion()), QStringLiteral(QT_VERSION_STR))};
}
void HPSSettings::setTransientTouchInput(bool touch)
{
  if (touch == m_hasTransientTouchInput) {
    return;
  }

  m_hasTransientTouchInput = touch;
  if (!m_tabletMode) {
    Q_EMIT hasTransientTouchInputChanged();
  }
}
bool HPSSettings::hasTransientTouchInput() const
{
  return m_hasTransientTouchInput || m_tabletMode;
}
void HPSSettings::setDeveloperMenuEnabled(bool developerMode)
{
  if (developerMode != m_developerMode)
    {
      m_developerMode = developerMode;
      m_settings.setValue("isDevMenuEn", developerMode);
      Q_EMIT hasDeveloperMenuChanged(); 
    }
}
bool HPSSettings::isDeveloperMenuEnabled()
{
  return m_settings.value("isDevMenuEn").toBool();
}
QColor HPSSettings::backgroundColor()
{
  return m_settings.value("bgColor").value<QColor>();
}
void HPSSettings::setBackgroundColor(const QColor &color)
{
  if (m_backgroundColor != color)
    {
      m_backgroundColor = color;
      m_settings.setValue("bgColor", m_backgroundColor);
      Q_EMIT backgroundColorChanged();
    }
}
void HPSSettings::resetBackgroundColor()
{
      m_backgroundColor = QColorConstants::Color0;
      m_settings.setValue("bgColor", m_backgroundColor);
}
QColor HPSSettings::primaryColor()
{
  return m_settings.value("prColor").value<QColor>();
}
void HPSSettings::setPrimaryColor(const QColor &color)
{
  if (m_primaryColor != color)
    {
      m_primaryColor = color;
      m_settings.setValue("prColor", m_primaryColor);
      Q_EMIT primaryColorChanged();
    }
}
QColor HPSSettings::iconColor()
{
  if (m_settings.value("icColor") != QVariant())
  return m_settings.value("icColor").value<QColor>();
  else
    return QColorConstants::White;
}
void HPSSettings::setIconColor(const QColor &color)
{
  if (m_iconColor != color)
    {
      m_iconColor = color;
      m_settings.setValue("icColor", m_iconColor);
      Q_EMIT iconColorChanged();
    }
}
int HPSSettings::margin()
{
  return m_settings.value("margin", m_defaultMargin).toInt();
}
void HPSSettings::setMargin(const int &margin)
{
  m_settings.setValue("margin", margin);
}

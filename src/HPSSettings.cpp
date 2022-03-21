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
  return m_mobile;
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

#include "HPSSettings.h"
#include <QDebug>


HPSSettings::HPSSettings(QObject *parent)
    : QObject(parent)
{
  QSettings  m_settings("HPS", "Niezbędnik Harcerski");
#if !defined(KIRIGAMI_ENABLE_DBUS) && (defined(Q_OS_ANDROID) || defined(Q_OS_IOS))
        isTabletModeAvailable = true;
         m_tabletMode= true;
#elif defined(KIRIGAMI_ENABLE_DBUS)
        // Mostly for debug purposes and for platforms which are always mobile,
        // such as Plasma Mobile
        if (qEnvironmentVariableIsSet("QT_QUICK_CONTROLS_MOBILE") || qEnvironmentVariableIsSet("KDE_KIRIGAMI_TABLET_MODE")) {
            /* clang-format off */
             m_tabletMode=
                (QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("1")
                    || QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("true"))
                || (QString::fromLatin1(qgetenv("KDE_KIRIGAMI_TABLET_MODE")) == QStringLiteral("1")
                    || QString::fromLatin1(qgetenv("KDE_KIRIGAMI_TABLET_MODE")) == QStringLiteral("true"));
            /* clang-format on */
            isTabletModeAvailable = isTabletMode;
        } else {
            m_interface =
                new OrgKdeKWinTabletModeManagerInterface(QStringLiteral("org.kde.KWin"), QStringLiteral("/org/kde/KWin"), QDBusConnection::sessionBus(), q);

            if (m_interface->isValid()) {
                // NOTE: the initial call is actually sync, because is better a tiny freeze than having the ui always recalculated and changed at the start
                isTabletModeAvailable = m_interface->tabletModeAvailable();
                 m_tabletMode= m_interface->tabletMode();
                QObject::connect(m_interface, &OrgKdeKWinTabletModeManagerInterface::tabletModeChanged, q, [this](bool tabletMode) {
                    setIsTablet(tabletMode);
                });
                QObject::connect(m_interface, &OrgKdeKWinTabletModeManagerInterface::tabletModeAvailableChanged, q, [this](bool avail) {
                    isTabletModeAvailable = avail;
                    Q_EMIT q->tabletModeAvailableChanged(avail);
                });
            } else {
                isTabletModeAvailable = false;
                 m_tabletMode= false;
            }
        }
// TODO: case for Windows
#else
        isTabletModeAvailable = false;
         m_tabletMode= false;
#endif
    bool isTabletModeAvailable = false;
    bool  m_tabletMode= false;
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
    qInfo() << "is mobile: " << m_mobile;
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

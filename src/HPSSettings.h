#ifndef __SETTINGS_H_
#define __SETTINGS_H_

#include <QObject>
#include <QString>
#include <QApplication>
#include <QSettings>

class HPSSettings : public QObject
{
    Q_OBJECT

    Q_PROPERTY(bool neverShowIsToggled READ neverShowIsToggled WRITE neverToggle NOTIFY neverShowChanged)
    Q_PROPERTY(bool neverShow2IsToggled READ neverShow2IsToggled WRITE neverToggle2 NOTIFY neverShow2Changed)
    Q_PROPERTY(bool neverShow3IsToggled READ neverShow3IsToggled WRITE neverToggle3 NOTIFY neverShow3Changed)
    Q_PROPERTY(bool neverShow4IsToggled READ neverShow4IsToggled WRITE neverToggle4 NOTIFY neverShow4Changed)
    Q_PROPERTY(bool darkThemeIsToggled READ darkThemeIsToggled WRITE darkTheme NOTIFY themeChanged)
    Q_PROPERTY(int textSize READ textSize WRITE setTextSize NOTIFY textSizeChanged)
    Q_PROPERTY(int spiewnikTextSize READ spiewnikTextSize WRITE setSpiewnikTextSize NOTIFY spiewnikTextSizeChanged)
    Q_PROPERTY(QString pakowanieId READ pakowanieId WRITE setPakowanieId NOTIFY pakowanieIdChanged)
    Q_PROPERTY(bool pakowanieIsToggled READ pakowanieIsToggled WRITE pakowanieToggle NOTIFY pakowanieChanged)
public:
    HPSSettings(QObject *parent=0);

    bool neverShowIsToggled();
    void neverToggle(const bool &a);
    bool neverShow2IsToggled();
    void neverToggle2(const bool &a);
    bool neverShow3IsToggled();
    void neverToggle3(const bool &a);
    bool neverShow4IsToggled();
    void neverToggle4(const bool &a);
    bool darkThemeIsToggled();
    void darkTheme(const bool &a);
    int textSize();
    void setTextSize(const int &b);
    int spiewnikTextSize();
    void setSpiewnikTextSize(const int &c);
    QString pakowanieId();
    void setPakowanieId(const QString &d);
    bool pakowanieIsToggled();
    void pakowanieToggle(const bool &e);

Q_SIGNALS:
    void neverShowChanged();
    void neverShow2Changed();
    void neverShow3Changed();
    void neverShow4Changed();
    void themeChanged();
    void textSizeChanged();
    void spiewnikTextSizeChanged();
    void pakowanieIdChanged();
    void pakowanieChanged();

private:
    QSettings m_settings;
    QString m_pakowanieId;
};
#endif // __SETTINGS_H_

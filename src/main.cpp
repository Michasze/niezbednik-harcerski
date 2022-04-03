/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QQmlContext>
#include "Cipher.h"
#include "Decipher.h"
#include "Clipboard.h"
#include "InfoData.h"
#include "HPSSettings.h"
#include "Spiewnik.h"
#include "HPSFilter.h"
#include "HPSIcon.h"
#include "HPSImage.h"
#include "HPSDatabase.h"
#include "HPSCardModel.h"
#include "HPSTranslate.h"
#include "HPSUnits.h"
#include "HPSColumnView.h"

#ifdef Q_OS_ANDROID
#if (QT_VERSION <= QT_VERSION_CHECK(5, 15, 3))
#include <QtAndroid>
#include "HPSSms.h"
#endif
#include <QGuiApplication>

// WindowManager.LayoutParams
#define FLAG_TRANSLUCENT_STATUS 0x04000000
#define FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS 0x80000000
// View
#define SYSTEM_UI_FLAG_LIGHT_STATUS_BAR 0x00002000

#else
#include <QApplication>
#endif

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication::setAttribute(Qt::AA_UseHighDpiPixmaps);
    //The desktop QQC2 style needs it to be a QApplication
#ifdef Q_OS_ANDROID
    QGuiApplication app(argc, argv);
    QQuickStyle::setStyle(QStringLiteral("Material"));
#else
    // Default to org.kde.desktop style unless the user forces another style
    if (qEnvironmentVariableIsEmpty("QT_QUICK_CONTROLS_STYLE")) {
        QQuickStyle::setStyle(QStringLiteral("Material"));
    }
    QApplication app(argc, argv);
#endif

    qputenv("QT_QUICK_CONTROLS_MATERIAL_THEME", "Dark");
    //Extra debug if needed
    //qputenv("QML_IMPORT_TRACE", "1");
    HPSTranslate translate;
    QQmlApplicationEngine engine;

    qmlRegisterType<Cipher>("Cipher", 1, 0, "Cipher");
    qmlRegisterType<Decipher>("Decipher", 1, 0, "Decipher");
    qmlRegisterType<Clipboard>("Data", 1, 0, "Clipboard");
    qmlRegisterType<InfoData>("Data", 1, 0, "InfoData");
    qmlRegisterType<HPSSettings>("Data", 1, 0, "HPSSettings");
    qmlRegisterType<Spiewnik>("Data", 1, 0, "Spiewnik");
    qmlRegisterType<HPSFilter>("Filter", 1, 0, "HPSFilter");
    qmlRegisterType<HPSDatabase>("HPSDatabase", 1, 0, "HPSDatabase");
    qmlRegisterType<HPSCardModel>("HPSCardModel", 1, 0, "HPSCardModel");
    qmlRegisterType<HPSUnits>("HPSUnits", 1, 0, "HPSUnits");
    qmlRegisterType<ColumnView>("HPSColumnView", 1, 0, "HPSColumnView");
    engine.addImageProvider(QLatin1String("icons"), new HPSIcon);
    engine.addImageProvider(QLatin1String("images"), new HPSImage);
    engine.rootContext()->setContextProperty("HPSTranslate", &translate);
#ifdef Q_OS_ANDROID
    HPSSms sms;
    engine.rootContext()->setContextProperty("HPSSms", &sms);
#endif
    engine.rootContext()->setContextProperty("engine", &engine);
    //we want different main files on desktop or mobile
    //very small difference as they as they are subclasses of the same thing
    if (qEnvironmentVariableIsSet("QT_QUICK_CONTROLS_MOBILE") &&
        (QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("1") ||
         QString::fromLatin1(qgetenv("QT_QUICK_CONTROLS_MOBILE")) == QStringLiteral("true"))) {
        engine.load(QUrl(QStringLiteral("qrc:///contents/ui/mobileApp.qml")));
    } else {
        engine.load(QUrl(QStringLiteral("qrc:///contents/ui/BaseApp.qml")));
    }
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    //HACK to color the system bar on Android, use qtandroidextras and call the appropriate Java methods
#ifdef Q_OS_ANDROID
#if (QT_VERSION <= QT_VERSION_CHECK(5, 15, 3))
    QtAndroid::runOnAndroidThread([=]() {
        QAndroidJniObject window = QtAndroid::androidActivity().callObjectMethod("getWindow", "()Landroid/view/Window;");
        window.callMethod<void>("addFlags", "(I)V", FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        window.callMethod<void>("clearFlags", "(I)V", FLAG_TRANSLUCENT_STATUS);
        window.callMethod<void>("setStatusBarColor", "(I)V", QColor("Black").rgba());
        window.callMethod<void>("setNavigationBarColor", "(I)V", QColor("Black").rgba());
    }
        );
#endif
    //TODO: Ogarnąć jak to zrobić w Qt6. Wersja 6.4 chyba to umożliwi
#endif

    return app.exec();
}

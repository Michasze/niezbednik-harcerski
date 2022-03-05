#include <QGuiApplication>
#include <QDir>
#include "HPSTranslate.h"

HPSTranslate::HPSTranslate()
{
  translator = new QTranslator(this);
}

void HPSTranslate::selectLanguage(QString language)
  {
    QDir dir = QDir("://contents/ui/gallery");
    translator->load(
                QString("translation_%1").arg(language),
                // look for the file in i18n folder within working directory
                QString("%1/i18n").arg(dir.path())
                          );
    qApp->installTranslator(translator);
    Q_EMIT languageChanged();
  }

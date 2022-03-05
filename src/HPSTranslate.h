#ifndef HPSTRANSLATE_H_
#define HPSTRANSLATE_H_

#include <QObject>
#include <QTranslator>

class HPSTranslate : public QObject
{
  Q_OBJECT
public:
    HPSTranslate();
    Q_INVOKABLE void selectLanguage(QString language);

Q_SIGNALS:
    void languageChanged();

private:
    QTranslator *translator;
};
#endif // HPSTRANSLATE_H_

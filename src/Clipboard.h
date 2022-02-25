#ifndef __CLIPBOARD_H_
#define __CLIPBOARD_H_

#include <QObject>
#include <QString>
#include <QApplication>
#include <QClipboard>

class Clipboard : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString paste READ paste WRITE setClipboard NOTIFY clipboardChanged)
public:
    Clipboard(QObject *parent = nullptr);
    QClipboard *clipboard = QApplication::clipboard();
    QString paste();
    void setClipboard(const QString &quote);

Q_SIGNALS:
    void clipboardChanged();

private:
    QString m_clipboard;
};
#endif // __CLIPBOARD_H_

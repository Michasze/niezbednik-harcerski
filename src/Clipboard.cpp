#include "Clipboard.h"

Clipboard::Clipboard(QObject *parent)
    : QObject(parent)
{

}

void Clipboard::setClipboard(const QString &quote)
{
   m_clipboard = quote;
  QApplication::clipboard()->setText(m_clipboard);
   clipboardChanged();
}

QString Clipboard::paste()
{
  QApplication::clipboard()->setText(m_clipboard);
  return m_clipboard;
}

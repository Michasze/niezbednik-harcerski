#include "HPSGameKeyHandler.h"
#include <QDebug>

HPSGameKeyHandler::HPSGameKeyHandler(QObject *parent)
  : QObject(parent)
{

}
void HPSGameKeyHandler::setKey(Qt::Key &a)
  {
    if (a != m_key)
      {
        m_key = a;
//        qInfo() << "nacisnieto: " << m_key;
        if (m_key == Qt::Key_Down)
          {
        key = down;
//        qInfo() << "siur";
        }
      }
  }
Qt::Key HPSGameKeyHandler::keyPressed()
  {
//    qInfo() << "kierunek: " << Qt::Key(m_key);
    return m_key;
  }
HPSGameKeyHandler::Key HPSGameKeyHandler::directionKey()
  {
    return key;
  }

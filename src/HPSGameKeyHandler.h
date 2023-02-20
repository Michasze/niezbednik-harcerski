#ifndef HPSGAMEKEYHANDLER_H_
#define HPSGAMEKEYHANDLER_H_
#include <QObject>

class HPSGameKeyHandler : public QObject
{
  Q_OBJECT
  Q_PROPERTY(Qt::Key keyPressed READ keyPressed WRITE setKey NOTIFY keyPressedChanged )
public:
  HPSGameKeyHandler(QObject *parent = nullptr);
  Qt::Key keyPressed();
  void setKey(Qt::Key &a);
  enum Key {
    up,
    down,
    left,
    right
  };
  Key directionKey();
private:
  Key key;
  Qt::Key m_key;
Q_SIGNALS:
  void keyPressedChanged();

};

#endif // HPSGAMEKEYHANDLER_H_

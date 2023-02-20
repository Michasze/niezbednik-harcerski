#ifndef HPSGAMESCREEN_H_
#define HPSGAMESCREEN_H_
#include <QObject>

class HPSGameScreen : public QObject
{
  Q_OBJECT
  Q_PROPERTY(int screenWidth READ screenWidth WRITE setScreenWidth NOTIFY screenWidthChanged )
  Q_PROPERTY(int screenHeight READ screenHeight WRITE setScreenHeight NOTIFY screenHeightChanged )
public:
  HPSGameScreen(QObject *parent = nullptr);
  int screenWidth();
  int screenHeight();
  void setScreenWidth(const int &a);
  void setScreenHeight(const int &a);
private:
  int m_screenWidth;
  int m_screenHeight;
Q_SIGNALS:
  void screenWidthChanged();
  void screenHeightChanged();
};

#endif // HPSGAMESCREEN_H_

#ifndef HPSGAMEPLAYER_H_
#define HPSGAMEPLAYER_H_
#include <QObject>
#include "HPSGameTile.h"
#include "HPSGameScreen.h"

class HPSGamePlayer : public QObject
{
  Q_OBJECT
public:
  HPSGamePlayer(QObject *parent = nullptr);
  HPSGameTile tile[6];
  HPSGameScreen screen;
  QImage image;
//  QString direction;
  enum Direction {
    dir_up,
    dir_down,
    dir_left,
    dir_right,
    dir_standleft,
    dir_standright,
    dir_stand
  };
  Direction direction;
  QImage up1, up2, down1, down2, left1, left2, right1, right2, stand, standleft, standright;
  void setOtherValues();
  void getPlayerImage();
  void selectPlayerImage();
  void update();
  int worldX;
  int worldY;
  int screenX;
  int screenY;
  int spriteNumber;
  int spriteCounter;
//  int fps = 60;
private:
  void setDefaultValues();
  void counter();

};
#endif // HPSGAMEPLAYER_H_

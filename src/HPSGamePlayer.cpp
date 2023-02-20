#include "HPSGame.h"
#include "HPSGamePlayer.h"
#include "HPSGameKeyHandler.h"
#include <QDebug>

HPSGamePlayer::HPSGamePlayer(QObject *parent)
  : QObject(parent)
{
  setDefaultValues();
  setOtherValues();
  getPlayerImage();
}
void HPSGamePlayer::setDefaultValues()
{
  worldX = tile[0].tileSize * 23;
  worldY = tile[0].tileSize * 21;
  direction = dir_down;
  spriteNumber = 0;
  spriteCounter = 0;
}
void HPSGamePlayer::setOtherValues()
  {
  screenX = (screen.screenWidth() / 2) - (tile[0].tileSize / 2);
  screenY = (screen.screenHeight() / 2) - (tile[0].tileSize / 2);
  }
void HPSGamePlayer::getPlayerImage()
  {
    up1 = QImage("://contents/ui/img/player/player_up_1.png");
    up2 = QImage("://contents/ui/img/player/player_up_2.png");
    down1 = QImage("://contents/ui/img/player/player_down_1.png");
    down2 = QImage("://contents/ui/img/player/player_down_2.png");
    left1 = QImage("://contents/ui/img/player/player_left_1.png");
    left2 = QImage("://contents/ui/img/player/player_left_2.png");
    right1 = QImage("://contents/ui/img/player/player_right_1.png");
    right2 = QImage("://contents/ui/img/player/player_right_2.png");
    stand = QImage("://contents/ui/img/player/player_stand.png");
    standleft = QImage("://contents/ui/img/player/player_stand_left.png");
    standright = QImage("://contents/ui/img/player/player_stand_right.png");
  }
void HPSGamePlayer::selectPlayerImage()
  {
    switch(direction)
      {
      case dir_up:
        if(spriteNumber == 1)
          image = up1;
        else
          image = up2;
        break;

      case dir_down:
        if(spriteNumber == 1)
          image = down1;
        else
          image = down2;
        break;

      case dir_left:
        if(spriteNumber == 1)
          image = left1;
        else
          image = left2;
        break;

      case dir_right:
        if(spriteNumber == 1)
          image = right1;
        else
          image = right2;
        break;

      case dir_standleft:
        image = standleft;
        break;

      case dir_standright:
        image = standright;
        break;

      case dir_stand:
        image = stand;
        break;
      }
//    qInfo() << "kierunek: " << direction;
  }
void HPSGamePlayer::counter()
{
  spriteCounter++;
  if(spriteCounter > 10){
    spriteNumber = (spriteNumber + 1) % 2;
    spriteCounter = 0;
  }
}
void HPSGamePlayer::update()
  {
    HPSGameKeyHandler handler;
    Qt::Key m_keyPressed = handler.keyPressed();
    qInfo() << "pitol:" << handler.directionKey();
    if(m_keyPressed == Qt::Key(0))
      {
        direction = dir_up;
        //qInfo() << "kierunek: " << direction;
        // qInfo() << "kierunek: " << direction;
        }
    counter();
  }

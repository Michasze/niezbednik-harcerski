#include "HPSGame.h"
#include <QFile>
#include <QDebug>
#include <QBuffer>
#include <QPainter>

HPSGame::HPSGame(QObject *parent)
  : QObject(parent)
{
  map();
}

QList<int> HPSGame::gamePanel()
{
  return m_gamePanel;
}
int HPSGame::map()
{
  QFile mapFile ("://world01.txt");
  QByteArray mapLine;
  if(mapFile.open(QIODevice::ReadOnly | QIODevice::Text))
    {
      for (int i = 0; i < maxWorldRow; i++)
        {
          mapLine = mapFile.readLine();
          numbers = QString(mapLine).split(" ");
          for (int j = 0; j < maxWorldCol; j++){
            m_map[j][i] = numbers[j].toInt();
          }
        }
    }
  mapFile.close();
  getTileImage();
  return 0;
}
void HPSGame::getTileImage()
{
  player.tile[0].image = QString("://contents/ui/img/grass.png");
  player.tile[1].image = QString("://contents/ui/img/stone.png");
  player.tile[2].image = QString("://contents/ui/img/water.png");
  player.tile[3].image = QString("://contents/ui/img/road.png");
  player.tile[4].image = QString("://contents/ui/img/tree.png");
  player.tile[5].image = QString("://contents/ui/img/sand.png");
}
void HPSGame::drawPlayerSprite(QImage &a)
  {
    player.selectPlayerImage();
    QImage sprite1 = player.image;
    QImage sprite2 = sprite1.scaled(internalTileSize, internalTileSize, Qt::KeepAspectRatio);
    QPainter painter(&a);
    painter.setBrush(sprite2);
    painter.drawRect(player.screenX, player.screenY, internalTileSize, internalTileSize);
    painter.end();
  }
QString HPSGame::tileImage()
{
  if (m_screenWidth < 40)
    {
  m_screenWidth = 540;
  m_screenHeight = 540;
  }
  QImage output(m_screenWidth, m_screenHeight, QImage::Format_RGB16);
  output.fill(Qt::white);
  QByteArray outputArray;
  QBuffer buffer(&outputArray);
  player.screen.setScreenWidth(m_screenWidth);
  player.screen.setScreenHeight(m_screenWidth);
  player.setOtherValues();
  player.update();
  for (int i= 0; i < maxWorldRow; i++)
    {
      int worldY = i * player.tile[0].tileSize;
      int screenY = worldY - player.worldY + player.screenY;
      for(int j = 0; j < maxWorldCol; j++) {
        int worldX = j * player.tile[0].tileSize;
        int screenX = worldX - player.worldX + player.screenX;
        if (worldX + player.tile[0].tileSize > player.worldX - player.screenX &&
            worldX - player.tile[0].tileSize < player.worldX + player.screenX &&
            worldY + player.tile[0].tileSize > player.worldY - player.screenY &&
            worldY - player.tile[0].tileSize < player.worldY + player.screenY) {
          QPainter painter(&output);
          painter.setCompositionMode(QPainter::CompositionMode_Source);
          internalTileSize = player.tile[0].tileSize;
          QImage brush(player.tile[m_map[j][i]].image);
          painter.setBrush( brush );
          painter.drawRect(screenX, screenY, internalTileSize, internalTileSize);
          painter.end();
        }
      }
    }
  drawPlayerSprite(output);
  buffer.open(QIODevice::WriteOnly);
  output.save(&buffer, "jpg");
  QString outputEncrypted("data:image/jpg;base64,");
  outputEncrypted.append(QString::fromLatin1(outputArray.toBase64().data()));
  return outputEncrypted;
}
int HPSGame::screenWidth()
  {
    return m_screenWidth;
  }
void HPSGame::setScreenWidth(const int &a)
  {
    if (a != m_screenWidth)
      {
        m_screenWidth = a;
        screenWidthChanged();
      }
  }
int HPSGame::screenHeight()
  {
    return m_screenHeight;
  }
void HPSGame::setScreenHeight(const int &a)
  {
    if (a != m_screenHeight)
      {
        m_screenHeight = a;
        screenHeightChanged();
      }
  }

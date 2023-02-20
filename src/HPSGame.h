#ifndef GAME_H_
#define GAME_H_

#include "HPSGameTile.h"
#include "HPSGamePlayer.h"
#include <QObject>
#include <QList>
#include <QImage>
class HPSGame : public QObject
{
  Q_OBJECT
  Q_PROPERTY(QList<int> gamePanel READ gamePanel NOTIFY gamePanelChanged )
  Q_PROPERTY(int map READ map NOTIFY mapChanged )
  Q_PROPERTY(QString tileImage READ tileImage NOTIFY tileImageChanged )
  Q_PROPERTY(int screenWidth READ screenWidth WRITE setScreenWidth NOTIFY screenWidthChanged )
  Q_PROPERTY(int screenHeight READ screenHeight WRITE setScreenHeight NOTIFY screenHeightChanged )
public:
  HPSGame(QObject *parent =  nullptr);
  HPSGamePlayer player;
  QList<int> gamePanel();
  void getTileImage();
  QString tileImage();
  int map();
  int screenWidth();
  int screenHeight();
  void setScreenWidth(const int &a);
  void setScreenHeight(const int &a);

private:
  QList<int> m_gamePanel;
  QStringList numbers;
  int maxWorldCol = 50;
  int maxWorldRow = 50;
  int m_screenWidth;
  int m_screenHeight;
//TODO: ta tablica nie powinna mieć z góry określonego rozmiaru
  int m_map[50][50];
  int internalTileSize;
  void drawPlayerSprite(QImage &a);

Q_SIGNALS:
  void gamePanelChanged();
  void mapChanged();
  void tileImageChanged();
  void screenWidthChanged();
  void screenHeightChanged();

};
#endif // GAME_H_

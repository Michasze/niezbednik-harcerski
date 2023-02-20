#ifndef HPSGAMETILE_H_
#define HPSGAMETILE_H_
#include <QObject>
#include <QImage>

class HPSGameTile : public QObject
{
  Q_OBJECT
public:
  HPSGameTile(QObject *parent = nullptr);
  bool collision = false;
  int originalTileSize = 16; // 16x16
  int scale = 3;
  int tileSize = originalTileSize * scale; // 48x48
  QString image;
};

#endif // HPSGAMETILE_H_

#include "HPSGameScreen.h"
#include <QDebug>

HPSGameScreen::HPSGameScreen(QObject *parent)
  : QObject(parent)
{
}

int HPSGameScreen::screenWidth()
  {
    return m_screenWidth;
  }
void HPSGameScreen::setScreenWidth(const int &a)
  {
    if (a != m_screenWidth)
      {
        m_screenWidth = a;
        screenWidthChanged();
      }
  }
int HPSGameScreen::screenHeight()
  {
    return m_screenHeight;
  }
void HPSGameScreen::setScreenHeight(const int &a)
  {
    if (a != m_screenHeight)
      {
        m_screenHeight = a;
        screenHeightChanged();
      }
  }

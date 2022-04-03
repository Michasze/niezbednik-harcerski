#ifndef HPSSMS_H_
#define HPSSMS_H_
#include <QObject>
#include <QAndroidIntent>

class HPSSms : public QObject
{

public:
  HPSSms(QObject *parent = nullptr);
  Q_INVOKABLE void prepareSMS();
  };
#endif // HPSSMS_H_

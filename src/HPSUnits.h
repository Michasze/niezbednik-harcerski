#ifndef HPSUNITS_H_
#define HPSUNITS_H_

#include <QObject>

class HPSUnits : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int gridUnit READ gridUnit NOTIFY gridUnitChanged)
    Q_PROPERTY(int smallSpacing READ smallSpacing NOTIFY smallSpacingChanged)
    Q_PROPERTY(int longDuration READ longDuration NOTIFY longDurationChanged)
public:
    HPSUnits(QObject *parent = nullptr);
    int gridUnit();
    int smallSpacing();
    int longDuration();
Q_SIGNALS:
    void gridUnitChanged();
    void smallSpacingChanged();
    void longDurationChanged();
private:
    int m_gridUnit;
};

#endif // HPSUNITS_H_

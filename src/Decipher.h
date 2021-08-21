#ifndef DECIPHER_H_
#define DECIPHER_H_
#include <QObject>
#include <QString>
#include <QMap>
#include <QVariantMap>

class Decipher : public QObject
{
  Q_OBJECT


    Q_PROPERTY(QString caesarDec READ caesarDec WRITE setCaesarDec NOTIFY caesarDecChanged)
    Q_PROPERTY(int decShift READ decShift WRITE setDecShift NOTIFY decShiftChanged)
    Q_PROPERTY(QString baconDec READ baconDec WRITE setBaconDec NOTIFY baconDecChanged)

public:
    Decipher(QObject *parent=0);

    QString caesarDec();
    QString baconDec();
    int decShift();

    void setDecShift(const int &b);
    void setCaesarDec(const QString &a);
    void setBaconDec(const QString &c);

signals:
    void caesarDecChanged();
    void baconDecChanged();
    void decShiftChanged();

private:
    int m_decShift;
    QString m_cipherDec;
    QString m_baconDec;
    QString m_baconDecryptedWhole;
    QStringList baconDecList;
    QMap<QString, QString> bacondectable;
    QVector<QString> dectable;
};

#endif // DECIPHER_H_

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
    Q_PROPERTY(QString alfaDec READ alfaDec WRITE setAlfaDec NOTIFY alfaDecChanged)

public:
    Decipher(QObject *parent = nullptr);

    QString caesarDec();
    QString baconDec();
    QString alfaDec();
    int decShift();
    int konwerter(int i, QString s);
    bool sprawdz_czy_prawidlowe(int i, QString s);

    void setDecShift(const int &b);
    void setCaesarDec(const QString &a);
    void setBaconDec(const QString &c);
    void setAlfaDec(const QString &c);

Q_SIGNALS:
    void caesarDecChanged();
    void baconDecChanged();
    void alfaDecChanged();
    void decShiftChanged();

private:
    int m_decShift;
    QString m_cipherDec;
    QString m_baconDec;
    QString m_alfaDec;
    QString m_baconDecryptedWhole;
};

#endif // DECIPHER_H_

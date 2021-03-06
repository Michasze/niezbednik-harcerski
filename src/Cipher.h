#ifndef CIPHER_H
#define CIPHER_H

#include <QObject>
#include <QString>
#include <QMap>

class Cipher : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString caesar READ caesar WRITE setCaesar NOTIFY caesarChanged)
    Q_PROPERTY(int shift READ shift WRITE setShift NOTIFY shiftChanged)
    Q_PROPERTY(QString rozbiezny READ rozbiezny WRITE setRozbiezny NOTIFY rozbieznyChanged)
    Q_PROPERTY(QString bacon READ bacon WRITE setBacon NOTIFY baconChanged)
    Q_PROPERTY(QString gade READ gade WRITE setGade NOTIFY gadeChanged)
    Q_PROPERTY(QString kaczor READ kaczor WRITE setKaczor NOTIFY kaczorChanged)
    Q_PROPERTY(int wariant READ wariant WRITE setWariant NOTIFY wariantChanged)
    Q_PROPERTY(int kaczorWariant READ kaczorWariant WRITE setKaczorWariant NOTIFY kaczorWariantChanged)
    Q_PROPERTY(QString morse READ morse WRITE setMorse NOTIFY morseChanged)
    Q_PROPERTY(QString alfa READ alfa WRITE setAlfa NOTIFY alfaChanged)
public:
    Cipher(QObject *parent =  nullptr);
    
    QString caesar();
    QString rozbiezny();
    QString bacon();
    QString gade();
    QString kaczor();
    QString morse();
    QString alfa();
    int wariant();
    int kaczorWariant();
    int shift();
    QMap<QChar, QString> morsetable;

    void setShift(const int &b);
    void setRozbiezny(const QString &a);
    void setCaesar(const QString &a);
    void setMorse(const QString &i);
    void setBacon(const QString &c);
    void setGade(const QString &d);
    void setAlfa(const QString &e);
    void setKaczor(const QString &g);
    void setWariant(const int &e);
    void setKaczorWariant(const int &h);

Q_SIGNALS:
    void caesarChanged();
    void rozbieznyChanged();
    void morseChanged();
    void alfaChanged();
    void shiftChanged();
    void baconChanged();
    void gadeChanged();
    void kaczorChanged();
    void wariantChanged();
    void kaczorWariantChanged();

private:
    QString m_cipher;
    QString m_rozbiezny;
    QString m_morse;
    QString m_morseEncryptedWhole;
    QString m_bacon;
    QString m_baconEncryptedWhole;
    QString m_alfa;
    QString m_alfaEnc;
    QChar convertDiacritics(const QChar &c);
    int m_wariant = 0;
    int m_kaczorwariant = 0;
    QString m_gade;
    QString m_kaczor;
    QString m_kaczorEncrypted;
     int a;
     int b;
     int c;
     int d;
     int e;
     int f;
    int m_shift = 0;
    QVector<QString> morseEnctable;
    QVector<QString> kaczorEnctable;
    QMap<QChar, QChar> gadetable;
    QMap<QChar, QString> kaczortable;
};

#endif // CIPHER_H

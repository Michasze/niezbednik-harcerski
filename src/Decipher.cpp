#include "Decipher.h"
#include "Cipher.h"
#include <QDebug>
#include <QFile>
#include <QVariantMap>
#include <QMap>

Decipher::Decipher(QObject *parent)
   : QObject(parent)
     {

     }

void Decipher::setDecShift(const int &b)
  {
    if (b != m_decShift)
      {
      m_decShift = b;
   }
       if (m_decShift > 52)
       {
         m_decShift = m_decShift - 52;
       }
       if (m_decShift > 26)
       {
         m_decShift = m_decShift - 26;
       }
         decShiftChanged();
  }
int Decipher::decShift()
  {
    return m_decShift;
  }
void Decipher::setCaesarDec(const QString &a)
{
     if (a != m_cipherDec)
     {
       m_cipherDec = a;
       caesarDecChanged();
     }
}
QString Decipher::caesarDec()
{

    for(int i = 0; i < m_cipherDec.length(); i++) {
        int sym = 0;
        if(m_cipherDec[i].toLatin1() > 64 && m_cipherDec[i].toLatin1() < 91 && (sym = m_cipherDec[i].toLatin1() - m_decShift) < 65)
            m_cipherDec[i] = QChar(sym + 90 - 64);
        else if(m_cipherDec[i].toLatin1() > 96 && m_cipherDec[i].toLatin1() < 123 && (sym = m_cipherDec[i].toLatin1() - m_decShift) < 97)
            m_cipherDec[i] = QChar(sym + 122 - 96);
        else if(m_cipherDec[i].toLatin1() < 65 || m_cipherDec[i].toLatin1() > (122 + 38))
            m_cipherDec[i] = m_cipherDec[i];

        else m_cipherDec[i] = QChar(m_cipherDec[i].toLatin1() - m_decShift);
    }
    return m_cipherDec;
}

void Decipher::setBaconDec(const QString &c)
{
     if (&c != m_baconDec)
     {
       m_baconDec = c;
       baconDecChanged();
     }
}
QString Decipher::baconDec()
{
  int count = m_baconDec.length();
     if (m_baconDec == "")
       {
         return m_baconDec;
       }
   for(int i = 0; i < count; i+=5)
   {
     m_baconDec = m_baconDec.toLower();
     m_baconDecryptedWhole = "";
     for (int i = 0; i < m_baconDec.size(); i += 5)
       {
         while(m_baconDec[i] == QChar(' '))
           {
             m_baconDecryptedWhole += QString(" ");
             i++;
           }
         if(sprawdz_czy_prawidlowe(i, m_baconDec) || konwerter(i, m_baconDec) > 122)
           {
             return m_baconDecryptedWhole;
           }
         m_baconDecryptedWhole += konwerter(i, m_baconDec);
       }
     }
   return m_baconDecryptedWhole;
}
int Decipher::konwerter(int i, QString s)
  {
    int wynik = 97;
    int mnoznik = 1;
    for(int k = i + 4; k >= i; k--)
      {
        if(s[k] == QChar('b'))
          wynik += mnoznik;
        mnoznik *= 2;
      }
    return wynik;
  }
bool Decipher::sprawdz_czy_prawidlowe(int i, QString s)
  {
    if(i + 5 > s.size())
      {
        return 1;
        }
        int wartosc = i;
        for(i; i < wartosc + 5; i++)
          {
            if(s[i] != 'a' && s[i] != 'b')
              return 1;
          }
        return 0;
  }
void Decipher::setAlfaDec(const QString &c)
  {
    if(m_alfaDec != c)
      {
        m_alfaDec = c;
      }
  }
QString Decipher::alfaDec()
  {
    QStringList alfaDecList = m_alfaDec.split(QChar('-'));
    QString m_alfaDecrypted;
    for(int i = 0; i < alfaDecList.size(); i++)
      {
        if(alfaDecList.at(i).toInt() > 26 || alfaDecList.at(i).toInt() < 1)
          {
          m_alfaDecrypted += "";
}
        else {
        m_alfaDecrypted += QChar(alfaDecList.at(i).toInt() + 96);
        }
      }
        return m_alfaDecrypted;
  }

#include "Decipher.h"

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
  // Tabela z wartościami szyfru dla każdej litery
  bacondectable["aaaaa"] = QString("a");
  bacondectable["aaaab"] = QString("b");
  bacondectable["aaaba"] = QString("c");
  bacondectable["aaabb"] = QString("d");
  bacondectable["aabaa"] = QString("e");
  bacondectable["aabab"] = QString("f");
  bacondectable["aabba"] = QString("g");
  bacondectable["aabbb"] = QString("h");
  bacondectable["abaaa"] = QString("(i/j)");
  bacondectable["abaab"] = QString("k");
  bacondectable["ababa"] = QString("l");
  bacondectable["ababb"] = QString("m");
  bacondectable["abbaa"] = QString("n");
  bacondectable["abbab"] = QString("o");
  bacondectable["abbba"] = QString("p");
  bacondectable["abbbb"] = QString("q");
  bacondectable["baaaa"] = QString("r");
  bacondectable["baaab"] = QString("s");
  bacondectable["baaba"] = QString("t");
  bacondectable["baabb"] = QString("u");
  bacondectable["baabb"] = QString("v");
  bacondectable["babaa"] = QString("w");
  bacondectable["babab"] = QString("x");
  bacondectable["babba"] = QString("y");
  bacondectable["babbb"] = QString("z");
  m_baconDecryptedWhole = "";
   for(int i = 0; i < ((m_baconDec.length() / 5)); i++)
   {
     baconDecList.clear();
     m_baconDec = m_baconDec.toLower();
      int count = m_baconDec.length();
     for (int i = 0; i < (count / 5); i++)
      {
        if(count%5==0)
          {
     baconDecList.append(m_baconDec.left(5));
     m_baconDec.remove(0,5);
      qInfo() << "baconDecList:" << baconDecList;
      }
      }
     // Pobierz wartość szyfru z tabeli dla danej litery
     for (int i = 0; i < baconDecList.size(); i++)
       {
      if (bacondectable.contains(baconDecList.at(i)))
     {
     dectable.append(bacondectable.value(baconDecList.at(i)));
     }
     else
     {
         dectable.append(QString("(?)"));
     }
         m_baconDecryptedWhole.append(dectable.value(i));

       }
   }
   bacondectable.clear();
   dectable.clear();
   return m_baconDecryptedWhole;
}

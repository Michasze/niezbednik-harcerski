#include "Cipher.h"
#include <QDebug>
#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>
#include <QApplication>
#include <QVariantMap>
#include <QMap>

Cipher::Cipher(QObject *parent)
    : QObject(parent)
{
    }


void Cipher::setShift(const int &b)
{
     if (b != m_shift)
         m_shift = b;
     {
       if (m_shift > 52)
       {
         m_shift = m_shift - 52;
       }
       if (m_shift > 26)
       {
         m_shift = m_shift - 26;
       }
         shiftChanged();
     }
}

int Cipher::shift()
{
       return m_shift;
}

void Cipher::setCaesar(const QString &a)
{
     if (a != m_cipher)
     {
       m_cipher = a;
       caesarChanged();
     }
}
QString Cipher::caesar()
{

    for(int i = 0; i < m_cipher.length(); i++) {
        int sym = 0;
        if(m_cipher[i].toLatin1() > 64 && m_cipher[i].toLatin1() < 91 && (sym = m_cipher[i].toLatin1() + m_shift) > 90)
            m_cipher[i] = QChar(sym - 90 + 64);
        else if(m_cipher[i].toLatin1() > 96 && m_cipher[i].toLatin1() < 123 && (sym = m_cipher[i].toLatin1() + m_shift) > 122)
            m_cipher[i] = QChar(sym - 122 + 96);
        else if(m_cipher[i].toLatin1() < 65 || m_cipher[i].toLatin1() > (122 + 38))
            m_cipher[i] = m_cipher[i];

        else m_cipher[i] = QChar(m_cipher[i].toLatin1() + m_shift);
    }
    return m_cipher;
}
void Cipher::setCaesarDec(const QString &a)
{
     if (a != m_cipherDec)
     {
       m_cipherDec = a;
       caesarDecChanged();
     }
}
QString Cipher::caesarDec()
{

    for(int i = 0; i < m_cipherDec.length(); i++) {
        int sym = 0;
        if(m_cipherDec[i].toLatin1() > 64 && m_cipherDec[i].toLatin1() < 91 && (sym = m_cipherDec[i].toLatin1() - m_shift) < 65)
            m_cipherDec[i] = QChar(sym + 90 - 64);
        else if(m_cipherDec[i].toLatin1() > 96 && m_cipherDec[i].toLatin1() < 123 && (sym = m_cipherDec[i].toLatin1() - m_shift) < 97)
            m_cipherDec[i] = QChar(sym + 122 - 96);
        else if(m_cipherDec[i].toLatin1() < 65 || m_cipherDec[i].toLatin1() > (122 + 38))
            m_cipherDec[i] = m_cipherDec[i];

        else m_cipherDec[i] = QChar(m_cipherDec[i].toLatin1() - m_shift);
    }
    return m_cipherDec;
}

void Cipher::setMorse(const QString &i)
  {
    if(i != m_morse)
      {
        m_morse = i;
        morseChanged();
      }
  }
QString Cipher::morse()
  {
    if (m_wariant == 0)
      {
  morsetable[QChar('a')] = "•—/";
  morsetable[QChar(261)] = "•—/"; // ą
  morsetable[QChar('b')] = "—•••/";
  morsetable[QChar('c')] = "—•—•/";
  morsetable[QChar(263)] = "—•—•/"; // ć
  morsetable[QChar('d')] = "—••/";
  morsetable[QChar('e')] = "•/";
  morsetable[QChar(281)] = "•/"; // ę
  morsetable[QChar('f')] = "••—•/";
  morsetable[QChar('g')] = "——•/";
  morsetable[QChar('h')] = "••••/";
  morsetable[QChar('i')] = "••/";
  morsetable[QChar('j')] = "•———/";
  morsetable[QChar('k')] = "—•—/";
  morsetable[QChar('l')] = "•—••/";
  morsetable[QChar(322)] = "•—••/"; // ł
  morsetable[QChar('m')] = "——/";
  morsetable[QChar('n')] = "—•/";
  morsetable[QChar(324)] = "—•/";
  morsetable[QChar('o')] = "———/";
  morsetable[QChar(243)] = "———/"; // ó
  morsetable[QChar('p')] = "•——•/";
  morsetable[QChar('q')] = "——•—/";
  morsetable[QChar('r')] = "•—•/";
  morsetable[QChar('s')] = "•••/";
  morsetable[QChar(347)] = "•••/"; // ś
  morsetable[QChar('t')] = "—/";
  morsetable[QChar('u')] = "••—/";
  morsetable[QChar('v')] = "•••—/";
  morsetable[QChar('w')] = "•——/";
  morsetable[QChar('x')] = "—••—/";
  morsetable[QChar('y')] = "—•——/";
  morsetable[QChar('z')] = "——••/";
  morsetable[QChar(380)] = "——••/"; // ż
  morsetable[QChar(378)] = "——••/"; // ź
  morsetable[QChar('1')] = "•————/";
  morsetable[QChar('2')] = "••———/";
  morsetable[QChar('3')] = "•••——/";
  morsetable[QChar('4')] = "••••—/";
  morsetable[QChar('5')] = "•••••/";
  morsetable[QChar('6')] = "—••••/";
  morsetable[QChar('7')] = "——•••/";
  morsetable[QChar('8')] = "———••/";
  morsetable[QChar('9')] = "————•/";
  morsetable[QChar('0')] = "—————/";
  morsetable[QChar(32)] = "/";
  morsetable[QChar('.')] = "//";
  m_morseEncryptedWhole = "";
  }
  else  if (m_wariant == 1)
      {
  morsetable[QChar('a')] = "•—/";
  morsetable[QChar(261)] = "•—•—/"; // ą
  morsetable[QChar('b')] = "—•••/";
  morsetable[QChar('c')] = "—•—•/";
  morsetable[QChar(263)] = "—•—••/"; // ć
  morsetable[QChar('d')] = "—••/";
  morsetable[QChar('e')] = "•/";
  morsetable[QChar(281)] = "••—••/"; // ę
  morsetable[QChar('f')] = "••—•/";
  morsetable[QChar('g')] = "——•/";
  morsetable[QChar('h')] = "••••/";
  morsetable[QChar('i')] = "••/";
  morsetable[QChar('j')] = "•———/";
  morsetable[QChar('k')] = "—•—/";
  morsetable[QChar('l')] = "•—••/";
  morsetable[QChar(322)] = "•—••—/"; // ł
  morsetable[QChar('m')] = "——/";
  morsetable[QChar('n')] = "—•/";
  morsetable[QChar(324)] = "——•——/";
  morsetable[QChar('o')] = "———/";
  morsetable[QChar(243)] = "———•/"; // ó
  morsetable[QChar('p')] = "•——•/";
  morsetable[QChar('q')] = "——•—/";
  morsetable[QChar('r')] = "•—•/";
  morsetable[QChar('s')] = "•••/";
  morsetable[QChar(347)] = "•••—•••/"; // ś
  morsetable[QChar('t')] = "—/";
  morsetable[QChar('u')] = "••—/";
  morsetable[QChar('v')] = "•••—/";
  morsetable[QChar('w')] = "•——/";
  morsetable[QChar('x')] = "—••—/";
  morsetable[QChar('y')] = "—•——/";
  morsetable[QChar('z')] = "——••/";
  morsetable[QChar(380)] = "——••—•/"; // ż
  morsetable[QChar(378)] = "——••—/"; // ź
  morsetable[QChar('1')] = "•————/";
  morsetable[QChar('2')] = "••———/";
  morsetable[QChar('3')] = "•••——/";
  morsetable[QChar('4')] = "••••—/";
  morsetable[QChar('5')] = "•••••/";
  morsetable[QChar('6')] = "—••••/";
  morsetable[QChar('7')] = "——•••/";
  morsetable[QChar('8')] = "———••/";
  morsetable[QChar('9')] = "————•/";
  morsetable[QChar('0')] = "—————/";
  morsetable[QChar(32)] = "/";
  morsetable[QChar('.')] = "//";
  m_morseEncryptedWhole = "";
  }
   for(int i = 0; i < m_morse.length(); i++)
   {
     // Przekonwertuj literę na małą
     m_morse[i] = m_morse[i].toLower();
     // Pobierz wartość szyfru z tabeli dla danej litery
     if (morsetable.contains(m_morse[i]))
     {
     morseEnctable.append(morsetable.value(m_morse[i]));
     }
     else
     {
         morseEnctable.append(NULL);
     }
         m_morseEncryptedWhole.append(morseEnctable.value(i));
   }
   morsetable.clear();
   morseEnctable.clear();
   return m_morseEncryptedWhole;
  }

void Cipher::setWariant(const int &e)
{
     if (m_wariant != e)
     {
        m_wariant = e;
        wariantChanged();
       gadeChanged();
     }
}
int Cipher::wariant()
{
    return m_wariant;
}
void Cipher::setKaczorWariant(const int &h)
{
     if (m_kaczorwariant != h)
     {
       m_kaczorwariant = h;
       kaczorWariantChanged();
       kaczorChanged();
     }
}
int Cipher::kaczorWariant()
{
    return m_kaczorwariant;
}
void Cipher::setGade(const QString &d)
{
     if (d != m_gade)
     {
       m_gade = d;
       gadeChanged();
     }
}
QString Cipher::gade()
{
  if(m_wariant == 0)
  {
    gadetable[QChar('g')] = 'a';
    gadetable[QChar('a')] = 'g';
    gadetable[QChar('d')] = 'e';
    gadetable[QChar('e')] = 'd';
    gadetable[QChar('r')] = 'y';
    gadetable[QChar('y')] = 'r';
    gadetable[QChar('p')] = 'o';
    gadetable[QChar('o')] = 'p';
    gadetable[QChar('l')] = 'u';
    gadetable[QChar('u')] = 'l';
    gadetable[QChar('k')] = 'i';
    gadetable[QChar('i')] = 'k';
  }
  else if(m_wariant == 1)
  {
    gadetable[QChar('p')] = 'o';
    gadetable[QChar('o')] = 'p';
    gadetable[QChar('l')] = 'i';
    gadetable[QChar('i')] = 'l';
    gadetable[QChar('t')] = 'y';
    gadetable[QChar('y')] = 't';
    gadetable[QChar('k')] = 'a';
    gadetable[QChar('a')] = 'k';
    gadetable[QChar('r')] = 'e';
    gadetable[QChar('e')] = 'r';
    gadetable[QChar('n')] = 'u';
    gadetable[QChar('u')] = 'n';
  }
  else if(m_wariant == 2)
  {
    gadetable[QChar('m')] = 'a';
    gadetable[QChar('a')] = 'm';
    gadetable[QChar('l')] = 'i';
    gadetable[QChar('i')] = 'l';
    gadetable[QChar('n')] = 'o';
    gadetable[QChar('o')] = 'n';
    gadetable[QChar('w')] = 'e';
    gadetable[QChar('e')] = 'w';
    gadetable[QChar('b')] = 'u';
    gadetable[QChar('u')] = 'b';
    gadetable[QChar('t')] = 'y';
    gadetable[QChar('y')] = 't';
  }
  else if(m_wariant == 3)
  {
    gadetable[QChar('b')] = 'i';
    gadetable[QChar('i')] = 'b';
    gadetable[QChar('t')] = 'w';
    gadetable[QChar('w')] = 't';
    gadetable[QChar('a')] = 'o';
    gadetable[QChar('o')] = 'a';
    gadetable[QChar('c')] = 'h';
    gadetable[QChar('h')] = 'c';
    gadetable[QChar('m')] = 'u';
    gadetable[QChar('u')] = 'm';
    gadetable[QChar('r')] = 'y';
    gadetable[QChar('y')] = 'r';
  }
  else if(m_wariant == 4)
  {
    gadetable[QChar('k')] = 'u';
    gadetable[QChar('u')] = 'k';
    gadetable[QChar('l')] = 'o';
    gadetable[QChar('o')] = 'l';
    gadetable[QChar('p')] = 'e';
    gadetable[QChar('e')] = 'p';
    gadetable[QChar('r')] = 'y';
    gadetable[QChar('y')] = 'r';
    gadetable[QChar('z')] = 'a';
    gadetable[QChar('a')] = 'z';
    gadetable[QChar('g')] = 'i';
    gadetable[QChar('i')] = 'g';
  }
  else if(m_wariant == 5)
  {
    gadetable[QChar('n')] = 'o';
    gadetable[QChar('o')] = 'n';
    gadetable[QChar('w')] = 'e';
    gadetable[QChar('e')] = 'w';
    gadetable[QChar('b')] = 'u';
    gadetable[QChar('u')] = 'b';
    gadetable[QChar('t')] = 'y';
    gadetable[QChar('y')] = 't';
    gadetable[QChar('l')] = 'i';
    gadetable[QChar('i')] = 'l';
    gadetable[QChar('s')] = 'a';
    gadetable[QChar('a')] = 's';
  }
  else if(m_wariant == 6)
  {
    gadetable[QChar('r')] = 'e';
    gadetable[QChar('e')] = 'r';
    gadetable[QChar('g')] = 'u';
    gadetable[QChar('u')] = 'g';
    gadetable[QChar('l')] = 'a';
    gadetable[QChar('a')] = 'l';
    gadetable[QChar('m')] = 'i';
    gadetable[QChar('i')] = 'm';
    gadetable[QChar('n')] = 'o';
    gadetable[QChar('o')] = 'n';
    gadetable[QChar('w')] = 'y';
    gadetable[QChar('y')] = 'w';
  }
  else if(m_wariant == 7)
  {
    gadetable[QChar('m')] = 'o';
    gadetable[QChar('o')] = 'm';
    gadetable[QChar('t')] = 'y';
    gadetable[QChar('y')] = 't';
    gadetable[QChar('l')] = 'e';
    gadetable[QChar('e')] = 'l';
    gadetable[QChar('c')] = 'u';
    gadetable[QChar('u')] = 'c';
    gadetable[QChar('d')] = 'a';
    gadetable[QChar('a')] = 'd';
    gadetable[QChar('k')] = 'i';
    gadetable[QChar('i')] = 'k';
  }
  else if(m_wariant == 8)
  {
    gadetable[QChar('k')] = 'a';
    gadetable[QChar('a')] = 'k';
    gadetable[QChar('c')] = 'e';
    gadetable[QChar('e')] = 'c';
    gadetable[QChar('m')] = 'i';
    gadetable[QChar('i')] = 'm';
    gadetable[QChar('n')] = 'u';
    gadetable[QChar('u')] = 'n';
    gadetable[QChar('t')] = 'o';
    gadetable[QChar('o')] = 't';
    gadetable[QChar('w')] = 'y';
    gadetable[QChar('y')] = 'w';
  }
  else if(m_wariant == 9)
  {
    gadetable[QChar('k')] = 'o';
    gadetable[QChar('o')] = 'k';
    gadetable[QChar('n')] = 'i';
    gadetable[QChar('i')] = 'n';
    gadetable[QChar('e')] = 'c';
    gadetable[QChar('c')] = 'e';
    gadetable[QChar('m')] = 'a';
    gadetable[QChar('a')] = 'm';
    gadetable[QChar('t')] = 'u';
    gadetable[QChar('u')] = 't';
    gadetable[QChar('r')] = 'y';
    gadetable[QChar('y')] = 'r';
  }
  else if(m_wariant == 10)
  {
    gadetable[QChar('n')] = 'a';
    gadetable[QChar('a')] = 'n';
    gadetable[QChar('s')] = 'z';
    gadetable[QChar('z')] = 's';
    gadetable[QChar('h')] = 'u';
    gadetable[QChar('u')] = 'h';
    gadetable[QChar('f')] = 'i';
    gadetable[QChar('i')] = 'f';
    gadetable[QChar('e')] = 'c';
    gadetable[QChar('c')] = 'e';
  }
else if(m_wariant == 11)
  {
    gadetable[QChar('r')] = 243;
    gadetable[QChar(243)] = 'r';
    gadetable[QChar(380)] = 'o';
    gadetable[QChar('o')] = 380;
    gadetable[QChar('w')] = 'e';
    gadetable[QChar('e')] = 'w';
    gadetable[QChar('t')] = 'u';
    gadetable[QChar('u')] = 't';
    gadetable[QChar('l')] = 'i';
    gadetable[QChar('i')] = 'l';
    gadetable[QChar('p')] = 'a';
    gadetable[QChar('a')] = 'p';
    gadetable[QChar('n')] = 'y';
    gadetable[QChar('y')] = 'n';
  }
else if(m_wariant == 12)
  {
    gadetable[QChar('p')] = 'a';
    gadetable[QChar('a')] = 'p';
    gadetable[QChar('d')] = 'y';
    gadetable[QChar('y')] = 'd';
    gadetable[QChar('g')] = 'i';
    gadetable[QChar('i')] = 'g';
    gadetable[QChar('m')] = 'o';
    gadetable[QChar('o')] = 'm';
    gadetable[QChar('z')] = 'e';
    gadetable[QChar('e')] = 'z';
    gadetable[QChar('t')] = 'u';
    gadetable[QChar('u')] = 't';
  }
   for(int i = 0; i < m_gade.length(); i++)
   {
     if (gadetable.contains(m_gade[i]) && m_gade[i].isLower())
     {
     m_gade[i] = gadetable.value(m_gade[i]);
     }
     else if (gadetable.contains(m_gade[i].toLower()) && m_gade[i].isUpper())
     {
     m_gade[i] = gadetable.value(m_gade[i].toLower()).toUpper();
     }
     else
     {
            m_gade[i] = m_gade[i];
     }
   }
  gadetable.clear();
   return m_gade;
}
void Cipher::setKaczor(const QString &g)
  {
    if (g != m_kaczor)
      {
        m_kaczor = g;
        kaczorChanged();
      }
  }
QString Cipher::kaczor()
  {
  if (m_kaczorwariant == 0)
{
  kaczortable[QChar('a')] = "1A";
  kaczortable[QChar(261)] = "1A"; // ą
  kaczortable[QChar('b')] = "2A";
  kaczortable[QChar('c')] = "1C";
  kaczortable[QChar(263)] = "1C"; // ć
  kaczortable[QChar('d')] = "2C";
  kaczortable[QChar('e')] = "3C";
  kaczortable[QChar(281)] = "3C"; // ę
  kaczortable[QChar('f')] = "4C";
  kaczortable[QChar('g')] = "5C";
  kaczortable[QChar('h')] = "6C";
  kaczortable[QChar('i')] = "7C";
  kaczortable[QChar('j')] = "8C";
  kaczortable[QChar('k')] = "1K";
  kaczortable[QChar('l')] = "2K";
  kaczortable[QChar(322)] = "2K"; // ł
  kaczortable[QChar('m')] = "3K";
  kaczortable[QChar('n')] = "4K";
  kaczortable[QChar(324)] = "5K"; // ń
  kaczortable[QChar('o')] = "1O";
  kaczortable[QChar(243)] = "1O"; // ó
  kaczortable[QChar('p')] = "2O";
  kaczortable[QChar('r')] = "1R";
  kaczortable[QChar('s')] = "2R";
  kaczortable[QChar(347)] = "2R";
  kaczortable[QChar('t')] = "3R";
  kaczortable[QChar('u')] = "4R";
  kaczortable[QChar('v')] = "5R";
  kaczortable[QChar('w')] = "6R";
  kaczortable[QChar('x')] = "7R";
  kaczortable[QChar('y')] = "8R";
  kaczortable[QChar('z')] = "1Z";
  kaczortable[QChar(380)] = "1Z"; // ż
  kaczortable[QChar(378)] = "1Z"; // ź
}
 else if (m_kaczorwariant == 1)
    {
  kaczortable[QChar('a')] = "1A";
  kaczortable[QChar(261)] = "2A"; // ą
  kaczortable[QChar('b')] = "3A";
  kaczortable[QChar('c')] = "1C";
  kaczortable[QChar(263)] = "2C"; // ć
  kaczortable[QChar('d')] = "3C";
  kaczortable[QChar('e')] = "4C";
  kaczortable[QChar(281)] = "5C"; // ę
  kaczortable[QChar('f')] = "6C";
  kaczortable[QChar('g')] = "7C";
  kaczortable[QChar('h')] = "8C";
  kaczortable[QChar('i')] = "9C";
  kaczortable[QChar('j')] = "10C";
  kaczortable[QChar('k')] = "1K";
  kaczortable[QChar('l')] = "2K";
  kaczortable[QChar(322)] = "3K"; // ł
  kaczortable[QChar('m')] = "4K";
  kaczortable[QChar('n')] = "5K";
  kaczortable[QChar(324)] = "6K"; // ń
  kaczortable[QChar('o')] = "1O";
  kaczortable[QChar(243)] = "2O"; // ó
  kaczortable[QChar('p')] = "3O";
  kaczortable[QChar('r')] = "1R";
  kaczortable[QChar('s')] = "2R";
  kaczortable[QChar(347)] = "2R"; // ś
  kaczortable[QChar('t')] = "3R";
  kaczortable[QChar('u')] = "4R";
  kaczortable[QChar('w')] = "5R";
  kaczortable[QChar('y')] = "6R";
  kaczortable[QChar('z')] = "7R";
  kaczortable[QChar(380)] = "8R"; // ż
  kaczortable[QChar(378)] = "9R"; // ź
    }
 else if (m_kaczorwariant == 2)
    {
  kaczortable[QChar('a')] = "M1";
  kaczortable[QChar(261)] = "M1"; // ą
  kaczortable[QChar('b')] = "A1";
  kaczortable[QChar('c')] = "F1";
  kaczortable[QChar(263)] = "F1"; // ć
  kaczortable[QChar('d')] = "E1";
  kaczortable[QChar('e')] = "K1";
  kaczortable[QChar(281)] = "K1"; // ę
  kaczortable[QChar('f')] = "I1";
  kaczortable[QChar('g')] = "N1";
  kaczortable[QChar('h')] = "G1";
  kaczortable[QChar('i')] = "M2";
  kaczortable[QChar('j')] = "A2";
  kaczortable[QChar('k')] = "F2";
  kaczortable[QChar('l')] = "E2";
  kaczortable[QChar(322)] = "E2"; // ł
  kaczortable[QChar('m')] = "K2";
  kaczortable[QChar('n')] = "I2";
  kaczortable[QChar(324)] = "I2"; // ń
  kaczortable[QChar('o')] = "N2";
  kaczortable[QChar(243)] = "N2"; // ó
  kaczortable[QChar('p')] = "G2";
  kaczortable[QChar('r')] = "M3";
  kaczortable[QChar('s')] = "A3";
  kaczortable[QChar(347)] = "A3"; // ś
  kaczortable[QChar('t')] = "F3";
  kaczortable[QChar('u')] = "E3";
  kaczortable[QChar('w')] = "K3";
  kaczortable[QChar('w')] = "I3";
  kaczortable[QChar('y')] = "N3";
  kaczortable[QChar('z')] = "G3";
  kaczortable[QChar(380)] = "G3"; // ż
  kaczortable[QChar(378)] = "G3"; // ź
    }
  m_kaczorEncrypted = "";
   for(int i = 0; i < m_kaczor.length(); i++)
   {
     // Przekonwertuj literę na małą
     m_kaczor[i] = m_kaczor[i].toLower();
     // Pobierz wartość szyfru z tabeli dla danej litery
     if (kaczortable.contains(m_kaczor[i]))
     {
     kaczorEnctable.append(kaczortable.value(m_kaczor[i]));
     }
     else
     {
         kaczorEnctable.append(QString(m_kaczor[i]));
     }
     qInfo() << "Items in list:" << kaczortable.value(m_kaczor[i]);
         m_kaczorEncrypted.append(kaczorEnctable.value(i));
         m_kaczorEncrypted.append('-');

   }
   kaczortable.clear();
   kaczorEnctable.clear();
   return m_kaczorEncrypted;
  }
void Cipher::setBacon(const QString &c)
{
     if (&c != m_bacon)
     {
       m_bacon = c;
       baconChanged();
     }
}
QString Cipher::bacon()
{
  // Tabela z wartościami szyfru dla każdej litery
  bacontable[QChar('a')] = "aaaaa";
  bacontable[QChar(261)] = "aaaaa"; // ą
  bacontable[QChar('b')] = "aaaab";
  bacontable[QChar('c')] = "aaaba";
  bacontable[QChar(263)] = "aaaba"; // ć
  bacontable[QChar('d')] = "aaabb";
  bacontable[QChar('e')] = "aabaa";
  bacontable[QChar(281)] = "aabaa"; // ę
  bacontable[QChar('f')] = "aabab";
  bacontable[QChar('g')] = "aabba";
  bacontable[QChar('h')] = "aabbb";
  bacontable[QChar('i')] = "abaaa";
  bacontable[QChar('j')] = "abaaa";
  bacontable[QChar('k')] = "abaab";
  bacontable[QChar('l')] = "ababa";
  bacontable[QChar(322)] = "ababa"; // ł
  bacontable[QChar('m')] = "ababb";
  bacontable[QChar('n')] = "abbaa";
  bacontable[QChar(324)] = "abbaa";
  bacontable[QChar('o')] = "abbab";
  bacontable[QChar(243)] = "abbab"; // ó
  bacontable[QChar('p')] = "abbba";
  bacontable[QChar('q')] = "abbbb";
  bacontable[QChar('r')] = "baaaa";
  bacontable[QChar('s')] = "baaab";
  bacontable[QChar(347)] = "baaab";
  bacontable[QChar('t')] = "baaba";
  bacontable[QChar('u')] = "baabb";
  bacontable[QChar('v')] = "baabb";
  bacontable[QChar('w')] = "babaa";
  bacontable[QChar('x')] = "babab";
  bacontable[QChar('y')] = "babba";
  bacontable[QChar('z')] = "babbb";
  bacontable[QChar(380)] = "babbb"; // ż
  bacontable[QChar(378)] = "babbb"; // ź
  m_baconEncryptedWhole = "";
   for(int i = 0; i < m_bacon.length(); i++)
   {
     // Przekonwertuj literę na małą
     m_bacon[i] = m_bacon[i].toLower(); 
     // Pobierz wartość szyfru z tabeli dla danej litery
     if (bacontable.contains(m_bacon[i]))
     {
     enctable.append(bacontable.value(m_bacon[i]));
     }
     else
     {
         enctable.append(QString(m_bacon[i]));
     }
         m_baconEncryptedWhole.append(enctable.value(i));
   }
   bacontable.clear();
   enctable.clear();
   return m_baconEncryptedWhole;
}
void Cipher::setBaconDec(const QString &c)
{
     if (&c != m_baconDec)
     {
       m_baconDec = c;
       baconDecChanged();
     }
}
QString Cipher::baconDec()
{
  // Tabela z wartościami szyfru dla każdej litery
  bacondectable["aaaaa"] = QChar('a');
  bacondectable["aaaab"] = QChar('b');
  bacondectable["aaaba"] = QChar('c');
  bacondectable["aaabb"] = QChar('d');
  bacondectable["aabaa"] = QChar('e');
  bacondectable["aabab"] = QChar('f');
  bacondectable["aabba"] = QChar('g');
  bacondectable["aabbb"] = QChar('h');
  bacondectable["abaaa"] = QChar('i');
  bacondectable["abaaa"] = QChar('j');
  bacondectable["abaab"] = QChar('k');
  bacondectable["ababa"] = QChar('l');
  bacondectable["ababb"] = QChar('m');
  bacondectable["abbaa"] = QChar('n');
  bacondectable["abbab"] = QChar('o');
  bacondectable["abbba"] = QChar('p');
  bacondectable["abbbb"] = QChar('q');
  bacondectable["baaaa"] = QChar('r');
  bacondectable["baaab"] = QChar('s');
  bacondectable["baaba"] = QChar('t');
  bacondectable["baabb"] = QChar('u');
  bacondectable["baabb"] = QChar('v');
  bacondectable["babaa"] = QChar('w');
  bacondectable["babab"] = QChar('x');
  bacondectable["babba"] = QChar('y');
  bacondectable["babbb"] = QChar('z');
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
         dectable.append(baconDecList.at(i));
     }
         m_baconDecryptedWhole.append(dectable.value(i));

       }
   }
   bacondectable.clear();
   dectable.clear();
   return m_baconDecryptedWhole;
}

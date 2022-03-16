/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
#ifndef __CLIPBOARD_H_
#define __CLIPBOARD_H_

#include <QString>
#include <QGuiApplication>
#include <QClipboard>

class Clipboard : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString paste READ paste WRITE setClipboard NOTIFY clipboardChanged)
public:
    Clipboard(QObject *parent = nullptr);
    QClipboard *clipboard = QGuiApplication::clipboard();
    QString paste();
    void setClipboard(const QString &quote);

Q_SIGNALS:
    void clipboardChanged();

private:
    QString m_clipboard;
};
#endif // __CLIPBOARD_H_

/*
 *   Copyright 2022 Harcerze - Poznajemy Się! <aplikacjahps@gmail.com>
 *   Based on KItemModels source code
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#ifndef HPSFILTER_H
#define HPSFILTER_H

#include <QAbstractItemModel>
#include <QJSValue>
#include <QQmlParserStatus>
#include <QSortFilterProxyModel>
#include <QVector>

class HPSFilter : public QSortFilterProxyModel, public QQmlParserStatus
{
    Q_OBJECT
    Q_INTERFACES(QQmlParserStatus)
    Q_PROPERTY(QAbstractItemModel *sourceModel READ sourceModel WRITE setModel NOTIFY sourceModelChanged)
    Q_PROPERTY(QString filterRole READ filterRole WRITE setFilterRole NOTIFY filterRoleChanged)
    Q_PROPERTY(QString sortRole READ sortRole WRITE setSortRole NOTIFY sortRoleChanged)
    Q_PROPERTY(QString secondRole READ secondRole WRITE setSecondRole NOTIFY secondRoleChanged)
    Q_PROPERTY(QString exclusion READ exclusion WRITE setExclusion NOTIFY exclusionChanged)
    Q_PROPERTY(Qt::SortOrder sortOrder READ sortOrder WRITE setSortOrder NOTIFY sortOrderChanged)
    Q_PROPERTY(int sortColumn READ sortColumn WRITE setSortColumn NOTIFY sortColumnChanged)
    Q_PROPERTY(int count READ rowCount NOTIFY rowCountChanged)

public:
    explicit HPSFilter(QObject *parent = nullptr);
    ~HPSFilter();

    void setModel(QAbstractItemModel *source);


    void setFilterRole(const QString &role);
    QString filterRole() const;

    void setSortRole(const QString &role);
    QString sortRole() const;

    void setSecondRole(const QString &role);
    QString secondRole() const;

    void setExclusion(const QString &exclusion);
    QString exclusion() const;

    void setSortOrder(const Qt::SortOrder order);
    void setSortColumn(int column);

    void classBegin() override;
    void componentComplete() override;

public Q_SLOTS:
    void invalidateFilter();

Q_SIGNALS:
    void filterStringChanged();
    void filterRoleChanged();
    void sortRoleChanged();
    void secondRoleChanged();
    void exclusionChanged();
    void sortOrderChanged();
    void sortColumnChanged();
    void sourceModelChanged(QObject *);
    void filterRowCallbackChanged(const QJSValue &);
    void filterColumnCallbackChanged(const QJSValue &);
    void rowCountChanged();

protected:
    int roleNameToId(const QString &name) const;
    bool filterAcceptsRow(int source_row, const QModelIndex &source_parent) const override;

protected Q_SLOTS:
    void syncRoleNames();

private:
    bool m_componentCompleted = false;
    QString m_filterRole;
    QString m_filterString;
    QString m_sortRole;
    QString m_secondRole;
    QString m_exclusion;
    QJSValue m_filterRowCallback;
    QJSValue m_filterColumnCallback;
    QHash<QString, int> m_roleIds;
};
#endif

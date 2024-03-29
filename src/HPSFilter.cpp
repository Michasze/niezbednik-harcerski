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

#include "HPSFilter.h"

HPSFilter::HPSFilter(QObject *parent)
    : QSortFilterProxyModel(parent)
{
    setDynamicSortFilter(true);
}

HPSFilter::~HPSFilter()
{
}

void HPSFilter::syncRoleNames()
{
    if (!sourceModel()) {
        return;
    }

    m_roleIds.clear();
    const QHash<int, QByteArray> rNames = roleNames();
    m_roleIds.reserve(rNames.count());
    for (auto i = rNames.constBegin(); i != rNames.constEnd(); ++i) {
        m_roleIds[QString::fromUtf8(i.value())] = i.key();
    }
}

int HPSFilter::roleNameToId(const QString &name) const
{
    return m_roleIds.value(name, Qt::DisplayRole);
}

void HPSFilter::setModel(QAbstractItemModel *model)
{
    if (model == sourceModel()) {
        return;
    }

    QSortFilterProxyModel::setSourceModel(model);
    if (m_componentCompleted) {
        syncRoleNames();
        setFilterRole(m_filterRole);
        setSortRole(m_sortRole);
    }
}

bool HPSFilter::filterAcceptsRow(int source_row, const QModelIndex &source_parent) const
{
    QRegularExpression regularExpression = filterRegularExpression();
    QModelIndex firstIndex = sourceModel()->index(source_row, 0, source_parent);
    QString firstString = sourceModel()->data(firstIndex, QSortFilterProxyModel::filterRole()).toString();
    QString secondString = sourceModel()->data(firstIndex, roleNameToId(secondRole())).toString();
    QString modelString;
    QString wykluczenie = exclusion();
    if(firstString == secondString)
        {
            modelString = firstString;
        }
    else
        {
            modelString = firstString + QStringLiteral(" - ") + secondString;
        }
    if (wykluczenie != "")
        {
            return modelString.contains(regularExpression) && !modelString.contains(m_exclusion);
        }
    else
        {
            return modelString.contains(regularExpression);
        }
}
void HPSFilter::setFilterRole(const QString &role)
{
    QSortFilterProxyModel::setFilterRole(roleNameToId(role));
    m_filterRole = role;
    Q_EMIT filterRoleChanged();
}

QString HPSFilter::filterRole() const
{
    return m_filterRole;
}

void HPSFilter::setSortRole(const QString &role)
{
    m_sortRole = role;
    if (role.isEmpty()) {
        sort(-1, Qt::AscendingOrder);
    } else if (sourceModel()) {
        QSortFilterProxyModel::setSortRole(roleNameToId(role));
        sort(std::max(sortColumn(), 0), sortOrder());
    }
    Q_EMIT sortRoleChanged();
}

QString HPSFilter::sortRole() const
{
    return m_sortRole;
}

void HPSFilter::setSecondRole(const QString &role)
{
    m_secondRole = role;
    Q_EMIT secondRoleChanged();
}
QString HPSFilter::secondRole() const
{
    return m_secondRole;
}
void HPSFilter::setExclusion(const QString &exclusion)
{
    m_exclusion = exclusion;
    Q_EMIT exclusionChanged();
}
QString HPSFilter::exclusion() const
{
    return m_exclusion;
}
void HPSFilter::setSortOrder(const Qt::SortOrder order)
{
    sort(std::max(sortColumn(), 0), order);
    Q_EMIT sortOrderChanged();
}

void HPSFilter::setSortColumn(int column)
{
    if (column == sortColumn()) {
        return;
    }
    sort(column, sortOrder());
    Q_EMIT sortColumnChanged();
}

void HPSFilter::classBegin()
{
}

void HPSFilter::componentComplete()
{
    m_componentCompleted = true;
    if (sourceModel()) {
        syncRoleNames();
        setFilterRole(m_filterRole);
        setSortRole(m_sortRole);
    }
}

void HPSFilter::invalidateFilter()
{
    QSortFilterProxyModel::invalidateFilter();
}

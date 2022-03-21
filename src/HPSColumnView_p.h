#ifndef HPSCOLUMNVIEW_P_H_
#define HPSCOLUMNVIEW_P_H_

#pragma once

#include "HPSColumnView.h"
#include "HPSUnits.h"

#include <QPointer>
#include <QQuickItem>

class QPropertyAnimation;
class QQmlComponent;

class QmlComponentsPool : public QObject
{
    Q_OBJECT

public:
    QmlComponentsPool(QQmlEngine *engine);
    ~QmlComponentsPool() override;

    QQmlComponent *m_separatorComponent = nullptr;
    QQmlComponent *m_rightSeparatorComponent = nullptr;

Q_SIGNALS:
    void gridUnitChanged();
    void longDurationChanged();

private:
    QObject *m_instance = nullptr;
};

class ContentItem : public QQuickItem
{
    Q_OBJECT

public:
    ContentItem(ColumnView *parent = nullptr);
    ~ContentItem() override;

    void layoutItems();
    void layoutPinnedItems();
    qreal childWidth(QQuickItem *child);
    void updateVisibleItems();
    void forgetItem(QQuickItem *item);
    QQuickItem *ensureSeparator(QQuickItem *item);
    QQuickItem *ensureRightSeparator(QQuickItem *item);

    void setBoundedX(qreal x);
    void animateX(qreal x);
    void snapToItem();

    inline qreal viewportLeft() const;
    inline qreal viewportRight() const;

protected:
    void itemChange(QQuickItem::ItemChange change, const QQuickItem::ItemChangeData &value) override;
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    void geometryChanged(const QRectF &newGeometry, const QRectF &oldGeometry) override;
#else
    void geometryChange(const QRectF &newGeometry, const QRectF &oldGeometry) override;
#endif

private Q_SLOTS:
    void syncItemsOrder();
    void updateRepeaterModel();

private:
    ColumnView *m_view;
    QPropertyAnimation *m_slideAnim;
    QList<QQuickItem *> m_items;
    QList<QObject *> m_visibleItems;
    QPointer<QQuickItem> m_viewAnchorItem;
    QHash<QQuickItem *, QQuickItem *> m_separators;
    QHash<QQuickItem *, QQuickItem *> m_rightSeparators;
    QHash<QObject *, QObject *> m_models;

    qreal m_leftPinnedSpace = 361;
    qreal m_rightPinnedSpace = 0;

    qreal m_columnWidth = 0;
    qreal m_lastDragDelta = 0;
    ColumnView::ColumnResizeMode m_columnResizeMode = ColumnView::FixedColumns;
    bool m_shouldAnimate = false;
    friend class ColumnView;
};



#endif // HPSCOLUMNVIEW_P_H_
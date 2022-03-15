import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0 as QQC2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.2
import QtQml 2.15

HPSBasicScroollView {
    id: root
    property bool refreshing: false
    property bool supportsRefreshing: false
    property int leftPadding: Units.gridUnit
    property int topPadding: Units.gridUnit
    property int rightPadding: Units.gridUnit
    property int bottomPadding: Units.gridUnit
    property Page page
    property Item _swipeFilter
    onRefreshingChanged: flickableItem.topMargin = topPadding + (refreshing ? busyIndicatorFrame.height : 0);
    children: [
        Item {
            id: busyIndicatorFrame
            z: 99
            y: root.flickableItem.verticalLayoutDirection === ListView.BottomToTop
                ? -root.flickableItem.contentY+root.flickableItem.originY+height
                : -root.flickableItem.contentY+root.flickableItem.originY-height
            width: root.flickableItem.width
            height: busyIndicator.height + Units.gridUnit * 2
            QQC2.BusyIndicator {
                id: busyIndicator
                anchors.centerIn: parent
                running: root.refreshing
                visible: root.refreshing
            }
            Rectangle {
                id: spinnerProgress
                anchors {
                    fill: busyIndicator
                    margins: Math.ceil(Units.smallSpacing)
                }
                radius: width
                visible: supportsRefreshing && !refreshing && progress > 0
                color: "transparent"
                opacity: 0.8
                border.color: "black"
                border.width: Math.ceil(Units.smallSpacing)
                property real progress: supportsRefreshing && !refreshing ? (parent.y/busyIndicatorFrame.height) : 0
            }
            ConicalGradient {
                source: spinnerProgress
                visible: spinnerProgress.visible
                anchors.fill: spinnerProgress
                gradient: Gradient {
                    GradientStop { position: 0.00; color: Theme.highlightColor }
                    GradientStop { position: spinnerProgress.progress; color: Theme.highlightColor }
                    GradientStop { position: spinnerProgress.progress + 0.01; color: "transparent" }
                    GradientStop { position: 1.00; color: "transparent" }
                }
            }
            onYChanged: {
                if (y > root.topPadding + Units.gridUnit && (typeof(applicationWindow) == "undefined" || !applicationWindow().reachableMode)) {
                    overshootResetTimer.running = true;
                } else if (typeof(applicationWindow) == "undefined" || !applicationWindow().reachableMode) {
                    overshootResetTimer.running = false;
                }
                if (!supportsRefreshing) {
                    return;
                }
                if (!root.refreshing && y > busyIndicatorFrame.height/2 + topPadding) {
                    refreshTriggerTimer.running = true;
                } else {
                    refreshTriggerTimer.running = false;
                }
            }
            Timer {
                id: refreshTriggerTimer
                interval: 500
                onTriggered: {
                    if (!root.refreshing && parent.y > busyIndicatorFrame.height/2 + topPadding) {
                        root.refreshing = true;
                    }
                }
            }
            Connections {
                enabled: typeof applicationWindow !== "undefined"
                target: typeof applicationWindow !== "undefined" ? applicationWindow() : null
                function onReachableModeChanged() {
                    overshootResetTimer.running = applicationWindow().reachableMode;
                }
            }
            Timer {
                id: overshootResetTimer
                interval: (typeof applicationWindow !== "undefined"  && applicationWindow().reachableMode) ? 8000 : 2000
                onTriggered: {
                    if (!Settings.isMobile || (typeof applicationWindow !== "undefined"  && applicationWindow().wideScreen) || root.flickableItem.verticalLayoutDirection === ListView.BottomToTop) {
                        return;
                    }
                    applicationWindow().reachableMode = !applicationWindow().reachableMode;
                }
            }
            Binding {
                target: root.flickableItem
                property: "flickableDirection"
                value: Flickable.VerticalFlick
            }
            Binding {
                target: root.flickableItem
                property: "bottomMargin"
                value: root.page.bottomPadding
            }
            Binding {
                target: root.contentItem
                property: "width"
                restoreMode: Binding.RestoreBinding
                value: root.flickableItem.width
                when: root.horizontalScrollBarPolicy == Qt.ScrollBarAlwaysOff
            }
        }
    ]
    Component.onCompleted: leftPaddingChanged()
    onRightPaddingChanged: leftPaddingChanged()
    onLeftPaddingChanged: {
        //for gridviews do apply margins
        if (root.contentItem == root.flickableItem) {
            if (typeof root.flickableItem.cellWidth != "undefined") {
                flickableItem.anchors.leftMargin = leftPadding;
                flickableItem.anchors.rightMargin = rightPadding;
            } else {
                flickableItem.anchors.leftMargin = 0;
                flickableItem.anchors.rightMargin = 0;
            }
            flickableItem.anchors.topMargin = 0;
            flickableItem.anchors.bottomMargin = 0;
        } else {
            flickableItem.anchors.leftMargin = leftPadding;
            flickableItem.anchors.topMargin = topPadding;
            flickableItem.anchors.rightMargin = rightPadding;
            flickableItem.anchors.bottomMargin = 0;
        }
    }
}

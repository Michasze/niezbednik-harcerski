
import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4

Page {
    id: root
    property alias refreshing: scrollView.refreshing
    property alias supportsRefreshing: scrollView.supportsRefreshing
    property alias flickable: scrollView.flickableItem
    property alias verticalScrollBarPolicy: scrollView.verticalScrollBarPolicy
    property alias horizontalScrollBarPolicy: scrollView.horizontalScrollBarPolicy
    default property QtObject mainItem
    property bool keyboardNavigationEnabled: true
    contentHeight: root.flickable.contentHeight
    implicitHeight: ((header && header.visible) ? header.implicitHeight : 0) + ((footer && footer.visible) ? footer.implicitHeight : 0) + contentHeight + topPadding + bottomPadding
    implicitWidth: root.flickable.contentItem ? root.flickable.contentItem.implicitWidth : contentItem.implicitWidth + leftPadding + rightPadding
    clip: true
    contentItem: HPSScrollView {
        id: scrollView
        property QtObject oldMainItem
        page: root
        clip: true
        topPadding: contentItem == flickableItem ? 0 : root.topPadding
        leftPadding: root.leftPadding
        rightPadding: root.rightPadding
        bottomPadding: contentItem == flickableItem ? 0 : root.bottomPadding
        anchors {
            top: (root.header && root.header.visible)
                    ? root.header.bottom
                    //FIXME: for nowassuming globalToolBarItem is in a Loader, which needs to be got rid of
                    : (globalToolBarItem && globalToolBarItem.parent && globalToolBarItem.visible ?
                    globalToolBarItem.parent.bottom : parent.top)
            bottom: (root.footer && root.footer.visible) ? root.footer.top : parent.bottom
            left: parent.left
            right: parent.right
        }
    }
    anchors.topMargin: 0
    Keys.forwardTo: root.keyboardNavigationEnabled && root.flickable
                        ? (("currentItem" in root.flickable) && root.flickable.currentItem ?
                           [ root.flickable.currentItem, root.flickable ] : [ root.flickable ])
                        : []
    onMainItemChanged: {
         if (mainItem.hasOwnProperty("anchors") && mainItem.hasOwnProperty("antialiasing")) {
             scrollView.contentItem = mainItem
             mainItem.focus = true
         } else if (mainItem.hasOwnProperty("dragMargin")) {
             return;
        } else if (mainItem.hasOwnProperty("sheetOpen")) {
            if (mainItem.parent === root || mainItem.parent === null) {
                mainItem.parent = root;
            }
             root.data.push(mainItem);
             return;
        }
        if (scrollView.oldMainItem && scrollView.oldMainItem instanceof Item && (typeof applicationWindow == 'undefined' || scrollView.oldMainItem.parent !== applicationWindow().overlay)) {
            scrollView.oldMainItem.parent = overlay
        }
        scrollView.oldMainItem = mainItem
    }
}

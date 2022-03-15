import QtQuick 2.5
import QtQuick.Layouts 1.2
import QtQuick.Templates 2.1 as T2
import QtQuick.Controls 2.1 as Controls
import HPSColumnView 1.0
import ".."

Controls.Page {
    id: root
    padding: hpsUnits.gridUnit
    bottomPadding: verticalPadding
    property Flickable flickable
    readonly property bool isCurrentPage: HPSColumnView.view
            ? (HPSColumnView.index == HPSColumnView.view.currentIndex && HPSColumnView.view.parent.parent.currentItem === HPSColumnView.view.parent)
            : (parent && parent instanceof Controls.StackView
                ? parent.currentItem === root
                : true)

    readonly property alias overlay: overlayItem
    property Component titleDelegate: Component {
        id: defaultTitleDelegate
        Controls.Label {
            Layout.fillWidth: true
            Layout.maximumWidth: implicitWidth + 1 // The +1 is to make sure we do not trigger eliding at max width
            Layout.minimumWidth: 0
            opacity: root.isCurrentPage ? 1 : 0.4
            maximumLineCount: 1
            elide: Text.ElideRight
            text: root.title
            textFormat: Text.PlainText
        }
    }
    signal backRequested(var event);
    onBackRequested: {
        for(var i in root.resources) {
            var item = root.resources[i];
            if (item.hasOwnProperty("close") && item.hasOwnProperty("sheetOpen") && item.sheetOpen) {
                item.close()
                event.accepted = true;
                return;
            }
        }
    }
    readonly property Item globalToolBarItem: globalToolBar.item
    //NOTE: contentItem will be created if not existing (and contentChildren of Page would become its children) This with anchors enforces the geometry we want, where globalToolBar is a super-header, on top of header
    contentItem: Item {
        anchors {
            top: (root.header && root.header.visible)
                    ? root.header.bottom
                    : (globalToolBar.visible ? globalToolBar.bottom : parent.top)
            topMargin: root.topPadding + root.spacing
            bottom: (root.footer && root.footer.visible) ? root.footer.top : parent.bottom
            bottomMargin: root.bottomPadding + root.spacing
        }
    }
    background: Rectangle {
        color: "black"
    }
    implicitHeight: ((header && header.visible) ? header.implicitHeight : 0) + ((footer && footer.visible) ? footer.implicitHeight : 0) + contentItem.implicitHeight + topPadding + bottomPadding
    implicitWidth: contentItem.implicitWidth + leftPadding + rightPadding
    //FIXME: on material the shadow would bleed over
    clip: root.header != null;
    onHeaderChanged: {
        if (header) {
            header.anchors.top = Qt.binding(function() {return globalToolBar.visible ? globalToolBar.bottom : root.top});
        }
    }
    Component.onCompleted: {
        headerChanged();
        parentChanged(root.parent);
    }
    onParentChanged: {
        if (!parent) {
            return;
        }
        globalToolBar.stack = null;
        globalToolBar.row = null;
        if (root.HPSColumnView.view) {
            globalToolBar.row = root.HPSColumnView.view.__pageRow;
        }
        if (root.T2.StackView.view) {
            globalToolBar.stack = root.T2.StackView.view;
            globalToolBar.row = root.T2.StackView.view ? root.T2.StackView.view.parent : null;
        }
    }

    //in data in order for them to not be considered for contentItem, contentChildren, contentData
    data: [
        Item {
            id: overlayItem
            parent: root
            z: 9997
            anchors {
                fill: parent
                topMargin: globalToolBar.height
            }
        },
        //global top toolbar if we are in a PageRow (in the row or as a layer)
        Loader {
            id: globalToolBar
            z: 9999
            height: item ? item.implicitHeight : 0
            anchors {
                left:  parent.left
                right: parent.right
                top: parent.top
            }
            property HPSRow row
            property T2.StackView stack

            // don't load async so that on slower devices we don't have the page content height changing while loading in
            // otherwise, it looks unpolished and jumpy
            asynchronous: false

            visible: active
//            active: (root.titleDelegate !== defaultTitleDelegate || root.globalToolBarStyle === Kirigami.ApplicationHeaderStyle.ToolBar || root.globalToolBarStyle === Kirigami.ApplicationHeaderStyle.Titles)

        }
    ]
    Layout.fillWidth: true
}

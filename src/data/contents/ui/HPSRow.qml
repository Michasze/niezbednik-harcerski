import QtQuick 2.5
import QtQuick.Layouts 1.2
import QtQml.Models 2.2
import QtQuick.Templates 2.0 as T
import QtQuick.Controls 2.0 as QQC2
import HPSColumnView 1.0

T.Control {
    id: root
    property alias depth: columnView.count
    readonly property Item lastItem: columnView.contentChildren.length > 0 ?  columnView.contentChildren[columnView.contentChildren.length - 1] : null
    property alias currentItem: columnView.currentItem
    property alias currentIndex: columnView.currentIndex
    property variant initialPage
    contentItem: columnView
    property alias columnView: columnView
    property alias items: columnView.contentChildren;
    property alias visibleItems: columnView.visibleItems
    property alias firstVisibleItem: columnView.firstVisibleItem
    property alias lastVisibleItem: columnView.lastVisibleItem
    property int defaultColumnWidth: hpsUnits.gridUnit * 20
    property alias interactive: columnView.interactive
    readonly property bool wideMode: root.width >= root.defaultColumnWidth*2 && depth >= 2
    property alias separatorVisible: columnView.separatorVisible
    implicitWidth: contentItem.implicitWidth + leftPadding + rightPadding
    implicitHeight: contentItem.implicitHeight + topPadding + bottomPadding
    function push(page, properties) {
        var item = insertPage(depth, page, properties);
        currentIndex = depth - 1;
        return item;
    }
    function insertPage(position, page, properties) {
        if (!page) {
            return null
        }
        //don't push again things already there
        if (page.createObject === undefined && typeof page != "string" && columnView.containsItem(page)) {
            print("The item " + page + " is already in the PageRow");
            return null;
        }
        position = Math.max(0, Math.min(depth, position));
        columnView.pop(columnView.currentItem);
        // figure out if more than one page is being pushed
        var pages;
        var propsArray = [];
        if (page instanceof Array) {
            pages = page;
            page = pages.pop();
            //compatibility with pre-qqc1 api, can probably be removed
            if (page.createObject === undefined && page.parent === undefined && typeof page != "string") {
                properties = properties || page.properties;
                page = page.page;
            }
        }
        if (properties instanceof Array) {
            propsArray = properties;
            properties = propsArray.pop();
        } else {
            propsArray = [properties];
        }
        // push any extra defined pages onto the stack
        if (pages) {
            var i;
            for (i = 0; i < pages.length; i++) {
                var tPage = pages[i];
                var tProps = propsArray[i];
                //compatibility with pre-qqc1 api, can probably be removed
                if (tPage.createObject === undefined && tPage.parent === undefined && typeof tPage != "string") {
                    if (columnView.containsItem(tPage)) {
                        print("The item " + page + " is already in the PageRow");
                        continue;
                    }
                    tProps = tPage.properties;
                    tPage = tPage.page;
                }
                var pageItem = pagesLogic.initAndInsertPage(position, tPage, tProps);
                ++position;
            }
        }
        // initialize the page
        var pageItem = pagesLogic.initAndInsertPage(position, page, properties);
        pagePushed(pageItem);
        return pageItem;
    }
    function movePage(fromPos, toPos) {
        columnView.moveItem(fromPos, toPos);
    }
    function removePage(page) {
        if (depth == 0) {
            return null;
        }
        return columnView.removeItem(page);
    }
    function pop(page) {
        if (depth == 0) {
            return null;
        }
        return columnView.pop(page);
    }
    signal pageInserted(int position, Item page)
    signal pagePushed(Item page)
    signal pageRemoved(Item page)
    function replace(page, properties) {
        if (!page) {
            return null;
        }
        if (currentIndex >= 0) {
            columnView.pop(columnView.contentChildren[currentIndex]);
        } else {
            console.warn("There's no page to replace");
        }
        var pages;
        var propsArray = [];
        if (page instanceof Array) {
            pages = page;
            page = pages.shift();
        }
        if (properties instanceof Array) {
            propsArray = properties;
            properties = propsArray.shift();
        } else {
            propsArray = [properties];
        }
        var pageItem = pagesLogic.initPage(page, properties);
        if (depth > 0)
            columnView.replaceItem(depth - 1, pageItem);
        else {
            console.log("Calling replace on empty PageRow", pageItem)
            columnView.addItem(pageItem)
        }
        pagePushed(pageItem);
        if (pages) {
            var i;
            for (i = 0; i < pages.length; i++) {
                var tPage = pages[i];
                var tProps = propsArray[i];

                var pageItem = pagesLogic.initPage(tPage, tProps);
                columnView.addItem(pageItem);
                pagePushed(pageItem);
            }
        }
        currentIndex = depth - 1;
        return pageItem;
    }
    function clear() {
        return columnView.clear();
    }
    function get(idx) {
        return columnView.contentChildren[idx];
    }
    function flickBack() {
        if (depth > 1) {
            currentIndex = Math.max(0, currentIndex - 1);
        }
    }
    function goBack(event = null) {
        const backEvent = {accepted: false}
        if (layersStack.depth >= 1) {
            try { // app code might be screwy, but we still want to continue functioning if it throws an exception
                layersStack.currentItem.backRequested(backEvent)
            } catch (error) {}
            if (!backEvent.accepted) {
                if (layersStack.depth > 1) {
                    layersStack.pop()
                    if (event) event.accepted = true
                    return
                }
            }
        }
        if (root.currentIndex >= 1) {
            try { // app code might be screwy, but we still want to continue functioning if it throws an exception
                root.currentItem.backRequested(backEvent)
            } catch (error) {}
            if (!backEvent.accepted) {
                if (root.depth > 1) {
                    root.currentIndex = Math.max(0, root.currentIndex - 1)
                    if (event) event.accepted = true
                }
            }
        }
    }
    function goForward() {
        root.currentIndex = Math.min(root.depth-1, root.currentIndex + 1)
    }
    Shortcut {
        sequence: StandardKey.Back
        onActivated: root.goBack()
    }
    Shortcut {
        sequence: StandardKey.Forward
        onActivated: root.goForward()
    }
    Keys.onReleased: {
        if (event.key == Qt.Key_H) {
            this.goBack(event)
        }
        else if (event.key == Qt.Key_L) {
            this.goForward(event)
        }
    }
    property alias layers: layersStack
    //END FUNCTIONS

    onInitialPageChanged: {
        if (initialPage) {
            clear();
            push(initialPage, null)
        }
    }
    Keys.forwardTo: [currentItem]
    QQC2.StackView {
        id: layersStack
        z: 99
        anchors {
            fill: parent
        }
        initialItem: columnViewLayout
        function clear () {
            var d = layersStack.depth;
            for (var i = 1; i < d; ++i) {
                pop();
            }
        }
        popEnter: Transition {
            OpacityAnimator {
                from: 0
                to: 1
                duration: hpsUnits.longDuration
                easing.type: Easing.InOutCubic
            }
        }
        popExit: Transition {
            ParallelAnimation {
                OpacityAnimator {
                    from: 1
                    to: 0
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InOutCubic
                }
                YAnimator {
                    from: 0
                    to: height/2
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InCubic
                }
            }
        }
        pushEnter: Transition {
            ParallelAnimation {
                //NOTE: It's a PropertyAnimation instead of an Animator because with an animator the item will be visible for an instant before starting to fade
                PropertyAnimation {
                    property: "opacity"
                    from: 0
                    to: 1
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InOutCubic
                }
                YAnimator {
                    from: height/2
                    to: 0
                    duration: hpsUnits.longDuration
                    easing.type: Easing.OutCubic
                }
            }
        }
        pushExit: Transition {
            OpacityAnimator {
                from: 1
                to: 0
                duration: hpsUnits.longDuration
                easing.type: Easing.InOutCubic
            }
        }
        replaceEnter: Transition {
            ParallelAnimation {
                OpacityAnimator {
                    from: 0
                    to: 1
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InOutCubic
                }
                YAnimator {
                    from: height/2
                    to: 0
                    duration: hpsUnits.longDuration
                    easing.type: Easing.OutCubic
                }
            }
        }
        replaceExit: Transition {
            ParallelAnimation {
                OpacityAnimator {
                    from: 1
                    to: 0
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InCubic
                }
                YAnimator {
                    from: 0
                    to: -height/2
                    duration: hpsUnits.longDuration
                    easing.type: Easing.InOutCubic
                }
            }
        }
    }
    QtObject {
        id: pagesLogic
        readonly property var componentCache: new Array()
        function getPageComponent(page) {
            var pageComp;
            if (page.createObject) {
                // page defined as component
                pageComp = page;
                //HACK: jeśli page nie posiada nazwy obiektu oznacza że to url
            } else if (!page.objectName) {
                // page defined as string (a url)
                pageComp = pagesLogic.componentCache[page];
                if (!pageComp) {
                    pageComp = pagesLogic.componentCache[page] = Qt.createComponent(page);
                }
            }
            return pageComp
        }
        function initPage(page, properties) {
            var pageComp = getPageComponent(page, properties);
            if (pageComp) {
                // instantiate page from component
                // FIXME: parent directly to columnView or root?
                page = pageComp.createObject(null, properties || {});
                if (pageComp.status === Component.Error) {
                    throw new Error("Error while loading page: " + pageComp.errorString());
                }
            } else {
                // copy properties to the page
                for (var prop in properties) {
                    if (properties.hasOwnProperty(prop)) {
                        page[prop] = properties[prop];
                    }
                }
            }
            return page;
        }
        function initAndInsertPage(position, page, properties) {
            page = initPage(page, properties);
            columnView.insertItem(position, page);
            return page;
        }
    }
    RowLayout {
        id: columnViewLayout
        spacing: 1
        readonly property alias columnView: columnView
        HPSColumnView {
            id: columnView
            Layout.fillWidth: true
            Layout.fillHeight: true
            topPadding: 0
            readonly property Item __pageRow: root
            acceptsMouse: hpsSettings.isMobile
            columnResizeMode: root.wideMode ? HPSColumnView.FixedColumns : HPSColumnView.SingleColumn
            columnWidth: root.defaultColumnWidth
            onItemInserted: function(position, item) { root.pageInserted(position, item); }
            onItemRemoved: function(item) { root.pageRemoved(item); }
        }
    }
    Rectangle {
        anchors.bottom: parent.bottom
        height: hpsUnits.smallSpacing
        x: (columnView.width - width) * (columnView.contentX / (columnView.contentWidth - columnView.width))
        width: columnView.width * (columnView.width/columnView.contentWidth)
        color: "white"
        opacity: 0
        onXChanged: {
            opacity = 0.3
            scrollIndicatorTimer.restart();
        }
        Behavior on opacity {
            OpacityAnimator {
                duration: hpsUnits.longDuration
                easing.type: Easing.InOutQuad
            }
        }
        Timer {
            id: scrollIndicatorTimer
            interval: hpsUnits.longDuration * 4
            onTriggered: parent.opacity = 0;
        }
    }
}

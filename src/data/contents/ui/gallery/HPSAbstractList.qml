
import QtQuick 2.1
import QtQuick.Layouts 1.0
//import QtQuick.Templates 2.0 as T2
import QtQuick.Templates 2.4 as QQC2

QQC2.ItemDelegate {
    id: listItem
    property bool supportsMouseEvents: hoverEnabled // TODO KF6 remove
    property alias containsMouse: listItem.hovered // TODO KF6 remove.
    property bool alternatingBackground: false
    property bool sectionDelegate: false
    property bool separatorVisible: true
    property color textColor: "white"
    property color backgroundColor: "transparent"
    property color alternateBackgroundColor: "black"
    property color activeTextColor: "white"
    property color activeBackgroundColor: "#3873a6"
    default property alias _default: listItem.contentItem
//    property QQC2.Action action
    activeFocusOnTab: ListView.view ? false : true
    text: action ? action.text : undefined
    checked: action ? action.checked : false
    checkable: action ? action.checkable : false
    onClicked: {
        if (ListView.view && typeof index !== "undefined") {
            ListView.view.currentIndex = index;
        }
        if (!action) {
            return;
        }
        action.trigger();
        checked = Qt.binding(function() { return action.checked });
    }
    padding: hpsSettings.tabletMode ? hpsUnits.largeSpacing : hpsUnits.smallSpacing
    leftPadding: padding*2
    topPadding: padding
    rightPadding: padding*2
    bottomPadding: padding
    implicitWidth: contentItem ? contentItem.implicitWidth + leftPadding + rightPadding : hpsUnits.gridUnit * 12
    implicitHeight: contentItem.implicitHeight + topPadding + bottomPadding
    width: parent && parent.width > 0 ? parent.width : implicitWidth
    Layout.fillWidth: true
    opacity: enabled ? 1 : 0.6
    height: visible ? implicitHeight : 0
    hoverEnabled: true
    QtObject {
        id: internal
        property Flickable view: listItem.ListView.view || (listItem.parent ? listItem.parent.ListView.view : null)
        property bool indicateActiveFocus: listItem.pressed || hpsSettings.tabletMode || listItem.activeFocus || (view ? view.activeFocus : false)
    }
    Accessible.role: Accessible.ListItem
//    highlighted: focus && ListView.isCurrentItem && ListView.view && ListView.view.keyNavigationEnabled
}


import QtQuick 2.1

Rectangle {
    id: background
    color: listItem.checked || listItem.highlighted || (listItem.supportsMouseEvents && listItem.pressed && !listItem.checked && !listItem.sectionDelegate)
        ? listItem.activeBackgroundColor
        : (listItem.alternatingBackground && index%2 ? listItem.alternateBackgroundColor : listItem.backgroundColor)

    border.width: 1
    border.color: "Grey"
    visible: listItem.ListView.view ? listItem.ListView.view.highlight === null : true
    Rectangle {
        id: internal
        property bool indicateActiveFocus: listItem.pressed || hpsSettings.tabletMode || listItem.activeFocus || (listItem.ListView.view ? listItem.ListView.view.activeFocus : false)
        anchors.fill: parent
        visible: listItem.supportsMouseEvents
        color: listItem.activeBackgroundColor
        opacity: (listItem.hovered || listItem.highlighted || listItem.activeFocus) && !listItem.pressed ? 0.5 : 0
    }
                                               // Don't show separator when...
    readonly property bool __separatorVisible: listItem.separatorVisible
                                               // There's a colored rectangle
                                               && !listItem.highlighted
                                               && !listItem.pressed
                                               && !listItem.checked
                                               // ...Unless the colored rectangle is transparent
                                               && (!listItem.hovered || listItem.activeBackgroundColor.a == 0)
                                               // It would touch the section header
                                               && !listItem.sectionDelegate
                                               && (!!listItem.ListView.view ? listItem.ListView.nextSection == listItem.ListView.section : true)
                                               // This is the last item in the list
                                               // TODO: implement this
    property var leadingWidth
    HPSSeparator {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            leftMargin: hpsUnits.largeSpacing
            rightMargin: hpsUnits.largeSpacing
        }
        visible: background.__separatorVisible
    }
}

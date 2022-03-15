
import QtQuick 2.8
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0 as Controls

HPSAbstractList {
    id: listItem
    property alias label: listItem.text
    property int alignH: Text.AlignJustify
    property alias subtitle: subtitleItem.text
    property Item leading
    onLeadingChanged: {
        if (!!listItem.leading) {
            listItem.leading.parent = contItem
            listItem.leading.anchors.left = listItem.leading.parent.left
            listItem.leading.anchors.top = listItem.leading.parent.top
            listItem.leading.anchors.bottom = listItem.leading.parent.bottom
            layout.anchors.left = listItem.leading.right
            layout.anchors.leftMargin = Qt.binding(function() { return listItem.leadingPadding })
        } else {
            layout.anchors.left = contentItem.left
            layout.anchors.leftMargin = 0
        }
    }
    property real leadingPadding: hpsUnits.smallSpacing * 2
    property Item trailing
    onTrailingChanged: {
        if (!!listItem.trailing) {
            listItem.trailing.parent = contItem
            listItem.trailing.anchors.right = listItem.trailing.parent.right
            listItem.trailing.anchors.top = listItem.trailing.parent.top
            listItem.trailing.anchors.bottom = listItem.trailing.parent.bottom
            layout.anchors.right = listItem.trailing.left
            layout.anchors.rightMargin = Qt.binding(function() { return listItem.trailingPadding })
        } else {
            layout.anchors.right = contentItem.right
            layout.anchors.rightMargin = 0
        }
    }
    property real trailingPadding: hpsUnits.smallSpacing * 2
    property bool bold: false
    property alias reserveSpaceForLabel: labelItem.visible
    property bool reserveSpaceForSubtitle: false
    property alias textSpacing: labelColumn.spacing
    property bool fadeContent: false
    default property alias _basicDefault: layout.data
    background: Rectangle {
    id: background
    color: listItem.checked || listItem.highlighted || (listItem.supportsMouseEvents && listItem.pressed && !listItem.checked && !listItem.sectionDelegate)
        ? listItem.activeBackgroundColor
        : (listItem.alternatingBackground && index%2 ? listItem.alternateBackgroundColor : listItem.backgroundColor)

    visible: listItem.ListView.view ? listItem.ListView.view.highlight === null : true
    Rectangle {
        id: internal
        property bool indicateActiveFocus: listItem.pressed || hpsSettings.tabletMode || listItem.activeFocus || (listItem.ListView.view ? listItem.ListView.view.activeFocus : false)
        anchors.fill: parent
        visible:  listItem.supportsMouseEvents
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
    contentItem: Item {
        id: contItem
        implicitWidth: (listItem.leading || {implicitWidth: 0}).implicitWidth + layout.implicitWidth + (listItem.trailing || {implicitWidth: 0}).implicitWidth
        Binding on implicitHeight {
            value: (!subtitleItem.visible && listItem.reserveSpaceForSubtitle ? (labelItem.implicitHeight + labelColumn.spacing + subtitleItem.implicitHeight): labelColumn.implicitHeight)
            delayed: true
        }
        RowLayout {
            id: layout
            spacing: LayoutMirroring.enabled ? listItem.rightPadding : listItem.leftPadding
            anchors.left: contItem.left
            anchors.leftMargin: listItem.leading ? listItem.leadingPadding : 0
            anchors.right: contItem.right
            anchors.rightMargin: listItem.trailing ? listItem.trailingPadding : 0
            anchors.verticalCenter: parent.verticalCenter
            ColumnLayout {
                id: labelColumn
                spacing: hpsUnits.smallSpacing
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
                Controls.Label {
                    id: labelItem
                    text: listItem.text
                    textFormat: Text.StyledText
                    Layout.fillWidth: true
                    wrapMode: Text.WordWrap
                    horizontalAlignment: listItem.alignH
                    font.pointSize: invisibleSlider.value
                    color: invisibleCheckbox.checked ? "white" : "black"
                    elide: Text.ElideRight
                    font.weight: listItem.bold ? Font.Bold : Font.Normal
                    opacity: listItem.fadeContent ? 0.4 : 1.0
                }
                Controls.Label {
                    id: subtitleItem
                    Layout.fillWidth: true
                    color: (listItem.highlighted || listItem.checked || (listItem.pressed && listItem.supportsMouseEvents)) ? listItem.activeTextColor : listItem.textColor
                    elide: Text.ElideRight
                    opacity: listItem.bold
                        ? (listItem.fadeContent ? 0.3 : 0.9)
                        : (listItem.fadeContent ? 0.1 : 0.7)
                    visible: text.length > 0
                }
            }
        }
    }
}

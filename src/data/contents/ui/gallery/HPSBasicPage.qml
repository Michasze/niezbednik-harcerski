/*
 *   Copyright 2023 HPS <aplikacjahps@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
import QtQuick 2.5
import QtQuick.Layouts 1.2
import QtQuick.Templates 2.1 as T2
import QtQuick.Controls 2.1 as Controls
import QtQuick.Controls.Material 2.12
import HPSColumnView 1.0
import ".."

Controls.Page {
    id: page
    padding: hpsUnits.gridUnit
    bottomPadding: verticalPadding
    property Flickable flickable
    readonly property bool isCurrentPage: HPSColumnView.view
            ? (HPSColumnView.index == HPSColumnView.view.currentIndex && HPSColumnView.view.parent.parent.currentItem === HPSColumnView.view.parent)
            : (parent && parent instanceof Controls.StackView
                ? parent.currentItem === page
                : true)

    readonly property alias overlay: overlayItem
    property Component titleDelegate: Component {
        id: defaultTitleDelegate
        Controls.Label {
            Layout.fillWidth: true
            Layout.maximumWidth: implicitWidth + 1 // The +1 is to make sure we do not trigger eliding at max width
            Layout.minimumWidth: 0
            opacity: page.isCurrentPage ? 1 : 0.4
            maximumLineCount: 1
            elide: Text.ElideRight
            text: page.title
            textFormat: Text.PlainText
        }
    }
    signal backRequested(var event);
    onBackRequested: {
        for(var i in page.resources) {
            var item = page.resources[i];
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
            top: (page.header && root.header.visible)
                    ? page.header.bottom
                    : (globalToolBar.visible ? globalToolBar.bottom : parent.top)
            topMargin: page.topPadding + root.spacing
            bottom: (page.footer && root.footer.visible) ? root.footer.top : parent.bottom
            bottomMargin: page.bottomPadding + root.spacing
        }
    }
    background: Rectangle {
        color: root.Material.background
    }
    implicitHeight: ((header && header.visible) ? header.implicitHeight : 0) + ((footer && footer.visible) ? footer.implicitHeight : 0) + contentItem.implicitHeight + topPadding + bottomPadding
    implicitWidth: contentItem.implicitWidth + leftPadding + rightPadding
    //FIXME: on material the shadow would bleed over
    clip: page.header != null;
    onHeaderChanged: {
        if (header) {
            header.anchors.top = Qt.binding(function() {return globalToolBar.visible ? globalToolBar.bottom : page.top});
        }
    }
    Component.onCompleted: {
        headerChanged();
        parentChanged(page.parent);
    }
    onParentChanged: {
        if (!parent) {
            return;
        }
        globalToolBar.stack = null;
        globalToolBar.row = null;
        if (page.HPSColumnView.view) {
            globalToolBar.row = page.HPSColumnView.view.__pageRow;
        }
        if (page.T2.StackView.view) {
            globalToolBar.stack = page.T2.StackView.view;
            globalToolBar.row = page.T2.StackView.view ? root.T2.StackView.view.parent : null;
        }
    }

    //in data in order for them to not be considered for contentItem, contentChildren, contentData
    data: [
        Item {
            id: overlayItem
            parent: page
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
//            active: (page.titleDelegate !== defaultTitleDelegate || root.globalToolBarStyle === Kirigami.ApplicationHeaderStyle.ToolBar || root.globalToolBarStyle === Kirigami.ApplicationHeaderStyle.Titles)

        }
    ]
    Layout.fillWidth: true
}

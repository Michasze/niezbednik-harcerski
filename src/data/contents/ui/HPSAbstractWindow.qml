/*
 *   Copyright 2022 HPS <aplikacjahps@gmail.com>
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

import QtQuick 2.15
import QtQuick.Controls 2.15 as Controls
import org.kde.kirigami 2.11 as Kirigami

Controls.ApplicationWindow {
    id: root
    property Item pageStack
    LayoutMirroring.enabled: Qt.application.layoutDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true
    function showPassiveNotification(message, timeout, actionText, callBack) {
        if (!internal.__passiveNotification) {
            var component = Qt.createComponent("templates/private/PassiveNotification.qml");
            internal.__passiveNotification = component.createObject(overlay.parent);
        }

        internal.__passiveNotification.showNotification(message, timeout, actionText, callBack);
    }
    function hidePassiveNotification() {
        if(internal.__passiveNotification) {
            internal.__passiveNotification.hideNotification();
        }
    }
    function applicationWindow() {
        return root;
    }
    property bool controlsVisible: true
    property Kirigami.OverlayDrawer globalDrawer
    property bool wideScreen: width >= Kirigami.Units.gridUnit * 60
    property Kirigami.OverlayDrawer contextDrawer
    property bool reachableMode: false
    property bool reachableModeEnabled: true
    color: Kirigami.Theme.backgroundColor
    MouseArea {
        parent: contentItem.parent
        z: 0
        anchors.fill: parent
        onClicked: root.reachableMode = false;
        visible: root.reachableMode && root.reachableModeEnabled
        Rectangle {
            anchors.fill: parent
            color: Qt.rgba(0, 0, 0, 0.3)
            opacity: 0.15
            Kirigami.Icon {
                anchors.horizontalCenter: parent.horizontalCenter
                y: x
                width: Kirigami.Units.iconSizes.large
                height: width
                source: "go-up"
            }
        }
    }
    contentItem.z: 1
    contentItem.anchors.left: contentItem.parent.left
    contentItem.anchors.right: contentItem.parent.right
    contentItem.anchors.topMargin: root.wideScreen && header && controlsVisible ? header.height : 0
    contentItem.anchors.leftMargin: root.globalDrawer && root.globalDrawer.modal === false && (!root.pageStack || root.pageStack.leftSidebar !== root.globalDrawer) ? root.globalDrawer.width * root.globalDrawer.position : 0
    contentItem.anchors.rightMargin: root.contextDrawer && root.contextDrawer.modal === false ? root.contextDrawer.width * root.contextDrawer.position : 0
    Binding {
        when: menuBar !== undefined
        target: menuBar
        property: "x"
        value: -contentItem.x
    }
    Binding {
        when: header !== undefined
        target: header
        property: "x"
        value: -contentItem.x
    }
    Binding {
        when: footer !== undefined
        target: footer
        property: "x"
        value: -contentItem.x
    }
    contentItem.transform: Translate {
        Behavior on y {
            NumberAnimation {
                duration: Kirigami.Units.longDuration
                easing.type: Easing.InOutQuad
            }
        }
        y: root.reachableMode && root.reachableModeEnabled && !root.wideScreen ? root.height/2 : 0
        x: root.globalDrawer && root.globalDrawer.modal === true && root.globalDrawer.toString().indexOf("SplitDrawer") === 0 ? root.globalDrawer.contentItem.width * root.globalDrawer.position : 0
    }
    //Don't want overscroll in landscape mode
    onWidthChanged: {
        if (width > height) {
            root.reachableMode = false;
        }
    }
    Binding {
        when: globalDrawer !== undefined && root.visible
        target: globalDrawer
        property: "parent"
        value: overlay
    }
    Binding {
        when: contextDrawer !== undefined && root.visible
        target: contextDrawer
        property: "parent"
        value: overlay
    }
    onPageStackChanged: pageStack.parent = contentItem;
    width: Kirigami.Settings.isMobile ? Kirigami.Units.gridUnit * 30 : Units.gridUnit * 55
    height: Kirigami.Settings.isMobile ? Kirigami.Units.gridUnit * 45 : Units.gridUnit * 40
    visible: true
    Component.onCompleted: {
        // Explicitly break the binding as we need this to be set only at startup.
        // if the bindings are active, after this the window is resized by the
        // compositor and then the bindings are reevaluated, then the window
        // size would reset ignoring what the compositor asked.
        // see BUG 433849
        root.width = root.width;
        root.height = root.height;
    }
    QtObject {
        id: internal
        property QtObject __passiveNotification
    }
}

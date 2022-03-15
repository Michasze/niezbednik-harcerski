import QtQuick 2.12
import QtQuick.Controls 2.3 as Controls
import QtQuick.Layouts 1.2

Controls.Popup {
    id: root
    x: parent.width/2 - width/2
    y: parent.height - height - 20
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentWidth + leftPadding + rightPadding) + leftInset + rightInset
    implicitHeight: Math.max(background ? background.implicitHeight : 0 ,
                             contentHeight + topPadding + bottomPadding)+ topInset + bottomInset
    height: implicitHeight
    width: implicitWidth
    topPadding: 20
    leftPadding: 20
    rightPadding: 20
    bottomPadding: 20
    modal: false
    closePolicy: Controls.Popup.NoAutoClose
    focus: false
    clip: false

    function showNotification(message, timeout, actionText, callBack) {
        if (!message) {
            return;
        }
        let interval = 7000;
        if (timeout == "short") {
            interval = 4000;
        } else if (timeout == "long") {
            interval = 12000;
        } else if (timeout > 0) {
            interval = timeout;
        }
        open();
        for (let i = 0; i < outerLayout.children.length - 3; ++i) {
            outerLayout.children[i].close();
        }
        let delegate = delegateComponent.createObject(outerLayout, {
            "text": message,
            "actionText": actionText || "",
            "callBack": callBack || (function(){}),
            "interval": interval
        });
        let children = outerLayout.children;
        for (let i in children) {
            children[i].Layout.row = children.length-1-i;
        }
    }
    background: Item {}
    contentItem: GridLayout {
        id: outerLayout
        columns: 1
    }
    Component {
        id: delegateComponent
        Controls.Control {
            id: delegate
            property alias text: label.text
            property alias actionText: actionButton.text
            property alias interval: timer.interval
            property var callBack
            Layout.alignment: Qt.AlignCenter
            Layout.bottomMargin: -delegate.height
            opacity: 0
            function close() {
                closeAnim.running = true;
            }
            leftPadding: 10
            rightPadding: 10
            topPadding: 10
            bottomPadding: 10
            Component.onCompleted: openAnim.restart()
            ParallelAnimation {
                id: openAnim
                OpacityAnimator {
                    target: delegate
                    from: 0
                    to: 1
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: delegate
                    property: "Layout.bottomMargin"
                    from: -delegate.height
                    to: 0
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
            SequentialAnimation {
                id: closeAnim
                ParallelAnimation {
                    OpacityAnimator {
                        target: delegate
                        from: 1
                        to: 0
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }
                    NumberAnimation {
                        target: delegate
                        property: "Layout.bottomMargin"
                        to: -delegate.height
                        duration: 200
                        easing.type: Easing.InOutQuad
                    }
                }
                ScriptAction {
                    script: delegate.destroy();
                }
            }
            contentItem: RowLayout {
                id: mainLayout
                width: mainLayout.width
                //FIXME: why this is not automatic?
                implicitHeight: Math.max(label.implicitHeight, actionButton.implicitHeight)
                HoverHandler {
                    id: hover
                }
                TapHandler {
                    acceptedButtons: Qt.LeftButton
                    onTapped: delegate.close();
                }
                Timer {
                    id: timer
                    running: root.visible && !hover.hovered
                    onTriggered: delegate.close();
                }
                Controls.Label {
                    id: label
                    Layout.maximumWidth: Math.min(root.parent.width - 40 * 4, implicitWidth)
                    elide: Text.ElideRight
                    wrapMode: Text.WordWrap
                    maximumLineCount: 4
                }
                Controls.Button {
                    id: actionButton
                    visible: text.length > 0
                    onClicked: {
                        delegate.close();;
                        if (delegate.callBack && (typeof delegate.callBack === "function")) {
                            delegate.callBack();
                        }
                    }
                }
            }
            background: Rectangle {
                radius: 20 * 2
                color: "grey"
                opacity: 0.9
            }
        }
    }
    Controls.Overlay.modal: Rectangle {
        color: Qt.rgba(0, 0, 0, 0.4)
    }
    Controls.Overlay.modeless: Item {}
}

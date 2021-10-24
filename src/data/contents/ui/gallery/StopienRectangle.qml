import QtQuick 2.0
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2

        Rectangle {
            property url ikona: "image://icons/blank.svg,transparent"
            property double divider: 3
            property string header: ""
            id: stopien
            color: "#303030"
            radius: 10
            Layout.preferredHeight: width
            Layout.fillWidth: true
            ColumnLayout {
                anchors.centerIn: parent
                anchors.fill: parent
                Image {
                    z: 1
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
                    Layout.fillWidth: false
                    sourceSize.width: stopien.height / 1.2
                    source: "image://icons/krzyz.svg,white"
                    fillMode: Image.PreserveAspectFit
                    Image {
                        z: 0
                        anchors.centerIn: parent
                        sourceSize.width: parent.height / stopien.divider
                        source: stopien.ikona
                        fillMode: Image.PreserveAspectFit
                }
                }
                Controls.Label {
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.Wrap
                    font.pointSize: invisibleSlider.value
                    Layout.fillWidth: true
                    Layout.rightMargin: 10
                    text: stopien.header
                }
            }
        }

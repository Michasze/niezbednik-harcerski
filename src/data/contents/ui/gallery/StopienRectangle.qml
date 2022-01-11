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
            ColumnLayout {
                anchors.centerIn: parent
                anchors.fill: parent
                Image {
                    id: krzyz
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
                    verticalAlignment: Text.AlignTop
                    Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                    wrapMode: Text.Wrap
                    fontSizeMode: Text.VerticalFit
                    minimumPointSize: 10
                    font.pointSize: invisibleSlider.value - 2
                    Layout.fillWidth: true
                    Layout.maximumHeight: stopien.height - krzyz.height - 10
                    Layout.bottomMargin: 20
                    Layout.rightMargin: 10
                    text: stopien.header
                }
            }
        }

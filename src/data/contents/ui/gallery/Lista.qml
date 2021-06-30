import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami

                Kirigami.BasicListItem {
                    id: element
                    property string tresc: "brak"
                    property int textSize: 14
                    property int alignH: Text.AlignLeft
                    property int wrap: Text.WordWrap
             Controls.Label {
    wrapMode: element.wrap
    Layout.alignment: Qt.AlignHCenter
    Layout.fillWidth: true
    horizontalAlignment: element.alignH
    font.pointSize: invisibleSlider.value
            text: element.tresc
             }
        }

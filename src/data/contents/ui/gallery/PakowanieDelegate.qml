import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

RowLayout {
    id: element
    property string tresc
    Controls.Label {
        id: label
        color: "White"
        font.pointSize: invisibleSlider.value
        text: tresc
    }
    Image{
        Layout.preferredHeight: label.height
        Layout.preferredWidth: height
        source: "image://icons/edit-delete.svg,red"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                element.visible = false
                db.deleteItem(label.text)
            }
        }
                    }
}

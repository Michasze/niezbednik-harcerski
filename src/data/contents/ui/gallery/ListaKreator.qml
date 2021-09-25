import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

ColumnLayout {
    property string tytul
    ElementListyNoImage {
        id: naglowek
        visible: index == 0 ? false : true
        header: tytul
        color: db.getCategoryColor[index]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(db.itemList)
            }
        }
    }
    Repeater {
        model: db.getItemList(db.getCategory[index])
        delegate: PakowanieDelegate {
            tresc: modelData
        }
    }
}

import QtQuick 2.6
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

ColumnLayout {
    property string tytul
    ElementListyNoImage {
                            id: naglowek
                            header: tytul
                            color: db.getCategoryColor[index]
                            Component.onCompleted: {
                                db.getItemList(naglowek.header)
                            }
    }
    Repeater {
        model: db.itemList
        delegate: Controls.Label {
            color: "White"
            text: modelData
        }
    }
}

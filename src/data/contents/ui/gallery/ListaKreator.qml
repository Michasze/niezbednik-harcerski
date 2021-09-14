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
        Component.onCompleted: {
            console.log(naglowek.header)
            db.getItemList(db.getCategory[index + 1])
        }
    }
    Repeater {
        visible: naglowek.index == 0 ? false : true
        model: db.itemList
        delegate: PakowanieDelegate {
            tresc: modelData
        }
    }
}

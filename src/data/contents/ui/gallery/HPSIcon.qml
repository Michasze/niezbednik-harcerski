import QtQuick 2.0
import QtQuick.Layouts 1.2

     Image
 {
     id: hpsIcon
//     Layout.fillWidth: !isHorizontal
     Layout.alignment: Qt.AlignHCenter
     sourceSize.width: isHorizontal ? page.width / 3 : page.width / 2
 }

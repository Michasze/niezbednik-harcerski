import QtQuick 2.0

Image
{
    sourceSize.width: isHorizontal ? page.height / 2 : page.width - 50
    width: isHorizontal ? page.height / 2 : page.width - 50
    fillMode: Image.PreserveAspectFit
    anchors.horizontalCenter: parent.horizontalCenter
}

import QtQuick 2.8
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0 as Controls
import org.kde.kirigami 2.12
import Data 1.0

Controls.CheckDelegate {
//    property string label: ""
                    id: przedmiot
                    Layout.fillWidth: true
                    text: modelData
     contentItem: Controls.Label
     {
         rightPadding: 30
         font.pointSize: invisibleSlider.value
         wrapMode: Text.WordWrap
         text: modelData
     }
indicator: Rectangle {
            border.color: "brown"
            color: "transparent"
        implicitWidth: 26
        implicitHeight: 26
        x: page.width - 60
        y: parent.height / 2 - height / 2
        radius: 3
        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 2
            color: "Brown"
            visible: przedmiot.checked
        }
        }
        Component.onCompleted: {
                    hpsSettings.pakowanieId = page.title + " - " + przedmiot.text
                   przedmiot.checked = hpsSettings.pakowanieIsToggled
        }

                    onToggled:
                    {
                        hpsSettings.pakowanieId = page.title + " - " + przedmiot.text
                        console.log(przedmiot.checked)
                        hpsSettings.pakowanieIsToggled = przedmiot.checked
                    }
                }

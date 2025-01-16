import QtQuick 2.15
import QtQuick.Controls

Item{

    width: 150
    height: 20
    //color: "blue"

    property alias text: label.text


    Image {
        id: arrow
        source: "qrc:/welcome_windows/assets/down-right (another copy).png"
        height: 16
        width: height
        fillMode: Image.PreserveAspectFit
    }
    Label{
        id: label
        color: mouseArea.containsMouse ? "#30A117" : "white"
        anchors{
            horizontalCenter: arrow.horizontalCenter
            left: arrow.right
            leftMargin: 15
        }
    }
    MouseArea{
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
    }


}

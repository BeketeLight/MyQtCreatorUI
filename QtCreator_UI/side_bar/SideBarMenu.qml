import QtQuick 2.15
import QtQuick.Controls





Rectangle {
    id: root
    width: 70
    height: 50
    color: menuMouseArea.containsMouse ? "#253237"  : "#343a40"


    property alias source: menuImage.source
    property alias text: menuLabel.text
    property url windowUrl
    signal activated


    Rectangle{
        id: container
        // signal activated

        height: parent.height
        width: 2
        color: menuMouseArea.containsMouse ? "skyblue" : "#343a40"
        // onActivated:{
        //     container.color = "blue"
        // }
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
    }


    Image {
        id: menuImage
        width: 16
        height: width
        fillMode: Image.PreserveAspectFit

        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
    }
    Label{
        id: menuLabel
        font.pointSize: 8
        color: "white"
        anchors{
            top: menuImage.bottom
            horizontalCenter: menuImage.horizontalCenter
            bottom: parent.bottom
        }
    }

    MouseArea{
        id: menuMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: root.activated()

    }
}





import QtQuick 2.15
import QtQuick.Controls

Item{
    id: root
    width: 150
    height: 35

    signal activatedin
    signal activatedout

    property alias color: startComp.color
    property alias text: label.text
    property alias border: startComp.border


    Rectangle{
        id:startComp
        anchors.fill: parent
        radius: 5
        width: parent.width
        height: parent.height



        Label{
            id: label
            anchors.centerIn: parent
            color: "white"
        }

    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered: root.activatedin()
        onExited: root.activatedout()

    }
}


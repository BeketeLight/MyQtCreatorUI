import QtQuick
import QtQuick.Controls
import "side_bar"
import "welcome_windows"

ApplicationWindow {
    id: rootOne
    width: 1300
    height: 1000
    visible: true
    title: qsTr("Qt Creator")
    x: 300




    menuBar: MenuBar{
        Menu {
            title: qsTr("&File")
            MenuItem { text: qsTr("&New...")}
            MenuItem { text: qsTr("&Open...") }
            MenuItem { text: qsTr("&Save")  }
            MenuItem { text: qsTr("Save &As...")}
            MenuSeparator { }
            MenuItem { text: qsTr("&Quit")  }
        }
        Menu {
            title: qsTr("&Edit")
            font.pointSize: 1
            Action { text: qsTr("Cu&t"); }
            Action { text: qsTr("&Copy") }
            Action { text: qsTr("&Paste") }
        }
        Menu {
            title: qsTr("&View")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Build")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Debug")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Analyse")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Tools")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Window")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
        Menu {
            title: qsTr("&Help")
            font.pointSize: 1
            Action { text: qsTr("&About") }
        }
    }

    footer: Item {
        height: 20
        width: parent.width
        anchors{
            left: parent.left
            leftMargin: sideMenuBar.width
        }
        Row{
            anchors.fill: parent
            spacing: 3

            Image {
                id: hideWindow
                source: "qrc:/assets/hide.png"
                height: 20
                width: height
                fillMode: Image.PreserveAspectFit
            }
            TextField{
                placeholderText: "Type to locate"
                placeholderTextColor: "gray"
            }
            TabBar{
                //contentHeight: 1
                id: bar
                // width: parent.width
                spacing: 10
                TabButton {
                    text: qsTr("Issues")
                    width: text.width + 10
                }
                TabButton {
                    text: qsTr("Search Results")
                }

                TabButton {
                    text: qsTr("Application Output")
                }
                TabButton {
                    text: qsTr("Compile Output")
                }
                TabButton {
                    text: qsTr("Terminal")
                }
                TabButton {
                    text: qsTr("Version Control")
                }
                TabButton {
                    text: qsTr("General Messages")
                }
            }
        }

    }

    SideBar{
        id: sideMenuBar
        anchors{
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
    }



    Rectangle{
        id: main
        //color: "red"

        // height: 600



        anchors{
            left: sideMenuBar.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }
        Welcome{
            id: initialisatio
        }
        Loader{
            id:loader
            anchors.fill: parent
            source: sideMenuBar.windowSource
            onSourceChanged: initialisatio.visible = false
            active: true

        }
    }
    // Rectangle{
    //     width: parent.width
    //     border.width: 1
    //     height: 25
    //     color: "#343a40"

    //     anchors{
    //         right: parent.right
    //         top: parent.top
    //         left: parent.left
    //         bottom: main.top
    //     }

    // }

}

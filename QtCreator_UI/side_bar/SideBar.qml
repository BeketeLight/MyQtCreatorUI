import QtQuick 2.15


Rectangle{
    id: root
    height: parent.height
    width: 70
    color: "#343a40"

    property url windowSource

    function activated(y){
        windowSource = y
    }


    Column{
        id:column
        anchors{
            top:parent.top
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            topMargin: 10
        }
        SideBarMenu{
            id: welcome
            text: "Welcome"
            source: "qrc:/side_bar/assets/home.png"
            windowUrl: "windows/Welcome.qml"
            onActivated: root.activated(windowUrl)

        }
        SideBarMenu{
            id:edit
            text: "Edit"
            source: "qrc:/side_bar/assets/align-left.png"
            windowUrl: "windows/Edit.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id: design
            text: "Design"
            source: "qrc:/side_bar/assets/pen-tool.png"
        }
        SideBarMenu{
            id:debug
            text: "Debug"
            source: "qrc:/side_bar/assets/bug.png"
        }
        SideBarMenu{
            id: projects
            text: "Projects"
            source: "qrc:/side_bar/assets/spanner.png"
        }
        SideBarMenu{
            id: extensions
            text: "Extensions"
            source: "qrc:/side_bar/assets/extension.png"
        }
        SideBarMenu{
            id:help
            text: "Help"
            source: "qrc:/side_bar/assets/help.png"
        }

    }











}

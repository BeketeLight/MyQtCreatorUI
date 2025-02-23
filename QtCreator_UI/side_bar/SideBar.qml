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
            windowUrl: "welcome_windows/Welcome.qml"
            onActivated: root.activated(windowUrl)

        }
        SideBarMenu{
            id:edit
            text: "Edit"
            source: "qrc:/side_bar/assets/align-left.png"
            windowUrl: "edit_window/EditWindow.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id: design
            text: "Design"
            source: "qrc:/side_bar/assets/pen-tool.png"
            windowUrl: "design_window/DesignWindow.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id:debug
            text: "Debug"
            source: "qrc:/side_bar/assets/bug.png"
            windowUrl: "debug_window/DebugWindow.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id: projects
            text: "Projects"
            source: "qrc:/side_bar/assets/spanner.png"
            windowUrl: "projects_window/ProjectsWindow.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id: extensions
            text: "Extensions"
            source: "qrc:/side_bar/assets/extension.png"
            windowUrl: "extensions_window/ExtensionsWindow.qml"
            onActivated: root.activated(windowUrl)
        }
        SideBarMenu{
            id:help
            text: "Help"
            source: "qrc:/side_bar/assets/help.png"
            windowUrl: "help_window/HelpWindow.qml"
            onActivated: root.activated(windowUrl)
        }

    }











}

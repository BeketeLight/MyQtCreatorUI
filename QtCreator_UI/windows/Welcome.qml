import QtQuick 2.15
import QtQuick.Controls

Item {
    anchors.fill: parent

    Rectangle{
        id: logo
        height: 100
        color: "#253237"
        border.width: 0.5
        anchors{
            left: parent.left
            right: parent.right

        }
        Row{
            spacing: 20
            anchors{
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: 10
            }
            Image {
                id: logoIcon
                source: "qrc:/windows/assets/pngegg.png"
                height: 100
                width: height
                fillMode: Image.PreserveAspectFit

            }
            Label{
                text: "Welcome to Qt Creator"
                font.pointSize: 20
                anchors{
                    verticalCenter: logoIcon.verticalCenter
                }
            }
        }
    }
    Rectangle{
        id: startCreation
        border.width: 0.5

        width: 200
        color: "#253237"
        anchors{
            top: logo.bottom
            bottom: parent.bottom
            right: details.left
        }


        Column{
            id: column0
            spacing: 5
            anchors{
                top: parent.top
                topMargin: 20
                horizontalCenter: parent.horizontalCenter

            }

            StartComponent{
                id: createProject
                text: "Create Project"
                color: "#15ed4f"
                onActivatedin:createProject.color = "#8aeda4"
                onActivatedout: createProject.color = "#15ed4f"
            }
            StartComponent{
                text: "Open Project..."
                color: "#253237"
                border.color: "white"
                onActivatedin: border.width = 2
                onActivatedout: border.width = 1

            }
        }

        Column{
            id: column1
            spacing: 5
            anchors{
                top: column0.bottom
                horizontalCenter: column0.horizontalCenter
                topMargin: 40
            }
            CustomButton{
                text: "Projects"
                color: "#253237"
                border.color: "gray"
                onActivatedin: border.width = 2
                onActivatedout: border.width = 1
            }
            CustomButton{
                text: "Examples"
                color: "#253237"
                border.color: "gray"
                onActivatedin: border.width = 2
                onActivatedout: border.width = 1
            }
            CustomButton{
                text: "Tutorials"
                color: "#253237"
                border.color: "gray"
                onActivatedin: border.width = 2
                onActivatedout: border.width = 1
            }
            CustomButton{
                text: "Marketplace"
                color: "#253237"
                border.color: "gray"
                onActivatedin: border.width = 2
                onActivatedout: border.width = 1
            }

        }
        Item{
            width: 150
            height: 250
            anchors{
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
            }
            Column{
                spacing: 15
                anchors.fill: parent
                Label{
                    text: "Explore Menu"
                    color: "gray"
                }
                Explore{
                    text: "Get Started"
                }
                Explore{
                    text: "Get Qt"
                }
                Explore{
                    text: "Qt Account"
                }
                Explore{
                    text: "Online Community"
                }
                Explore{
                    text: "Blogs"
                }
                Explore{
                    text: "User Guide"
                }

            }
        }

    }
    Rectangle{
        id: details
        color: "#253237"
        border.width: 0.5

        anchors{
            top: logo.bottom
            left: startCreation.right
            bottom: parent.bottom
            right: parent.right
        }
    }


}

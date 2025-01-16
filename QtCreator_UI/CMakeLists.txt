cmake_minimum_required(VERSION 3.16)

project(QtCreator_UI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)


qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appQtCreator_UI
    Resources.qrc
    main.cpp
)

qt_add_qml_module(appQtCreator_UI
    URI QtCreator_UI
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES side_bar/SideBar.qml
        QML_FILES side_bar/SideBarMenu.qml
        QML_FILES side_bar/MenuObjectModel.qml
        QML_FILES welcome_windows/Welcome.qml
        QML_FILES welcome_windows/StartComponent.qml
        QML_FILES welcome_windows/CustomButton.qml
        QML_FILES welcome_windows/Explore.qml
        QML_FILES edit_window/EditWindow.qml
        QML_FILES design_window/DesignWindow.qml
        QML_FILES debug_window/DebugWindow.qml
        QML_FILES projects_window/ProjectsWindow.qml
        QML_FILES extensions_window/ExtensionsWindow.qml
        QML_FILES help_window/HelpWindow.qml

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appQtCreator_UI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appQtCreator_UI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtCreator_UI
    PRIVATE Qt6::Quick
)


include(GNUInstallDirs)
install(TARGETS appQtCreator_UI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

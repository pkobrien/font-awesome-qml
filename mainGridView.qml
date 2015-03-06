import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import "." as App

ApplicationWindow {
    width: 400
    height: 400

    title: "Font Awesome Grid Layout"
    visible: true

    property var awesome: App.FontAwesome
    property var fa: App.FontAwesome.icons

    menuBar: App.MenuBar { }

//    toolBar: App.ToolBar { }

    Item {
        focus: true
        Keys.onPressed: App.Actions.keyPressed(event, parent);
    }

    App.GridView { }

    statusBar: App.StatusBar { }
}

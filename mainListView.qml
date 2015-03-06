import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import "." as App

ApplicationWindow {
    width: 400
    height: 400

    title: "Font Awesome Explorer"
    visible: true

    property var awesome: App.FontAwesome
    property var fa: App.FontAwesome.icons

    menuBar: App.MenuBar { }

    Item {
        focus: true
        Keys.onPressed: App.Actions.keyPressed(event, parent);
    }

    App.ListView { }

    statusBar: App.StatusBar { }
}

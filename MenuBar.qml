import QtQuick 2.4
import QtQuick.Controls 1.3
import "." 1.0 as App

MenuBar {
    id: menuBar

    Menu {
        title: "&File"
        MenuItem { action: App.Actions.appQuitAction }
    }
}

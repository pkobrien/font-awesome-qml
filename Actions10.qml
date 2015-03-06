pragma Singleton

import QtQuick 2.4
import QtQuick.Controls 1.3
import "." 1.0 as App

QtObject {
    id: actionsSingleton

    property Action appQuitAction: Action {
        text: qsTr("E&xit")
        tooltip: qsTr("Exit the application")
        onTriggered: Qt.quit();
    }

    function keyPressed(event, source) {
        if (event.matches(StandardKey.Quit) ||
                (event.key === Qt.Key_Q && event.modifiers === Qt.ControlModifier)) {
            appQuitAction.trigger(source);
        } else {
            event.accepted = false;
            return;
        }
        event.accepted = true;
    }

    Component.onCompleted: {
        // Keep all the shortcut assignments here simply to group them together for clarity.
        appQuitAction.shortcut = "Ctrl+Q";
        // There is currently a bug in QML when this file is a singleton whereby the shortcuts
        // no longer work. Therefore the key handling is also handled in the keyPressed function.
    }
}

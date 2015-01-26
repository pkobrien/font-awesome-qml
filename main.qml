import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

ApplicationWindow {
    title: "Font Awesome Explorer"
    width: 400
    height: 400
    visible: true

    property var awesome: FontAwesome { }
    property var fa: awesome.icons

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("E&xit")
                shortcut: StandardKey.Quit
                onTriggered: Qt.quit();
            }
        }
    }

    View {
        id: view
        anchors.fill: parent
    }

    statusBar: StatusBar {
        anchors.fill: parent

        RowLayout {
            Label {
                id: label;
                font.family: awesome.family;
                text: (awesome.family + " " + awesome.version + " loaded " +
                       view.model.count + " icons " + fa.smile_o)
            }
        }
    }
}

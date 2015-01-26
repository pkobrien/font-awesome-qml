import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: view
    width: 400
    height: 400

    property alias model: listView.model

    ListView {
        id: listView
        anchors.fill: parent
        anchors.margins: 20
        clip: true
        delegate: Delegate { }
        focus: true
        header: header
        highlight: Rectangle {
            width: parent.width
            color: "lightgray"
            radius: 5
        }
        highlightMoveDuration: 400
        model: Model { }
        section.property: "name"
        section.criteria: ViewSection.FirstCharacter
        section.delegate: sectional
        section.labelPositioning: ViewSection.InlineLabels
        spacing: 5
        Keys.onPressed: {
            if (Qt.Key_A <= event.key <= Qt.Key_Z) {
                for (var i = 0; i < model.count; i++) {
                    if (model.get(i).name.charAt(0) === event.text) {
                        listView.positionViewAtIndex(i, ListView.Center);
                        listView.currentIndex = i;
                        break;
                    }
                }
            }
        }
    }

    Component {
        id: header

        Item {
            id: headBanner
            height: childrenRect.height + 10
            width: ListView.view.width

            Rectangle {
                color: "transparent"
                height: 50
                radius: 15
                width: parent.width

                Text {
                    id: headText
                    anchors.centerIn: parent
                    font.bold: true
                    font.pixelSize: 28
                    text: headBanner.ListView.view.model.count + " FontAwesome Icons"
                }
            }
        }
    }

    Component {
        id: sectional

        Item {
            id: sectionBanner
            height: 40
            width: ListView.view.width

            Rectangle {
                anchors.centerIn: parent
                color: "gray"
                height: 30
                width: parent.width / 2
                radius: height / 2

                Text {
                    anchors.centerIn: parent
                    font.bold: true
                    font.family: awesome.family
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    width: parent.width
                    text: fa.hand_o_right + "  " + section + "  " + fa.hand_o_left
                }
            }
        }
    }
}

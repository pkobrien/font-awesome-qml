import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: delegate
    height: 40
    width: 400

    Rectangle {
        id: box
        color: "transparent"
        anchors.fill: parent

        Row {
            height: parent.height
            spacing: 10

            Text {
                font.family: awesome.family
                font.pointSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: parent.height
                width: height
                text: model.unicode
            }

            Text {
                color: delegate.ListView.isCurrentItem ? "darkRed" : "black"
                font.family: awesome.family
                font.pointSize: 20
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                text: "fa." + model.name
            }
        }
    }
}

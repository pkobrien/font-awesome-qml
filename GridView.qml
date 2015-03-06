import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import "." as App

ScrollView {

    anchors.fill: parent

    GridView {
        id: gridView

        cellWidth: 250
        cellHeight: 30

        model: App.Model { }

        delegate: Row {
            spacing: 10

            Text {
                width: gridView.cellHeight
                height: gridView.cellHeight
                font.family: awesome.family
                font.pointSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: model.unicode
            }

            Text {
                height: gridView.cellHeight
                font.family: awesome.family
                font.pointSize: 14
                verticalAlignment: Text.AlignVCenter
                text: "fa." + model.name
            }
        }
    }

    Keys.onPressed: App.Actions.keyPressed(event, parent);
}

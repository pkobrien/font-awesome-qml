import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: delegate
    height: 40
    width: 400

    Row {
        height: parent.height
        spacing: 10

        Text {
            height: parent.height
            width: height
            font.family: awesome.family
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: model.unicode
        }

        Text {
            height: parent.height
            color: delegate.ListView.isCurrentItem ? "darkRed" : "black"
            font.family: awesome.family
            font.pointSize: 20
            verticalAlignment: Text.AlignVCenter
            text: "fa." + model.name
        }
    }
}

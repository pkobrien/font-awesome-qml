import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

StatusBar {
    anchors.fill: parent

    RowLayout {
        Label {
            font.family: awesome.family
            text: (awesome.family + " " + awesome.version + " loaded " +
                   awesome.count + " icons " + fa.smile_o)
        }
    }
}

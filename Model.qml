import QtQuick 2.4

ListModel {
    id: model

    Component.onCompleted: {
        for (var name in awesome.icons) {
            model.append({"name": name, "unicode": awesome.icons[name]});
        }
    }
}

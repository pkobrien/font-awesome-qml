import QtQuick 2.4

Item {
    id: awesome

    property alias family: loader.name
    property alias icons: fai.icons
    property string version: "4.3.0"

    FontAwesomeIcons { id: fai }

    FontLoader {
        id: loader
//        onStatusChanged: {
//            if (status === FontLoader.Ready)
//                console.log("FontLoader.Ready, loaded font named ", loader.name);
//        }
        Component.onCompleted: loader.source = "./fontawesome-webfont.ttf";
        //source: "http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/fonts/fontawesome-webfont.ttf";
    }
}

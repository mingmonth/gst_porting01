import QtQuick 2.0

Item {
    id: content_root
    width: parent.width
    height: parent.height - y

    signal stateChangeEvent(string data);

    Connections {
        target: content_root
        onStateChangeEvent: {
            console.log("state change event received: " + data);
            content_loader_root.state = data;
        }
    }

    Rectangle {
        id: content_loader_root
        width: parent.width
        height: parent.height
        color: "blue"

        property alias loaderItem: content_loader.item

        Loader {
            id: content_loader
            x: 0
            y: 0
            width: parent.width
            height: parent.height
        }

        states: [
            State {
                name: "main_screen"
                PropertyChanges { target: content_loader; source: "Page1.qml" }
            },
            State {
                name: "camera_screen"
                PropertyChanges { target: content_loader; source: "Page2.qml" }
            }
        ]
        state: "main_screen"
    }
}

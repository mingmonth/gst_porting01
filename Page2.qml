import QtQuick 2.0

Item {
    id: page2_root
    y: 0
    width: parent.width
    height: parent.height
    Rectangle {
        width: parent.width
        height: parent.height
        color: "green"
        Text {
            width: parent.width
            height: parent.height
            text: "PAGE2"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "black"
        }
    }
    Rectangle {
        x: 5
        y: 15
        width: 70
        height: 50
        border.color: "black"
        color: "green"
        border.width: 1
        Text {
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            text: "HOME"
            color: "black"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("HOME Button Clicked!!!");
                content_root.stateChangeEvent("main_screen");
            }
        }
    }
}

import QtQuick 2.0

Item {
    id: page1_root
    y: 0
    width: parent.width
    height: parent.height
    Rectangle {
        width: parent.width
        height: parent.height
        color: "yellow"
        Text {
            width: parent.width
            height: parent.height
            text: "PAGE1"
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
        color: "yellow"
        border.width: 1
        Text {
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            text: "CAM"
            color: "black"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("CAM Button Clicked!!!");
                content_root.stateChangeEvent("camera_screen");
            }
        }
    }
}

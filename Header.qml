import QtQuick 2.0

Item {
    id: header_root
    y: 0
    width: parent.width
    height: parent.height
    Rectangle {
        width: parent.width
        height: parent.height
        color: "red"
        Text {
            width: parent.width
            height: parent.height
            text: "HEADER"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "white"
        }
    }
}

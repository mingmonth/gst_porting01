import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("Hello World")

    Header {
        id: myHeader
        height: 50
    }

    Content {
        id: myContent
        y: 50
    }
}

import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    PageHeader { title: qsTr("Page 5") }


    Timer {
        id: timer
        interval: 1000
        repeat: true
        running: false
        onTriggered: timeLabel.tick()
    }

    Button {
        anchors.centerIn: parent
        width: 500
        height: 200
        onClicked: timer.running = !timer.running

        TimeLabel {
            id: timeLabel
            anchors.centerIn: parent
        }
    }




}


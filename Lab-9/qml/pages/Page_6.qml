import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 6")
    }

    Video {
        id: video
        width: parent.width
        height: 405
        source: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.ogv"
    }

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: video.bottom
        anchors.topMargin: 50
        IconButton {
            id: play
            icon.source: "image://theme/icon-m-play"
            onClicked: video.play();
        }
    }
}


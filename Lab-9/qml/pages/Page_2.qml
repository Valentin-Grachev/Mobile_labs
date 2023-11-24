import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 2")
    }

    AnimatedSprite {
        anchors.centerIn: parent
        source: "girl.png"
        width: 1923 / 3
        height: 542
        frameCount: 3
        frameWidth: 1923 / 3
        frameHeight: 542
        frameRate: 10
        interpolate: true
    }



}

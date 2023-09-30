import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 8")
    }

    Slider {
        id: slider
        anchors.centerIn: parent
        width: parent.width
        maximumValue: 1
        minimumValue: -1
        stepSize: 0.1
        value: 0
    }

    Text {
        anchors.top: slider.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: 'Значение: ' + slider.value.toString()
        font.pixelSize: 50
    }



}

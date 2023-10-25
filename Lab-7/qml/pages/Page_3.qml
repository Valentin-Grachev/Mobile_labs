import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 3")
    }


    TrafficLight {
        anchors.centerIn: parent

    }


}

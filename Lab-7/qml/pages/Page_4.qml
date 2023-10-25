import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 4")
    }

    Column {
        anchors.centerIn: parent
        TakeTextButton {
            color: "red"
            anchors.centerIn: parent.Center
            Label {
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Двойной текст!!"
            }

        }
    }




}


import QtQuick 2.0
import Sailfish.Silica 1.0

Page {


    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 1")
    }



    SilicaListView {
        y: 400
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 1500
        spacing: 10


        model: ListModel {
            ListElement { name: "Белый"; backColor: "white"; textColor: "black" }
            ListElement { name: "Черный"; backColor: "black"; textColor: "white" }
            ListElement { name: "Синий"; backColor: "blue"; textColor: "red" }
        }



        delegate: Rectangle {
            color: backColor
            height: 100
            width: parent.width

            Text {
                text: name
                anchors.centerIn: parent
                color: textColor
            }
        }



    }


}

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 3")
    }

    property var jsModel: [
        { name: "Белый", backColor: "white", textColor: "black" },
        { name: "Черный", backColor: "black", textColor: "white" },
        { name: "Синий", backColor: "blue", textColor: "red" }
    ]

    SilicaListView {
        y: 400
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 1500
        spacing: 10


        model: jsModel

        delegate: Rectangle {
            color: modelData.backColor
            height: 100
            width: parent.width

            Text {
                text: modelData.name
                anchors.centerIn: parent
                color: modelData.textColor
            }
        }

    }




}

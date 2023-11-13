import QtQuick 2.0
import Sailfish.Silica 1.0
import StrList 1.0


Page {
    PageHeader { title: "Page 2" }

    StrList {
        id: list
    }



    Column {
        TextArea {
            id: text
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 50
        }

        anchors.centerIn: parent
        spacing: 10

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                list.add(text.text);
                text.text = "";
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Удалить последнее"
            onClicked: counter.reset()
        }

        Text {
            text: list.allStrings
        }
    }



}

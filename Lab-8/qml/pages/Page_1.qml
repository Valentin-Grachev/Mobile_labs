import QtQuick 2.0
import Sailfish.Silica 1.0
import Counter 1.0


Page {
    PageHeader { title: "Page 1" }

    Counter {
        id: counter
        value: 3
        onValueChanged: console.log("counter: " + value)
    }


    Column {
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: counter.value
            font.pixelSize: 100
        }

        anchors.centerIn: parent
        spacing: 10

        Button {
            text: "Увеличить"
            onClicked: counter.increment()
        }

        Button {
            text: "Сбросить"
            onClicked: counter.reset()
        }
    }




}

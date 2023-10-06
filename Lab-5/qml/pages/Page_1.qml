
import QtQuick 2.0
import Sailfish.Silica 1.0

Page {


    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 1")
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text: 'Назад'
            onClicked: pageStack.pop()
        }

        Button {
            text: 'Вперед'
            onClicked: pageStack.push(Qt.resolvedUrl("Page_1.qml"))
        }

        Text {
            text: 'Глубина стека: ' + pageStack.depth.toString()
        }
    }





}

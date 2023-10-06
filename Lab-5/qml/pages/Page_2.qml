import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 2")
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text: 'Прикрепить'
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("Page_8.qml"))
        }

        Button {
            text: 'Открепить'
            onClicked: pageStack.popAttached()
        }

    }




}

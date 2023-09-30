
import QtQuick 2.0
import Sailfish.Silica 1.0

Page {


    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 1")
    }


    TextField {
        anchors.centerIn: parent

        width: 500
        height: 150
        label: 'Введите число'
        placeholderText: label
        inputMethodHints: Qt.ImhDigitsOnly
    }



}

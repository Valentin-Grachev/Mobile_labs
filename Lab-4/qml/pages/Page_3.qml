import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 3")
    }

    property int clicks: 0

    ValueButton {
        anchors.centerIn: parent
        label: 'Кнопка'
        width: 300
        leftMargin: -200
        description: 'Описание кнопки'
        value: clicks.toString() + ' Нажатий'
        onClicked: clicks++;
    }

}

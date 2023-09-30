import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 2")
    }


    Button {
        id: button
        anchors.centerIn: parent
        text: 'Нажми меня!'
        onClicked:
        {
            down = !down;

            if (down) button_text.text = 'Кнопка нажата'
            else button_text.text = 'Кнопка не нажата'
        }

    }
    Text {
        id: button_text
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: button.bottom
        text: 'Кнопка не нажата'
        font.pixelSize: 50
    }


}

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 9")
    }


    TextField {
        id: text_field
        anchors.bottom: parent.bottom
    }


    SilicaListView {
        anchors.left: parent.left
        anchors.right: parent.right
        y: Screen.height / 4
        height: 200

        PullDownMenu {
            MenuItem {
                text: "Низ"
                onClicked: text_field.text = text
            }
        }

        PushUpMenu {
            MenuItem {
                text: "Верх"
                onClicked: text_field.text = text
            }
        }

    }


}

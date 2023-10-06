import QtQuick 2.0
import Sailfish.Silica 1.0




Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 3")
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text: 'Ввести текст'
            onClicked: dialog.open()
        }

        TextArea {
            id: result
            text: 'Не введено'
            readOnly: true
        }

        Dialog {
            id: dialog

            DialogHeader { }

            TextArea {
                anchors.centerIn: parent
                id: dialog_text
            }

            onAccepted: result.text = dialog_text.text


        }



    }



}

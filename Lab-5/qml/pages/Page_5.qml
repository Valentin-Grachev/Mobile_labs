import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 5")
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text: 'Ввести время'
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

            TimePicker {
                id: dialog_time
                anchors.centerIn: parent

            }

            onAccepted: result.text = dialog_time.time.toTimeString()


        }



    }
}

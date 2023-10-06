import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 4")
    }

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            text: 'Ввести дату'
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

            DatePicker {
                id: dialog_date
                anchors.centerIn: parent
                onDateChanged: console.log(date.toDateString())

            }

            onAccepted: result.text = dialog_date.date.toDateString()


        }



    }





}

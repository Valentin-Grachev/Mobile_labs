import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 2")
    }

    SilicaListView {
        id: list

        y: 400
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 1500
        spacing: 10


        model: ListModel {
            id: listModel
            ListElement { index: 0; }
            ListElement { index: 1; }
            ListElement { index: 2;  }
        }


        delegate: Button {
            height: 100
            width: parent.width
            text: "Элемент " + (index + 1).toString()

            onClicked: {
                for (var i = 0; i < listModel.rowCount(); i++) {
                    if (listModel.get(i).index === index)
                        listModel.remove(i)
                }
            }
        }

    }


    Button {
        text: "Добавить"
        anchors.bottom: list.top
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: listModel.append({ index: listModel.rowCount() })

    }




}

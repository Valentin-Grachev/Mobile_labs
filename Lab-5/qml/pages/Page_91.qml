import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 10")
    }

    SilicaListView {


        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter


        height: Screen.height * 0.5
        model: ListModel
        {
            ListElement { task: "Сделать лабораторную"; }
            ListElement { task: "Праздновать сдачу лабораторной"; }
            ListElement { task: "Сделать отчет по лабораторной"; }
            ListElement { task: "Праздновать сдачу отчета"; }
        }
        delegate: ListItem {
            Label {
                text: task
                anchors.centerIn: parent
            }


            menu: ContextMenu {
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Выполнено "
                    onClicked: console.log(index + '-ая задача выполнена')
                }
                MenuItem {
                    text: "Отложено"
                    onClicked: console.log(index + '-ая задача отложена')
                }
            }

        }

    }





}

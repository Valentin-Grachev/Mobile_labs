import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 8")
    }

    SlideshowView {


        id: view

        y: Screen.height / 5

        width: Screen.width
        height: 1000

        model: ListModel
        {
            ListElement { task: "Запрогать будильник"; day: "Понедельник"; }
            ListElement { task: "Уронить прод"; day: "Вторник"; }
            ListElement { task: "Попить кофе"; day: "Среда"; }
            ListElement { task: "Доделать лабу по мобилкам"; day: "Четверг"; }
            ListElement { task: "Праздновать сдачу лабы"; day: "Пятница"; }
            ListElement { task: "Писать отчет по лабе"; day: "Суббота"; }
            ListElement { task: "Праздновать сдачу отчета"; day: "Воскресенье"; }
        }


        delegate: Item {
            width: view.width - 100;
            height: view.height  - 50;

            Text {
                text: day
                font.bold: true
                anchors.left: parent.left;
            }

            Text {
                anchors.right: parent.right;
                text: task
            }
        }
    }



}

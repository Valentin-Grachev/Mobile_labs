import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 6")
    }



    SilicaListView {

        x: 100
        y: Screen.height / 5

        width: 500
        height: 1000

        model: ListModel
        {
            ListElement { task: "Запрогать будильник"; date: "17.10.23"; }
            ListElement { task: "Уронить прод"; date: "17.10.23"; }
            ListElement { task: "Попить кофе"; date: "18.10.23"; }
            ListElement { task: "Доделать лабу по мобилкам"; date: "19.10.23"; }
        }

        section {
            property: 'date'
            delegate: Text
            {
                text: section
                font.bold: true
            }
        }

        delegate: Text { text: task }
    }




}

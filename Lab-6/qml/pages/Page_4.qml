import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 4")
    }



    SilicaListView {
        y: 200
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 1000
        spacing: 20

        header: PageHeader { title: "Валюты" }


        model: XmlListModel {
            source: "http://www.cbr.ru/scripts/XML_daily.asp"
            query: "/ValCurs/Valute"

            XmlRole { name: "Name"; query: "Name/string()" }
            XmlRole { name: "Value"; query: "Value/string()" }
            XmlRole { name: "CharCode"; query: "CharCode/string()" }
        }


        delegate: Column {
            Text { text: Name + ' (' + CharCode + ')' }
            Text { text: Value }
        }




    }




}

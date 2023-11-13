import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 5")
    }


    function requestData() {
        var request = new XMLHttpRequest();
        request.open('GET', 'http://www.cbr.ru/scripts/XML_daily.asp', true);
        request.onreadystatechange = function() {
            if (request.readyState === XMLHttpRequest.DONE) {
                console.log(request.responseText);
                xmlModel.xml = request.responseText;
            }

        }
        request.send();
    }



    SilicaListView {
        y: 200
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 1000
        spacing: 20


        header: PageHeader { title: "Валюты" }


        model: XmlListModel {

            id: xmlModel
            query: "/ValCurs/Valute"

            XmlRole { name: "Name"; query: "Name/string()" }
            XmlRole { name: "Value"; query: "Value/string()" }
            XmlRole { name: "CharCode"; query: "CharCode/string()" }
        }


        delegate: Column {
            Text { text: CharCode }
            Text { text: Value }
        }
    }

    Button {
        width: parent.width
        y: 150
        text: 'Запросить данные'
        onClicked: requestData()
    }


}


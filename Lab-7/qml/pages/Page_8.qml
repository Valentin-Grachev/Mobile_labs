import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 8")
    }

    ConfigurationGroup {
        id: configs
        path: "/configs"
        property string str: "empty"
        property bool check: false
    }

    Column {
        anchors.centerIn: parent
        width: 500
        height: 500


        TextField {
            text: configs.str
            onTextChanged: configs.str = text
        }

        TextSwitch {
            height: 200
            width: parent.width

            checked: configs.check
            text: 'Работает?'
            onCheckedChanged: configs.check = checked

        }
    }



}

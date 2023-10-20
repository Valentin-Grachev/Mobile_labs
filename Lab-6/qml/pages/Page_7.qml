import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 7")
    }

    ConfigurationValue {
        id: config_string
        key: "/config_string"
        defaultValue: "Empty"
    }

    ConfigurationValue {
        id: config_bool
        key: "/config_bool"
        defaultValue: false
    }


    Column {
        anchors.centerIn: parent
        width: 500
        height: 500


        TextField {

            text: config_string.value
            onTextChanged: config_string.value = text
        }

        TextSwitch {
            height: 200
            width: parent.width

            checked: config_bool.value
            text: 'Работает?'
            onCheckedChanged: config_bool.value = checked

        }
    }

}

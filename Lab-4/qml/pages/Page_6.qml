import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 6")
    }

    ComboBox {
        anchors.centerIn: parent

        label: 'Оцените лабу'
        description: 'Поддержите разработчиков, оставив нам обратную связь!'

        menu: ContextMenu {
                id: menu
                MenuItem { text: "Крутая" }
                MenuItem { text: "Добротная" }
                MenuItem { text: "Приемлемая" }
            }

        onCurrentIndexChanged: console.log(value);
    }
}

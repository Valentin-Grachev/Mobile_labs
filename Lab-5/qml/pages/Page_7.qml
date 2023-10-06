import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 7")
    }

    SilicaWebView {
        anchors.fill: parent
        url: "https://github.com/Valentin-Grachev?tab=repositories"
    }

}

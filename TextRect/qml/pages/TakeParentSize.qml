import QtQuick 2.0
import Sailfish.Silica 1.0

Item {

    property string header: 'header'
    property string description: 'description'
    property int size: 300

    property Item originItem: parent
    property double adapterTextCoef: 0.1


    Rectangle {

        color: "green"

        x: -size/2
        y: -size/2
        width: size
        height: size

        radius: size/10


        Label {
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            text: header
            font.pixelSize: originItem.width * adapterTextCoef * 1.3
            color: "red"

        }

        Text {
            width: parent.width
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
            text: description
            font.pixelSize: originItem.width * adapterTextCoef


        }



    }


}

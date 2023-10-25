import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 2")
    }

    Button {
        id: clickArea
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        opacity: 0
    }

    Item {
        y: 200
        anchors.horizontalCenter: parent.horizontalCenter
        id: labelItem

        property double downValue: 0


        Label {
            id: label
            property double angle: 0


            anchors.centerIn: parent
            y: 100
            text: "Hello world!"
            color: "blue"
            font.pixelSize: 100
        }

        transform: Rotation
        {
            id: rotation
            angle: 0
        }
    }



    state: {
        if (clickArea.down) "down";
        else "up";
    }

    states: [
        State { name: "down" },
        State { name: "up" }
    ]

    transitions: [

        Transition {
            from: "up"; to: "down"

            PropertyAnimation { target: labelItem; properties: "downValue"; from: labelItem.downValue; to: 1; duration: 1000 - 1000 * labelItem.downValue; }
            PropertyAnimation { target: labelItem; properties: "y"; from: labelItem.y; to: 800; duration: 1000 - 1000 * labelItem.downValue; }
            PropertyAnimation { target: label; properties: "color"; from: label.color; to: "green"; duration: 1000 - 1000 * labelItem.downValue; }
            RotationAnimation { target: rotation; properties: "angle"; from: rotation.angle; to: 180; duration: 1000 - 1000 * labelItem.downValue; }
        },

        Transition {
            from: "down"; to: "up"

            PropertyAnimation { target: labelItem; properties: "downValue"; from: labelItem.downValue; to: 0; duration: 1000 * labelItem.downValue; }
            PropertyAnimation { target: labelItem; properties: "y"; from: labelItem.y; to: 200; duration: 1000 * labelItem.downValue;}
            PropertyAnimation { target: label; properties: "color"; from: label.color; to: "blue"; duration: 1000 * labelItem.downValue;}
            RotationAnimation { target: rotation; properties: "angle"; from: rotation.angle; to: 0; duration: 1000 * labelItem.downValue; }



        }
    ]





}

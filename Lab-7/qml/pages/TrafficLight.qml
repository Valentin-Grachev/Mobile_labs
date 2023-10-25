import QtQuick 2.0

Item {
    property int diameter: 200
    property int stateNumber: 0


    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: stateNumber = (stateNumber + 1) % 3
    }

    state: {
        switch(stateNumber) {
        case 0: "red"; break;
        case 1: "green"; break;
        case 2: "yellow"; break;
        }
    }

    states: [
        State {
            name: "red"
            PropertyChanges { target: red; color: "red"}
            PropertyChanges { target: yellow; color: "black"}
            PropertyChanges { target: green; color: "black"}

            PropertyChanges { target: human; opacity: 0 }
        },
        State {
            name: "yellow"
            PropertyChanges { target: red; color: "black"}
            PropertyChanges { target: yellow; color: "yellow"}
            PropertyChanges { target: green; color: "black"}
        },
        State {
            name: "green"
            PropertyChanges { target: red; color: "black"}
            PropertyChanges { target: yellow; color: "black"}
            PropertyChanges { target: green; color: "green"}

            PropertyChanges { target: anim; running: true }
            PropertyChanges { target: human; opacity: 1 }
        }
    ]




    Column {
        anchors.centerIn: parent
        spacing: 20



        Rectangle {
            id: red
            width: diameter
            height: diameter
            color: "red"
            border.color: "black"
            border.width: 3
            radius: diameter / 2
        }
        Rectangle {
            id: yellow
            width: diameter
            height: diameter
            color: "yellow"
            border.color: "black"
            border.width: 3
            radius: diameter / 2
        }
        Rectangle {
            id: green
            width: diameter
            height: diameter
            color: "green"
            border.color: "black"
            border.width: 3
            radius: diameter / 2
        }

        Image {
            id: human
            opacity: 0
            source: "image://theme/icon-m-media-artists"
            scale: 2

            PropertyAnimation {
                id: anim
                target: human
                property: "x"
                from: -200
                to: 300
                duration: 1000
            }
        }


    }

}

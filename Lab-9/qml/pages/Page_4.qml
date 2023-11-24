import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0
import QtQuick.Particles 2.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 4")
    }



    ParticleSystem {
        id: particleSystem
    }

    property int angle: -90
    property bool moveLeft: true

    Timer {
        id: timer
        interval: 10
        running: true
        repeat: true

        onTriggered: {
            var angle = emitterDirection.angle;

            if (angle < -140 && moveLeft) moveLeft = false;
            else if (angle > -40 && !moveLeft) moveLeft = true;

            if (moveLeft) emitterDirection.angle = angle - 1;
            else emitterDirection.angle = angle + 1;
        }
    }

    Emitter {

        system: particleSystem
        width: 10
        height: 10
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        lifeSpan: 4000
        lifeSpanVariation: 1000
        emitRate: 50
        velocity: AngleDirection {
            id: emitterDirection
            angle: -90
            angleVariation: 20
            magnitude: 500
        }
    }

    Gravity {
        system: particleSystem
        anchors.fill: parent
        angle: 90
        magnitude: 200
    }

    ItemParticle {
        system: particleSystem
        delegate: Rectangle {
            property int particleSize: 10
            width: particleSize
            height: particleSize
            color: "blue"
            radius: particleSize/2
        }
    }




}

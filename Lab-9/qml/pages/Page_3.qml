import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 3")
    }


    property int currentColorIndex: 0
    property var colors: ["red", "green", "blue", "orange"]


    Component {
        id: particles

        Item {
            id: container
            width: 200
            height: 200
            ParticleSystem { id: particleSystem }

            Emitter {
                system: particleSystem
                width: 10
                height: 10
                emitRate: 2000
                maximumEmitted: 50
                lifeSpan: 1000
                velocity: TargetDirection {
                    targetVariation: 1000
                    magnitude: 500
                }
            }

            ItemParticle {
                system: particleSystem
                delegate: Rectangle {
                    property int particleSize: 10
                    width: particleSize
                    height: particleSize
                    color: colors[currentColorIndex]

                    radius: particleSize/2
                }
            }
            Timer {
                interval: 1000
                running: true
                onTriggered: container.destroy();
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            const object = particles.createObject(parent);
            object.x = mouseX
            object.y = mouseY
            currentColorIndex = (currentColorIndex + 1) % colors.length
        }
    }




}

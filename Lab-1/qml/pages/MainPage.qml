/*******************************************************************************
**
** Copyright (C) 2022 ru.labrador
**
** This file is part of the Моё приложение для ОС Аврора project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All


    property int cubeSize: 150
    property int dur: 2000


    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Lab-2")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter

                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    // Task 1: 3 Rectangles
    Item {
        visible: false

        Rectangle {
            x: 100
            y: 150
            color: 'red'
            width: cubeSize
            height: cubeSize
        }

        Rectangle {
            x: 250
            y: 225
            color: 'green'
            width: cubeSize
            height: cubeSize
        }

        Rectangle {
            x: 350
            y: 150
            color: 'blue'
            width: cubeSize
            height: cubeSize

            Text {
                x: 15
                y: 50
                text: 'квадрат'
                color: 'white'
            }

        }
    }


    // Task 2: Column and Rows
    Item {
        visible: false
        x: 50
        y: 200

        Column {
            spacing: 50

            Row {
                spacing: 50

                Rectangle {
                    color: 'red'
                    width: cubeSize
                    height: cubeSize
                }
                Rectangle {
                    color: 'green'
                    width: cubeSize
                    height: cubeSize
                }
                Rectangle {
                    color: 'blue'
                    width: cubeSize
                    height: cubeSize
                }
            }

            Row {
                spacing: 50

                Rectangle {
                    color: 'pink'
                    width: cubeSize
                    height: cubeSize
                }
                Rectangle {
                    opacity: 0
                    color: 'green'
                    width: cubeSize
                    height: cubeSize
                }
                Rectangle {
                    color: 'black'
                    width: cubeSize
                    height: cubeSize
                }
            }

        }

    }

    // Task 3: Grid
    Item {
        visible: false
        x: 50
        y: 200



        Grid {
            spacing: 50
            columns: 3

            Rectangle {
                color: 'red'
                width: cubeSize
                height: cubeSize
            }
            Rectangle {
                color: 'green'
                width: cubeSize
                height: cubeSize
            }
            Rectangle {
                color: 'blue'
                width: cubeSize
                height: cubeSize
            }


            Rectangle {
                color: 'pink'
                width: cubeSize
                height: cubeSize
            }
            Rectangle {
                opacity: 0
                color: 'green'
                width: cubeSize
                height: cubeSize
            }
            Rectangle {
                color: 'black'
                width: cubeSize
                height: cubeSize
            }

        }
    }

    // Task 4: Square to Rectangle
    Item {
        visible: false
        x: 50
        y: 200

        Rectangle {
            color: 'black'
            width: cubeSize
            height: cubeSize
        }

        Rectangle {
            x: 300
            y: 150

            color: 'black'
            width: cubeSize
            height: cubeSize

            transform: [
                Scale { xScale: 2 },
                Rotation { angle: -45 }

            ]
        }

    }

    // Task 5: Animation
    Item {
        visible: false
        x: 50
        y: 200



        Rectangle {
            id: animated

            color: 'black'
            width: cubeSize
            height: cubeSize



            NumberAnimation on y {
                from: 0; to: 100
                loops: Animation.Infinite
                duration: dur
            }
            NumberAnimation on x {
                from: 0; to: 100
                loops: Animation.Infinite
                duration: dur
            }

            NumberAnimation on width {
                from: cubeSize; to: cubeSize*2
                loops: Animation.Infinite
                duration: dur
            }
            NumberAnimation on height {
                from: cubeSize; to: cubeSize*2
                loops: Animation.Infinite
                duration: dur
            }



        }

    }

    // Task 6: Calculator
    Item {
        visible: true
        x: 50
        y: 200

        TextField {
            id: field_1

            width: 300
            height: 120
            color: 'black'
        }

        TextField {
            id: field_2

            x: 300

            width: 300
            height: 120
            color: 'black'
        }

        Button {
            y: 100
            x: 150
            text: 'Сложить'

            onClicked: console.log(parseInt(field_1.text) + parseInt(field_2.text))
        }


    }



}

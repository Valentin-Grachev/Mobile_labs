/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
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
    PageHeader { title: qsTr("IqPuzzle") }

    id: page
    property Item selectedItem



    Image {
        id: middleStick
        y: 700
        x: 350
        source: "1.png"
        scale: 0.5
        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                console.log("click");
                selectedItem = parent
            }
        }
    }

    Image {
        id: shortStick
        y: 800
        x: 200
        source: "2.png"
        scale: 0.5
        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                console.log("click");
                selectedItem = parent
            }
        }
    }

    Image {
        id: longStick
        y: 700
        x: 500
        source: "3.png"
        scale: 0.5
        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                console.log("click");
                selectedItem = parent
            }
        }
    }

    Image {
        id: triangle
        y: 800
        x: -120
        source: "4.png"
        scale: -0.5
        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                console.log("click");
                selectedItem = parent
            }
        }
    }



    Rectangle {
        width: 50
        height: 50
        radius: 25

        id: dragger
        x: page.mouseX - width / 2
        y: page.mouseY - width / 2

        onXChanged: {
            if (selectedItem != undefined) {
                selectedItem.parent = page;
                selectedItem.x = parent.mouseX - selectedItem.width / 2;
                selectedItem.y = parent.mouseY - selectedItem.height / 2;
                checkWin()
            }
        }

    }


    Button {
       y: 100
       anchors.horizontalCenter: page.horizontalCenter
       text: "Повернуть деталь"
       onClicked: {
           selectedItem.rotation += 45
           checkWin();
       }

    }


    Text {
        id: winText
        visible: false
        y: 200
        anchors.horizontalCenter: page.horizontalCenter
        text: "Собрано!"
        font.pixelSize: 50
    }



    function checkWin() {
        var distance_m_s
                = Math.sqrt(Math.pow(middleStick.x - shortStick.x, 2) +
                            Math.pow(middleStick.y - shortStick.y, 2));
        var distance_m_l
                = Math.sqrt(Math.pow(middleStick.x - longStick.x, 2) +
                            Math.pow(middleStick.y - longStick.y, 2));

        var distance_m_t
                = Math.sqrt(Math.pow(middleStick.x - triangle.x, 2) +
                            Math.pow(middleStick.y - triangle.y, 2));

        var eps = 10;
        if (176 - eps < distance_m_l && distance_m_l < 176 + eps &&
                265 - eps < distance_m_s && distance_m_s < 265 + eps &&
                409 - eps < distance_m_t && distance_m_t < 409 + eps &&
                middleStick.rotation % 360 == 0 &&
                shortStick.rotation % 360 == 0 &&
                longStick.rotation % 360 == 45 &&
                triangle.rotation % 360 == 45)
            winText.visible = true;

        else winText.visible = false;
    }




}

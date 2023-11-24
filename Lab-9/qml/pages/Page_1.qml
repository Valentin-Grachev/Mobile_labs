import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    PageHeader { title: qsTr("Page 1") }


    Canvas {
        anchors.fill: parent
        onPaint: {
            var context = getContext("2d");
            context.fillStyle = "#3D9AD1";
            context.fillRect(0, 0, width, height);

            context.fillStyle = "green"
            context.fillRect(0, height * 3/4, width, height/4)

            context.fillStyle = "orange";
            context.fillRect(width/6, height/2, width * 4/6, width * 4/6)

            context.fillStyle = 'red'
            context.fillRect(width/2+100, height/2 - 200, 50, 150)

            context.fillStyle = 'brown'
            context.beginPath()
            context.moveTo(width/6 - 60, height/2);
            context.lineTo(width * 5/6 + 60, height/2);
            context.lineTo(width/2, height/2 - 200);
            context.fill();
            context.closePath();
        }
    }


}

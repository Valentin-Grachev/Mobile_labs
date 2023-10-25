import QtQuick 2.0
import Sailfish.Silica 1.0

Item {

    property int seconds: 0
    property int minutes: 0
    property int hours: 0

    Label {
        anchors.centerIn: parent
        font.pixelSize: 60

        text: toTimeString(hours) + ":" +
              toTimeString(minutes) + ":" +
              toTimeString(seconds);
    }


    function toTimeString(timeValue) {
        if (timeValue > 9) return timeValue.toString();
        else return "0" + timeValue.toString();
    }

    function tick() {

        seconds++;

        if (seconds >= 60) {
            seconds = 0;
            minutes++;
        }

        if (minutes >= 60) {
            minutes = 0;
            hours++;
        }


    }


}

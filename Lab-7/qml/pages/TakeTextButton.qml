import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    height: 200;
    width: 500;
    property string color: "red"

    Button {
        id: button
        anchors.fill: parent
        color: color
    }

    Component.onCompleted: {
        for (var i = 0; i < this.children.length; i++)
            console.log(this.children[i])

        if (children.length > 0)
            button.text = children[1].text;
    }

}

import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 5")
    }


    Audio {
        id: audio
        playlist: Playlist {
            id: playlist
            playbackMode: Playlist.Loop
            PlaylistItem { source: "pg.mp3" }
        }
    }
    Row {
        anchors.centerIn: parent
        IconButton {
            icon.source: "image://theme/icon-m-media-rewind"
            onClicked: audio.playlist.previous()
        }
        IconButton {
            icon.source: "image://theme/icon-m-play"
            onClicked: audio.play()
        }
        IconButton {
            icon.source: "image://theme/icon-m-media-forward"
            onClicked: audio.playlist.next()
        }
    }



}


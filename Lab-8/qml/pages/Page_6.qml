import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Page 6")
    }

    property var db: LocalStorage.openDatabaseSync("Database", "1.0")
    property var notesModel: []



    Column {
        id: column
        y: 100
        width: parent.width

        TextField {
            id: txtfield
            placeholderText: "Введите текст"
        }

        Button {
            text: "Добавить"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: db.transaction(function(tx) { addNote(tx, txtfield.text) });
        }


    }

    SilicaListView {
        anchors.top: column.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 800

        header: PageHeader { title: "Заметки" }

        model: notesModel

        delegate: Button {
            width: parent.width
            height: 100

            Text {
                text: modelData.text
                anchors.centerIn: parent
            }

            onClicked: db.transaction(function(tx){ deleteNote(tx, modelData.text)})

        }

        Component.onCompleted: db.transaction(function(tx){ loadData(tx)})
    }



    function loadData(transaction) {
        transaction.executeSql('CREATE TABLE IF NOT EXISTS notes(text TEXT)');
        updateNotes(transaction);
    }


    function addNote(transaction, text) {
        transaction.executeSql("INSERT INTO notes (text) VALUES(?);", [text]);
        updateNotes(transaction);
    }

    function deleteNote(transaction, text) {
        transaction.executeSql("DELETE FROM notes WHERE text = ?;", [text]);
        updateNotes(transaction);
    }


    function updateNotes(transaction) {
        var sqlData = transaction.executeSql('SELECT * FROM notes');

        var notesModelData = []
        for (var i = 0; i < sqlData.rows.length; i++)
            notesModelData.push(sqlData.rows.item(i))

        notesModel = notesModelData
    }



}

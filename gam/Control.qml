import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Window {
    id: character
    signal signalCon
    width:320
    height:200

    Image {
        source: "qrc:/images/image/z.png"
    }

//я не знаю, как у тебя двигается перс, поэтому оставлю так

    Rectangle {
        id:re
        x: 60
        y: 10
        color: "transparent"
        width: 200
        height: 120
        border.color: "White"

        Text {
            id: txt
            anchors.centerIn: re
            text: "Тут описание движений"
            color:"White"
            font.pointSize: 12
        }
    }

    Button {
        id:q
        text: qsTr("Назад")
        width: 100
        height: 40
        x:110
        y:140
        onClicked: {
            character.signalCon()
        }

        contentItem: Text {
            text: q.text
            font: q.font
            color: "White"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40

            color: "transparent"
            border.color: "White"

            }
        }
}

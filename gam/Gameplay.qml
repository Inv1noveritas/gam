import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Window {
    id: gameplay
    signal signalExit
    width:320
    height:200


    Button {
        text: qsTr("Главное окно")
        width: 180
        height: 50
        anchors.centerIn: parent
        onClicked: {
            gameplay.signalExit()
        }
    }
}

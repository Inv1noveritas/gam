import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1


ApplicationWindow {
    id:w
    visible: true
    width: 320
    height: 200
    maximumWidth: 320
    minimumWidth: 320
    maximumHeight: 200
    minimumHeight: 200
    flags: Qt.FramelessWindowHint

Image {
    source: "qrc:/images/image/16784.png"
}

Rectangle {

    color: "transparent"
   x:72
   y:70

    Text {
        text:"Добро пожаловать\n     в игру game"
        color:"White"
        font.pointSize: 15

    }
}



Button {
    id: control
    text: qsTr("Выход")

    width: 100
    height: 100

    font.pointSize: 15

    y:130
    x:220

    contentItem: Text {
        text: control.text
        font: control.font
        color: "White"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        color: "transparent"
    }

    onClicked: Qt.quit()
}

Button {
    id: contro
    text: qsTr("Играть")

    width: 100
    height: 100

    font.pointSize: 15

    y:130
    x:0

    contentItem: Text {
        text: contro.text
        font: contro.font
        color: "White"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        color: "transparent"
    }

    onClicked: {
        firstWindow.show()
        w.hide()
           }

}



Gameplay {
       id: firstWindow
     flags: Qt.FramelessWindowHint

       onSignalExit: {
           firstWindow.close()
           w.show()
       }
   }
}

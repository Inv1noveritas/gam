import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: setting
    signal signalExit
    width:320
    height:200
    flags: Qt.FramelessWindowHint

    Image {
        source: "qrc:/images/image/r.png"
    }

    GridLayout {
          id: grid
          anchors.centerIn: parent

    Button {
        id:co
        text: qsTr("Звук")

        width: 180
        height: 50
        onClicked: {
            mus.show()
            setting.hide()
        }

        contentItem: Text {
            text: co.text
            font: co.font
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

    Button {
        id:qq
        text: qsTr("Управление")
        width: 180
        height: 50
        onClicked: {
            control.show()
            setting.hide()
        }

        contentItem: Text {
            text: qq.text
            font: qq.font
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

    Button {
        id:er
        text: qsTr("Персонаж")
        width: 180
        height: 50
        onClicked: {
            ch.show()
            setting.hide()
        }

        contentItem: Text {
            text: er.text
            font: er.font
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

    Button {
        id:q
        text: qsTr("Меню")
        width: 100
        height: 40
        x:110
        y:140
        onClicked: {
            setting.signalExit()
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

    Character {
        id: ch

        flags: Qt.FramelessWindowHint

          onSignalEx: {
              ch.close()
              setting.show()
          }

    }

    Control { //Короче, тут могут вылезти 2 красных ошибки. Игнорируй их, если они не мешают запуску, это баг
        id:control

        flags: Qt.FramelessWindowHint

          onSignalCon: {
              control.close()
              setting.show()
          }
    }

    Music {
        id:mus

        flags: Qt.FramelessWindowHint

          onSignalMus: {
              mus.close()
              setting.show()
          }
    }
}

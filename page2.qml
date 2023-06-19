import QtQuick 2.0
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
Window {
    id: page2
    visible: true
    width: 320
    height: 240
    title: qsTr("Trang1")
    Column{
        anchors.centerIn: parent
        spacing: 10
        Label{
             anchors.right: parent.right
            text: "2/2"
        }
        Button{

            text: "1.KIEM TRA MOTOR NHANH"
            leftPadding: -80
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "2.KIEM TRA RFID"
            leftPadding: -120
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "3.CAI DAT MENH GIA TIEN"
            leftPadding: -85

            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "4.CAI DAT THOI GIAN"
            leftPadding: -100
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "5.SINGLE VEND"
            leftPadding: -125
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "6.HOT WATER TIME"
            leftPadding: -108
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "7.TU NHAN TIEN"
            leftPadding: -120
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            id: page2Button
            text: "chuyển"
            leftPadding: -100
            width: 200
            visible: false
            height: 20
            Shortcut{
                sequence: "Left"
                onActivated:page2Button.clicked()
            }
            Loader{
                id:page2Loader
            }
            onClicked: {
                page2Loader.source ="page1.qml"
                page2.visible = false
            }
        }
    }

}

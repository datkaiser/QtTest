import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import projectX.Login 1.0
Window {
    id: page1
    visible: true
    width: 320
    height: 240
    title: qsTr("Trang1")
    Column{
        anchors.centerIn: parent
        spacing: 10
        Label{
             anchors.right: parent.right
            text: "1/2"
        }
        Button{
            id: dt1
            text: "1.DOANH THU"
            leftPadding: -120
            width: 200
            height: 20
            focus: true
            onClicked: {
                console.log("..")


            }
        }
        Button{
            text: "2.CAI DAT GIA"
            leftPadding: -120
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "3.KIEM TRA MOTOR"
            leftPadding: -100

            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "4.NAP/TRA TIEN THOI"
            leftPadding: -90
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "5.CMA BIEN ROI"
            leftPadding: -110
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "6.ID MAY"
            leftPadding: -135
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            text: "7. XOA LOI MOTOR"
            leftPadding: -100
            width: 200
            height: 20
            onClicked: {
                console.log("..")
            }
        }
        Button{
            id: pageButton
            text: "chuyển"
            leftPadding: -100
            width: 200
            height: 20
            visible: false
            Shortcut{
                sequence: "Right"
                onActivated:pageButton.clicked()
            }
            Loader{
                id: page1Loader
            }
            onClicked: {
                page1Loader.source = "page2.qml"
                page1.visible = false

            }
        }




    }
}

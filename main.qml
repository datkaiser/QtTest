import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import projectX.Backend 1.0
import projectX.Login 1.0
import projectX.Page2 1.0

Window {
    id: root
    Text:"abc"
    visible: true
    width: 320
    height: 240
    title: qsTr("")
    property bool isSignedIn: false
    property bool isSignedIn2: false
    property bool isSignedIn3: false

Backend{
    id: myBackend
    onSaveSucess:{
        console.log("onSaveSuccess")
        root.isSignedIn = true
        saveButton.enabled = false
    }
}
Page2{
    id: myPage2
    onSaveSucess2:{
        console.log("sucess")
        root.isSignedIn3 = true
}
}
Login{
    id: myLogin
    onLoginSucess:{
        console.log("onLoginSuccess")
        root.isSignedIn2 = true
        inPut.enabled = false

        // This is available in all editors.
    }
    onLoginFail:{
        console.log("onLoginFail")
        root.isSignedIn2 = false


    }
}
Rectangle{
    anchors.centerIn: parent
    Column{

        id: column
            anchors.centerIn: parent
            visible: !isSignedIn
              Text {
                    id: name
                    text: qsTr("MỜI BẠN CHỌN SẢN PHẨM")
                }

            Button{
                id: saveButton
                width: 100
                height: 80
                visible: true
                text: "Mời bạn chọn sản phẩm"
                Shortcut{
                    sequence: "p"
                    onActivated:saveButton.clicked()

                }

                    onClicked: {
                        myBackend.save(Shortcut)
                    }



            }
            Label{
                id: labelName
                text: myBackend.status
    }
        }

}
Rectangle{
    id: reC2
    anchors.centerIn: parent

    Column{
            visible: isSignedIn && !isSignedIn2

            anchors.centerIn: parent

            Label{
                text:"ENTER PASSWORD"
            }
            TextField{
                id: inPut
                enabled: true
                placeholderText: "Nhập mật khẩu"
                height: 20
                width: 100
                echoMode: TextInput.Password
                Keys.onReturnPressed: {
                     myLogin.login(inPut.text)
                }
            }

            Label{
                id: statusLable
                text: myLogin.status
            }
        }

}

Column{
    visible: isSignedIn2 && !isSignedIn3
    anchors.centerIn: parent
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
        id: pageButton
        text: "7. XOA LOI MOTOR"
        leftPadding: -100
        width: 200
        height: 20
        Shortcut{
            sequence: "Right"
            onActivated:pageButton.clicked()
        }
        Connections {
                    target: pageButton
                    onClicked:  myPage2.save(Shortcut)
                }

    }




}
Column{
    id: pageColum2
    visible: isSignedIn3
    anchors.centerIn: parent
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
        Connections {
                    target: page2Button
                    onClicked:  root.isSignedIn3 = false
                }

    }
}
}


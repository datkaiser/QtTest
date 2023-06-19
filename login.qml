import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import projectX.Login 1.0

Window {
    id: loginPage
    visible: true
    width: 320
    height: 240
    title: qsTr("Login")

    property bool isSignedIn2: false
    Login{
        id: myLogin
        onLoginSucess:{
            console.log("onLoginSuccess");
            loginLoader.source = "page1.qml"
                        // This is available in all editors.
            loginPage.visible = false
        }
        onLoginFail:{
            console.log("onLoginFail")
            root.isSignedIn2 = false
        }
    }
    Column{
            visible: !isSignedIn2

            anchors.centerIn: parent

            Label{
                text:"ENTER PASSWORD"
            }
            TextField{
                id: inPut
                placeholderText: "Nhập mật khẩu"
                height: 20
                width: 100
                echoMode: TextInput.Password
                Loader{
                    id: loginLoader
                }
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

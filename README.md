import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle {
            width: parent.width
            height: parent.height
            color: "#1E392A"

            Row {
                id: row1
                anchors.verticalCenterOffset: -19
                anchors.horizontalCenterOffset: 1
                anchors.centerIn: parent // Canh giữa theo chiều ngang và dọc

                Label {
                    id: hourLabel
                    font.pointSize:150
                    color: "#FFFFFF"
                    text: Qt.formatTime(new Date(), "hh")

                }
                Label {
                    id: status
                    font.pointSize:150
                    color: "#FFFFFF"
                    text: ":"
                    PropertyAnimation
                    {
                        id: propertyAnimation
                        target: status
                        property: "opacity"
                        from: 1
                        to: 0
                        duration:1000
                        running: true
                        loops: Animation.Infinite
                     }

                }
                Label {
                    id: minuteLabel
                    font.pointSize:150
                    color: "#FFFFFF"
                    text: Qt.formatTime(new Date(), "mm")
                }
                Label {
                    id: ssLabel
                    font.pointSize:50
                    color: "#FFFFFF"
                    text: Qt.formatTime(new Date(), "ss")
                }
            }

            Label {
                id: label1
                font.pointSize: 34
                anchors.centerIn: parent.Center
                anchors.horizontalCenterOffset: 0
                anchors.topMargin: 16
                color: "#FFFFFF"
                text: Qt.formatDate(new Date(),"dd")+(" tháng ")+Qt.formatDate(new Date(),"MM")+(", ")+Qt.formatDate(new Date(),"yyyy")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: row1.bottom

            }
            Timer {
                        interval: 1000
                        running: true
                        repeat: true
                        onTriggered: {
                            ssLabel.text = Qt.formatTime(new Date(), "ss")
                            hourLabel.text = Qt.formatTime(new Date(), "hh")
                            minuteLabel.text =  Qt.formatTime(new Date(), "mm")
                            label1.text = Qt.formatDate(new Date(),"dd")+(" tháng ")+Qt.formatDate(new Date(),"MM")+(", ")+Qt.formatDate(new Date(),"yyyy");
                        }

                    }

        }
}

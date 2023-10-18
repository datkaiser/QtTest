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
            anchors.centerIn: parent

            Label {
                id: hourLabel
                font.pointSize: 150
                color: "#FFFFFF"
                text: root.currentHour

                Binding {
                    target: hourLabel
                    property: "text"
                    value: root.currentHour
                }
            }

            Label {
                id: status
                font.pointSize: 150
                color: "#FFFFFF"
                text: ":"
                PropertyAnimation {
                    id: propertyAnimation
                    target: status
                    property: "opacity"
                    from: 1
                    to: 0
                    duration: 1000
                    running: true
                    loops: Animation.Infinite
                }
            }

            Label {
                id: minuteLabel
                font.pointSize: 150
                color: "#FFFFFF"
                text: root.currentMinute

                Binding {
                    target: minuteLabel
                    property: "text"
                    value: root.currentMinute
                }
            }

            Label {
                id: ssLabel
                font.pointSize: 50
                color: "#FFFFFF"
                text: root.currentSecond

                Binding {
                    target: ssLabel
                    property: "text"
                    value: root.currentSecond
                }
            }
        }

        Label {
            id: label1
            font.pointSize: 34
            anchors.centerIn: parent.Center
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 16
            color: "#FFFFFF"
            text: root.currentDate

            Binding {
                target: label1
                property: "text"
                value: root.currentDate
            }
        }
    }

    function updateDateTime() {
        var now = new Date();
        root.currentHour = Qt.formatTime(now, "hh");
        root.currentMinute = Qt.formatTime(now, "mm");
        root.currentSecond = Qt.formatTime(now, "ss");
        root.currentDate = Qt.formatDate(now, "dd") + " tháng " + Qt.formatDate(now, "MM") + ", " + Qt.formatDate(now, "yyyy");
    }

    Component.onCompleted: {
        // Update the time every second
        setInterval(updateDateTime, 1000);
    }

    // Dynamic properties to hold current time values
    property string currentHour: ""
    property string currentMinute: ""
    property string currentSecond: ""
    property string currentDate: ""
}

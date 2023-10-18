import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480

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
                }

                Label {
                    id: ssLabel
                    font.pointSize: 50
                    color: "#FFFFFF"
                }
            }

            Label {
                id: label1
                font.pointSize: 34
                anchors.centerIn: parent.Center
                anchors.horizontalCenterOffset: 0
                anchors.topMargin: 16
                color: "#FFFFFF"
            }

            function updateDateTime() {
                var now = new Date();
                hourLabel.text = Qt.formatTime(now, "hh");
                minuteLabel.text = Qt.formatTime(now, "mm");
                ssLabel.text = Qt.formatTime(now, "ss");
                label1.text = Qt.formatDate(now, "dd") + " tháng " + Qt.formatDate(now, "MM") + ", " + Qt.formatDate(now, "yyyy");
            }

            Component.onCompleted: {
                // Update the time every second using JavaScript Timer
                setInterval(updateDateTime, 1000);
            }
        }
    }
}

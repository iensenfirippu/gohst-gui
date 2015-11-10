import QtQuick 2.5
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1

Tab {
	id: tabOptions
	title: "Options"

	Grid {
		GridLayout {
			columns: 2
			columnSpacing: 5
			rowSpacing: 5
			anchors.verticalCenter: parent.verticalCenter
			anchors.horizontalCenter: parent.horizontalCenter

			Text {
				id: textOption1
				text: qsTr("Some options")
			}
			TextField {
				id: inputOption1
				text: qsTr("some-value")
			}

			Text {
				id: textOption2
				text: qsTr("Database")
			}
			TextField {
				id: inputOption2
				text: qsTr("http://brandon-for-president.nu/database")
			}

			Text {
				id: textOption3
				text: qsTr("...another option")
			}
			TextField {
				id: inputOption3
				text: qsTr("")
			}

			Text {
				id: textOption4
				text: qsTr("Execute dirty bit?")
			}
			TextField {
				id: inputOption4
				text: qsTr("Maybe?")
			}

			Text {
				id: textOption5
				text: qsTr("Iz ok?")
			}
			TextField {
				id: inputOption5
				text: qsTr("Iz ok")
			}

			Button {
				text: qsTr("Save")
			}
			Button {
				text: qsTr("cancel")
			}
		}
	}
}

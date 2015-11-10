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
				id: textName
				text: qsTr("Name")
			}
			TextField {
				id: inputName
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

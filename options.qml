import QtQuick 2.3
import QtQuick.Controls 1.0
import QtQuick.Window 2.2

Window {
	title: "Management tool for gohst"
	visible: true

	width: 640
	height: 480

	ToolBar {
		id: toolbar1
		Row {
			ToolButton {
				text: "1"
			}
			ToolButton {
				text: "2"
			}
			ToolButton {
				text: "3"
			}
		}
	}
}


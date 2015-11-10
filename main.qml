import QtQuick 2.5
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1

ApplicationWindow {
	id: window1
	title: "Management tool for gohst"
	visible: true

	width: 640
	height: 480
	minimumWidth: 400
	minimumHeight: 300

	menuBar: MenuBar {

		Menu {
			title: "&File"

			MenuItem {
				text: "&New tag"
				onTriggered: tabView1.currentIndex=1
			}
			MenuSeparator {
			}
			MenuItem {
				text: "&Quit"
				onTriggered: window1.close()
			}
		}

		Menu {
			title: "&Edit"

			MenuItem {
				text: "&Preferences"
				onTriggered: tabView1.currentIndex=2
			}
		}

		Menu {
			title: "&Help"

			MenuItem {
				text: "&About"
				onTriggered: tabView1.currentIndex=3
			}
		}
	}

	toolBar: ToolBar {
		id: toolbar1

		RowLayout {
			anchors.verticalCenter: parent.verticalCenter

			ToolButton {
				text: "Most recent"
				tooltip: "Show your 10 most recent commands"
				onClicked: tabView1.currentIndex=0
			}
			ToolButton {
				text: "Top 10"
				tooltip: "Show your 10 most used commands"
				onClicked: tabView1.currentIndex=0
			}

			ToolSeparator {
			}

			ToolButton {
				text: "List tags"
				tooltip: "List all your user defined tags"
				onClicked: tabView1.currentIndex=0
			}
			ToolButton {
				text: "New tag"
				tooltip: "Create a new tag"
				onClicked: tabView1.currentIndex=1
			}

			ToolSeparator {
			}

			ToolButton {
				text: "Options"
				tooltip: "Set options"
				onClicked: tabView1.currentIndex=2
			}
		}
	}

	TabView {
		id: tabView1
		frameVisible: false
		tabsVisible: false
		anchors.fill: parent

		ListTab {
			id: tabList
		}

		EditTab {
			id: tabEdit
		}

		OptionsTab {
			id: tabOptions
		}

		Tab {
			Text {
				id: textAbout
				anchors.centerIn: parent
				text: qsTr("This application was developed so that you could gain an overview of your gohst command history...")
			}
		}
	}

	CommandModel_Mock {
		id: mock_commandModel
	}
}

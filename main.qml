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
			}
			MenuSeparator {
			}
			MenuItem {
				text: "&Quit"
			}
		}

		Menu {
			title: "&Edit"

			MenuItem {
				text: "&Preferences"
			}
		}

		Menu {
			title: "&Help"

			MenuItem {
				text: "&About"
			}
		}
	}

	toolBar: ToolBar {
		id: toolbar1

		RowLayout {
			anchors.verticalCenter: parent.verticalCenter

			ToolButton {
				text: "File"
				iconSource: QIcon::fromTheme("document-save")
				tooltip: "Show your 10 most recent commands"
			}
			ToolButton {
				text: "Edit"
			}

			ToolSeparator {
			}

			ToolButton {
				text: "Help"
			}
		}
	}

	TabView {
		id: tabView1
		frameVisible: false
		tabsVisible: false
		anchors.fill: parent

		Tab {
			id: tabOptions
			title: "Options"

			GridLayout {
				anchors.horizontalCenter: parent
				anchors.verticalCenter: parent

				Column {
					spacing: 5

					Row {
						spacing: 5
						Text {
							id: textOption1
							text: qsTr("text")
						}
						TextField {
							id: inputOption1
							text: qsTr("text")
						}
					}

					Row {
						spacing: 5
						Text {
							id: textOption2
							text: qsTr("text")
						}
						TextField {
							id: inputOption2
							text: qsTr("text")
						}
					}
				}
			}
		}

		Tab {
			title: "edit"
			Rectangle {
				color: "blue"
			}
		}

		Tab {
			title: "list"

			SplitView {
				id: splitView1
				anchors.fill: parent

				TableView {
					id: tableView1
					anchors.fill: parent

					TableViewColumn {
						title: "Command"
						role: "string"
					}

					TableViewColumn {
						title: "Timestamp"
						role: "timestamp"
					}

					model: mock_commandModel
				}
			}
		}
	}

	ListModel {
		id: mock_commandModel

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "ls ~/pr0n -A"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "rm -rf /"
			timestamp: "2015-12-31"
		}

		ListElement {
			string: "cowsay moo"
			timestamp: "2015-12-31"
		}
	}
}

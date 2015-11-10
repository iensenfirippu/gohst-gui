import QtQuick 2.5
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1

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

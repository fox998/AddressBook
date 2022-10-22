import QtQuick 2.0
import ContactsModule.Base 1.0

BaseListView {
	id: root
	model: ListModel{
		ListElement{
			name: "Name1"
			surname: "Surname1"
			phone: "+380919283746"
		}
		ListElement{
			name: "Name2"
			surname: "Surname2"
			phone: "+380919283746"
		}
		ListElement{
			name: "Name3"
			surname: "Surname3"
			phone: "+380919283746"
		}
	}

	delegate: ContactDelegate{
		width: root.width
		height: 70
	}
}

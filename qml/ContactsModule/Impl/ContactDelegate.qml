import QtQuick 2.0
import ContactsModule.Base 1.0
import StyleSettings 1.0

BaseListDelegate {
	id: root
	Column{
		anchors.verticalCenter: root.verticalCenter
		anchors.left: root.left
		anchors.leftMargin: Style.defaultOffset

		Row{
			spacing: Style.smallSpacing
			BaseText{
				text: name
			}
			BaseText{
				text: surname
			}
		}

		BaseText{
			text: phone
			color: Style.primaryColor
		}
	}
}

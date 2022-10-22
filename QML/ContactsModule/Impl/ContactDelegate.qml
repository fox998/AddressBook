import QtQuick 2.0
import ContactsModule.Base 1.0
import StyleSettings 1.0

BaseListDelegate {
	id: root


	RoundedImage{
		id: _icon
		width: root.height- Style.mediumOffset
		height: width
		anchors.left: root.left
		anchors.leftMargin: Style.mediumOffset
		anchors.verticalCenter: root.verticalCenter
	}

	Column{
		anchors.verticalCenter: root.verticalCenter
		anchors.left: _icon.right
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

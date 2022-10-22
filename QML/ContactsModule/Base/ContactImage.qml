import QtQuick 2.0
import ResourceProvider 1.0
import QtGraphicalEffects 1.0
import StyleSettings 1.0


Rectangle{
	id: root

	color: "transparent"
	radius: width / 2
	border.width: 2
	border.color: Style.primaryColor

	Image {
		id: _image

		source: Resources.defaultIcon

		sourceSize.height: height
		sourceSize.width: width

		anchors.fill: root
		anchors.margins: Style.tinyOffset
	}

	ColorOverlay{
		anchors.fill: _image
		source: _image
		color: Style.themeInvertedColor
		antialiasing: true
	}
}


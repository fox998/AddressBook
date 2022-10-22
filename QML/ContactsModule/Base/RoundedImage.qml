import QtQuick 2.0
import QtGraphicalEffects 1.0
import ResourceProvider 1.0

Image {
	id: root
	property bool rounded: true
	source: Resources.testImage

	layer.enabled: rounded
	layer.effect: OpacityMask{
		maskSource: Item {
			width: root.width
			height: root.height
			Rectangle{
				anchors.centerIn: parent
				anchors.fill: parent
				radius: Math.min(height, width) / 2
			}
		}
	}

}

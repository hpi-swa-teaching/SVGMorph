initialization
createRectangleFromSVG: anElement
	"Create the bounding rectangle from the svg ellipse."

	self rectangle: (Rectangle
		center: (anElement attributeAt: 'cx' ifAbsent: [0]) asSVGNumber @ (anElement attributeAt: 'cy' ifAbsent: [0]) asSVGNumber
		extent: (anElement attributeAt: 'rx' ifAbsent: [0]) asSVGNumber @ ((anElement attributeAt: 'ry' ifAbsent: [0]) asSVGNumber) * 2)
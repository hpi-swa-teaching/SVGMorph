as yet unclassified
createRectangleFromSVG: anElement
	"Create the bounding rectangle from the svg circle."

	fullBounds := bounds := (Rectangle
			center: (anElement attributeAt: 'cx' ifAbsent: [0]) asSVGNumber@(anElement attributeAt: 'cy' ifAbsent: [0]) asSVGNumber
			extent: (anElement attributeAt: 'r' ifAbsent: [0]) asSVGNumber  asPoint * 2)
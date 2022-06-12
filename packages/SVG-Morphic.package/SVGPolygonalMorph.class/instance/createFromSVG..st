initialization
createFromSVG: anElement
	"Create a polygon from the svg polygon."

	super createFromSVG: anElement.
	self createPointsFromSVG: anElement.
	self computeBounds
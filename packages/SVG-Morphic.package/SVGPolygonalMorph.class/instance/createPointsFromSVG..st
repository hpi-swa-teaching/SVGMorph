initialization
createPointsFromSVG: anElement
	"Create the points from the polygon."

	self points: (self pointDataFromSVG: anElement)

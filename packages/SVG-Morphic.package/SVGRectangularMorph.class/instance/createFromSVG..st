initialization
createFromSVG: anElement
	"Create a rectangle from the svg rect."

	super createFromSVG: anElement.
	self createRectangleFromSVG: anElement.
	self computeBounds
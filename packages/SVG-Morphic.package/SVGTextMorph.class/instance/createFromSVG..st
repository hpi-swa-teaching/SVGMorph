initialization
createFromSVG: anElement
	"Create a text from the svg text."

	self createTextFromSVG: anElement.
	super createFromSVG: anElement.
	self computeBounds
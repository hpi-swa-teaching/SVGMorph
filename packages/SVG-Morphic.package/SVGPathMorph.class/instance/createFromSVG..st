initialization
createFromSVG: anElement
	"Create a path from the svg path."

	super createFromSVG: anElement.
	self
		createSegmentsFromSVG: anElement;
		computeBounds;
		d: (anElement attributeAt: 'd')
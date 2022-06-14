as yet unclassified
createFromSVG: anElement
	"Create a path from the svg path."

	super createFromSVG: anElement.
	self createSegmentsFromSVG: anElement.
	self computeBounds.
	self d: (anElement attributeAt: 'd')
	
	

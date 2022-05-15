as yet unclassified
createFromSVG: anElement
	"Create a polygon from the svg polygon."

	super createFromSVG: anElement.
	self createPointsFromSVG: anElement.
	self points size == 0 ifTrue: [^ self].
	self rectangle: (Rectangle encompassing: (self points)).
	
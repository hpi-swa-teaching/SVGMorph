helpers
createLineSegmentFrom: start to: end
	"Create a line segment from the start to the end."

	self addSegment: (LineSegment from: start to: end).
	^end
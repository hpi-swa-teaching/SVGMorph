helpers
createQuadraticBezierSegmentFrom: data at: aPoint
	"Create a quadratic bezier segment from the path data (stream) at the given position."

	|position|
	self
		createQuadraticBezierSegmentFrom: aPoint
		via: data first @ data second
		to: (position := data third @ data fourth).
	^position
helpers
createCubicBezierSegmentFrom: data at: aPoint
	"Create a cubic bezier segment from the path data (stream) at the given position."

	|position|
	self
		createCubicBezierSegmentFrom: aPoint
		via: data first @ data second
		and: data third @ data fourth
		to: (position := data fifth @ data sixth).
	^ position
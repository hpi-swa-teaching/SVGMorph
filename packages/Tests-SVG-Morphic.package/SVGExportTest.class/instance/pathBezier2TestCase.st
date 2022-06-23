test cases
pathBezier2TestCase

	|svg|
	svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	self builder addPath: nil of: {
		Bezier2Segment from: 10 @ 80 via: 52.5 @ 10 to: 95 @ 80 .
		SVGFixupLineSegment from: 95 @ 80 to: 10 @ 80
	} describedBy: 'M10 80 Q 52.5 10, 95 80' transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: svg.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><path d="M10 80 Q 52.5 10, 95 80"/></svg>'
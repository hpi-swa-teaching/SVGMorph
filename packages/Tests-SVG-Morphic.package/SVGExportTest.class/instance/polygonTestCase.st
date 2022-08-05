test cases
polygonTestCase

	|svg|
	svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	self builder addPolygon: nil of: {1 @ 2 . 3 @ 4 . 5 @ 6 . 7 @ 8} transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: svg.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><polygon points="1,2 3,4 5,6 7,8"/></svg>'
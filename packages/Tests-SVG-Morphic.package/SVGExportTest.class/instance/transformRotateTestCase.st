test cases
transformRotateTestCase

	|svg|
	svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	self builder addRectangle: nil at: (30 @ 40) sized: (30 @ 40) transformed: (MatrixTransform2x3 withAngle: 45) styled: (Dictionary new) to: svg.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><rect height="40" transform="rotate(45)" width="30" x="30" y="40"/></svg>'
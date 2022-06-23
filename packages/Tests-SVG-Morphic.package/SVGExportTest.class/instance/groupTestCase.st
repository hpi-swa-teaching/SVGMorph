test cases
groupTestCase

	|svg group|
	svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	group := self builder addGroup: nil transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: svg.
	self builder addRectangle: nil at: (0 @ 0) sized: (10 @ 20) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: group.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><g><rect height="20" width="10" x="0" y="0"/></g></svg>'
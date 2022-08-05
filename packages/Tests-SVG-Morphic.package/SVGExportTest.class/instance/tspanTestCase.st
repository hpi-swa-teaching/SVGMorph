test cases
tspanTestCase

	|svg text|
	svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	text := self builder addText: nil at: (0 @ 20) labeled: '' transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: svg.
	self builder addTSpan: nil at: text location labeled: 'Hallo Welt' transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: text.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><text x="0" y="20"><tspan>Hallo Welt</tspan></text></svg>'
test cases
widthHeightTestCase

	|svg|
	svg := self builder createTestSVG: 'idForTesting' bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
	svg
		svgWidth: '200';
		svgHeight: '200'.
	self builder finalizeTestSVG: svg.
	^ SVGExportTestCase
		for: svg
		toBe: '<svg height="200" id="idForTesting" version="1.1" viewBox="0 0 100 100" width="200" xmlns="http://www.w3.org/2000/svg"/>'
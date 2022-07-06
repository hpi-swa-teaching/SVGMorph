test cases
basicCircleFillSVG

	|svg|
	svg := self builder createTestSVG: nil bounded: (-100 @ -100 extent: 200 @ 200) transformed: (MatrixTransform2x3 identity) styled: Dictionary new.

	self builder addEllipse: nil at: (0 @ 0) sized: (160 @ 160) transformed: (MatrixTransform2x3 identity) styled: Dictionary new to: svg.

	self builder finalizeTestSVG: svg.
	^ svg
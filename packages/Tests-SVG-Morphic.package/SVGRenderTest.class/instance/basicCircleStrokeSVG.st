test cases
basicCircleStrokeSVG

	|svg style|
	style := Dictionary new.
	style
		at: 'fill' put: Color transparent;
		at: 'stroke' put: Color red;
		at: 'stroke-width' put: 10.
	svg := self builder createTestSVG: nil bounded: (-100 @ -100 extent: 200 @ 200) transformed: (MatrixTransform2x3 identity) styled: Dictionary new.

	self builder addEllipse: nil at: (0 @ 0) sized: (160 @ 160) transformed: (MatrixTransform2x3 identity) styled: style to: svg.

	self builder finalizeTestSVG: svg.
	^ svg
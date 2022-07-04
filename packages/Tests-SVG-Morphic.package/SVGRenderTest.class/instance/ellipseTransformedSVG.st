test cases
ellipseTransformedSVG

	|svg style transform|
	style := Dictionary new.
	style
		at: 'fill' put: Color green;
		at: 'stroke' put: Color red;
		at: 'stroke-width' put: 30.
	transform := MatrixTransform2x3 identity.
	transform := transform composedWithGlobal: (MatrixTransform2x3 withScale: 1.5 @ 2).
	transform := transform composedWithGlobal: (MatrixTransform2x3 withSkew: 20 @ 0).
	transform := transform composedWithGlobal: (MatrixTransform2x3 withAngle: -40).
	
	svg := self builder createTestSVG: nil bounded: (-170 @ -120 extent: 340 @ 240) transformed: (MatrixTransform2x3 identity) styled: Dictionary new.

	self builder addEllipse: nil at: (0 @ 0) sized: (160 @ 80) transformed: transform styled: style to: svg.

	self builder finalizeTestSVG: svg.
	^ svg
test cases
atomSVG

	|svg circlesGroup ellipsesGroup|
	svg := self builder createTestSVG: nil bounded: (-52 @ -53 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'stroke-width' put: 2;
		yourself).

	ellipsesGroup := self builder addGroup: nil transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'fill' put: (Color transparent);
		yourself) to: svg.
	self builder addEllipse: nil at: (0 @ 0) sized: (12 @ 88) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'stroke' put: (Color fromString: '#66899a');
		yourself) to: ellipsesGroup.
	self builder addEllipse: nil at: (0 @ 0) sized: (12 @ 88) transformed: (MatrixTransform2x3 withAngle: -66) styled: (Dictionary new
		at: 'stroke' put: (Color fromString: '#e1d85d');
		yourself) to: ellipsesGroup.
	self builder addEllipse: nil at: (0 @ 0) sized: (12 @ 88) transformed: (MatrixTransform2x3 withAngle: 66) styled: (Dictionary new
		at: 'stroke' put: (Color fromString: '#80a3cf');
		yourself) to: ellipsesGroup.
	self builder addCircle: nil at: (0 @ 0) sized: 44 transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'stroke' put: (Color fromString: '#4b541f');
		yourself) to: ellipsesGroup.

	circlesGroup := self builder addGroup: nil transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'fill' put: (Color fromString: '#66899a');
		at: 'stroke' put: (Color white);
		yourself) to: svg.
	self builder addCircle: nil at: (0 @ 0) sized: 13 transformed: (MatrixTransform2x3 identity) styled: (Dictionary new
		at: 'fill' put: (Color fromString: '#80a3cf');
		yourself) to: circlesGroup.
	self builder addCircle: nil at: (0 @ -44) sized: 9 transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: circlesGroup.
	self builder addCircle: nil at: (-40 @ 18) sized: 9 transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: circlesGroup.
	self builder addCircle: nil at: (40 @ 18) sized: 9 transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: circlesGroup.

	self builder finalizeTestSVG: svg.
	^ svg
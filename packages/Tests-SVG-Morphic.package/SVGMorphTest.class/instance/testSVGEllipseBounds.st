testing - properties
testSVGEllipseBounds

	|bounds|

	self wantsToTestEllipse.
	bounds := (self subject findByClass: SVGEllipseMorph) bounds.
	self
		assert: 80 equals: bounds origin x;
		assert: 70 equals: bounds origin y ;
		assert: 120  equals: bounds corner x ;
		assert: 170 equals: bounds corner y
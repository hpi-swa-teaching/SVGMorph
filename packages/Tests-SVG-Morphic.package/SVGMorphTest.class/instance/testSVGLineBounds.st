testing - properties
testSVGLineBounds

	|bounds|

	self wantsToTestLine.
	bounds := (self subject findByClass: SVGLineMorph) bounds.
	self
		assert: 20 equals: bounds origin x;
		assert: 30 equals: bounds origin y ;
		assert: 100 equals: bounds corner x ;
		assert: 170 equals: bounds corner y
testing - properties
testSVGCircleRectangle

	| rectangle |
	
	self wantsToTestCircle.
	rectangle := (self subject findByClass: SVGCircleMorph) rectangle.
	self
		assert: -30 equals: rectangle origin x;
		assert: -20 equals: rectangle origin y;
		assert: 90 equals: rectangle corner x;
		assert: 100 equals: rectangle corner y.
testing - properties
testSVGCircleRectangle

	| rectangle |
	
	self wantsToTestCircle.
	rectangle := (self subject findByClass: SVGCircleMorph) rectangle.
	self
		assert: rectangle origin x equals: -30;
		assert: rectangle origin y equals: -20;
		assert: rectangle corner x equals: 90;
		assert: rectangle corner y equals: 100.
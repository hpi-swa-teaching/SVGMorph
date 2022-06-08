testing - properties
testSVGEllipseRectangle

	| rectangle |
	
	self wantsToTestEllipse.
	rectangle := (self subject findByClass: SVGEllipseMorph) rectangle.
	self
		assert: 80 equals: rectangle origin x;
		assert: 70 equals: rectangle origin y;
		assert: 120 equals: rectangle corner x;
		assert: 170 equals: rectangle corner y.
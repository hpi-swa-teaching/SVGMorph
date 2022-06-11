testing - properties
testSVGRectangleRectangle

	|rectangle|

	self wantsToTestRectangle.
	rectangle := (self subject findByClass: SVGRectMorph) rectangle.
	self
		assert: 50 equals: rectangle origin x;
		assert: 50 equals: rectangle origin y ;
		assert: 80  equals: rectangle corner x ;
		assert: 90 equals: rectangle corner y
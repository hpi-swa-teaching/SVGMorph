testing - properties
testSVGLineRectangle

	| rectangle |
	
	self wantsToTestLine.
	rectangle := (self subject findByClass: SVGLineMorph) rectangle.
	self
		assert: 20 equals: rectangle origin x;
		assert: 30 equals: rectangle origin y ;
		assert: 100  equals: rectangle corner x ;
		assert: 170 equals: rectangle corner y.
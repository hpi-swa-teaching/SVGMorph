testing - properties
testSVGRectangleBounds

	| bounds |
	
	self wantsToTestRectangle.
	bounds := (self subject findByClass: SVGRectMorph) bounds.
	self
		assert: 50 equals: bounds origin x;
		assert: 50 equals: bounds origin y ;
		assert: 80  equals: bounds corner x ;
		assert: 90 equals: bounds corner y.
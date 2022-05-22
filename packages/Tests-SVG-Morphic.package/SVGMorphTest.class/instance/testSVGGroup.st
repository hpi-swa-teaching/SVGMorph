testing - properties
testSVGGroup

	| bounds morph submorphBounds |
	
	self wantsToTestGroup.
	morph := self subject findByClass: SVGGroupMorph.
	bounds := morph bounds.
	submorphBounds := self submorphBoundsOf: morph.
	
	self
		assert: submorphBounds origin x equals: bounds origin x;
		assert: submorphBounds origin y equals: bounds origin y ;
		assert: submorphBounds corner x equals: bounds corner x ;
		assert: submorphBounds corner y equals: bounds corner y.
	
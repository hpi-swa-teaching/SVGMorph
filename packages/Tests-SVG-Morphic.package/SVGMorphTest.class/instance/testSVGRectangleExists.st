testing - existence
testSVGRectangleExists

	| rectangle |
	self wantsToTestRectangle.
	
	rectangle := self subject findByClass: SVGRectMorph.
	self deny: rectangle morphs isEmpty
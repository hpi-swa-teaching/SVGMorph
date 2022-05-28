testing - existence
testSVGEllipseExists

	| ellipse |
	self wantsToTestEllipse.
	
	ellipse := self subject findByClass: SVGEllipseMorph.
	self deny: ellipse morphs isEmpty
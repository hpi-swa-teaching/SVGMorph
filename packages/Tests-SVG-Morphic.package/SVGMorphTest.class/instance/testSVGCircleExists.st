testing - existence
testSVGCircleExists

	| circle |
	self wantsToTestCircle.
	
	circle := self subject findByClass: SVGCircleMorph.
	self deny: circle morphs isEmpty
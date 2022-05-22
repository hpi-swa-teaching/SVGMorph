testing
testSVGLineExists

	| line |
	self wantsToTestLine.
	
	line := self subject findByClass: SVGLineMorph.
	self deny: line morphs isEmpty
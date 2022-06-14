testing - existence
testSVGTSpanExists

	| tSpan |
	self wantsToTestTSpan.
	
	tSpan := self subject findByClass: SVGTSpanMorph.
	self deny: tSpan morphs isEmpty
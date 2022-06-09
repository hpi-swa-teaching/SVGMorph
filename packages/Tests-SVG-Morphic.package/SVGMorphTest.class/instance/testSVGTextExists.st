testing - existence
testSVGTextExists

	| text |
	self wantsToTestText.
	
	text := self subject findByClass: SVGTextMorph.
	self deny: text morphs isEmpty
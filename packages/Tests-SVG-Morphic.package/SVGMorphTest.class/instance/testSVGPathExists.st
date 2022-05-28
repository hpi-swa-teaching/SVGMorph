testing - existence
testSVGPathExists

	| path |
	self wantsToTestPath.
	
	path := self subject findByClass: SVGPathMorph.
	self deny: path morphs isEmpty
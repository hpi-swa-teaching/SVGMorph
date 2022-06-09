testing - existence
testSVGPolygonExists

	| polygon |
	self wantsToTestPolygon.
	
	polygon := self subject findByClass: SVGPolygonMorph.
	self deny: polygon morphs isEmpty
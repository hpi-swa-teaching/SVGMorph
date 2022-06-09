testing - existence
testSVGPolylineExists

	| polyline |
	self wantsToTestPolyline.
	
	polyline := self subject findByClass: SVGPolylineMorph.
	self deny: polyline morphs isEmpty
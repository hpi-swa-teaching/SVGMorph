testing - rendering
testSVGPolygonRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestPolygon;
		addRenderer: renderer on: SVGPolygonMorph;
		render: SVGPolygonMorph;
		assert:  (renderer renderCount at: #renderPolygon ifAbsent: 0) equals: 1.


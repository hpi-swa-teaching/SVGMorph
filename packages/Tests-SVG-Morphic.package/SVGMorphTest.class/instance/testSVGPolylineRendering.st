testing - rendering
testSVGPolylineRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestPolyline;
		addRenderer: renderer on: SVGPolylineMorph;
		render: SVGPolylineMorph;
		assert:  (renderer renderCount at: #renderPolyline ifAbsent: 0) equals: 1.
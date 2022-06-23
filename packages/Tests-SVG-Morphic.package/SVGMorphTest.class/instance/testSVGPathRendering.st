testing - rendering
testSVGPathRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestPath;
		addRenderer: renderer on: SVGPathMorph;
		render: SVGPathMorph;
		assert:  (renderer renderCount at: #renderPath ifAbsent: 0) equals: 1.
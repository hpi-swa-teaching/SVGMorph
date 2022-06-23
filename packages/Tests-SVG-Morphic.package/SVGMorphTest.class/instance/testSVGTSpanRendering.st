testing - rendering
testSVGTSpanRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestTSpan;
		addRenderer: renderer on: SVGTSpanMorph;
		render: SVGTSpanMorph;
		assert:  (renderer renderCount at: #renderText ifAbsent: 0) equals: 1.
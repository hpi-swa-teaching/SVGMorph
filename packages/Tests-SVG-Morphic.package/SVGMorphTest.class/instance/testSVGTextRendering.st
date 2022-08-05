testing - rendering
testSVGTextRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestText;
		addRenderer: renderer on: SVGTextMorph;
		render: SVGTextMorph;
		assert: (renderer renderCount at: #renderText ifAbsent: 0) equals: 1